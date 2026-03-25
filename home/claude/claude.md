# Claude Code Guide

This repository uses **Claude Code**, the CLI harness for Claude. Below are quick start instructions and common tasks.

## Installation

```bash
npm install -g claude-code
```

## Basic Commands

- `claude help` – Show available commands.
- `claude run <script>` – Execute a script.
- `claude test` – Run tests with the current configuration.

## Configuration

Configuration lives in `settings.json`. Common settings include:

- `model`: The Claude model to use.
- `hooks`: Custom scripts to run before/after commands.
- `permissions`: Allow or restrict commands.

Refer to the [official Claude Code documentation](https://github.com/anthropics/claude-code) for more details.
