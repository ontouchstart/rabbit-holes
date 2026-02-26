#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! This will show the output of `cat security_notice.txt` in the playground.
//!
//! ```
//! println!(
//!     "{}",
//!     String::from_utf8(
//!         std::process::Command::new("cat")
//!             .arg("security_notice.txt")
//!             .output()
//!             .unwrap()
//!             .stdout
//!     )
//!     .unwrap()
//! );
//! ```
