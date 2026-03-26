all:
	cat -n Makefile

build:
	cmake -B build
	make -C build
	make -C build test

clean:
	rm -rf build

demo:	build
	./build/bin/demo

gpt-2: 	gpt-2-alloc \
	gpt-2-backend \
	gpt-2-batched \
	gpt-2-ctx \
	gpt-2-sched 

gpt-2-alloc: build
	./build/bin/gpt-2-alloc
    
gpt-2-backend: build
	./build/bin/gpt-2-backend

gpt-2-batched: build
	./build/bin/gpt-2-batched

gpt-2-ctx: build
	./build/bin/gpt-2-ctx
	
gpt-2-sched: build
	./build/bin/gpt-2-sched
