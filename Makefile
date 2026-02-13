all:	gg/target/debug/gg	
	gg/target/debug/gg  --version

gg/target/debug/gg: 
	git submodule update --init
	cd gg && npm install && npm run build && cargo build && cd ..
