all: unpacked

anthropic-ai-claude-code-2.1.88.tgz:
	npm pack @anthropic-ai/claude-code@2.1.88

package:
	tar -xzf anthropic-ai-claude-code-2.1.88.tgz

unpacked: package
	node unpack.mjs
