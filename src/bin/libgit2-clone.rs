//! Reference
//!
//! [git2::Repository::clone]
//!
//! [git2::Repository]
use git2::Repository;

fn main() {
    let url = "https://github.com/libgit2/libgit2.git";
    match Repository::clone(url, "libgit2") {
        Ok(repo) => repo,
        Err(e) => panic!("failed to clone: {}", e),
    };
}
