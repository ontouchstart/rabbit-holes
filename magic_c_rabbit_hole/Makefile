all:
	gcc -c magic.c -o magic.o
	ar rcs libmagic.a magic.o
	rustc magic.rs -L . -l magic
	./magic
