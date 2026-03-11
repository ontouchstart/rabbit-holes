all:	
	env
	which make
	make --version
	make --help
	cat -n Makefile
	make -C magic_c_rabbit_hole
