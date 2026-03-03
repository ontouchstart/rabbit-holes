MODEL := $(shell basename `pwd`) 
all:
	../../ggml-org/llama.cpp/build/bin/llama-cli -hf ggml-org/$(MODEL)

server:
	../../ggml-org/llama.cpp/build/bin/llama-server -hf ggml-org/$(MODEL)

