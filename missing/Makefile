RUSTDOC = rustdoc --edition 2024 -o ../docs
all:	doc not-found

doc:
	rm -f ../docs/crates.js
	$(RUSTDOC) missing.rs
	$(RUSTDOC) man-cat.rs
	$(RUSTDOC) man-echo.rs
	$(RUSTDOC) man-ed.rs
	$(RUSTDOC) man-printf.rs
	$(RUSTDOC) not-found.rs
	$(RUSTDOC) vi-wrap.rs
	$(RUSTDOC) fmt-wrap.rs
	$(RUSTDOC) get-env.rs
	$(RUSTDOC) playground-uname.rs
	$(RUSTDOC) playground-cat-security_notice.rs
	$(RUSTDOC) playground-read-security_notice.rs
	$(RUSTDOC) how.rs
	$(RUSTDOC) why.rs
get-env:
	rustfmt get-env.rs
	rustc get-env.rs

not-found:
	rustfmt not-found.rs
	rustc not-found.rs
	-./not-found 1> not-found.stdout 2> not-found.stderr

clean:
	rm -f get-env not-found get-uname

