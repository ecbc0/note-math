#import "/module/module.typ": *
#show: module

let mapping $1,…,n ⇝ a_1,…,a_n$

#tag("permutation") The following are equivalent
- $1,…,n$ bijection
- $1,…,n$ permutation 
- $n$ order permutation. Quantity $n (n-1) ⋯ 1 = n!$. Usually denoted as $S_n$

#tag("combination") The following are equivalent
- Select subset $A$ with $|A| = i$ from $Subset {1,…,n}$
- Select subsets $A, B in Subset {1,…,n}$ with 
#indent[
  partition ${1,…,n} = A ⊔ B$ \
  $|A| = i, |B| = j$ \
  $|A| + |B| = i + j = n$
]
- Select a permutation $a$ with $A = {a(1),…,a(i)}, B = {a(i+1),…,a(i+j)}$ and another permutation $a'$ gives the same partition if
#indent[ 
  $ 
    {a'(1),…,a'(i)} &= {a(1),…,a(i)} \ 
    {a'(i+1),…,a'(i+j) &= {a(i+1),…,a(i+j)}
  $
]
Define the #tag("quotient") $a ∼ a'$ of permutations with the same partition as a subset of $S_n$ that satisfies the above conditions, i.e., the inverse image of the partitioning possibility $A ⊔ B$

<==> $(exists b_i in S_i) and (exists b_j in S_j), (b_i,b_j) a = a'$

Cardinality calculation
$
  frac(|S_n|,|S_i × S_j|) = frac(n!,i!j!) = frac(n!,i! (n-i)!)
$
Denoted as
$
  binom(n,i) = binom(n,i,j)
$
All $i = 0 ,…, n$ combinations <==> All $i = 0 ,…, n$ select subsets $A$ with $|A| = i$ in $Subset {1,…,n}$
$
  sum_(i+j = n) binom(n,i,j) &"or" sum_(i=0..n) binom(n,i) \
  &= |Subset {1,…,n}| \
  &= 2^n
$
is the number of repeatable selections of $n$ from $2$

from can be calculated by induction or observed directly, we can get 
$ 
  frac(n!,i! j!) 
  = frac((n-1)! (i + j),i! j!) 
  = binom(n-1,i-1,j) + binom(n-1,i,j-1) 
$
#tag("binom-expansion") 
$
  (x+y)^n &= sum_(i+j=n) binom(n,i,j) x^i y^j \
  (x_1 + ⋯ + x_d)^n &= sum_(k_1 + ⋯ + k_d = n) binom(n,k_1,…,k_d) x_1^(k_1) ⋯ x_d^(k_d)
$
vs Newton binomial $(1+x)^p = sum_(i=0..∞) binom(p,i) x^i, p in ℝ$

#tag("multi-combination") Similarly, the following are equivalent
- $d$ multi-combination. $1 ,…, n$ select $k_1 ,…, k_d$ with $k_1 + ⋯ + k_d = n$
- partition ${1 ,…, n} = A_1 ⊔ ⋯ ⊔  A_d$ with $|A_i| = k_i$ and $k_1 + ⋯ + k_d = n$
- Select permutation, and quotient
  $
    binom(n,k_1,…,k_d) = frac(|S_n|,|S_(k_1) × ⋯ × S_(k_d)|) = frac(n!,k_1 ! \,…\, k_d !)
  $
Total number $sum_(k_1 ,…, k_d in ℕ \ k_1 + ⋯ + k_d = n) binom(n,k_1 ,…, k_d) = d^n$, which is the number of selecting $n$ times from $d$ with replacement $d^n$

*Proof*
#indent[
  Selecting $n$ times with replacement from $1 ,…, d$, number $d^n$ <==> number of mappings $1 ,…, n -> 1 ,…, d$, $|{1 ,…, d}|^(|{1 ,…, n}|)$

  Any selection can be permuted to $underbrace(1 \,…\, 1, k_1) , underbrace(2 \,…\, 2, k_2) ,…, underbrace(d \,…\, d, k_d)$ with $k_1 + ⋯ + k_d = n$ 

  Restoring all the order is selecting $k_1 ,…, k_d$ positions from $1 ,…, n$, which is multinomial coefficient $binom(n,k_1 ,…, k_d)$. This gives
  $
  sum_(k_1 ,…, k_d in ℕ \ k_1 + ⋯ + k_d = n) binom(n,k_1 ,…, k_d) = d^n
  $
]
what is $|{k_1 ,…, k_d in ℕ : k_1 + ⋯ + k_d = n}|$? 
#indent[
  *Example* Quantity 10, number of groups 4. $n = 10, d = 4, k(1 ,…, 4) = 3,2,0,5$

  star & bar model

  ★ ★ ★ | ★ ★ | | ★ ★ ★ ★ ★ 

  Selecting $d-1$ positions from $n+d-1$ positions as bar, dividing $n$ ★ into $d$ groups. Number

  $
    binom(n+d-1,d-1) = binom(n+d-1,n,d-1)
  $
]
#tag("dimension-of-symmetric-tensor") The dimension of symmetric tensor space $(𝕂^n)^(⊙ k)$ is also $binom(k+n-1,k,n-1)$, basis $e_1^(⊙ k_1) ⊙ ⋯ ⊙ e_n^(⊙ k_n)$

The repetition number $binom(n,k_1 ,…, k_d)$ will be used for example to calculate $L^2$ normalization

#tag("conjugate-class-of-permutation-is-cycle") #link(<conjugate-class>)[] of $S_n$ <==> cycle := permutation $a$ with $i_1 ⇝^a i_2 ⇝^a ⋯ ⇝^a i_k ⇝^a i_1$

The $sign$ decomposition of permutation

Tensor space's $sign$ decomposition, $⊕$ irreducible represenation