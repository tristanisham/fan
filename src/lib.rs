mod wren;
use std::ffi::{CStr, CString};
use std::io::Read;
use std::path::PathBuf;
use std::str::FromStr;
use std::{env, fs, ptr};
use wren::*;

pub struct FanVM {
    pub vm: Box<wren::WrenVM>,
}

impl FanVM {
    pub fn new() -> Self {
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

        todo!();
    }
}

#[no_mangle]
extern "C" fn write_fn(_vm: *mut WrenVM, text: *const libc::c_char) {
    let buff = unsafe {
        let data = CString::from(CStr::from_ptr(text));
        data
    };

    let mut output = String::new();
    buff.as_bytes().read_to_string(&mut output).unwrap();

    println!("{output}")
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
        let _ = unsafe { CStr::from_ptr(result.source) };
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
        abort(vm, msg);
    }

    if usr_path.starts_with("std/") {
        usr_path.strip_prefix("std/").unwrap();
        let new_path = fan_path.join(usr_path);
        fan_path = new_path;
    }

    if fan_path.extension().is_some() {
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
                format!("Could not read module of {}\n{}", fan_path.display(), e),
            );
            return module;
        }
    };

    let content_heap = CString::new(content).unwrap();
    let content_ptr = content_heap.as_ptr();
    module.source = content_ptr;

    module
}

/// Aborts the current fiber and sends an error message back to the VM.
pub fn abort(vm: *mut WrenVM, msg: String) {
    unsafe {
        wrenEnsureSlots(vm, 1);
        let out = CString::new(msg.as_bytes().to_vec()).unwrap();
        wrenSetSlotString(vm, 0, out.as_ptr());
        wrenAbortFiber(vm, 0);
    }
}
