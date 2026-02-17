GIT=./git/git
all:	env old-version make build new-version
	$(GIT) version

env:
	env

old-version:
	git version

new-version: git/GIT-VERSION-FILE
	cat git/GIT-VERSION-FILE
	./git/git-version

git/GIT-VERSION-FILE: git
	make -C git GIT-VERSION-FILE

git:
	git clone --help | col -b 
	git clone https://git.kernel.org/pub/scm/git/git.git
	du -h git

make:	git
	cat -n git/Makefile

build:	make
	make -C git

status:	build
	$(GIT) status

test:	build
	time (make -C git test) > stdout-`date +%s`.log 2> stderr-`date +%s`.log
