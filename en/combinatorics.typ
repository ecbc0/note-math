#import "../module/module.typ": *
#show: module

let mapping $1,…,n ⇝ a_1,…,a_n$

#tag("permutation") the following are equivalent
- a bijection $a$ from $1,…,n$ to itself, called a permutation
- an ordering of $1,…,n$
- permutation of order $n$. quantity $n (n-1) ⋯ 1 = n!$. usually denoted as $S_n$

#tag("combination") the following are equivalent
- picking a subset $A$ from $Subset {1,…,n}$ with $|A| = i$
- picking subsets $A, B in Subset {1,…,n}$ with
#indent[
  partition ${1,…,n} = A ⊔ B$ \
  $|A| = i, |B| = j$ \
  $|A| + |B| = i + j = n$
]
- picking a permutation $a$ with $A = {a(1),…,a(i)}, B = {a(i+1),…,a(i+j)}$ \
  another permutation $a'$ gives the same partition if
  #indent[
    $
      {a'(1),…,a'(i)} &= {a(1),…,a(i)} \
      {a'(i+1),…,a'(i+j)} &= {a(i+1),…,a(i+j)}
    $
  ]
  define the #tag("quotient") $a ∼ a'$ for permutations giving this same partition, the inverse image of partition $A ⊔ B$

- $(exists b_i in S_i) and (exists b_j in S_j), (b_i,b_j) a = a'$

cardinality calculation of the quotient set $S_n / ∼$
$
  frac(|S_n|,|S_i × S_j|) = frac(n!,i!j!) = frac(n!,i! (n-i)!)
$
denoted as
$
  binom(n,i) = binom(n,i,j)
$
all $i = 0 ,…, n$ combinations <==> picking subset $A$ from $Subset {1,…,n}$ with $|A| = i$ for all $i = 0 ,…, n$
$
  sum_(i+j = n) binom(n,i,j) &"or" sum_(i=0..n) binom(n,i) \
  &= |Subset {1,…,n}| \
  &= 2^n
$
is the number of ways to pick $n$ times from $2$ items with replacement

calculating by induction or direct observation, we get
$
  frac(n!,i! j!)
  = frac((n-1)! (i + j),i! j!)
  = binom(n-1,i-1,j) + binom(n-1,i,j-1)
$
#tag("binom_expansion")
$
  (x+y)^n &= sum_(i+j=n) binom(n,i,j) x^i y^j \
  (x_1 + ⋯ + x_d)^n &= sum_(k_1 + ⋯ + k_d = n) binom(n,k_1,…,k_d) x_1^(k_1) ⋯ x_d^(k_d)
$
vs Newton binomial $(1+x)^p = sum_(i=0..∞) binom(p,i) x^i, p in ℝ$

#tag("multi_combination") similarly, the following are equivalent
- $d$-fold combination. picking $k_1 ,…, k_d$ from $1 ,…, n$ with $k_1 + ⋯ + k_d = n$
- partition ${1 ,…, n} = A_1 ⊔ ⋯ ⊔  A_d$ with $|A_i| = k_i$ and $k_1 + ⋯ + k_d = n$
- picking a permutation, and quotient
  $
    binom(n,k_1,…,k_d) = frac(|S_n|,|S_(k_1) × ⋯ × S_(k_d)|) = frac(n!,k_1 ! \,…\, k_d !)
  $
Total number $sum_(k_1 ,…, k_d in ℕ \ k_1 + ⋯ + k_d = n) binom(n,k_1 ,…, k_d) = d^n$, which is the number of ways to choose $n$ times from $d$ items with repetition $d^n$

It can be understood like this. Choosing $1 ,…, d$ with repetition $n$ times, number $d^n$ <==> number of mappings $1 ,…, n -> 1 ,…, d$, which is $|{1 ,…, d}|^(|{1 ,…, n}|)$

The mapping $1 ,…, n -> 1 ,…, d$ is partitioned into outputting $k_1 ,…, k_d$ of $1 ,…, d$, satisfying $k_1 + k_2 + ⋯ + k_d = n$

Partitioning $1 ,…, n$ into $k_1 + ⋯ + k_d = n$, outputting $k_1 ,…, k_d$ of $1 ,…, d$ respectively, the number corresponds to multinomial combinations

what is $|{k_1 ,…, k_d in ℕ : k_1 + ⋯ + k_d = n}|$?
#indent[
  *Example* total 10, group sizes 4. $n = 10, d = 4, k(1 ,…, 4) = 3,2,0,5$

  star & bar model

  ★ ★ ★ | ★ ★ | | ★ ★ ★ ★ ★

  Choosing $d-1$ positions as bars out of $n+d-1$ positions, dividing $n$ ★ into $d$ groups. Number

  $
    binom(n+d-1,d-1) = binom(n+d-1,n,d-1)
  $
]
#tag("dimension_of_symmetric_tensor") Also gives the dimension of the symmetric tensor space $(𝕂^n)^(⊙ k)$ as $binom(k+n-1,k,n-1)$, with basis $e_1^(⊙ k_1) ⊙ ⋯ ⊙ e_n^(⊙ k_n)$

The repetition count $binom(n,k_1 ,…, k_d)$ is used for things like calculating $L^2$ normalization

#tag("conjugate_class_of_permutation_is_cycle") #link(<conjugate_class>)[] of $S_n$ <==> cycle with same partition

cycle := permutation $a$ with $i_1 ⇝^a i_2 ⇝^a ⋯ ⇝^a i_k ⇝^a i_1$

The $sign$ decomposition of permutations

$sign$ decomposition of tensor spaces, $⊕$ irreducible represenation