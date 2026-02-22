## PARTITION by hand

```
M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I       F       J

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I       F     J 

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I       F     J 

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I       F   J    

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I       F   J    

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I       F J      

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I       F       
        J

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I     J F       

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I   J   F       

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I   J   F       

M               N
1 2 3 4 5 6 7 8 9
P A R T I T I O N
I J     F       

M               N
1 2 3 4 5 6 7 8 9
A P R T I T I O N
I J     F       

M               N
1 2 3 4 5 6 7 8 9
A P R T I T I O N
J I     F       

M               N
1 2 3 4 5 6 7 8 9
A I R T P T I O N
J I     F       

M               N
1 2 3 4 5 6 7 8 9
A I R T P T I O N
J   I   F       
```

Confirm it satistfies property

```code
M	<=	J	<	I	 <=	N	provided M < N
A[R]	<=	X	for M <= R <= J
A[R]	==	X	for J <  R  < I
A[R]	>=	X	for I <= R <= N

```
```code
1	<=	1	<	3	 <=	9	provided M < N
A[R]	<=	I	for 1 <= R <= 1
A[R]	==	I	for 1 <  R  < 3
A[R]	>=	I	for 3 <= R <= 9
```

