all:
	# https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html
	# We set it to 3.31, which is the lowest on in all three CI environments
	# https://cmake.org/cmake/help/latest/command/project.html
	# https://cmake.org/cmake/help/latest/command/add_library.html
	cmake --version
	cat -n include/42.h
	cat -n include/answer.h
	cat -n lib/answer.cc
	rm -rf build
	cmake -G "Unix Makefiles" -B build
	find build | cat -n 
	cat -n build/Makefile
	make -C build
	find build | cat -n 
