fn main() {
    println!(
        "{}",
        String::from_utf8(
            std::process::Command::new("free")
                .arg("-h")
                .output()
                .unwrap()
                .stdout
        )
        .unwrap()
    );
}
