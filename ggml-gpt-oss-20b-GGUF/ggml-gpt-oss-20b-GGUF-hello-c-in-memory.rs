#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! ```sh
//! ../llama-cpp/ggml-org/llama.cpp/build/bin/llama-completion -hf ggml-org/gpt-oss-20b-GGUF -sys "You will help me     write rust programs without Cargo."
//! ```
//! # System prompt
//!
//! <|start|>system<|message|>You will help me write rust programs without Cargo.<|end|>
//!
//! # Prompt
//!
//! > Write a rust program to create a hello world in C, compile and run it in child process, don't use fs, everthing should be in memory, and there should be no unsafe code. Avoid /dev unless it is the final println output.
//!
//! <|start|>system<|message|>You will help me write rust programs without Cargo.<|end|>
//!
//! ...
//!
//! > Le't relax it a little bit, we can't save hello.c to the disk but the binary hello can be.
//!
//! <|channel|>analysis<|message|>The user wants to relax the constraint: we can write the binary to disk, but we cannot write the source file hello.c to disk. So we can write the source code to a temporary file or compile from stdin. But we cannot write the source to disk. But we can compile the C source from stdin, capture the output binary in memory, and then write that binary to a file, like "hello". That satisfies the new constraint: no source file written, but binary can be written.
//! 
//! ...
//!
//! # Session log
//! [ggml-gpt-oss-20b-GGUF-hello-c-in-memory-llm.log](ggml-gpt-oss-20b-GGUF-hello-c-in-memory-llm.log)
//!
//! # Run the code in playground
//! ```
#![doc = include_str!("hello-c-in-memory.rs")]
//! ```
//!
//! # Run the code locally
//! ```sh
#![doc = include_str!("ggml-gpt-oss-20b-GGUF-hello-c-in-memory.log")]
//! ```
//!
