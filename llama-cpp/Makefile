RUSTDOC = rustdoc --edition 2024 -o ../docs
docs:
	$(RUSTDOC) llama-cpp-rabbit-hole.rs

build:	ggml-org/llama.cpp/build/bin
	ls ./ggml-org/llama.cpp/build/bin

ggml-org/llama.cpp:
	git clone https://github.com/ggml-org/llama.cpp.git ggml-org/llama.cpp

ggml-org/llama.cpp/build/bin: ggml-org/llama.cpp
	cd ggml-org/llama.cpp && cmake -B build && cmake --build build --config Release -j 8

ci-test: build
	-./ggml-org/llama.cpp/ci/run.sh /tmp/llama-cpp-ci/results /tmp/llama-cpp-ci/mnt
clean:
	rm -rf ./ggml-org
