#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! ```zsh
//! % Missing Semester
//! zsh: command not found: Missing
//! ```
//! ```zsh
//! % bash
//!
//! The default interactive shell is now zsh.
//! To update your account to use zsh, please run `chsh -s /bin/zsh`.
//! For more details, please visit https://support.apple.com/kb/HT208050.
//! bash-3.2$ Missing Semester
//! bash: Missing: command not found
//! ```
//! We can implement the above with rust [std::process::Command]
//!
//! ```
//! std::process::Command::new("Missing")
//!        .arg("Semester")
//!        .output()
//!        .expect("Missing: command not found");
//! ```
//! Compile and run `not-found.rs`
//! ```sh
//! rustc not-found.rs
//! ./not-found 1> not-found.stdout 2> not-found.stderr
//! ```
//! `not-found.stdout` (should be empty)
//! ```text
#![doc = include_str!("not-found.stdout")]
//! ```
//! `not-found.stderr` (should be non-empty)
//! ```text
#![doc = include_str!("not-found.stderr")]
//! ```
use std::process::Command;
fn main() {
    Command::new("Missing")
        .arg("Semester")
        .output()
        .expect("Missing: command not found");
}
