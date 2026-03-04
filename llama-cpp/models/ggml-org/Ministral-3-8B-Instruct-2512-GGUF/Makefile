MODEL := $(shell basename `pwd`) 
CLI := ../../../ggml-org/llama.cpp/build/bin/llama-cli
SERVER := ../../../ggml-org/llama.cpp/build/bin/llama-server

cli:
	$(CLI) -hf ggml-org/$(MODEL)

server:
	$(SERVER) -hf ggml-org/$(MODEL)

