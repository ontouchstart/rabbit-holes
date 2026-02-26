RUSTDOC = rustdoc --edition 2024 -o ../docs
all:
	$(RUSTDOC) llama-cpp-vi-wrap.rs
	$(RUSTDOC) llama-cpp-fmt-wrap.rs


ggml-org/llama.cpp:
	git clone https://github.com/ggml-org/llama.cpp.git ggml-org/llama.cpp

ggml-org/llama.cpp/build/bin/llama-cli: ggml-org/llama.cpp
	cd ggml-org/llama.cpp && cmake -B build && cmake --build build --config Release -j 8

ggml-org/llama.cpp/build/bin/llama-server: ggml-org/llama.cpp
	cd ggml-org/llama.cpp && cmake -B build && cmake --build build --config Release -j 8

cli:	ggml-org/llama.cpp/build/bin/llama-cli
	ggml-org/llama.cpp/build/bin/llama-cli -hf ggml-org/gpt-oss-20b-GGUF

server: ggml-org/llama.cpp/build/bin/llama-server
	ggml-org/llama.cpp/build/bin/llama-server -hf ggml-org/gpt-oss-20b-GGUF --n-cpu-moe 12 -c 32768 --jinja --no-mmap

