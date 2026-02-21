## ALGORITHM 63 – PARTITION  
*C. A. R. Hoare*  
*Elliott Brothers Ltd., Borehamwood, Hertfordshire, Eng.*

```algol
procedure partition (A, M, N, I, J); value M, N;
  array A; integer M, N, I, J;

  /* I and J are the consequent (output) variables, and A is the
     array (with subscript bounds M:N) operated on by this procedure. */
  /* Partition takes the value X of a random element of A and
     rearranges the values of the elements of the array in such a
     way that there exist integers I and J with the following
     properties: */
  /*   M <= J < I <= N   (provided M < N) */
  /*   A[R] <= X   for M <= R < J */
  /*   A[R] == X   for J < R < I */
  /*   A[R] >= X   for I <= R <= N */

  begin
    real X; integer F;
    F := random(M, N);      /* pick a random index F in [M, N] */
    X := A[F];
    I := M;                 /* left pointer */
    J := N;                 /* right pointer */

    up:
      for I := I step 1 until N do
        if X < A[I] then
          goto down;        /* found element >= X on the left side */
      I := N;               /* no such element – set I to N */

    down:
      for J := J step -1 until M do
        if A[J] < X then
          goto change;      /* found element < X on the right side */
      J := M;               /* no such element – set J to M */

    change:
      if I < J then
        begin
          exchange(A[I], A[J]); /* swap out‑of‑order elements */
          I := I + 1;
          J := J - 1;
          goto up;                  /* continue scanning */
        end
      else if I < F then           /* X is left of the pivot position */
        begin
          exchange(A[I], A[F]);
          I := I + 1;
        end
      else if F < J then           /* X is right of the pivot position */
        begin
          exchange(A[F], A[J]);
          J := J - 1;
        end;
  end partition;
```

