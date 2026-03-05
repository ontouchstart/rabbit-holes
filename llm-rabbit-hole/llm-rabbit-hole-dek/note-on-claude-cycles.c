#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// Helper function to trace a single cycle
void trace(int m, const char *start_str, int cycle_type, int total_states) {
    int i, j, k, t, s;
    char *d;
    char label[10];
    char *move_char = "";

    // Determine label
    if (cycle_type == 0) strcpy(label, "c=0");
    else if (cycle_type == 1) strcpy(label, "c=1");
    else if (cycle_type == 2) strcpy(label, "c=2");
    else strcpy(label, "c=?");

    // Determine which character of 'd' we read
    if (cycle_type == 0) move_char = "d[0]";
    else if (cycle_type == 1) move_char = "d[1]";
    else if (cycle_type == 2) move_char = "d[2]";

    printf("\\paragraph{m=%d, %s (Starting: %s)}\n\n\n", m, label, start_str);
    
    i = start_str[0] - '0';
    j = start_str[1] - '0';
    k = start_str[2] - '0';

    for (t = 0; t < total_states; t++) {
        printf("%d%d%d", i, j, k);
        
        s = (i + j + k) % m;
        
        // --- Logic Selection ---
        if (s == 0) {
            if (j == m - 1) d = "012"; else d = "210";
        } else if (s == m - 1) {
            if (i > 0) d = "120"; else d = "210";
        } else {
            if (i == m - 1) d = "201"; else d = "102";
        }
        
        // --- Execution ---
        if (cycle_type == 0) { // Read d[0]
            if (d[0] == '0') i = (i + 1) % m;
            else if (d[0] == '1') j = (j + 1) % m;
            else if (d[0] == '2') k = (k + 1) % m;
        } else if (cycle_type == 1) { // Read d[1]
            if (d[1] == '0') i = (i + 1) % m;
            else if (d[1] == '1') j = (j + 1) % m;
            else if (d[1] == '2') k = (k + 1) % m;
        } else if (cycle_type == 2) { // Read d[2]
            if (d[2] == '0') i = (i + 1) % m;
            else if (d[2] == '1') j = (j + 1) % m;
            else if (d[2] == '2') k = (k + 1) % m;
        }
        
        if (t < total_states - 1) printf(" $\\rightarrow$ ");
    }
    printf(" $\\rightarrow$ %s ", start_str);
    
    printf("[Full Hamiltonian Cycle (%d steps)]\n\n", total_states);
}

int main() {
    printf("$ m \\in \\{ 3, 5, 7, 9, 11\\} ,");
    printf("c \\in \\{ 0, 1, 2\\}.$\n\n\n");

    // Define n values: 1, 2, 3
    int n_values[] = {1, 2, 3, 4, 5};
    int num_tests = 5;

    for (int idx = 0; idx < num_tests; idx++) {
        int n = n_values[idx];
        int m = 2 * n + 1; // Calculate m dynamically
        int total = m * m * m;
        char start_state[4] = "000";

        printf("\\paragraph{ m = %d (Total States: %d)}\n\n\n", m, total);
        
        // Run c=0, c=1, c=2
        for (int c = 0; c <= 2; c++) {
            trace(m, start_state, c, total);
        }
    }

    return 0;
}

