MODEL := $(shell pwd | sed -n 's|.*/models/||p') 
SERVER := ../../../../llama-cpp/ggml-org/llama.cpp/build/bin/llama-server
CLI := ../../../node_modules/@mariozechner/pi-coding-agent/dist/cli.js

all:
	cat -n Makefile

server:
	$(SERVER) -hf $(MODEL)

# run make server if it is not running
pi:
	$(CLI)

