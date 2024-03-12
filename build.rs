use std::fs;
use std::path::PathBuf;

fn main() {
    cc::Build::new()
        .file("src/wren/wren.c")
        .include("include/")
        .warnings(false)
        .flag("-O2")
        .compile("fan");

    include_wren();
    // The bindgen::Builder is the main entry point
    // to bindgen, and lets you build up options for
    // the resulting bindings.
    let bindings = bindgen::Builder::default()
        // The input header we would like to generate
        // bindings for.
        .header("include/wren.h")
        .parse_callbacks(Box::new(bindgen::CargoCallbacks::new()))
        // Finish the builder and generate the bindings.
        .generate()
        // Unwrap the Result and panic on failure.
        .expect("Unable to generate bindings");

    // Write the bindings to the $OUT_DIR/bindings.rs file.
    let out_path = PathBuf::from("src/wren/mod.rs");
    let mut output = String::from("#![allow(non_upper_case_globals)]\n#![allow(non_camel_case_types)]\n#![allow(non_snake_case)]\n\n");

    output.push_str(&bindings.to_string().trim_start());
    fs::write(out_path, output).expect("failed to write out bindings");
}

#[cfg(debug_assertions)]
fn include_wren() {
    println!("cargo:rustc-link-search=target/debug/");
}

#[cfg(not(debug_assertions))]
fn include_wren() {
    println!("cargo:rustc-link-search=target/release/");
}
