## ALGORITHM 63
PARTITION

C. A. R. HOARE

Elliott Brothers Ltd., Borehamwood, Hertfordshire, Eng.

```code
procedure	partition (A,M,N,I,J);	value M,N;
		array A;	integer	 M,N,I,J;
```

__comment__ `I` and `J` are output variables, and `A` is the array (with
subscript bounds `M:N`) which is operated by this procdeure.
Partition take the value `X` of a random element of the array `A`,
and rearrange the values of the elements of the arrary in such a
way that there exists integers `I` and `J` with the following properties:

```code
M	<=	J	<	I	 <=	N	provided M < N
A[R]	<=	X	for M <= R <= J
A[R]	==	X	for J <  R  < I
A[R]	>=	X	for I <= R <= N
```

The procedure uses an integer procedure `random (M,N)` which
chooses equiprobably a random interger `F` between `M` and `N`, and
also a procedure `exchange`, which exchanges the value of its two
parameters;

```code
begin	real X; integer F;
	F := random (M,N); X := A[F];
	I := M; J := N;
up:	for I := I	step 1	until N do
		if X < A[I]	then	go to	down;
	I := N;
down:	for J := J	step -1	until M do
		if A[J] < X	then 	go to	change;
	J := M;
change:	for I < J	then	begin	exchange (A[I], A[J]);
				I := I + 1; J := J - 1;			
				go to	up
			end
else	if I < F then	begin	exchange (A[I], A[F]);
				I := I + 1
			end
else	if F< J	then	begin	exchange (A[F], A[J]);
				J := J - 1
			end;
end    partition
```
