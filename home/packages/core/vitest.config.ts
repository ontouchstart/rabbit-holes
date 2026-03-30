import { defineConfig } from 'vitest/config'

export default defineConfig({
  test: {
    // Allow running when there are no test files
    failOnEmptyTestSuite: false,
  },
})
