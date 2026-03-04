MODEL := $(shell pwd | sed -n 's|.*/models/||p') 
CLI := ../../../ggml-org/llama.cpp/build/bin/llama-cli
SERVER := ../../../ggml-org/llama.cpp/build/bin/llama-server

cli:
	$(CLI) -hf $(MODEL)

server:
	$(SERVER) -hf $(MODEL)

