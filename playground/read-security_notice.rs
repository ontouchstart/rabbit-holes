use std::io::Read;
fn main() {
    let path = std::path::Path::new("security_notice.txt");
    let display = path.display();

    let mut file = match std::fs::File::open(&path) {
        Err(why) => panic!("couldn't open {}: {}", display, why),
        Ok(file) => file,
    };

    let mut s = String::new();
    match file.read_to_string(&mut s) {
        Err(why) => panic!("couldn't read {}: {}", display, why),
        Ok(_) => print!("{}", s),
    }
}
