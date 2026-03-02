fn main() {
    std::process::Command::new("Missing")
        .arg("Semester")
        .output()
        .expect("Missing: command not found");
}
