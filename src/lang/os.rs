use crate::wren::*;
use std::env;
use std::ffi::{CStr, CString};
use std::io::Read;

pub extern "C" fn get_env(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 2) };
    let user_input = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1))) };
    let mut key = String::new();
    if let Err(e) = user_input.as_bytes().read_to_string(&mut key) {
        crate::abort(vm, &e.to_string());
        return;
    }

    let val = env::var(key).ok();
    match val {
        Some(v) => unsafe {
            let text = match CString::new(v) {
                Ok(i) => i,
                Err(e) => panic!("{e}"),
            };
            let txt_prt = text.as_ptr();
            wrenSetSlotString(vm, 0, txt_prt);
        },
        None => unsafe { wrenSetSlotNull(vm, 0) },
    }
}

pub extern "C" fn set_env(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 3) };

    let key = unsafe {CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1)))};
    let val = unsafe {CString::from(CStr::from_ptr(wrenGetSlotString(vm, 2)))};

    let mut key_buff = String::new();
    let mut val_buff = String::new();
    key.as_bytes().read_to_string(&mut key_buff).unwrap();
    val.as_bytes().read_to_string(&mut val_buff).unwrap();

    env::set_var(key_buff, val_buff)
}
