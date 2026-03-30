pi := /github/pi-mono/packages/coding-agent/dist/cli.js

all: 
	cat -n Makefile	

# Root level npm scripts
.PHONY: pi
build:
	# Run the root level build script which delegates to the @my/toolchain package
	npm run build

start:
	# Run the root level start script which delegates to the @my/toolchain package
	npm run start

# Workspace specific npm scripts
# Core package
.PHONY: core-build core-test
core-build:
	npm run --workspace=@my/core build

core-test:
	npm run --workspace=@my/core test

# Toolchain package
.PHONY: toolchain-build toolchain-start
toolchain-build:
	npm run --workspace=@my/toolchain build

toolchain-start:
	npm run --workspace=@my/toolchain start

pi:
	$(pi)
