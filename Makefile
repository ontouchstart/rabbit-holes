all:	EricLBuehler/mistral.rs
	cd EricLBuehler/mistral.rs && cargo tree && cargo build	
	cargo build

EricLBuehler/mistral.rs:
	mkdir -p EricLBuehler 
	git clone https://github.com/EricLBuehler/mistral.rs EricLBuehler/mistral.rs

cli:
	./EricLBuehler/mistral.rs/target/debug/mistralrs run -m Qwen/Qwen3-4B

server:
	./EricLBuehler/mistral.rs/target/debug/mistralrs serve --ui -m Qwen/Qwen3-4B
