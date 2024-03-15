use std::{ffi::{CStr, CString}, io::Read};

use anyhow::Ok;

use crate::wren::*;

pub mod os;
pub mod fs;

/// vm_string returns a string from the VM. Will ensure slot+1 slots
unsafe fn vm_string(vm: *mut WrenVM, slot: i32) -> anyhow::Result<String> {
    wrenEnsureSlots(vm, slot+1);
    let i_cstr = CString::from(CStr::from_ptr(wrenGetSlotString(vm, slot)));
    let mut i_buff = String::new();
    i_cstr.as_bytes().read_to_string(&mut i_buff)?;

    return Ok(i_buff);
}

