#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! This will show the output of `uname -a` in the playground.
//!
//! ```
//!     println!("{}", String::from_utf8(
//!         std::process::Command::new("uname")
//!              .arg("-a")
//!              .output()
//!              .unwrap()
//!              .stdout).unwrap());
//! ```
//!
fn main() {
    let stdout = String::from_utf8(
        std::process::Command::new("uname")
            .arg("-a")
            .output()
            .unwrap()
            .stdout,
    )
    .unwrap();
    println!("{}", stdout);
}
