#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! This will read and print out `security_notice.txt` in the playground.
//!
//! ```
//! use std::io::Read;
//!
//! let path = std::path::Path::new("security_notice.txt");
//! let display = path.display();
//!
//! let mut file = match std::fs::File::open(&path) {
//!     Err(why) => panic!("couldn't open {}: {}", display, why),
//!     Ok(file) => file,
//! };
//!
//! let mut s = String::new();
//! match file.read_to_string(&mut s) {
//!     Err(why) => panic!("couldn't read {}: {}", display, why),
//!     Ok(_) => print!("{}", s),
//! }
//! ```
