all:	doc not-found

doc:
	rustdoc missing.rs -o ../docs
	rustdoc not-found.rs -o ../docs
	rustdoc vi-wrap.rs -o ../docs
	rustdoc fmt-wrap.rs -o ../docs
	rustdoc get-env.rs -o ../docs

get-env:
	rustfmt get-env.rs
	rustc get-env.rs

not-found:
	rustfmt not-found.rs
	rustc not-found.rs
	-./not-found 1> not-found.stdout 2> not-found.stderr

clean:
	rm -f get-env not-found
