all:
	cat -n Makefile

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

bash:	# interactive
	docker compose run --rm -it node bash

llama-server:
	../llama-cpp/ggml-org/llama.cpp/build/bin/llama-server
