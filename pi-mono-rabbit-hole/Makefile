./pi-mono:
	git clone https://github.com/badlogic/pi-mono.git

clean:
	rm -rf node_modules package-lock.json package.json pi-mono

agent:
	npm install  @mariozechner/pi-coding-agent
	ANTHROPIC_BASE_URL="http://localhost:8080" ANTHROPIC_API_KEY=""	./node_modules/@mariozechner/pi-coding-agent/dist/cli.js
