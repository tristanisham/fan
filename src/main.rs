use std::{env, fs, path::PathBuf};

fn main() {
    let argv: Vec<String> = env::args().collect();
    if let Some(target) = argv.last() {
        let buff = PathBuf::from(target);
        let content = fs::read_to_string(buff).expect(&format!("Unable to open file {target}"));
        let runtime = void::Runtime::default();

        runtime.execute(&content).unwrap();
    }
}
