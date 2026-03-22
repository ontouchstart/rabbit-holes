all:
	echo "This Makefile should be run within the docker container"
	cat -n Makefile

test:
	rm -rf package.json package-lock.json
	npm install --save file:/playwright/packages/playwright
	cat -n package.json
	cat -n package-lock.json
	/playwright/node_modules/.bin/playwright test
	rm -rf package.json package-lock.json
	
