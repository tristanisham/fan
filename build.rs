fn main() {
  cc::Build::new()
      .file("src/wren.c")
      .include("src/")
      .compile("wren");

  println!("cargo:rustc-link-lib=wren");
  println!("cargo:rerun-if-changed=include/wren.h");

  let bindings = bindgen::builder()
      .header("include/wren.h")
      // Tell cargo to invalidate the built crate whenever any of the
      // included header files changed.
      .parse_callbacks(Box::new(bindgen::CargoCallbacks))
      // Finish the builder and generate the bindings.
      .generate()
      // Unwrap the Result and panic on failure.
      .expect("Unable to generate bindings");

  bindings
      .write_to_file("src/wren.rs")
      .expect("Couldn't write bindings!");
}
