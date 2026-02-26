fn main() {
    let output = std::process::Command::new("env")
        .output()
        .expect("Missing: command not found");
    println!("{}", String::from_utf8_lossy(&output.stdout));
}
