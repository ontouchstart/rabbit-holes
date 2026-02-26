//! # The chat session (see the [Makefile](../ggml_gpt_oss_20b_GGUF_make/index.html))
//! `make cli`
//!
#![doc = include_str!("ggml-gpt-oss-20b-GGUF-curl.md")]
//! # Run the code
//! `make run`
//! ```sh
#![doc = include_str!("ggml-gpt-oss-20b-GGUF-curl.log")]
//! ```

use std::io::{self, Write};
use std::process::Command;

fn main() {
    // Run `curl https://curl.se` (the `--silent` flag removes progress output)
    let output = Command::new("curl")
        .arg("--silent")
        .arg("https://curl.se")
        .output()
        .expect("Failed to run `curl`. Is it installed and in your PATH?");

    // Check that the command succeeded
    if !output.status.success() {
        eprintln!(
            "`curl` exited with status {}",
            output.status.code().unwrap_or(-1)
        );
        std::process::exit(1);
    }

    // Write the captured stdout to the program's stdout
    io::stdout()
        .write_all(&output.stdout)
        .expect("Failed to write curl output to stdout");
}

