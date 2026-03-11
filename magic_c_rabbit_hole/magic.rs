extern "C" {
    pub fn magic_answer() -> i32;
}

fn main() {
    // Call the C function
    let status = unsafe { magic_answer() };
    std::process::exit(status); // Exit with the returned value (42)
}
