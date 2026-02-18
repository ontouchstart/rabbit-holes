//! Reference
//!
//! [git2::Repository::clone]
//!
//! [git2::Repository]
use git2::Repository;

fn main() {
    let url = "https://github.com/rust-lang/git2-rs.git";
    match Repository::clone(url, "git2-rs") {
        Ok(repo) => repo,
        Err(e) => panic!("failed to clone: {}", e),
    };
}
