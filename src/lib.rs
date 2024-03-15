#![feature(cstr_count_bytes)]

mod lang;
mod wren;
use std::ffi::{CStr, CString};
use std::io::Read;
use std::path::PathBuf;
use std::str::FromStr;
use std::{env, fs, ptr};
use wren::*;

pub struct FanVM {
    vm: Box<wren::WrenVM>,
}

impl Default for FanVM {
    fn default() -> Self {
        let mut config = Box::new(WrenConfiguration {
            reallocateFn: None,
            resolveModuleFn: None,
            loadModuleFn: None,
            bindForeignMethodFn: None,
            bindForeignClassFn: None,
            writeFn: None,
            errorFn: None,
            initialHeapSize: 0,
            minHeapSize: 0,
            heapGrowthPercent: 0,
            userData: ptr::null_mut(),
        });

        unsafe {
            let cnfg_ptr: *mut WrenConfiguration = &mut *config;
            wrenInitConfiguration(cnfg_ptr);
        }

        config.writeFn = Some(write_fn);
        config.errorFn = Some(error_fn);
        config.loadModuleFn = Some(load_modules);
        config.bindForeignClassFn = Some(bind_foreign_class);
        config.bindForeignMethodFn = Some(bind_foreign_method);

        let config_ptr: *mut WrenConfiguration = &mut *config;
        let unsafe_vm = unsafe { wrenNewVM(config_ptr) };

        let my_vm = unsafe { Box::from_raw(unsafe_vm) };

        Self::new(my_vm)
    }
}

impl Drop for FanVM {
    fn drop(&mut self) {
        unsafe {
            let vm_ptr: *mut WrenVM = &mut *self.vm;
            if !vm_ptr.is_null() {
                wrenFreeVM(vm_ptr);
            }
        }
    }
}

impl FanVM {
    pub fn new(vm: Box<WrenVM>) -> Self {
        Self { vm }
    }

    /// Executes code in the main FanVM.
    /// Will SegFault if any Fan foreign bindings are unimplemented.
    pub fn exec(&mut self, code: &str, module: Option<&str>) -> FanInterpretResult {
        let vm_ptr: *mut WrenVM = &mut *self.vm;
        let mod_str = CString::new(module.unwrap_or("main")).unwrap();
        let mod_str_ptr = mod_str.as_ptr();

        let code_str = CString::new(code).unwrap();
        let code_str_ptr = code_str.as_ptr();
        let result: FanInterpretResult =
            unsafe { wrenInterpret(vm_ptr, mod_str_ptr, code_str_ptr).into() };

        result
    }
}

pub enum FanInterpretResult {
    Success,
    CompileErr,
    RuntimeErr,
}

impl From<WrenInterpretResult> for FanInterpretResult {
    fn from(value: WrenInterpretResult) -> Self {
        match value {
            WrenErrorType_WREN_ERROR_COMPILE => Self::CompileErr,
            WrenErrorType_WREN_ERROR_RUNTIME => Self::RuntimeErr,
            WrenErrorType_WREN_ERROR_STACK_TRACE => Self::Success,
            _ => unreachable!(),
        }
    }
}

#[no_mangle]
extern "C" fn write_fn(_vm: *mut WrenVM, text: *const libc::c_char) {
    let buff = unsafe { CString::from(CStr::from_ptr(text)) };

    let mut output = String::new();
    buff.as_bytes().read_to_string(&mut output).unwrap();

    print!("{output}")
}

