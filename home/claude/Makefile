all:
	npm install --save-dev @anthropic-ai/claude-code@2.1.83
	ANTHROPIC_BASE_URL=http://host.docker.internal:8080 ANTHROPIC_AUTH_TOKEN="llamacpp" npx @anthropic-ai/claude-code --model ggml-org/gpt-oss-20b-GGUF
