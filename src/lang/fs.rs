use libc::FILE;
use std::{
    collections::HashSet,
    ffi::{CStr, CString},
    fs,
    io::Read,
    mem,
    path::PathBuf,
    ptr,
};
use walkdir::WalkDir;

use crate::wren::*;

extern "C" fn close_file(file: *mut *mut FILE) {
    unsafe {
        if !(*file).is_null() {
            libc::fclose(*file);
            *file = ptr::null_mut();
        }
    }
}

pub extern "C" fn file_dealloc(data: *mut libc::c_void) {
    let file = data as *mut *mut libc::FILE;
    close_file(file);
}

pub extern "C" fn file_alloc(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 3) };
    let file =
        unsafe { wrenSetSlotNewForeign(vm, 0, 0, mem::size_of::<*mut FILE>()) } as *mut *mut FILE;

    let path_cstr = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1))) };
    let mode_cstr = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 2))) };

    let mut path = String::new();
    let mut mode = String::new();
    path_cstr.as_bytes().read_to_string(&mut path).unwrap();
    mode_cstr.as_bytes().read_to_string(&mut mode).unwrap();

    if !is_valid_filemode(&mode) {
        crate::abort(vm, "Invalid file mode");
        return;
    }

    let mut filepath = PathBuf::from(path);
    if let Ok(c) = filepath.canonicalize() {
        filepath = c;
    }

    let c_path = CString::new(filepath.to_str().unwrap()).unwrap();
    let c_path_ptr = c_path.as_ptr();
    let mode_cstr_ptr = mode_cstr.as_ptr();
    unsafe { *file = libc::fopen(c_path_ptr, mode_cstr_ptr) }
}

fn is_valid_filemode(mode: &str) -> bool {
    let valid: HashSet<&str> = HashSet::from([
        "w", "a", "r+", "w+", "a+", "rb", "wb", "ab", "rb+", "wb+", "ab+",
    ]);
    valid.contains(mode)
}

pub extern "C" fn file_write(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 2) };
    let file = unsafe { wrenGetSlotForeign(vm, 0) } as *mut *mut FILE;
    unsafe {
        if (*file).is_null() {
            crate::abort(vm, "Cannot write to a closed file.");
            return;
        }

        let user_bytes = CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1)));
        let str_ptr = user_bytes.as_ptr();
        libc::fwrite(
            str_ptr as *const libc::c_void,
            mem::size_of::<libc::c_char>(),
            user_bytes.count_bytes(),
            *file,
        );
    }
}

pub extern "C" fn file_read(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 0) }
    let file = unsafe { wrenGetSlotForeign(vm, 0) } as *mut *mut FILE;

    unsafe {
        if (*file).is_null() {
            crate::abort(vm, "Cannot read from a closed file.");
        }

        libc::fseek(*file, 0, libc::SEEK_END);
        let f_size = libc::ftell(*file);
        libc::fseek(*file, 0, libc::SEEK_SET);
        let mut buff: Vec<u8> = vec![0; f_size as usize + 1];
        buff[f_size as usize] = 0;

        libc::fread(
            buff.as_mut_ptr() as *mut libc::c_void,
            f_size as usize,
            1,
            *file,
        );

        let out = CString::from_vec_with_nul(buff).unwrap();
        let out_ptr = out.as_ptr();
        wrenSetSlotString(vm, 0, out_ptr);
    }
}

pub extern "C" fn file_close(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 0) }
    let file = unsafe { wrenGetSlotForeign(vm, 0) } as *mut *mut FILE;

    close_file(file);
}

pub extern "C" fn remove_file(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 2) };
    let path_cstr = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1))) };

    let mut buff = String::new();
    path_cstr.as_bytes().read_to_string(&mut buff).unwrap();

    let target = PathBuf::from(buff);
    if let Err(e) = fs::remove_file(target) {
        crate::abort(vm, &e.to_string())
    }
}

pub extern "C" fn list_dir_recursive(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 3) };
    let path_cstr = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1))) };

    let mut buff = String::new();
    path_cstr.as_bytes().read_to_string(&mut buff).unwrap();

    let path = PathBuf::from(buff);
    if !path.is_dir() {
        crate::abort(vm, &format!("{} must be a directory", path.display()));
        return;
    }

    unsafe { wrenSetSlotNewList(vm, 0) };

    for entry in WalkDir::new(path).follow_links(true) {
        let entry = match entry {
            Err(e) => return crate::abort(vm, &e.to_string()),
            Ok(a) => a,
        };

        unsafe {
            let pp = entry.path().to_str().unwrap();
            let data = CString::new(pp).unwrap();
            let data_ptr = data.as_ptr();
            wrenSetSlotString(vm, 2, data_ptr);
            if wrenGetSlotType(vm, 0) == WrenType_WREN_TYPE_LIST {
                wrenInsertInList(vm, 0, -1, 2);
            }
        }
    }
}

pub extern "C" fn list_all(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 3) };
    let path_cstr = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1))) };

    let mut buff = String::new();
    path_cstr.as_bytes().read_to_string(&mut buff).unwrap();

    let path = PathBuf::from(buff);
    if !path.is_dir() {
        crate::abort(vm, &format!("{} must be a directory", path.display()));
        return;
    }

    unsafe { wrenSetSlotNewList(vm, 0) };

    for entry in WalkDir::new(path).follow_links(true).max_depth(1) {
        let entry = match entry {
            Err(e) => return crate::abort(vm, &e.to_string()),
            Ok(a) => a,
        };

        unsafe {
            let pp = entry.path().to_str().unwrap();
            let data = CString::new(pp).unwrap();
            let data_ptr = data.as_ptr();
            wrenSetSlotString(vm, 2, data_ptr);
            if wrenGetSlotType(vm, 0) == WrenType_WREN_TYPE_LIST {
                wrenInsertInList(vm, 0, -1, 2);
            }
        }
    }
}

pub extern "C" fn is_dir(vm: *mut WrenVM) {
    unsafe { wrenEnsureSlots(vm, 1) };
    let path_cstr = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1))) };

    let mut buff = String::new();
    path_cstr.as_bytes().read_to_string(&mut buff).unwrap();

    let path = PathBuf::from(buff);
    let result = path.is_dir();

    unsafe {
        wrenSetSlotBool(vm, 0, result);
    }
}
