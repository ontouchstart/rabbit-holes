use glob::glob;
use image::imageops::FilterType;

fn resize_image(input_path: &str) {
    let img = image::open(&std::path::Path::new(input_path)).expect("Can't open image");
    let width = 756;
    let height = 1008;
    let resized = img.resize(width, height, FilterType::Lanczos3);
    println!("input_path: {}", input_path);
    let output_path = input_path.replace("raw", "resized");
    println!("output_path: {}", output_path);
    resized
        .save(&std::path::Path::new(&output_path))
        .expect("Can't save resized image");
}

fn main() {
    for entry in glob("./raw_png/*.png").expect("No png file found") {
        let path = entry.expect("No path");
        let input_path = format!("{}", path.display());
        println!("resize {}", input_path);
        resize_image(&input_path);
    }
}
