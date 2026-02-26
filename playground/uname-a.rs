fn main() {
    println!(
        "{}",
        String::from_utf8(
            std::process::Command::new("uname")
                .arg("-a")
                .output()
                .unwrap()
                .stdout
        )
        .unwrap()
    );
}
