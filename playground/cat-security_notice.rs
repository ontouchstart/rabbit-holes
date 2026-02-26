fn main() {
    println!(
        "{}",
        String::from_utf8(
            std::process::Command::new("cat")
                .arg("security_notice.txt")
                .output()
                .unwrap()
                .stdout
        )
        .unwrap()
    );
}
