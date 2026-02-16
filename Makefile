all:	env old-version make new-version

env:
	env

old-version:
	git version

new-version: git/GIT-VERSION-FILE
	cat git/GIT-VERSION-FILE

git/GIT-VERSION-FILE: git
	make -C git GIT-VERSION-FILE

git:
	git clone --help | col -b 
	git clone https://git.kernel.org/pub/scm/git/git.git
	du -h git

make:	git
	cat -n git/Makefile
	
