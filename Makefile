JJ=./.cargo/bin/jj

all:	./.cargo/bin/jj .jj
	$(JJ) --version
	$(JJ) status
	$(JJ) show

.cargo/bin/jj:
	cargo install --git https://github.com/jj-vcs/jj.git --locked --bin jj jj-cli --root .cargo

.jj:
	$(JJ) git init 
