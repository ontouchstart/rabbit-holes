all:	libgit2 openclaw

	du -h libgit2
	du -h openclaw

	cd libgit2 && git branch -a | grep remote | cat -n
	cd openclaw && git branch -a | grep remote | cat -n

	cd libgit2 && git log -1
	cd openclaw && git log -1

	cargo run --bin libgit2-latest-commit | tee libgit2-latest-commit.log
	cargo run --bin libgit2-remote-branches | tee libgit2-remote-branches.log

	cargo run --bin openclaw-remote-branches | tee openclaw-remote-branches.log
	cargo run --bin openclaw-latest-commit | tee openclaw-latest-commit.log

	cargo tree | tee cargo-tree.log

libgit2:
	cargo run --bin libgit2-clone

openclaw:
	cargo run --bin openclaw-clone

clean:
	rm -rf openclaw libgit2	target
