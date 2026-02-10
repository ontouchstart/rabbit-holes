all:
	cargo clippy
	cargo fmt
	cargo run
	cargo doc --release --open
	cp -r target/doc .

clean:
	cargo clean

quicksort-test:
	clang -S -emit-llvm quicksort.c
	clang quicksort.ll -o quicksort
	./quicksort
