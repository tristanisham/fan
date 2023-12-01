use std::ffi::{c_char, CStr, CString};

use base32;
use base64::Engine;

/// base64_encode encodes bytes as Base64. It is the caller's responsiblity to free
/// the returned pointer with `str_free()`.
#[no_mangle]
pub extern "C" fn base64_encode(input: *const c_char) -> *mut c_char {
    let input_str = unsafe { CStr::from_ptr(input) };
    let input_bytes = input_str.to_bytes();

    let encoder = base64::engine::general_purpose::GeneralPurpose::new(
        &base64::alphabet::STANDARD,
        base64::engine::GeneralPurposeConfig::default(),
    );

    let output_str = encoder.encode(input_bytes);
    let c_encoded = CString::new(output_str).expect("CString::new failed");

    c_encoded.into_raw()
}

// Function to free the memory allocated by base64_encode
/// base64_decode decodes bytes from Base64. It is the caller's responsiblity to free
/// the returned pointer with `str_free()`.
#[no_mangle]
pub extern "C" fn base64_decode(input: *const c_char) -> *mut c_char {
    let input_str = unsafe { CStr::from_ptr(input) };
    let input_bytes = input_str.to_bytes();

    let decoder = base64::engine::general_purpose::GeneralPurpose::new(
        &base64::alphabet::STANDARD,
        base64::engine::GeneralPurposeConfig::default(),
    );

    let out = decoder.decode(input_bytes).unwrap();
    let c_encoded = CString::new(out).expect("CString::new failed");

    c_encoded.into_raw()
}

/// base32_encode encodes bytes as Base32. It is the caller's responsiblity to free
/// the returned pointer with `str_free()`
#[no_mangle]
pub extern "C" fn base32_encode(input: *const c_char) -> *mut c_char {
    let input_str = unsafe { CStr::from_ptr(input) };
    let input_bytes = input_str.to_bytes();

    let output_str = base32::encode(base32::Alphabet::RFC4648 { padding: true }, input_bytes);
    let c_encoded = CString::new(output_str).expect("CString::new failed");

    c_encoded.into_raw()
}

/// base32_decode decodes bytes from Base32. It is the caller's responsiblity to free
/// the returned pointer with `str_free()`.
#[no_mangle]
pub extern "C" fn base32_decode(input: *const c_char) -> *mut c_char {
    let input_str = unsafe { CStr::from_ptr(input) };
    let data = input_str.to_string_lossy();

    let output_str = base32::decode(base32::Alphabet::RFC4648 { padding: true }, &data).unwrap();
    let c_encoded = CString::new(output_str).expect("CString::new failed");

    c_encoded.into_raw()
}


/// base16_encode encodes bytes as Base16. It is the caller's responsiblity to free
/// the returned pointer with `str_free()`
#[no_mangle]
pub extern "C" fn base16_encode(input: *const c_char, upper: bool) -> *mut c_char {
    let input_str = unsafe { CStr::from_ptr(input) };
    let input_bytes = input_str.to_bytes();

    let out = match upper {
        true => base16::encode_upper(input_bytes),
        false => base16::encode_lower(input_bytes),
    };

    let c_encoded = CString::new(out).expect("CString::new failed");

    c_encoded.into_raw()
}

/// base16_decode decodes bytes from Base16. It is the caller's responsiblity to free
/// the returned pointer with `str_free()`.
#[no_mangle]
pub extern "C" fn base16_decode(input: *const c_char) -> *mut c_char {
    let input_str = unsafe { CStr::from_ptr(input) };
    let data = input_str.to_bytes();

    let output_str = base16::decode(&data).unwrap();
    let c_encoded = CString::new(output_str).expect("CString::new failed");

    c_encoded.into_raw()
}