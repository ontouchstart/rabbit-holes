PROJECT_NAME := $(shell basename $(PWD))

.PHONY: all npm uv cargo clean

all: npm uv cargo

npm:
	npm start

uv:
	uv run src/main.py

cargo:
	cargo build

clean:
	@rm -rf node_modules target .uv
