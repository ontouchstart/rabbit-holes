//! # Naive stripping html tags (not working for CSS etc)
//! `rustc ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags.rs && ./ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags| tee ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags.log`
//! ## html
//!```text
#![doc = include_str!("ggml-gpt-oss-20b-GGUF-curl.log")]
//! ```
//! ## text
//!```text
#![doc = include_str!("ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags.log")]
//! ```
use std::io::{self, Write};
use std::process::Command;

fn strip_tags(html: &[u8]) -> Vec<u8> {
    let s = std::str::from_utf8(html).unwrap_or("");
    let mut out = String::new();
    let mut in_tag = false;
    for ch in s.chars() {
        match ch {
            '<' => in_tag = true,
            '>' => in_tag = false,
            _ if !in_tag => out.push(ch),
            _ => {}
        }
    }
    out.into_bytes()
}


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
        .write_all(&strip_tags(&output.stdout))
        .expect("Failed to write curl output to stdout");
}

