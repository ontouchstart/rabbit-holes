all:
	cat -n Makefile

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

bash:	# interactive
	docker compose run --rm -it node bash

up:
	cd home/my-redwood-project/ && docker compose -f docker-compose.dev.yml up
