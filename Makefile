all:	candle	
	cargo run

candle:
	git clone https://github.com/huggingface/candle.git

clean:
	rm -rf candle target
