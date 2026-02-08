#![doc = include_str!("../README.md")]
//!
//! To implement quicksort, we need [rand]
//! ```toml
#![doc = include_str!("../Cargo.toml")]
//! ```
use rand::prelude::*;
fn main() {
    let n = 10;
    let mut rng = rand::rng();
    let mut data: Vec<u8> = (1..n).collect();
    println!("{:?}", data);
    data.shuffle(&mut rng);
    println!("{:?}", data);
}
