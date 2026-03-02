use std::error::Error;
use std::fs;
use std::io::Write;
use std::path::PathBuf;
use std::process::{Command, Stdio};

fn main() -> Result<(), Box<dyn Error>> {
    /* ──────────────────────────────────────────────────────────────────────
       1️⃣  Build a unique path for the executable in /tmp
    ────────────────────────────────────────────────────────────────────── */
    let mut exe_path = PathBuf::from("/tmp");
    let pid = std::process::id();
    let ts = std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)?
        .as_millis();
    exe_path.push(format!("hello_{}_{}.exe", pid, ts));

    /* ──────────────────────────────────────────────────────────────────────
       2️⃣  Prepare the C source code – it will be piped to gcc
    ────────────────────────────────────────────────────────────────────── */
    let c_source = r#"
#include <stdio.h>

int main(void) {
    puts("Hello, world!");
    return 0;
}
"#;

    /* ──────────────────────────────────────────────────────────────────────
       3️⃣  Run gcc, feeding it the C source via stdin
    ────────────────────────────────────────────────────────────────────── */
    let mut gcc = Command::new("gcc")
        .args(&["-x", "c", "-"])   // read source from stdin
        .arg("-o")
        .arg(&exe_path)            // write executable to the temp file
        .stdin(Stdio::piped())     // we will write to it
        .stderr(Stdio::inherit())  // show compilation errors
        .stdout(Stdio::inherit())  // show any compiler output
        .spawn()?;                 // start the compiler

    // Write the source to gcc's stdin
    {
        let mut stdin = gcc.stdin.take().expect("Failed to open stdin for gcc");
        stdin.write_all(c_source.as_bytes())?;
    }

    // Wait for compilation to finish
    let status = gcc.wait()?;
    if !status.success() {
        eprintln!("Compilation failed");
        std::process::exit(1);
    }

    /* ──────────────────────────────────────────────────────────────────────
       4️⃣  Execute the compiled binary
    ────────────────────────────────────────────────────────────────────── */
    let status = Command::new(&exe_path).status()?;
    if !status.success() {
        eprintln!("Execution failed");
        std::process::exit(1);
    }

    /* ──────────────────────────────────────────────────────────────────────
       5️⃣  Delete the temporary executable
    ────────────────────────────────────────────────────────────────────── */
    fs::remove_file(&exe_path)?;

    Ok(())
}
