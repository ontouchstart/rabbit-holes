all:
	cat -n Makefile

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

version: # non-interactive
	docker compose run --rm node bash -c '/playwright/node_modules/.bin/playwright --version' | tee version

bash:	# interactive
	docker compose run --rm -it node bash

