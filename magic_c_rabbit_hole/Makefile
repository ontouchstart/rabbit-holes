RUSTDOC = rustdoc --edition 2024 -o ../docs
all:
	rustfmt magic.rs
	cat -n Makefile
	cat -n magic.rs
	cat -n magic.h
	cat -n magic.c
	gcc -c magic.c -o magic.o
	ar rcs libmagic.a magic.o
	rustc magic.rs -L . -l magic
	-./magic
	rm -rf *.o *.a ./magic
	$(RUSTDOC) magic_c_rabbit_hole.rs
