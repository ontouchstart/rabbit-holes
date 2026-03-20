build:
	docker compose build --no-cache
pi:
	docker compose run -it --rm pi
bash:
	docker compose run -it --rm pi bash

server:
	../ggml-org/llama.cpp/build/bin/llama-server -hf ggml-org/gpt-oss-20b-GGUF
