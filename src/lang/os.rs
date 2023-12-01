use std::{env, ffi::CString};

use crate::{
    cstr_to_string,
    wren::{self, WrenVM},
    FanSlotType,
};

pub extern "C" fn get_env(vm: *mut WrenVM) {
    unsafe {
        let key_ptr = wren::wrenGetSlotString(vm, 1);
        let key = cstr_to_string(key_ptr);
        wren::wrenEnsureSlots(vm, 1);
        match env::var(&key).ok() {
            Some(val) => {
                let value =
                    CString::new(val).expect(&format!("Unsupported encoding for ENV {key}"));
                wren::wrenSetSlotString(vm, 0, value.as_ptr());
            }
            None => wren::wrenSetSlotNull(vm, 0),
        }
    };
}

pub extern "C" fn set_env(vm: *mut WrenVM) {
    unsafe {
        let key_ptr = wren::wrenGetSlotString(vm, 1);
        let val_type = FanSlotType::from_slot(vm, 2);
        let val_ptr = wren::wrenGetSlotString(vm, 2);

        let key = cstr_to_string(key_ptr);
        match val_type {
            FanSlotType::Null => {
                env::remove_var(key) // watchout with unsafe
            }
            FanSlotType::String => {
                let value = cstr_to_string(val_ptr);
                env::set_var(key, value);
            }
            _ => crate::abort(vm, &format!("Unable to set {key} with provided value")),
        }
    }
}