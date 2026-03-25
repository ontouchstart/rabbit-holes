This directory and all the sub directories should only be used within a docker container via `make`,
see top level `Makefile` and `docker-composel.yml`.

`../Makefile`
```
build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

bash:
	docker compose run --rm -it bash
	
llama-cpp-server:
	./llama-cpp/ggml-org/llama.cpp/build/bin/llama-server -hf ggml-org/gpt-oss-20b-GGUF

pi:
	docker compose run --rm -it pi

claude:
	docker compose run --rm -it claude
``

`../docker-compose.yml`

```
services:
  bash:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - ./home:/home
      - ./home/.pi:/root/.pi
    command: bash

  pi:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - ./home/.pi:/root/.pi
      - ./home/pi:/home

  claude:
    build:
      context: .
      dockerfile: Dockerfile
    volumes:
      - ./home/claude:/home
```
