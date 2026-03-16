all:
	cat -n Makefile

pi-mono:
	git clone https://github.com/badlogic/pi-mono.git
	cd pi-mono && npm install && npm run build
	mkdir -p ~/.pi/agent
	cp models.json ~/.pi/agent
	cp settings.json ~/.pi/agent

server:
	../llama-cpp/ggml-org/llama.cpp/build/bin/llama-server

pi:	pi-mono
	./pi-mono/packages/coding-agent/dist/cli.js

clean:
	rm -rf pi-mono
