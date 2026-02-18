all:	openclaw
	du -h openclaw
	cd openclaw && git branch -a | grep remote | cat -n
	cargo run --bin remote-branches
	cargo tree

openclaw:
	cargo run --bin clone

clean:
	rm -rf openclaw	target
