extern "C" {
    pub fn magic_answer() -> i32;
}

fn main() {
    unsafe {
        std::process::exit(magic_answer()); // Exit with the returned value (42)
    }
}
