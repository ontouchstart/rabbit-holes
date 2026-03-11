all:
	env
	rustup update
	rustup --verbose --version
	rustup toolchain install stable
	rustup component add --toolchain stable rustfmt clippy
	rustup override set stable
	cargo install cargo-expand
	rustc --version | tee rustc-version.log
	rustdoc --version | tee rustdoc-vesion.log
	cargo --version | tee cargo-vesion.log
