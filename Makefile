all:
	cmake --version
	make --version
	cmake -B build
	make -C build 
	make -C build test
	./build/hello

clean:
	rm -rf build 
