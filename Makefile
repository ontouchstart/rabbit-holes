all:	openclaw llama.cpp tokei/target/debug/tokei
	tokei/target/debug/tokei openclaw | tee openclaw.log
	tokei/target/debug/tokei llama.cpp | tee llama.cpp.log
	cd llama.cpp  && cmake -B build && cmake --build build --config Release -j 8

llama-versions:
	llama.cpp/build/bin/llama-cli --version
	llama.cpp/build/bin/llama-server --version

windows-llama-versions:
	llama.cpp/build/bin/llama-cli.exe --version
	llama.cpp/build/bin/llama-server.exe --version

openclaw:
	git clone https://github.com/openclaw/openclaw.git
	du -h openclaw

llama.cpp:
	git clone https://github.com/ggml-org/llama.cpp.git
	du -h llama.cpp

tokei:
	git clone https://github.com/XAMPPRocky/tokei.git
	du -h tokei

tokei/target/debug/tokei: tokei
	cd tokei && cargo build

clean:
	rm -rf target openclaw llama.cpp tokei
