//! Reference
//!
//! [git2::Repository::open]
//!
//! [git2::Repository::revwalk]
//!
//! [git2::Revwalk]
//!
//! [git2::Revwalk::push_head]
//!
//! [git2::Repository::find_commit]
//!
//! [git2::Commit]
//!
//! [git2::Commit::author]
//!
//! [git2::Signature]
//!
//! [git2::Signature::name]
//!
//! [git2::Signature::email]
//!
//! [git2::Signature::when]
//!
use git2::Repository;

fn main() {
    match Repository::open("git2-rs") {
        Ok(repo) => {
            let mut revwalk = repo.revwalk().unwrap();
            revwalk.push_head().unwrap();
            for id in revwalk.take(1) {
                let id = id.unwrap();
                let commit = repo.find_commit(id).unwrap();
                println!("{:?}", &commit);
                println!("{}", &commit.author().name().unwrap());
                println!("{}", &commit.author().email().unwrap());
                println!("{:?}", &commit.author().when());
            }
        }
        Err(e) => panic!("failed to open: {}", e),
    };
}
