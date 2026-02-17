all:	openclaw
	du -h openclaw
	cd openclaw && git branch -a | cat -n

openclaw:
	git clone https://github.com/openclaw/openclaw