#[no_mangle]
extern "C" fn error_fn(
    _vm: *mut WrenVM,
    error_type: WrenErrorType,
    module: *const libc::c_char,
    line: libc::c_int,
    msg: *const libc::c_char,
) {
    let module_str = unsafe { CString::from(CStr::from_ptr(module)) };
    let mut module_out = String::new();
    module_str
        .to_bytes()
        .read_to_string(&mut module_out)
        .unwrap();

    let msg_str = unsafe { CString::from(CStr::from_ptr(msg)) };
    let mut msg_out = String::new();
    msg_str.to_bytes().read_to_string(&mut msg_out).unwrap();

    match error_type {
        WrenErrorType_WREN_ERROR_COMPILE => {
            println!("Compile error in {}:{}\n{}", module_out, line, msg_out)
        }
        WrenErrorType_WREN_ERROR_RUNTIME => {
            println!("Runtime error in {}:{}\n{}", module_out, line, msg_out)
        }
        WrenErrorType_WREN_ERROR_STACK_TRACE => println!("{}:{}\n{}", module_out, line, msg_out),
        _ => unreachable!(),
    }
}

#[no_mangle]
extern "C" fn load_module_complete(
    _vm: *mut WrenVM,
    _module: *const libc::c_char,
    result: WrenLoadModuleResult,
) {
    if !result.source.is_null() {
        unsafe {
            drop(CString::from_raw(result.source as *mut libc::c_char));
        }
    }
}

#[no_mangle]
extern "C" fn load_modules(vm: *mut WrenVM, name: *const libc::c_char) -> WrenLoadModuleResult {
    let mut module = WrenLoadModuleResult {
        source: ptr::null(),
        onComplete: Some(load_module_complete),
        userData: ptr::null_mut(),
    };

    let path_name = unsafe { CString::from(CStr::from_ptr(name)) };
    let mut buff = String::new();
    path_name.as_bytes().read_to_string(&mut buff).unwrap();
    let usr_path = PathBuf::from_str(&buff).unwrap();

    let fan_lib = env::var("FAN_LIB").unwrap_or("lang/".to_owned());
    let mut fan_path = PathBuf::from_str(&fan_lib).unwrap();

    if !fan_path.exists() {
        let msg = format!("Standard library {fan_lib} not found");
        abort(vm, &msg);
    }

    if usr_path.starts_with("std/") {
        let stripped = usr_path.strip_prefix("std/").unwrap();
        let new_path = fan_path.join(stripped);
        fan_path = new_path;
    }

    if !fan_path.extension().is_some() {
        fan_path.set_extension("fan");
    }

    if !fan_path.exists() {
        eprintln!("Module loader couldn't find {}", fan_path.display());
        return module;
    }

    if !fan_path.is_file() {
        eprintln!("Module isn't file: {}", fan_path.display());
        return module;
    }

    let content = match fs::read_to_string(&fan_path) {
        Ok(s) => s,
        Err(e) => {
            abort(
                vm,
                &format!("Could not read module of {}\n{}", fan_path.display(), e),
            );
            return module;
        }
    };

    let content_heap = CString::new(content).unwrap();

    let content_ptr = content_heap.into_raw();
    module.source = content_ptr;

    module
}

/// Aborts the current fiber and sends an error message back to the VM.
pub fn abort(vm: *mut WrenVM, msg: &str) {
    unsafe {
        wrenEnsureSlots(vm, 1);
        let out = CString::new(msg.as_bytes().to_vec()).unwrap();
        wrenSetSlotString(vm, 0, out.as_ptr());
        wrenAbortFiber(vm, 0);
    }
}

#[no_mangle]
extern "C" fn bind_foreign_class(
    _vm: *mut WrenVM,
    module_name: *const libc::c_char,
    class_name: *const libc::c_char,
) -> WrenForeignClassMethods {
    let mut methods = WrenForeignClassMethods {
        allocate: None,
        finalize: None,
    };

    let mut module = String::new();
    let mut class = String::new();

    {
        let module_cstr = unsafe { CString::from(CStr::from_ptr(module_name)) };
        let class_cstr = unsafe { CString::from(CStr::from_ptr(class_name)) };

        module_cstr.as_bytes().read_to_string(&mut module).unwrap();
        class_cstr.as_bytes().read_to_string(&mut class).unwrap();
    }

    match module.as_str() {
        "std/fs" => match class.as_str() {
            "File" => {
                methods.allocate = Some(lang::fs::file_alloc);
                methods.finalize = Some(lang::fs::file_dealloc);
            }
            _ => {}
        },
        _ => {}
    }

    methods
}

