all:	
	env
	rustup update
	rustup --verbose --version
	rustup toolchain install nightly
	rustup component add --toolchain nightly rustfmt clippy
	rustup override set nightly
	cargo install cargo-expand
	rustc --version | tee rustc-version.log
	rustdoc --version | tee rustdoc-vesion.log
	cargo --version | tee cargo-vesion.log
