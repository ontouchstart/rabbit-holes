all:
	cat -n Makefile

build:
	docker compose build 

test:
	docker compose run test | tee test

down:
	docker compose down
