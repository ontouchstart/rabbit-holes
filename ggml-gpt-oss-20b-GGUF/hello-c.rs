use std::error::Error;
use std::fs::File;
use std::io::Write;
use std::process::Command;

fn main() -> Result<(), Box<dyn Error>> {
    /* --------------------------------------------------------------------
       1. Create a C source file called "hello.c" that prints “Hello, world!”
       -------------------------------------------------------------------- */
    let mut c_file = File::create("hello.c")?;
    let c_source = r#"
#include <stdio.h>

int main(void) {
    printf("Hello, world!\n");
    return 0;
}
"#;
    c_file.write_all(c_source.as_bytes())?;

    /* --------------------------------------------------------------------
       2. Compile the C source into an executable called "hello"
       -------------------------------------------------------------------- */
    // We assume a POSIX‑like environment with `gcc` available.
    let compile_status = Command::new("gcc")
        .args(&["hello.c", "-o", "hello"])
        .status()?;

    if !compile_status.success() {
        return Err(format!(
            "C compiler returned non‑zero exit status: {}",
            compile_status
        )
        .into());
    }

    /* --------------------------------------------------------------------
       3. Run the compiled binary in a child process
       -------------------------------------------------------------------- */
    let child_output = Command::new("./hello")
        .output()?;

    if !child_output.status.success() {
        return Err(format!(
            "Hello binary failed to run: {}",
            child_output.status
        )
        .into());
    }

    // Print the output from the C program
    println!(
        "Output from hello.c:\n{}",
        String::from_utf8_lossy(&child_output.stdout)
    );

    Ok(())
}
