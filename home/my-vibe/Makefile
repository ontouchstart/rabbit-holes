PROJECT_NAME := $(shell basename $(PWD))

.PHONY: all npm uv cargo clean

all: npm uv cargo demo

npm:
	# Build the TypeScript code
	npm run build

uv:
	uv run src/main.py

demo:
	# Run the demo script after building
	npm run demo

cargo:
	cargo build
	cargo run

clean:
	@rm -rf node_modules target .uv dist
