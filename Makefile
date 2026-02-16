all:	version git

version:
	git version

git:
	git clone --help | col -b
	git clone https://git.kernel.org/pub/scm/git/git.git
	du -h git

make:	git
	cat -n git/Makefile
	
