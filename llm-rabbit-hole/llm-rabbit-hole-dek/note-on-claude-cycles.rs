fn trace(m: usize, start: &str, cycle_type: usize, total: usize) {
    let label = match cycle_type {
        0 => "c=0",
        1 => "c=1",
        2 => "c=2",
        _ => "c=?",
    };

    // Escape LaTeX braces {{ }} so Rust doesn't treat them as format arguments
    println!("\\paragraph{{ m={}, {} (Starting: {})}}\n\n\n", m, label, start);

    // Must be 'mut' because we modify them inside the loop
    let mut i = start.chars().nth(0).unwrap() as u32 - '0' as u32;
    let mut j = start.chars().nth(1).unwrap() as u32 - '0' as u32;
    let mut k = start.chars().nth(2).unwrap() as u32 - '0' as u32;

    for step in 0..total {
        print!("{}{}{}", i, j, k);

        let m_u32 = m as u32;
        let s = (i + j + k) % m_u32;

        let d = if s == 0 {
            if j == m_u32 - 1 {
                "012"
            } else {
                "210"
            }
        } else if s == m_u32 - 1 {
            if i > 0 {
                "120"
            } else {
                "210"
            }
        } else {
            if i == m_u32 - 1 {
                "201"
            } else {
                "102"
            }
        };

        let d_char = match cycle_type {
            0 => d.chars().next().unwrap(),
            1 => d.chars().nth(1).unwrap(),
            2 => d.chars().nth(2).unwrap(),
            _ => panic!("Invalid cycle_type"),
        };

        match d_char {
            '0' => i += 1,
            '1' => j += 1,
            '2' => k += 1,
            _ => panic!("Invalid character"),
        }

        // Wrap around logic
        if i >= m_u32 {
            i = 0;
        }
        if j >= m_u32 {
            j = 0;
        }
        if k >= m_u32 {
            k = 0;
        }

        if step < total - 1 {
            print!(" $\\rightarrow$ ");
        }
    }
    println!(" $\\rightarrow$ {} ", start);
    println!("[Full Hamiltonian Cycle ({} steps)]\n\n", total);
}

fn main() {
    for n in [1, 2, 3, 4, 5] {
        let m = 2 * n + 1;
        let total = m * m * m;
        let start = "000";

        println!("\\paragraph{{m = {} (Total States: {})}}\n\n\n", m, total);

        for c in 0..=2 {
            trace(m, start, c, total);
        }
    }
}
