//! [git2::Repository::open]
//!
use git2::Repository;

fn main() {
    match Repository::open("openclaw") {
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
