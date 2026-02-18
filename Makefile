all:	libgit2 git2-rs openclaw

	du -h libgit2
	du -h git2-rs
	du -h openclaw

	cd libgit2 && git branch -a | grep remote | cat -n
	cd git2-rs && git branch -a | grep remote | cat -n
	cd openclaw && git branch -a | grep remote | cat -n

	cd libgit2 && git log -1
	cd git2-rs && git log -1
	cd openclaw && git log -1

	cargo run --bin libgit2-remote-branches | tee libgit2-remote-branches.log
	cargo run --bin git2-rs-remote-branches | tee git2-rs-remote-branches.log
	cargo run --bin openclaw-remote-branches | tee openclaw-remote-branches.log

	cargo run --bin libgit2-latest-commit | tee libgit2-latest-commit.log
	cargo run --bin git2-rs-latest-commit | tee git2-rs-latest-commit.log
	cargo run --bin openclaw-latest-commit | tee openclaw-latest-commit.log

	cargo tree | tee cargo-tree.log

libgit2:
	cargo run --bin libgit2-clone

git2-rs:
	cargo run --bin git2-rs-clone

openclaw:
	cargo run --bin openclaw-clone

clean:
	rm -rf target libgit2 git2-rs openclaw
