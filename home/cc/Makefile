all: unpacked

anthropic-ai-claude-code-2.1.88.tgz:
	npm pack @anthropic-ai/claude-code@2.1.88

package: anthropic-ai-claude-code-2.1.88.tgz
	tar -xzf anthropic-ai-claude-code-2.1.88.tgz

unpacked: package
	node unpack.mjs

cc:
	ANTHROPIC_BASE_URL=http://host.docker.internal:8080 ANTHROPIC_AUTH_TOKEN="llamacpp" /home/cc/package/cli.js --model ggml-org/gpt-oss-20b-GGUF
