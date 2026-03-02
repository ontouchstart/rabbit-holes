RUSTDOC = rustdoc --edition 2024 -o ../docs
CLI = ../llama-cpp/ggml-org/llama.cpp/build/bin/llama-completion -hf ggml-org/gpt-oss-20b-GGUF -sys "You will help me write rust programs without Cargo." --single-turn

all:	../llama-cpp/ggml-org/llama.cpp/build/bin
	# Use UNIX file descriptor convention: 0 (stdin) 1 (stdout) 2 (stderr)
	$(CLI) -f hello/0.log 1> hello/1.log 2> hello/2.log
