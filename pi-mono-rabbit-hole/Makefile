all:	package.json
	du -hsc node_modules/* | sort -h

package.json: pi-mono
	npm init -y
	npm install  @mariozechner/pi-coding-agent
	cat -n package.json

pi-mono:
	git clone https://github.com/badlogic/pi-mono.git

clean:
	rm -rf node_modules package-lock.json package.json pi-mono

agent:	package.json
	mkdir -p ~/.pi/agent
	cp models.json ~/.pi/agent
	cp settings.json ~/.pi/agent
	./node_modules/@mariozechner/pi-coding-agent/dist/cli.js --help

