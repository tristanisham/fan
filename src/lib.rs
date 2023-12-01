#![feature(new_uninit)]
#![feature(cstr_count_bytes)]
mod lang;

mod wren;

use dirs;
use std::{
    env,
    ffi::{c_char, c_void, CString, CStr},
    fs,
    path::PathBuf,
    ptr,
};
use wren::WrenVM;


fn abort(vm: *mut WrenVM, msg: &str) {
    unsafe {
        wren::wrenEnsureSlots(vm, 1);
        let msg_cstr = CString::new(msg).unwrap();
        let msg_ptr = msg_cstr.as_ptr();
        wren::wrenSetSlotString(vm, 0, msg_ptr);
        wren::wrenAbortFiber(vm, 0);
    }
}

fn cstr_to_string(ptr: *const i8) -> String {
    unsafe {
        let input_str = CStr::from_ptr(ptr);
        let output = String::from(input_str.to_string_lossy());
        output
    }
}

#[derive(Debug)]
pub enum FanSlotType {
    Bool,
    Num,
    Foreign,
    List,
    Map,
    Null,
    String,
    Unknown,
}

impl From<u32> for FanSlotType {
    fn from(value: u32) -> Self {
        match value {
            0 => Self::Bool,
            1 => Self::Num,
            2 => Self::Foreign,
            3 => Self::List,
            4 => Self::Map,
            5 => Self::Null,
            6 => Self::String,
            _ => Self::Unknown,
        }
    }
}

impl FanSlotType {
    pub fn from_slot(vm: *mut WrenVM, slot: i32) -> Self {
        unsafe {
            let slot = wren::wrenGetSlotType(vm, slot);
            Self::from(slot)
        }
    }
}

#[derive(Debug)]
pub enum FanInterpretError {
    CompileError,
    RuntimeError,
}

#[derive(Debug)]
pub struct Runtime {
    vm: Box<WrenVM>,
}

impl Runtime {
    pub fn execute(mut self, code: &str) -> Result<(), FanInterpretError> {
        unsafe {
            let vm_ptr: *mut WrenVM = &mut *self.vm;
            let module = CString::new("main").expect("Unable to construct 'module' as CString");
            let c_code = CString::new(code).expect("Unable to encode source");
            let result = wren::wrenInterpret(vm_ptr, module.as_ptr(), c_code.as_ptr());
            if result == 1 {
                return Err(FanInterpretError::CompileError);
            } else if result == 2 {
                return Err(FanInterpretError::RuntimeError);
            }

            Ok(())
        }
    }
}

impl Default for Runtime {
    fn default() -> Self {
        let mut config = Box::<wren::WrenConfiguration>::new_uninit();
        unsafe {
            wren::wrenInitConfiguration(config.as_mut_ptr());
            config.assume_init_mut().writeFn = Some(write_fn);
            config.assume_init_mut().errorFn = Some(error_fn);
            config.assume_init_mut().loadModuleFn = Some(load_modules);
            config.assume_init_mut().bindForeignMethodFn = Some(bind_foreign_methods);
            config.assume_init_mut().bindForeignClassFn = Some(bind_foreign_class);
            let vm = wren::wrenNewVM(config.as_mut_ptr());
            return Self {
                vm: Box::from_raw(vm),
            };
        };
    }
}

extern "C" fn write_fn(_wren_vm: *mut WrenVM, text: *const i8) {
    unsafe {
        let val = CStr::from_ptr(text);
        let data = val.to_string_lossy();
        print!("{data}");
    }
}

unsafe extern "C" fn error_fn(
    _vm: *mut WrenVM,
    type_: wren::WrenErrorType,
    module: *const ::std::os::raw::c_char,
    line: ::std::os::raw::c_int,
    message: *const ::std::os::raw::c_char,
) {
    let w_mod = CStr::from_ptr(module);
    let w_msg = CStr::from_ptr(message);
    if type_ == wren::WrenErrorType_WREN_ERROR_COMPILE {
        println!(
            "[COMPILE ERR: {} line {line}] {}",
            w_mod.to_string_lossy(),
            w_msg.to_string_lossy()
        )
    } else if type_ == wren::WrenErrorType_WREN_ERROR_RUNTIME {
        println!(
            "[RUNTIME ERR: {} line {line}] {}",
            w_mod.to_string_lossy(),
            w_msg.to_string_lossy()
        )
    } else if type_ == wren::WrenErrorType_WREN_ERROR_STACK_TRACE {
        println!(
            "[STACK TRACE: {} line {line}] {}",
            w_mod.to_string_lossy(),
            w_msg.to_string_lossy()
        )
    }
}

