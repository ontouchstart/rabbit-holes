#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! This will show the env in the playground.
//! ```
//!    println!(
//!        "{:#?}",
//!        std::process::Command::new("env")
//!            .output()
//!            .expect("Missing: command not found")
//!    );
//! ```
//!
fn main() {
    println!(
        "{:#?}",
        std::process::Command::new("env")
            .output()
            .expect("Missing: command not found")
    );
}
