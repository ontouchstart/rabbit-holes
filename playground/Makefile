RUSTDOC = rustdoc --edition 2024 -o ../docs
all:
	$(RUSTDOC) playground-cat-security_notice.rs
	$(RUSTDOC) playground-env.rs
	$(RUSTDOC) playground-free-h.rs
	$(RUSTDOC) playground-main.rs
	$(RUSTDOC) playground-read-security_notice.rs
	$(RUSTDOC) playground-rev-pipe.rs
	$(RUSTDOC) playground-uname-a.rs
	rustc src/main.rs && ./main && rm main
