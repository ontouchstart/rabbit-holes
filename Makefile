all:
	cat -n Dockerfile
	cat -n docker-compose.yml
	cat -n Makefile

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

bash:
	docker compose run --remove-orphans --rm -it bash
	
llama.cpp:
	git clone https://github.com/ontouchstart/llama.cpp

llama.cpp/build/bin: llama.cpp
	cd llama.cpp && cmake -B build && cmake --build build --config Release -j 8

server: llama.cpp/build/bin
	./llama.cpp/build/bin/llama-server -hf ggml-org/gpt-oss-20b-GGUF

clean:
	rm -rf llama.cpp/build
