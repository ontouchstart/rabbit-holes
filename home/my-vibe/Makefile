# Makefile for testing dist/*.js files

.PHONY: test-dist

# Test all dist/*-*.js scripts
# Each script is executed with node. The task fails if any script exits with non-zero.
# Usage: make test-dist

test-dist:
	@echo "Running dist/*.js tests..."

	@for f in dist/*-*.js; do \
		echo "Running $$f"; \
		MY_ANTHROPIC_KEY=demo node $$f || { echo "Error running $$f"; exit 1; }; \
	 done
