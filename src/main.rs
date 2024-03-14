use fan::FanVM;
mod cli;
use clap::Parser;
use std::{fs, path::Path, process};

fn main() {
    let app = cli::Args::parse();

    match &app.command {
        Some(cli::Commands::Run { target }) => {
            let mut vm = FanVM::default();

            if let Some(input) = target {
                let fp = Path::new(input);
                if !fp.exists() || !fp.is_file() {
                    eprintln!("{} is not a valid filepath", fp.display());
                    process::exit(1);
                }

                let data = fs::read_to_string(fp).expect("could not read file");

                let _ = vm.exec(&data, Some(&input));
            } else {
                // repl
            }
        }
        None => {}
    }
}
