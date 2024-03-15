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

    let key = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 1))) };
    let val = unsafe { CString::from(CStr::from_ptr(wrenGetSlotString(vm, 2))) };

    let mut key_buff = String::new();
    let mut val_buff = String::new();
    key.as_bytes().read_to_string(&mut key_buff).unwrap();
    val.as_bytes().read_to_string(&mut val_buff).unwrap();

    env::set_var(key_buff, val_buff)
}

pub mod process {
    use crate::{lang::vm_string, wren::*};
    use std::{env, ffi::CString};
    use sysinfo::{Pid, System};

    pub extern "C" fn all_args(vm: *mut WrenVM) {
        unsafe {
            wrenEnsureSlots(vm, 2);
            wrenSetSlotNewList(vm, 0);
            let args: Vec<String> = env::args().collect();
            args.into_iter().for_each(|a| {
                let out = CString::new(a).unwrap();
                let out_ptr = out.as_ptr();

                wrenSetSlotString(vm, 1, out_ptr);
                wrenInsertInList(vm, 0, -1, 1);
            })
        }
    }

    pub extern "C" fn cwd(vm: *mut WrenVM) {
        unsafe {
            wrenEnsureSlots(vm, 1);
            let cwd = std::env::current_dir().unwrap();
            let cwd = cwd.to_str().unwrap();
            let out = CString::new(cwd).unwrap();
            let text = out.as_ptr();
            wrenSetSlotString(vm, 0, text);
        }
    }

    pub extern "C" fn pid(vm: *mut WrenVM) {
        let proc_id = std::process::id();
        unsafe {
            wrenEnsureSlots(vm, 1);
            wrenSetSlotDouble(vm, 0, proc_id as f64);
        }
    }

    pub extern "C" fn ppid(vm: *mut WrenVM) {
        let mut system = System::new_all();
        system.refresh_all();

        let pid = std::process::id();
        if let Some(process) = system.process(Pid::from_u32(pid)) {
            let parent = match process.parent() {
                Some(p) => p,
                None => unsafe {
                    wrenSetSlotNull(vm, 0);
                    return;
                },
            };

            if let Some(parent) = system.process(parent) {
                let out = parent.pid().as_u32();
                unsafe {
                    wrenSetSlotDouble(vm, 0, out as f64);
                }
                return;
            }
        }

        unsafe {
            wrenSetSlotNull(vm, 0);
        }
    }

    /// exit will force the program to exit with the provided code
    pub extern "C" fn exit(vm: *mut WrenVM) {
        let exit_code = unsafe {
            wrenEnsureSlots(vm, 2);
            wrenGetSlotDouble(vm, 1)
        };

        // unsafe { wrenFreeVM(vm) };
        std::process::exit(exit_code as i32);
    }

    pub extern "C" fn exec(vm: *mut WrenVM) {
        unsafe {
            let target = vm_string(vm, 1);
            if let Err(tar) = target {
                crate::abort(vm, &tar.to_string());
                return;
            }

            wrenEnsureSlots(vm, 4);

            let args_count = wrenGetListCount(vm, 2);
            let target = target.unwrap();
            let new_target = target.clone();
            let mut args = vec![target];

            for i in 0..args_count {
                wrenGetListElement(vm, 2, i, 4);
                let arg = vm_string(vm, 4);
                if let Err(err) = arg {
                    crate::abort(vm, &err.to_string());
                    return;
                }

                let arg = arg.unwrap();
                args.push(arg);

                let out = match std::process::Command::new(&new_target).args(&args).output() {
                    Ok(out) => out,
                    Err(e) => {
                        crate::abort(vm, &e.to_string());
                        return;
                    }
                };

                let status = match out.status.success() {
                    true => &out.stdout,
                    false => &out.stderr,
                };

                let stdout = String::from_utf8_lossy(&status);
                let c_out = CString::new(stdout.as_bytes()).unwrap();
                let c_ptr = c_out.as_ptr();
                wrenSetSlotString(vm, 0, c_ptr);
            }
        }
    }
}

pub mod runtime {
    use std::ffi::CString;

    use crate::wren::*;

    pub extern "C" fn os(vm: *mut WrenVM) {
        let my_os = std::env::consts::OS;
        let val = CString::new(my_os).unwrap();
        let val_ptr = val.as_ptr();
        unsafe {
            wrenEnsureSlots(vm, 1);
            wrenSetSlotString(vm, 0, val_ptr);
        }
    }

    pub extern "C" fn arch(vm: *mut WrenVM) {
        let my_arch = std::env::consts::ARCH;
        let val = CString::new(my_arch).unwrap();
        let val_ptr = val.as_ptr();
        unsafe {
            wrenEnsureSlots(vm, 1);
            wrenSetSlotString(vm, 0, val_ptr);
        }
    }
}
