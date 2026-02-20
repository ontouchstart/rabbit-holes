all:  tree-sitter/target/debug/tree-sitter
	tree-sitter/target/debug/tree-sitter --help

tree-sitter:
	git clone https://github.com/tree-sitter/tree-sitter.git

tree-sitter/target/debug/tree-sitter: tree-sitter
	cd tree-sitter && cargo tree && cargo build

clean:
	rm -rf tree-sitter
