RUSTDOC = rustdoc --edition 2024 -o ../docs
all:	doc not-found

doc:
	$(RUSTDOC) missing.rs
	$(RUSTDOC) cat.rs
	$(RUSTDOC) how.rs
	$(RUSTDOC) not-found.rs
	$(RUSTDOC) vi-wrap.rs
	$(RUSTDOC) fmt-wrap.rs
	$(RUSTDOC) get-env.rs
	$(RUSTDOC) get-uname.rs
	$(RUSTDOC) why.rs

get-env:
	rustfmt get-env.rs
	rustc get-env.rs

not-found:
	rustfmt not-found.rs
	rustc not-found.rs
	-./not-found 1> not-found.stdout 2> not-found.stderr

get-uname:
	rustfmt get-uname.rs
	rustc get-uname.rs

clean:
	rm -f get-env not-found get-uname
