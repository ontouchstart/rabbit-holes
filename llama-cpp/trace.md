Here's the clear dependency chain for the `llama-cli` binary:

**Code Path and Key Dependencies:**

1. **Binary (`build/bin/llama-cli`)**
   - Source: `tools/cli/cli.cpp` (contains `int main` function)
   - Direct Dependencies:
     - **`server-context`** (from `tools/server/server-context.cpp`)
     - **`common`** library

2. **`server-context.h` and `server-context.cpp`:**
   - Loads and manages the LLM model via `common_init_from_params` and `llama_init`.
   - Relies on the `llama` library functions for core inference (loaded by `@rpath/libllama.0.dylib`).

3. **Core LLM Library (`libllama.0.dylib`)**
   - Provides:
     - Model loading: `llama_model_load_from_file` and related APIs.
     - Context management: `llama_context`, `llama_init`, etc.
   - Depends on `libggml` (via `@rpath/libggml.0.dylib` and its sub-libraries).

4. **Direct Calls in `cli.cpp`:**
   - Calls `server-context` for model initialization (`load_model`, `start_loop`).
   - Uses core LLM functions for token generation and completion.

**Summary:**

The `llama-cli` binary directly depends on:
   - `tools/cli/cli.cpp` (entry point)
   - `server-context` (for model management)
   - `common` (shared utilities)
   - `libllama.0.dylib` (core inference engine)
   - `libggml` and its backends (optimized computation)

If you want to trace a function call, start from the `int main` in `cli.cpp` and see how it calls through `server-context`. For example, `generate_completion` invokes `ctx_server.get_response_reader()`, which uses `server_context`'s methods.


