all:
	cmake --version
	make --version
	cmake -B build -G "Unix Makefiles"
	ls build
	make -C build 
	make -C build test
	./build/hello

clean:
	rm -rf build 
