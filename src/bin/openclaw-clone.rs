//! Reference
//!
//! [git2::Repository::clone]
//!
//! [git2::Repository]
use git2::Repository;

fn main() {
    let url = "https://github.com/openclaw/openclaw";
    match Repository::clone(url, "openclaw") {
        Ok(repo) => repo,
        Err(e) => panic!("failed to clone: {}", e),
    };
}
