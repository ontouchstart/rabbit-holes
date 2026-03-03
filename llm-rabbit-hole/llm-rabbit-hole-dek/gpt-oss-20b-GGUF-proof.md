# Explain Knuth's proof.

<<<reasoning_content_start>>>

We need to explain Knuth's proof in simpler terms, probably focusing on the constructive proof for odd m. Provide intuitive explanation of the algorithm, the use of fiber decomposition, the generalizable cycles, the proof that the first cycle is Hamiltonian, and maybe mention the other two cycles. Simplify the notation. Provide the idea of the "generalizable" cycles and that they work for all odd m.

We need to explain the proof as if to someone with some math background but not too deep. Use simpler language.

We should explain the decomposition of the graph into three cycles, the function d that maps a vertex to a permutation of {0,1,2} determining which of the three outgoing edges is used for each of the three cycles.

Explain the notion of s = (i+j+k) mod m and the fiber decomposition: fibers are sets of vertices with the same s, the digraph is layered from one fiber to the next.

Explain the construction: For odd m, we can define a simple rule for each vertex depending on i, j, s, whether they are 0 or m-1. This defines a permutation d for each vertex. Show that for each of the three cycles the successor is defined by a rule that ensures each cycle visits all vertices once.

Explain the proof for the first cycle: show that the cycle visits all vertices exactly once by analyzing the pattern of increments: it goes through all vertices with s=0, then s=1, etc., and within each s, it visits all vertices with that s in a systematic order. Use the fact that m is odd to ensure that the increments cycle through all possibilities.

Also mention the other two cycles are constructed similarly, and the proof is analogous.

Explain that the number of such solutions is 760 for odd m, but the proof focuses on one particular construction.

Also mention that for even m the problem remains open.

Let's produce a clear explanation.

<<<reasoning_content_end>>>

## 1.  What the problem really is

Imagine a big cube made of tiny cubes.  
If the side length of the big cube is **m**, then there are  
\(m^3\) tiny cubes, and we label each one by its three coordinates

\[
(i,\;j,\;k), \qquad 0\le i,j,k < m .
\]

From every tiny cube there are **three arrows** that point to the next cube:

* **X‑arrow** – increases the first coordinate: \((i+1,\;j,\;k)\)  (mod m)
* **Y‑arrow** – increases the second coordinate: \((i,\;j+1,\;k)\) (mod m)
* **Z‑arrow** – increases the third coordinate: \((i,\;j,\;k+1)\) (mod m)

Because we “wrap around”, each coordinate is taken modulo m.

The question is:

> Can we split all these arrows into **exactly three** directed loops, each loop
>  visiting every tiny cube exactly once and returning to its start
>  (a *Hamiltonian cycle*)?

If we could do this, the three loops would give a decomposition of the whole
digraph into three disjoint Hamiltonian cycles.

Knuth had been thinking about this puzzle for years.  He believed it should be
possible for every **odd** value of m (3,5,7,…) but had no proof.  Nobody had
found a solution for even m at all.

---

## 2.  A key observation – “fibers”

Define

\[
s(i,j,k) \;=\; (i+j+k)\bmod m .
\]

All vertices that have the same value of s form a **fiber**.  
If you look at the graph, every arrow always goes from a vertex in fiber s to a
vertex in fiber s+1 (mod m).  
So the digraph is *layered* – you can only move from one layer to the next.

Because of this layering we can re‑label a vertex as

\[
(i,\;j,\;s)\quad\text{with}\quad k = (s-i-j)\bmod m .
\]

Now the whole problem is: for each vertex \((i,j,s)\) decide which of the three
outgoing arrows we will use in each of the three cycles.

---

## 3.  The “permutation” that tells us which arrow to use

Let

\[
d(i,j,s) \in \{0,1,2\}
\]

be a number that says **“in the first cycle use the arrow with index d,
in the second cycle use the arrow with index (d+1) mod 3,
in the third cycle use the arrow with index (d+2) mod 3”.**

The index 0 means the X‑arrow, 1 means the Y‑arrow, 2 means the Z‑arrow.

The challenge is to choose a rule for d that makes **each** of the three
cycles a single Hamiltonian cycle.

---

## 4.  The simple rule that works for all odd m

Knuth found that it is enough to let the rule depend only on whether the
coordinates are 0, m−1, or something in between.  
For odd m (the whole proof uses the fact that m is odd) the rule is:

