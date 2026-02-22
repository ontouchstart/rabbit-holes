all:
	cargo clippy
	cargo fmt
	cargo run
	cargo doc --release --open

clean:
	cargo clean
	rm -f *.ll

test:	test-partition test-quicksort test-partition-while test-quicksort-while

partition.ll:	partition.c partition.h
	clang -S -emit-llvm partition.c

partition-while.ll:	partition-while.c partition.h
	clang -S -emit-llvm partition-while.c

quicksort.ll:
	clang -S -emit-llvm quicksort.c
	
test-partition: partition.ll
	clang -S -emit-llvm partition-test.c 
	clang partition-test.ll partition.ll
	./a.out
	rm a.out

test-partition-while: partition-while.ll
	clang -S -emit-llvm partition-test.c 
	clang partition-test.ll partition-while.ll
	./a.out
	rm a.out

test-quicksort: partition.ll quicksort.ll
	clang -S -emit-llvm quicksort-test.c
	clang quicksort-test.ll partition.ll quicksort.ll
	./a.out
	rm a.out

test-quicksort-while: partition-while.ll quicksort.ll
	clang -S -emit-llvm quicksort-test.c
	clang quicksort-test.ll partition-while.ll quicksort.ll
	./a.out
	rm a.out
