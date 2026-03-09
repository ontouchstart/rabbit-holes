all:
	# https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html
	# We set it to 3.31, which is the lowest on in all three CI environments
	# https://cmake.org/cmake/help/latest/command/project.html
	# https://cmake.org/cmake/help/latest/command/add_excutable.html
	# https://cmake.org/cmake/help/latest/command/add_library.html
	# https://cmake.org/cmake/help/latest/command/target_link_libraries.html
	cmake --version
	rm -rf build
	cat -n include/42.h
	cat -n include/answer.h
	cat -n lib/answer.cc
	cat -n src/main.cc
	cmake -G "Unix Makefiles" -B build
	find build | cat -n 
	cat -n build/Makefile
	make -C build
	find build | cat -n 
	# The will return
	# make: [all] Error 42 (ignored)
	-./build/main
