RUSTDOC = rustdoc --edition 2024 -o ../docs
CLI = ../llama-cpp/ggml-org/llama.cpp/build/bin/llama-completion -hf ggml-org/gpt-oss-20b-GGUF -sys "You will help me write rust programs without Cargo." --single-turn

all:	../llama-cpp/ggml-org/llama.cpp/build/bin
	$(RUSTDOC) hello-c-in-memory.rs
	cp -r hello-c-in-memory/* ../docs/hello_c_in_memory

llm-hello:
	# Use UNIX file descriptor convention: 0 (stdin) 1 (stdout) 2 (stderr)
	$(CLI) -f hello/0.log 1> hello/1.log 2> hello/2.log

run-hello:
	rustc hello/main.rs && ./main && rm -f main

llm-hello-c-in-memory:
	# Use UNIX file descriptor convention: 0 (stdin) 1 (stdout) 2 (stderr)
	$(CLI) -f hello-c-in-memory/0.log 1> hello-c-in-memory/1.log 2> hello-c-in-memory/2.log

run-hello-c-in-memory:
	rustc hello-c-in-memory/main.rs && ./main && rm -f main

