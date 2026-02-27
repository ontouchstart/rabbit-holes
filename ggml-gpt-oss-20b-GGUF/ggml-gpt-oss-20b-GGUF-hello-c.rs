#![doc(html_playground_url = "https://play.rust-lang.org/")]
//! ```sh
//! ../llama-cpp/ggml-org/llama.cpp/build/bin/llama-completion -hf ggml-org/gpt-oss-20b-GGUF -sys "You will help me     write rust programs without Cargo."
//! ```
//! # System prompt
//!
//! <|start|>system<|message|>You will help me write rust programs without Cargo.<|end|>
//!
//! # Prompt
//! Write a rust program that create a hello world in C, save it as a file hello.c, compile and run it in child process.
//!
//! # Session log
//! [ggml-gpt-oss-20b-GGUF-hello-c-llm.log](ggml-gpt-oss-20b-GGUF-hello-c-llm.log)
//!
//! # Run the code in playground
//! ```
#![doc = include_str!("hello-c.rs")]
//! ```
//!
//! # Run the code locally
//! ```sh
#![doc = include_str!("ggml-gpt-oss-20b-GGUF-hello-c.log")]
//! ```
//!
