## ALGORITHM 65
FIND

C. A. R. HOARE

Elliott Brothers Ltd., Borehamwood, Hertfordshire, Eng.

```code
procedure	find (A,M,N,K);	value M,N,K;
		array A;	integer M,N,K;
```

__comment__ Find will assign to `A[K]` the value which it would
behave if the array `A[M:N]` had been sorted. The array `A` will be
partly sorted, and subsequent entries will be faster than the first;

```code
begin	integer I,J;
	if M < N	then	begin	partition (A,M,N,I,J);      
					if K <= I then find(A,M,J,K);
					else if J <= K then find(A,J,N,K)
				end
end	find
```
