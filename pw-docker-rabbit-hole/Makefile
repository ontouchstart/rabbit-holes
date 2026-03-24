all:
	cat -n README.md
	cat -n Dockerfile
	cat -n docker-compose.yml
	cat -n Makefile

build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

bash:	# interactive
	docker compose run --rm -it node bash

pw-demo: # non-interactive
	docker compose run --rm pw-demo make 1> pw-demo.stdout 2> pw-demo.stderr