#[no_mangle]
extern "C" fn bind_foreign_method(
    _vm: *mut WrenVM,
    module_name: *const libc::c_char,
    class_name: *const libc::c_char,
    is_static: bool,
    signature: *const libc::c_char,
) -> WrenForeignMethodFn {
    let mut module = String::new();
    let mut class = String::new();
    let mut sig = String::new();

    {
        let module_cstr = unsafe { CString::from(CStr::from_ptr(module_name)) };
        let class_cstr = unsafe { CString::from(CStr::from_ptr(class_name)) };
        let sig_cstr = unsafe { CString::from(CStr::from_ptr(signature)) };

        module_cstr.as_bytes().read_to_string(&mut module).unwrap();
        class_cstr.as_bytes().read_to_string(&mut class).unwrap();
        sig_cstr.as_bytes().read_to_string(&mut sig).unwrap();
    }

    match module.as_str() {
        "std/os" => match class.as_str() {
            "Env" => match is_static {
                // Is Static
                true => match sig.as_str() {
                    "get(_)" => return Some(lang::os::get_env),
                    "set(_,_)" => return Some(lang::os::set_env),
                    _ => {}
                },
                // Not static
                false => match sig.as_str() {
                    _ => {}
                },
            },
            "Process" => match is_static {
                // Is Static
                true => match sig.as_str() {
                    "allArguments()" => return Some(lang::os::process::all_args),
                    "cwd()" => return Some(lang::os::process::cwd),
                    "pid()" => return Some(lang::os::process::pid),
                    "ppid()" => return Some(lang::os::process::ppid),
                    "exit(_)" => return Some(lang::os::process::exit),
                    "exec(_)" => return Some(lang::os::process::exec),

                    _ => {}
                },
                // Not static
                false => match sig.as_str() {
                    _ => {}
                },

            },
            "Runtime" => match is_static {
                // Is Static
                true => match sig.as_str() {
                    "os()" => return Some(lang::os::runtime::os),
                    "arch()" => return Some(lang::os::runtime::arch),
                    // "set(_,_)" => return Some(),
                    _ => {}
                },
                // Not static
                false => match sig.as_str() {
                    _ => {}
                },
            },
            
            _ => {}
        },
        "std/fs" => match class.as_str() {
            "File" => match is_static {
                true => match sig.as_str() {
                    _ => {}
                },
                // Not static
                false => match sig.as_str() {
                    "write(_)" => return Some(lang::fs::file_write),
                    "read()" => return Some(lang::fs::file_read),
                    "close()" => return Some(lang::fs::file_close),
                    _ => {}
                },
            },
            "Fs" => match is_static {
                true => match sig.as_str() {
                    "remove(_)" => return Some(lang::fs::remove_file),
                    "listAllRecursive(_)" => return Some(lang::fs::list_dir_recursive),
                    "listAll(_)" => return Some(lang::fs::list_all),
                    "isDirectory(_)" => return Some(lang::fs::is_dir),
                    "mkdir(_)" => return Some(lang::fs::mkdir),
                    _ => {}
                },
                // Not static
                false => match sig.as_str() {
                    _ => {}
                },
            },
            "Path" => match is_static {
                true => match sig.as_str() {
                    "canonical(_)" => return Some(lang::fs::canonical),
                    "exists(_)" => return Some(lang::fs::exists),
                    "separator()" => return Some(lang::fs::separator),
                    "ext(_)" => return Some(lang::fs::ext),
                    "filename(_)" => return Some(lang::fs::filename),
                    _ => {}
                },
                false => match sig.as_str() {
                    _ => {}
                },
            },
            _ => {}
        },

        _ => {}
    }

    None
}
