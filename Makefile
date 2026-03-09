all:
	cmake --version
	make --version
	cmake -B build -G "Unix Makefiles"
	ls build
	make -C build 1> build.stdout 2> build.stderr
	make -C build test 1> test.stdout 2> test.stderr
	./build/hello
	cat -n build.stdout
	cat -n build.stderr
	cat -n test.stdout
	cat -n test.stderr

clean:
	rm -rf build 