| Condition on (i, j, s) | d = 0 (X‑arrow) | d = 1 (Y‑arrow) | d = 2 (Z‑arrow) |
|-----------------------|----------------|----------------|----------------|
| **s = 0** and **j = m−1** | 0 | 1 | 2 |
| **s = 0** and **j ≠ m−1** | 2 | 0 | 1 |
| **0 < s < m−1** and **i = 0** | 1 | 2 | 0 |
| **0 < s < m−1** and **i ≠ 0** | 2 | 0 | 1 |
| **s = m−1** and **i > 0** | 1 | 2 | 0 |
| **s = m−1** and **i = 0** | 2 | 0 | 1 |

(These six cases cover all possibilities.  The table is read
as: “if the vertex satisfies the left column, then use the arrow
with the index given in the corresponding column”.)

The same idea, with a few small changes, gives the rules for the second and
third cycles (the article lists them in the appendix).

---

## 5.  Why the rule produces a Hamiltonian cycle

Let us look at the **first cycle** (the same argument works for the other two).

1. **Start**: pick the vertex \((0,m-1,0)\).  
   Here \(s=0\) and \(j=m-1\), so according to the table we use the X‑arrow,
   moving to \((1,m-1,0)\).

2. **What happens inside a fiber**  
   * Inside a fiber \(s=0\) we alternate between increasing i (X‑arrow)
     and increasing k (Z‑arrow).  
     Because \(m\) is odd, after we have increased i enough times we will
     visit **every** vertex in that fiber exactly once.
   * Inside a fiber with \(0<s<m-1\) we mostly use the Z‑arrow,
     but whenever \(i\) becomes 0 we switch to the Y‑arrow.
     Again, because \(m\) is odd, this pattern cycles through all
     vertices in that fiber.
   * Inside the top fiber \(s=m-1\) we mostly use the Z‑arrow,
     but switch to the Y‑arrow when \(i>0\).
     The oddness of m guarantees that we again hit every vertex in this
     fiber.

3. **Moving from one fiber to the next**  
   Every time we take the X‑ or Y‑arrow we also increase the value of s by 1
   (mod m).  Thus after finishing one fiber we automatically go to the next
   fiber.  Because we start in fiber 0 and there are exactly m fibers,
   we will traverse them in order 0,1,2,…,m−1 and then back to 0.

4. **No repeats, one full tour**  
   By the analysis above each fiber is visited exactly once, and every vertex
   belongs to exactly one fiber.  Therefore the cycle visits every one of the
   \(m^3\) vertices exactly once and then returns to the starting vertex – a
   Hamiltonian cycle.

The proof for the second and third cycles is completely analogous: the
table is slightly different, but the same pattern of “mostly Z‑arrows,
occasionally Y‑ or X‑arrows” holds, and the oddness of m again guarantees
that every vertex is hit exactly once.

---

## 6.  How many such solutions exist

When the authors ran a computer search on the 3‑by‑3‑by‑3 cube, they found
**11 502** different ways to split the arrows into three cycles.  
Only a small fraction of those – **1 012** – “generalise” to a 5‑by‑5‑by‑5
cube.  Even fewer, **996**, generalise to both 5 and 7.  
Those 996 are exactly the solutions that work for **every odd m**.

The rule above is one of **760** “Claude‑like” solutions that work for all odd
m.  A “Claude‑like” solution is one where the table for d depends only on
whether i, j, s are 0, m−1, or something else – no other special cases.

---

## 7.  What about even m?

For even values of m the problem is still unsolved.  
Claude tried to find a rule, and even produced some partial solutions for
\(m=4,6,8\), but could not discover a pattern that would work for every
even m.  So the even‑size case remains an open problem.

---

## 8.  Bottom line

* The puzzle is: can we decompose a big “wrap‑around” cube into three
  directed loops that visit every tiny cube once?
* For **odd** side lengths, Knuth’s proof gives a very simple, explicit rule
  (depending only on whether coordinates are 0, m−1, or something else) that
  guarantees three Hamiltonian cycles.
* The proof works by analysing the graph in terms of “fibers” (layers where
  the sum of the coordinates is constant) and showing that the rule
  visits every vertex exactly once.
* There are many other solutions, but the one Knuth presents is
  particularly elegant and works for all odd sizes.
* The even‑size case is still open.

That is the essence of Knuth’s proof – a clean, constructive recipe that
turns a very large combinatorial object into three perfect loops.


