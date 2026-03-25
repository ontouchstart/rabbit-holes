all:
	cat -n Dockerfile
	cat -n docker-compose.yml
	cat -n Makefile

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

publish:
	rm -f docs/crates.js 	
	make -C missing
	make -C man
	make -C playground
	make -C tex-rabbit-hole
	make -C llm-rabbit-hole
	make -C magic_c_rabbit_hole
