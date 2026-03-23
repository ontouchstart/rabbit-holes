all:
	cat -n Makefile

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

bash:	# interactive
	docker compose run --rm -it node bash

dev-up:
	cd home/my-redwood-project/ && docker compose -f docker-compose.dev.yml up

dev-down:
	cd home/my-redwood-project/ && docker compose -f docker-compose.dev.yml down

prod-up:
	cd home/my-redwood-project/ && docker compose -f docker-compose.prod.yml up

prod-down:
	cd home/my-redwood-project/ && docker compose -f docker-compose.prod.yml down

llama-server:
	../llama-cpp/ggml-org/llama.cpp/build/bin/llama-server
