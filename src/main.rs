//!
//! # GRU
//!
//! ```makefile
//! cli:
//!	./EricLBuehler/mistral.rs/target/debug/mistralrs run -m Qwen/Qwen3-4B
//! ```
//!
//! ```
//! make cli
//! ```
//!
#![doc = include_str!("../gru.md")]
//!
#[tokio::main]
async fn main() -> anyhow::Result<()> {
    println!("It works!");
    Ok(())
}
