all:	openclaw
	du -h openclaw
	cd openclaw && git branch -a | grep remote | cat -n
	cd openclaw && git log -1
	cargo run --bin openclaw-remote-branches | tee remote-branches.log
	cargo run --bin openclaw-log
	cargo tree

openclaw:
	cargo run --bin openclaw-clone

clean:
	rm -rf openclaw	target
