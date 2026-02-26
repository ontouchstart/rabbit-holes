all:
	rm -f docs/crates.js 	
	make -C missing
	make -C man
	make -C playground
