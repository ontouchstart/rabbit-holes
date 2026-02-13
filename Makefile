JJ=jj-src/target/debug/jj

all:	jj-src/target/debug/jj .jj
	$(JJ) --version
	$(JJ) --help && $(JJ)

jj-src/target/debug/jj:
	git submodule update --init
	cd jj-src && cargo build && cd ..

.jj:
	$(JJ) git init 
