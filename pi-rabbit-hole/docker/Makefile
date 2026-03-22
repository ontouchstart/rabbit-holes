all:
	cat -n Makefile

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

pi:
	docker compose run -it --rm pi-mono

bash:
	docker compose run -it --rm pi-mono bash

server:
	../../llama-cpp/ggml-org/llama.cpp/build/bin/llama-server

