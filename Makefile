all:	EricLBuehler/mistral.rs
	cd EricLBuehler/mistral.rs && cargo build	

EricLBuehler/mistral.rs:
	mkdir -p EricLBuehler 
	git clone https://github.com/EricLBuehler/mistral.rs EricLBuehler/mistral.rs
