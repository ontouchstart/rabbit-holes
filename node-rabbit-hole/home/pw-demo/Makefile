all:
	cat -n Dockerfile
	cat -n docker-compose.yml
	cat -n Makefile

up:
	docker compose up

down:
	docker compose down

test:
	make up down 1> test.stdout 2> test.stderr
