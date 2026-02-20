all:	openclaw llama.cpp tokei tokei/target/debug/tokei
	du -h openclaw
	du -h llama.cpp
	du -h tokei
	tokei/target/debug/tokei openclaw | tee openclaw.log
	tokei/target/debug/tokei llama.cpp | tee llama.cpp.log

openclaw:
	git clone https://github.com/openclaw/openclaw.git

llama.cpp:
	git clone https://github.com/ggml-org/llama.cpp.git

tokei:
	git clone https://github.com/XAMPPRocky/tokei.git

tokei/target/debug/tokei: tokei
	cd tokei && cargo build

clean:
	rm -rf target openclaw llama.cpp tokei
