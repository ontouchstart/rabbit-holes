all:
	# https://cmake.org/cmake/help/latest/generator/Unix%20Makefiles.html
	# https://cmake.org/cmake/help/latest/command/cmake_minimum_required.html
	# We set it to 3.31, which is the lowest on in all three CI environments
	# https://cmake.org/cmake/help/latest/command/project.html
	cmake --version
	cmake -G "Unix Makefiles" -B build
	find build | cat -n 
	cat -n build/Makefile
	make -C add_excutable
	make -C add_library
	make -C target_link_libraries
