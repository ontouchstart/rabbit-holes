//! Reference
//!
//! [git2::Repository::open]
//!
//! [git2::BranchType]
//!
//! [git2::Repository::branches]
//!
//! [git2::Repository::branch]
//!
use git2::BranchType;
use git2::Repository;

fn main() {
    match Repository::open("openclaw") {
        Ok(repo) => {
            let branches = repo.branches(Some(BranchType::Remote)).unwrap();
            let mut count = 0;
            for branch in branches {
                let (branch_name, _branch_type) = branch.unwrap();
                count += 1;
                println!(
                    "{}:\t{}",
                    count,
                    branch_name.name().unwrap().unwrap().to_string()
                );
            }
        }
        Err(e) => panic!("failed to open: {}", e),
    };
}
