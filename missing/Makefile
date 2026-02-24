all:	doc not-found

doc:
	rustdoc missing.rs -o ../docs
	rustdoc not-found.rs -o ../docs

not-found:
	rustfmt not-found.rs
	rustc not-found.rs
	-./not-found 1> not-found.stdout 2> not-found.stderr

clean:
	rm -f not-found
