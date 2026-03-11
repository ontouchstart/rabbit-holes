extern "C" {
    pub fn magic_answer() -> i32;
}

fn main() {
    // Call the C function
    let answer = unsafe { magic_answer() };

    println!("The answer is: {}", answer);
}
