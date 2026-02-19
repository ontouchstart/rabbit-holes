all:	libgit2 git2-rs openclaw

	du -h libgit2
	du -h git2-rs
	du -h openclaw

	-make -C makefiles/git2-rs log-p-git2-rs | head
	-make -C makefiles/libgit2 log-p-libgit2 | head 
	-make -C makefiles/git2-rs log-p-libgit2 | head
	-make -C makefiles/openclaw log-p-openclaw | head

libgit2:
	cargo run --bin libgit2-clone

git2-rs:
	cargo run --bin git2-rs-clone

openclaw:
	cargo run --bin openclaw-clone

clean:
	rm -rf target libgit2 git2-rs openclaw
