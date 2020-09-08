use std::env;
use std::fs;
use std::io::Write;
use std::path::PathBuf;

use vergen::{ConstantsFlags, generate_cargo_keys};

fn main() {
    // Put the linker script somewhere the linker can find it
    let out_dir = PathBuf::from(env::var("OUT_DIR").unwrap());
    fs::File::create(out_dir.join("memory.x"))
        .unwrap()
        .write_all(include_bytes!("memory.x"))
        .unwrap();
    println!("cargo:rustc-link-search={}", out_dir.display());
    println!("cargo:rerun-if-changed=memory.x");

    let mut flags = ConstantsFlags::BUILD_TIMESTAMP | ConstantsFlags::SHA;
    generate_cargo_keys(flags).expect("Unable to generate the cargo keys!");
}
