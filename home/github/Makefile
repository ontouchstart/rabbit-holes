pi := /github/pi-mono/packages/coding-agent/dist/cli.js

all:
	cat -n Makefile

.pi:	# This should run outside of docker container
	git clone git@github.com:ontouchstart/.pi.git

codex:
	git clone https://github.com/openai/codex.git

deno:
	git clone https://github.com/denoland/deno.git

ggml:
	git clone https://github.com/ggml-org/ggml.git

llama.cpp:
	git clone https://github.com/ggml-org/llama.cpp.git

openai-node:
	git clone https://github.com/openai/openai-node.git

pi-mono:
	git clone https://github.com/badlogic/pi-mono.git

update:
	cd pi-mono && git pull && npm install && npm run build && npm test
	cd pi-mono/packages/coding-agent/ && $(pi) -p "Review this package"

