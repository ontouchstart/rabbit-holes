GIT=git/git
all:	env old_version make new-version

env:
	env

old_version:
	git version

new-version: git/git-version
	git/git-version

git/git-version: git
	make -C git git-version

git:
	git clone --help | col -b 
	git clone https://git.kernel.org/pub/scm/git/git.git
	du -h git

make:	git
	cat -n git/Makefile
	
