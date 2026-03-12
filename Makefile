all:
	rm -f docs/crates.js 	
	make -C missing
	make -C man
	make -C playground
	make -C tex-rabbit-hole
	make -C llm-rabbit-hole
	make -C magic_c_rabbit_hole
