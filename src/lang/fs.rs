use std::{
    ffi::{CStr, CString},
    fs,
    path::PathBuf,
};

use crate::wren::{self, WrenVM};

pub extern "C" fn file_alloc(vm: *mut WrenVM) {
    dbg!("ATTEMPT POINTER");

    let file_slot = unsafe {
        wren::wrenSetSlotNewForeign(vm, 0, 0, std::mem::size_of::<*mut libc::FILE>())
            as *mut *mut libc::FILE
    };

    let file_name_cptr = unsafe { wren::wrenGetSlotString(vm, 1) };
    let file_mode_cptr = unsafe { wren::wrenGetSlotString(vm, 2) };

    let file_name_cstr = unsafe { CStr::from_ptr(file_name_cptr) };
    let file_mode_cstr = unsafe { CStr::from_ptr(file_mode_cptr) };

    let file_name = match file_name_cstr.to_str() {
        Ok(s) => s,
        Err(e) => {
            crate::abort(vm, &format!("UNICODE ERROR: {e}"));
            return;
        }
    };

    let file_path = PathBuf::from(file_name);
    let file_canonical = fs::canonicalize(&file_path).unwrap_or(file_path);
    if !file_canonical.exists() {
        crate::abort(vm, &format!("FILE NOT FOUND: {:?}", file_canonical));
        return;
    }

    let file_str = match file_canonical.to_str() {
        Some(s) => s,
        None => {
            crate::abort(vm, "Could not convert path to C str");
            return;
        }
    };

    let file_ptr = match CString::new(file_str) {
        Err(e) => {
            crate::abort(vm, &format!("{e}"));
            return;
        }
        Ok(s) => s,
    };

    unsafe {
        let file = libc::fopen(file_ptr.as_ptr(), file_mode_cstr.as_ptr());
        if file.is_null() {
            crate::abort(vm, "Failed to open file");
            return;
        }
        *file_slot = file;
    }
}

pub unsafe extern "C" fn file_dealloc(file: *mut libc::c_void) {
    if (*(file as *mut *mut libc::FILE)).is_null() {
        return;
    }

    libc::fclose(*(file as *mut *mut libc::FILE));
}