# Makefile for npm tasks
# This file provides make targets that map directly to the npm scripts defined
# in the various workspace packages and at the repository root.

# Default target – run the root build
.PHONY: all
all: build

# Root level npm scripts
.PHONY: build start
build:
	# Run the root level build script which delegates to the toolchain
	npm run build

start:
	# Run the root level start script which delegates to the toolchain
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
	npm run --workspace=toolchain build

toolchain-start:
	npm run --workspace=toolchain start

# Codex package – only a test script
.PHONY: codex-test
codex-test:
	npm run --workspace=codex test

# Convenience aliases
.PHONY: test
# Run all test scripts in workspaces that define a test target
# (currently core and codex)
test: core-test codex-test
