## ALGORITHM 63
PARTITION

C. A. R. HOARE

Elliott Brothers Ltd., Borehamwood, Hertfordshire, Eng.

```code
procedure partition (A,M,N,I,J);  value M,N;
            array A; integer M,N,I,J;
```

__comment__ `I` and `J` are output variables, and `A` is the array (with
subscript bounds `M:N`) which is operated by this procdeure.
Partition take the value `X` of a random element of the array `A`,
and rearrange the values of the elements of the arrary in such a
way that there exists integers `I` and `J` with the following properties:

```code
M <= I < I <= N provided M < N
A[R] <= X for M <= R <= J
A[R] =  X for J <= R <= I
A[R] >= X for I <= R <= N
```

The procedure uses an integer procedure `random (M,N)` which
chooses equiprobably a random interger `F` between `M` and `N`, and
also a procedure `exchange`, which exchanges the value of its two
parameters;

```code
begin    real X; integer F;
         F := random (M,N); X := A[F];
         I := M; J := N;
up:
         ...

down:
         ...

change:
         ...

end      partition
```
