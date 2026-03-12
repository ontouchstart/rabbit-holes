build:	./llama-agent/build/bin
	ls ./llama-agent/build/bin

./llama-agent/build/bin: ./llama-agent
	cd ./llama-agent && cmake -B build && cmake --build build --config Release -j 8

./llama-agent:
	git clone https://github.com/gary149/llama-agent.git

clean:
	rm -rf ./llama-agent
