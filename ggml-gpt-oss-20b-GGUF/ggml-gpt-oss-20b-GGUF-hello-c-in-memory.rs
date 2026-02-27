#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! ```sh
//! ../llama-cpp/ggml-org/llama.cpp/build/bin/llama-completion -hf ggml-org/gpt-oss-20b-GGUF -sys "You will help me     write rust programs without Cargo."
//! ```
//! # System prompt
//!
//!<|start|>system<|message|>You will help me write rust programs without Cargo.<|end|>
//!
//! # Prompt
//!
//! > Write a rust program to create a hello world in C, compile and run it in child process, don't use fs, everthing should be in memory, and there should be no unsafe code. Avoid /dev unless it is the final println output.
//! <|start|>system<|message|>You will help me write rust programs without Cargo.<|end|>
//!
//! Write a rust program that create a hello world in C, save it as a file hello.c, compile and run it in child process.
//! 
//! ...
//!
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
