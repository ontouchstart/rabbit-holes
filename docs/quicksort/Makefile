all:
	cargo clippy
	cargo fmt
	cargo run
	cargo doc --release --open
	cp -r target/doc .

clean:
	cargo clean

test:	test-partition test-quicksort

test-quicksort:
	clang -S -emit-llvm quicksort-test.c
	clang quicksort-test.ll 
	./a.out
	rm a.out

test-partition:
	clang -S -emit-llvm partition-test.c 
	clang partition-test.ll
	./a.out
	rm a.out
