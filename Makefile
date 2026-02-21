all:	ggml-org-llama.cpp stats
	cd ggml-org-llama.cpp && cmake -B build && cmake --build build --config Release -j 8

stats:	XAMPPRocky-tokei/target/debug/tokei
	XAMPPRocky-tokei/target/debug/tokei ggml-org-llama.cpp 

llama-versions:
	ggml-org-llama.cpp/build/bin/llama-cli --version
	ggml-org-llama.cpp/build/bin/llama-server --version

server:
	ggml-org-llama.cpp/build/bin/llama-server -hf ggml-org/gpt-oss-20b-GGUF --n-cpu-moe 12 -c 32768 --jinja --no-mmap

cli:
	ggml-org-llama.cpp/build/bin/llama-cli -hf ggml-org/gpt-oss-20b-GGUF

ggml-org-llama.cpp:
	git clone https://github.com/ontouchstart/ggml-org-llama.cpp.git
	du -h ggml-org-llama.cpp

XAMPPRocky-tokei:
	git clone https://github.com/ontouchstart/XAMPPRocky-tokei.git
	du -h XAMPPRocky-tokei

XAMPPRocky-tokei/target/debug/tokei: XAMPPRocky-tokei
	cd XAMPPRocky-tokei && cargo build

clean:
	rm -rf target ggml-org-llama.cpp XAMPPRocky-tokei
