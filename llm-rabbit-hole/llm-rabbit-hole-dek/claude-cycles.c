#include <stdio.h>

// Function to run the simulation for a given m and start vertex
void run_simulation(int m, const char *start_str) {
    int i, j, k, t, s;
    char *d;
    
    // Parse start_str (e.g., "022") to initialize i, j, k
    i = start_str[0] - '0';
    j = start_str[1] - '0';
    k = start_str[2] - '0';
    
    // Print header
    printf("%d Cycle (starting %s):\n\n", m, start_str);

    // Run for exactly m^3 steps
    for (t = 0; t < m * m * m; t++) {
        printf("%d%d%d", i, j, k);
        
        // Calculate s
        s = (i + j + k) % m;
        
        // Logic from Page 2
        if (s == 0) {
            if (j == m - 1) d = "012"; else d = "210";
        } else if (s == m - 1) {
            if (i > 0) d = "120"; else d = "210";
        } else {
            if (i == m - 1) d = "201"; else d = "102";
        }
        
        // Apply move (using index 0 for the primary cycle logic)
        if (d[0] == '0') i = (i + 1) % m;
        else if (d[0] == '1') j = (j + 1) % m;
        else if (d[0] == '2') k = (k + 1) % m;
        
        // Print arrow unless it is the last step
        if (t < m * m * m - 1) {
            printf(" $\\rightarrow$ ");
        }
    }
    
    // Print the final closing arrow to complete the loop back to start
    // This matches the paper's visual style where the sequence ends with 
    // -> StartVertex
    printf(" $\\rightarrow$ %s\n", start_str);
    
    printf("\n");
}

int main() {
    // Call for m=3 starting at 022
    run_simulation(3, "022");
    
    // Call for m=5 starting at 042
    run_simulation(5, "042");
    
    return 0;
}

