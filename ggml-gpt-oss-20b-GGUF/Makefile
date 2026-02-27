RUSTDOC = rustdoc --edition 2024 -o ../docs
all:
	$(RUSTDOC) ggml-gpt-oss-20b-GGUF-make.rs
	$(RUSTDOC) ggml-gpt-oss-20b-GGUF-curl.rs
	$(RUSTDOC) ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags.rs
	$(RUSTDOC) ggml-gpt-oss-20b-GGUF-hello-c.rs

cli:	../llama-cpp/ggml-org/llama.cpp/build/bin
	../llama-cpp/ggml-org/llama.cpp/build/bin/llama-completion -hf ggml-org/gpt-oss-20b-GGUF -sys "You will help me write rust programs without Cargo."

../llama-cpp/ggml-org/llama.cpp/build/bin:
	make -C ../llama-cpp build

run:
	rustc ggml-gpt-oss-20b-GGUF-curl.rs && ./ggml-gpt-oss-20b-GGUF-curl | tee ggml-gpt-oss-20b-GGUF-curl.log
	rustc ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags.rs && ./ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags| tee ggml-gpt-oss-20b-GGUF-curl-naive-strip_tags.log
	rustc ggml-gpt-oss-20b-GGUF-hello-c.rs && ./ggml-gpt-oss-20b-GGUF-hello-c | tee ggml-gpt-oss-20b-GGUF-hello-c.log
	cat -n hello.c
	rm -f  hello.c hello
