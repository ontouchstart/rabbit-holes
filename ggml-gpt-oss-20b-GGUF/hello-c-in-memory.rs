use std::process::{Command, Stdio};
use std::io::Write;

fn main() -> std::io::Result<()> {
    /* --------------------------------------------------------------------
       1️⃣  C source kept entirely in memory
    -------------------------------------------------------------------- */
    let c_source = r#"
        #include <stdio.h>
        int main(void) {
            puts("Hello world");
            return 0;
        }
    "#;

    /* --------------------------------------------------------------------
       2️⃣  Compile the C source, letting cc write the binary directly
    -------------------------------------------------------------------- */
    // `-o hello`   -> write the output to the file `hello`
    // `-`          -> read the source from stdin
    // `-pipe`      -> don’t create temporary files for the compiler’s internals
    let mut cc = Command::new("cc")          // or "clang"
        .args(&["-x", "c", "-pipe", "-o", "hello", "-"])
        .stdin(Stdio::piped())
        .stderr(Stdio::inherit())
        .spawn()
        .expect("Failed to launch C compiler");

    // Feed the source code to the compiler
    {
        let mut stdin = cc.stdin.take().expect("Failed to open compiler stdin");
        stdin.write_all(c_source.as_bytes())?;
    }

    // Wait for compilation to finish
    let status = cc.wait()?;
    if !status.success() {
        eprintln!("Compilation failed (status {})", status);
        return Err(std::io::Error::new(
            std::io::ErrorKind::Other,
            "Compilation failed",
        ));
    }

    /* --------------------------------------------------------------------
       3️⃣  Run the binary we just got from the compiler
    -------------------------------------------------------------------- */
    let status = Command::new("./hello")
        .stdout(Stdio::inherit())   // let the program print directly
        .stderr(Stdio::inherit())
        .status()?;

    if !status.success() {
        eprintln!("Execution failed (status {})", status);
        return Err(std::io::Error::new(
            std::io::ErrorKind::Other,
            "Execution failed",
        ));
    }

    /* --------------------------------------------------------------------
       4️⃣  (Optional) Clean up – delete the file we created
    -------------------------------------------------------------------- */
    std::fs::remove_file("hello")?;

    Ok(())
}
