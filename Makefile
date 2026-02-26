all:
	rm -f docs/crates.js 	
	make -C missing
	make -C man
	make -C playground
	make -C llama-cpp
	make -C ggml-gpt-oss-20b-GGUF
