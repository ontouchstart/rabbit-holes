all:	gitoxide libgit2 git2-rs openclaw

	du -h gitoxide
	du -h libgit2
	du -h git2-rs
	du -h openclaw

	-make -C makefiles/gitoxide git-log-p | head
	-make -C makefiles/git2-rs git-log-p | head
	-make -C makefiles/git2-rs/libgit2 git-log-p |head
	-make -C makefiles/libgit2 git-log-p | head 
	-make -C makefiles/openclaw git-log-p | head

gitoxide: # bootstrap, only use the clone feature of gix (gix clone)
	git clone https://github.com/GitoxideLabs/gitoxide.git

gitoxide/target/debug/gix: gitoxide
	cd gitoxide && cargo build

libgit2: gitoxide/target/debug/gix
	./gitoxide/target/debug/gix clone https://github.com/libgit2/libgit2.git

git2-rs: gitoxide/target/debug/gix
	./gitoxide/target/debug/gix clone https://github.com/rust-lang/git2-rs.git

openclaw: gitoxide/target/debug/gix
	./gitoxide/target/debug/gix clone https://github.com/openclaw/openclaw.git

clean:
	rm -rf target gitoxide libgit2 git2-rs openclaw
