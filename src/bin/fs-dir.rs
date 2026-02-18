//!
//! # Output
//! ```log
#![doc = include_str!("../../fs-dir.log")]
//! ```

use std::fs;

/// Reference
/// - [std::fs::read_dir]
/// - [std::fs::DirEntry]
/// - [std::fs::DirEntry::path]
/// - [std::fs::DirEntry::file_name] ([std::ffi::OsString]) ([std::ffi::OsString::into_string])
/// - [std::fs::DirEntry::file_type] ([std::fs::FileType]) ([std::fs::FileType::is_dir])
/// - [std::fs::DirEntry::metadata] ([std::fs::Metadata])
///
fn main() -> std::io::Result<()> {
    for entry in fs::read_dir("openclaw/.git")? {
        let dir = entry?;
        println!("{:?}", dir.path());
        println!("{}", dir.file_name().into_string().unwrap());
        println!("{:#?}", dir.file_type());
        println!("{:#?}", dir.file_type().unwrap().is_dir());
        println!("{:#?}", dir.metadata());
        println!("\n");
    }
    Ok(())
}
