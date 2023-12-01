use std::{env, fs, path::PathBuf};

fn main() {
    let argv: Vec<String> = env::args().collect();
    if let Some(target) = argv.last() {
        match target.as_str() {
            "version" => println!("v0.4.0"),
            "help" => println!("TBD"),
            _ => {
                let buff = PathBuf::from(target);
                if !buff.exists() {
                    eprintln!("Path {target} doesn't exist");
                    std::process::exit(1);
                }

                let content =
                    fs::read_to_string(buff).expect(&format!("Unable to open file {target}"));
                let mut runtime = fan::Runtime::default();
                runtime.set_target(target);
                runtime.execute(&content).unwrap();
            }
        }
    }
}
