#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! This will show the output of `free -h` in the playground.
//!
//! ```
//! println!(
//!     "{}",
//!     String::from_utf8(
//!         std::process::Command::new("free")
//!             .arg("-h")
//!             .output()
//!             .unwrap()
//!             .stdout
//!        )
//!        .unwrap()
//! );
//! ```
