all:	openclaw
	du -h openclaw
	cd openclaw && git branch -a | grep remote | cat -n
	cd openclaw && git log -1
	cargo run --bin remote-branches
	cargo run --bin log
	cargo tree

openclaw:
	cargo run --bin clone

clean:
	rm -rf openclaw	target
