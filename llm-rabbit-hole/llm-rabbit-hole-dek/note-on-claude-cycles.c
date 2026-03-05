#include <stdio.h>

// Function to run the simulation for a given m and start vertex
// Original logic for c=0 (works correctly)
void run_simulation(int m, const char *start_str) {
    int i, j, k, t, s;
    char *d;
    
    i = start_str[0] - '0';
    j = start_str[1] - '0';
    k = start_str[2] - '0';
    
    printf("\n\n%d Cycle (starting %s) [c=0]:\n\n", m, start_str);
    
    for (t = 0; t < m * m * m; t++) {
        printf("%d%d%d", i, j, k);
        s = (i + j + k) % m;
        
        if (s == 0) {
            if (j == m - 1) d = "012"; else d = "210";
        } else if (s == m - 1) {
            if (i > 0) d = "120"; else d = "210";
        } else {
            if (i == m - 1) d = "201"; else d = "102";
        }
        
        if (d[0] == '0') i = (i + 1) % m;
        else if (d[0] == '1') j = (j + 1) % m;
        else if (d[0] == '2') k = (k + 1) % m;
        
        if (t < m * m * m - 1) printf(" $\\rightarrow$ ");
    }
    printf(" $\\rightarrow$ %s\n", start_str);
    printf("\n");
}

// --- NEW FUNCTIONS TO DEMONSTRATE FAILURE ---

// Logic for c=1 (Should fail)
void run_simulation_c1(int m, const char *start_str) {
    int i, j, k, t, s;
    char *d;
    
    i = start_str[0] - '0';
    j = start_str[1] - '0';
    k = start_str[2] - '0';
    
    printf("%d Cycle (starting %s) [c=1]:\n", m, start_str);
    
    // We only need to run until we detect a repeat or hit m^3
    int visited[100][100][100]; // Small buffer for demo
    int count = 0;
    int max_steps = m * m * m; 
    
    for (t = 0; t < max_steps; t++) {
        printf("%d%d%d", i, j, k);
        
        s = (i + j + k) % m;
        
        // Simplified Logic from Page 2 for c=1
        if (s == 0) {
            // s=0: d must be "012" or "210". Both have d[1] = '1' (inc j)
            if (j == m - 1) d = "012"; else d = "210";
        } else if (s == m - 1) {
            // s=m-1: d must be "120" or "210". d[1] is '2' or '1' (inc k or j)
            if (i > 0) d = "120"; else d = "210";
        } else {
            // Middle: d must be "201" or "102". d[1] is '0' (inc i)
            if (i == m - 1) d = "201"; else d = "102";
        }
        
        if (d[1] == '0') i = (i + 1) % m;
        else if (d[1] == '1') j = (j + 1) % m;
        else if (d[1] == '2') k = (k + 1) % m;
        
        if (t < max_steps - 1) printf(" $\\rightarrow$ ");
        
        // Check for loop (simple check for demonstration)
        if ((i == start_str[0]-'0') && 
			(j == start_str[1]-'0') 
			&& (k == start_str[2]-'0')) {
            printf(" $\\rightarrow$ STOP (Loop detected after %d steps)\n", t + 1);
            printf("Expected %d steps for Hamiltonian cycle.\n", max_steps);
            return;
        }
    }
    printf(" $\\rightarrow$ %s\n", start_str);
    printf("\n");
}

// Logic for c=2 (Should fail)
void run_simulation_c2(int m, const char *start_str) {
    int i, j, k, t, s;
    char *d;
    
    i = start_str[0] - '0';
    j = start_str[1] - '0';
    k = start_str[2] - '0';
    
    printf("%d Cycle (starting %s) [c=2]:\n", m, start_str);
    
    int max_steps = m * m * m; 
    
    for (t = 0; t < max_steps; t++) {
        printf("%d%d%d", i, j, k);
        
        s = (i + j + k) % m;
        
        // Simplified Logic from Page 2 for c=2
        // d[2] determines move
        if (s == 0) {
            // d[2] is '2' in "012", '0' in "210"
            if (j == m - 1) d = "012"; else d = "210";
        } else if (s == m - 1) {
            // d[2] is '0' in "120", '0' in "210"
            if (i > 0) d = "120"; else d = "210";
        } else {
            // d[2] is '1' in "201", '2' in "102"
            if (i == m - 1) d = "201"; else d = "102";
        }
        
        if (d[2] == '0') i = (i + 1) % m;
        else if (d[2] == '1') j = (j + 1) % m;
        else if (d[2] == '2') k = (k + 1) % m;
        
        if (t < max_steps - 1) printf(" $\\rightarrow$ ");
        
	if ((i == start_str[0]-'0') && 
			(j == start_str[1]-'0') && 
			(k == start_str[2]-'0')) {
            printf("$\\rightarrow$ STOP (Loop detected after %d steps)\n", t + 1);
            printf("Expected %d steps for Hamiltonian cycle.\n", max_steps);
            return;
        }
    }
    printf(" $\\rightarrow$ %s\n", start_str);
    printf("\n");
}

int main() {
    printf("=== Demonstrating the Flaw in Simplified C Code ===\n\n");
    
    // Test m=3
    printf("\n\n=== c = 0: Works ===\n\n");
    run_simulation(3, "022");

    printf("\n\n=== c = 1: Failes (Short loop) ===\n\n");
    run_simulation_c1(3, "000");

    printf("\n\n=== c = 2: Failes (Short loop) ===\n\n");
    run_simulation_c2(3, "000");
    
    // Test m=5
    printf("\n\n=== c = 0: Works ===\n\n");
    run_simulation(5, "042"); 

    printf("\n\n=== c = 1: Failes (Short loop) ===\n\n");
    run_simulation_c1(5, "000");

    printf("\n\n=== c = 2: Failes (Short loop) ===\n\n");
    run_simulation_c2(5, "000");
    
    return 0;
}
