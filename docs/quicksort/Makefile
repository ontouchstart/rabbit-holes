all:
	cargo clippy
	cargo fmt
	cargo run
	cargo doc --release --open
	cp -r target/doc .

clean:
	cargo clean
	rm -f *.ll

test:	test-partition test-quicksort

partition.ll:	partition.c partition.h
	clang -S -emit-llvm partition.c

quicksort.ll:
	clang -S -emit-llvm quicksort.c
	
test-quicksort: partition.ll quicksort.ll
	clang -S -emit-llvm quicksort-test.c
	clang quicksort-test.ll partition.ll quicksort.ll
	./a.out
	rm a.out

test-partition: partition.ll
	clang -S -emit-llvm partition-test.c 
	clang partition-test.ll partition.ll
	./a.out
	rm a.out
