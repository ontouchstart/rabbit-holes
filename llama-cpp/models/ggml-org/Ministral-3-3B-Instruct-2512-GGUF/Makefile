MODEL := $(shell pwd | sed -n 's|.*/models/||p') 
CLI := ../../../ggml-org/llama.cpp/build/bin/llama-cli
SERVER := ../../../ggml-org/llama.cpp/build/bin/llama-server
CLAUDE := ANTHROPIC_BASE_URL="http://localhost:8080" ANTHROPIC_AUTH_TOKEN="llamacpp" ANTHROPIC_API_KEY="" claude

cli:
	$(CLI) -hf $(MODEL)

server:
	$(SERVER) -hf $(MODEL)

claude:
	$(CLAUDE) --model $(MODEL)
