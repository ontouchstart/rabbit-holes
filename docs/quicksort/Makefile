all:
	cargo clippy
	cargo fmt
	cargo run
	cargo doc --release --open
	cp -r target/doc .

clean:
	cargo clean