unsafe extern "C" fn delete_module(
    _vm: *mut WrenVM,
    _name: *const ::std::os::raw::c_char,
    result: wren::WrenLoadModuleResult,
) {
    if !result.source.is_null() {
        libc::free(result.source as *mut libc::c_void)
    }
}

extern "C" fn load_modules(vm: *mut WrenVM, name: *const i8) -> wren::WrenLoadModuleResult {
    let mut module = wren::WrenLoadModuleResult {
        source: ptr::null() as *const i8, // need to abort if module isn't found, otherwise a segfault
        onComplete: Some(delete_module),
        userData: ptr::null_mut() as *mut c_void,
    };

    let home = dirs::home_dir().unwrap_or(PathBuf::from("~/"));
    let default_stdlib = home.join(".void").join("lib");
    let stdlib_str = env::var("VOID_LIB").unwrap_or(default_stdlib.to_string_lossy().to_string());
    let r_name = unsafe { CStr::from_ptr(name) };
    let stdlib = PathBuf::from(stdlib_str);
    let user_mod_path = r_name.to_string_lossy().to_string();
    let strip_std = match user_mod_path.strip_prefix("std/") {
        None => &user_mod_path,
        Some(new_path) => new_path,
    };
    let mut mod_path = stdlib.join(strip_std);
    mod_path.set_extension("vd");
    let target = fs::canonicalize(&mod_path).unwrap_or(mod_path);

    if let Ok(exists) = target.try_exists() {
        if exists {
            let contents = fs::read_to_string(target).ok();
            if let Some(cnt) = contents {
                let data =
                    CString::new(cnt).expect("Unable to convert module source to valid type");
                let data_slice = data.as_bytes_with_nul();
                unsafe {
                    let buffer = libc::malloc(data_slice.len()) as *mut u8;
                    if !buffer.is_null() {
                        // Should I free if it is null?
                        ptr::copy_nonoverlapping(data_slice.as_ptr(), buffer, data_slice.len());
                        module.source = buffer as *const i8;
                    }
                }
            }
        } else {
            crate::abort(
                vm,
                &format!("Couldn't read module: {} at {:?}", &user_mod_path, target),
            )
        }
    } else {
        crate::abort(
            vm,
            &format!("Module not found: {} at {:?}", &user_mod_path, target),
        )
    }

    module
}

unsafe extern "C" fn bind_foreign_methods(
    _vm: *mut WrenVM,
    module: *const ::std::os::raw::c_char,
    class_name: *const ::std::os::raw::c_char,
    is_static: bool,
    signature: *const ::std::os::raw::c_char,
) -> wren::WrenForeignMethodFn {
    let r_module = CStr::from_ptr(module);
    let r_class = CStr::from_ptr(class_name);
    let r_signature = CStr::from_ptr(signature);

    // This is probably stupid and buggy. Need to fix later
    match r_module.to_bytes() {
        b"std/os" => match r_class.to_bytes() {
            b"Env" => {
                if is_static {
                    match r_signature.to_bytes() {
                        b"get(_)" => return Some(crate::lang::os::get_env),
                        b"set(_,_)" => return Some(crate::lang::os::set_env),
                        _ => {}
                    }
                }
            }
            _ => {}
        },
        b"std/encoding" => match r_class.to_bytes() {
            b"Base64" => {
                if is_static {
                    match r_signature.to_bytes() {
                        b"encode(_)" => return Some(crate::lang::encoding::base64_encode)
                        _ => {}
                    }
                }
            },
            _ => {}
        }
        _ => {}
    }

    None
}

extern "C" fn bind_foreign_class(
    _vm: *mut WrenVM,
    module: *const ::std::os::raw::c_char,
    class_name: *const ::std::os::raw::c_char,
) -> wren::WrenForeignClassMethods {
    let mut methods = wren::WrenForeignClassMethods {
        allocate: None,
        finalize: None,
    };

    unsafe {
        let r_module_cstr = CStr::from_ptr(module);
        let r_class_cstr = CStr::from_ptr(class_name);

        let r_module = r_module_cstr.to_string_lossy();
        let r_class = r_class_cstr.to_string_lossy();

        if r_module == "std/fs" {
            if r_class == "File" {
                dbg!("Attempt class assignment");
                methods.allocate = Some(crate::lang::fs::file_alloc);
                methods.finalize = Some(crate::lang::fs::file_dealloc);
            }
        }
    }

    methods
}

#[no_mangle]
pub extern "C" fn fan_str_free(ptr: *mut c_char) {
    unsafe {
        // Retake pointer to free memory
        if !ptr.is_null() {
            drop(CString::from_raw(ptr));
        }
    }
}
