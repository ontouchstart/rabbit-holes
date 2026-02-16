GIT=git/git
all:	env version new-version status

env:
	env
status:	git/git
	$(GIT) status

version:
	git version

new-version: git/git
	$(GIT) --version

git:
	# git clone --help | col -b (remove for now so it runs on windows)
	git clone https://git.kernel.org/pub/scm/git/git.git
	du -h git

git/git: git
	make -C git

make:	git
	cat -n git/Makefile
	
