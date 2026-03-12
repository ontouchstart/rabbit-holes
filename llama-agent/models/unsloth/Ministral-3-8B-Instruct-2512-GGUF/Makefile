MODEL := $(shell pwd | sed -n 's|.*/models/||p')
AGENT := ../../../llama-agent/build/bin/llama-agent

agent:
	$(AGENT) -hf $(MODEL)

