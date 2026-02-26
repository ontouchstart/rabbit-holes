fn main() {
    let output = std::process::Command::new("cat")
        .arg("-n")
        .arg("src/main.rs")
        .output()
        .expect("Missing: command not found");
    println!("{}", String::from_utf8_lossy(&output.stdout));
}
