#import "../module/module.typ": *
#show: module

Addition of natural numbers $ℕ$
#indent[
  $a$ is counting $1$ $a$ times, $a + b$ is counting $a$ times first, then counting $b$ times

  - Associativity: $(a + b) + c = a + (b + c)$
  - Commutativity: $a + b = b + a$
]
_Proof_ The intuition in the real world is that for counting $+1$, no matter how the counting task is manually divided into several sub-tasks, the result will not be affected, and the total number of decomposition methods is limited, and the final decomposition is the commutativity and associativity of a large number of $1$s

Multiplication of natural numbers $ℕ$
#indent[
  $a ⋅ b$ is counting $b$ times, $a$ times

  It also satisfies commutativity and associativity. The intuition in the real world is "two-dimensional rectangle (commutativity)" and "three-dimensional rectangle (associativity)". No matter how the product decomposition sub-tasks are decomposed, the result will not be affected. And the total number of decompositions is limited, and the final decomposition is the commutativity and associativity of a large number of prime numbers
]
#indent[
  $(a + b) ⋅ c = a ⋅ c + b ⋅ c$

  The intuition is to decompose it by the sum of the side lengths of a two-dimensional rectangle
]
Integers $ℤ$
#indent[
  The number line has two directions
]
Rational numbers $ℚ$
#indent[
  $n$-division operation, the inverse of multiplication $1/n$

  Do not confuse it with division and remainder of $ℕ,ℤ$, which is successive subtraction of one number $a$ by another number $b$, not equal division
]
Real numbers $ℝ$
#indent[
  One intuition for real numbers is length. Or it contains rational numbers + linear order + order completeness

  Given the intuitiveness of real numbers, it can be considered that they exist, and many axioms can be used to define real numbers i.e. assume true propositions. But real numbers can also be "recovered" from rational numbers
]
Examples of irrational numbers
#indent[
  We prove that $sqrt(2)$ is irrational, or ${x in ℚ : x^2 = 2} = ∅$

  - Every natural number can be uniquely factorized into prime factors
  - $p, q$ are coprime := have no common prime factors
  - If $p, q$ are coprime, then $p^n, q^n$ are coprime.
  - $x in ℚ$ can be uniquely represented as a fraction $x = p/q$ of coprime $p, q$.
  - If $n in ℕ, n != 0, x^n in ℤ$, then $x in ℤ$. Proof by contradiction: If $x = p/q ∉ ℤ$ then $q != 1$ thus $q^n != 1$ thus $x^n = p^n/q^n ∉ ℤ$.

  Specifically, when $n = 2$, $x^2 = 2 in ℤ ==> x in ℤ$, but $1^2 = 1, 2^2 = 4$ and $x > 2 ==> x^2 > x > 2$. This indicates that there is no $x in ℤ$ such that $x^2 = 2$.

  Therefore $sqrt(2) ∉ ℚ$ is not a rational number.

  This method of determination can be extended to algebraic integers $"algebraic-integer" := {x ∈ ℝ : (x^n + a_(n - 1) x^(n - 1) + ⋯ + a_0 = 0) and (a_0, a_1 ,…, a_(n - 1) ∈ ℤ)}$.

  The "integer" in algebraic integer is because $"algebraic-integer" ∩ ℚ = ℤ$.

  _Proof_ (p.43 of @ref-8)
  #indent[
    Take $p,q in ℤ$ coprime. Substitute $x = p/q$ into the equation, multiply by $q^n$.
    $
      p^n + a_(n-1) q p^(n-1) + ⋯ + a_0 q^n = 0 \
      p^n = - q (a_(n-1) p^(n-1) + ⋯ + a_0 q^(n-1))
    $
    The right side is divisible by $q$. But $p,q$ are coprime, so $q = ± 1$ or $p = ± 1$.

    $p != ± 1 ==> q = ± 1$

    $p = ± 1 ==> ± 1 = p^n = q ⋅ "some-integer" ==> q = ± 1$

    Thus $q = ± 1$. Thus $x = ± p in ℤ$.
  ]
]
Algebraic numbers $"algebraic-number" := {x ∈ ℝ : (a_n x^n + a_(n - 1) x^(n - 1) + ⋯ + a_0 = 0) and (a_0, a_1 ,…, a_n ∈ ℤ)}$.

Note that $a_n = 1$ is not required, $x in ℚ$ is not restricted, including all rational numbers $p/q$, some irrational numbers e.g. $sqrt(2)$

Algebraic numbers $"algebraic-number"$ are a countable set, real numbers $ℝ$ are an uncountable set

Transcendental numbers $"transcendental-number" := ℝ ∖ "algebraic-number" != ∅$. $e,π$ are transcendental numbers

Decimal and binary systems can both define real numbers, both are special nested interval methods

Rational number intervals are subsets $A ⊆ ℚ$ with the property of uninterrupted order

$ And_(a,b in A \ a < b) And_(c in ℚ \ a < c < b) c in A $

Note that interval endpoints can be irrational numbers. Defining real numbers using nested intervals also requires handling Cauchy property or limit-distance-vanish property

From the perspective of operational simplicity, Dedekind-cut should be used. "Operational simplicity" means
- let $x ∈ ℝ$, ${x} <-> ℝ ∖ {x}$ is a one-to-one correspondence
- $(ℝ ∖ {x}) ∩ ℚ = ℚ ∖ {x} = ℚ_(< x) ⊔ ℚ_(> x)$
- So $x in ℝ$ and $ℚ_(< x) ⊔ ℚ_(> x)$ are in one-to-one correspondence

#tag("Dedekind-cut") Irrational numbers $ℝ ∖ ℚ$
#indent[
  $x ∈ ℝ ∖ ℚ$ is in one-to-one correspondence with ${(A,B) ∈ Subset(ℚ)^2 : (ℚ = A ⊔ B) and (forall (a,b) ∈ (A,B), a < b)}$

  $x := (A,B)$. Relabel $(A,B)$ as $(ℚ_(< x), ℚ_(> x))$
]
Real numbers $ℝ := ℚ ⊔ (ℝ ∖ ℚ)$

Logically equivalently, only one half can be used, for example, any left-half infinite interval of rational numbers $ℚ$, and then the right-half infinite interval is automatically obtained by taking the complement in $ℚ$. But here a more symmetrical representation is used

- #tag("order-real") $ℝ$ order $x < y <==> (ℚ_(< x) ⊊ ℚ_(< y))$

let
$
  A + A' := {a + a' : (a,a') ∈ (A,A')} \
  A ⋅ A' := {a ⋅ a' : (a,a') ∈ (A,A')}
$
- #tag("add-real") $ℝ$ addition. let $x,y ∈ ℝ$
#indent[
  $
    x + y &:= (ℚ_(< x) + ℚ_(< y) , ℚ_(> x) + ℚ_(>  y))
    &&"expect" (ℚ_(< x + y) , ℚ_(>  x + y)) \

    -x &:= (- ℚ_(> x), - ℚ_(< x))
    &&"expect" (ℚ_(< -x),ℚ_(>  -x))
  $
  ]
Due to the existence of $< 0$, multiplication does not preserve order. However, multiplication in $ℚ_(> 0), ℝ_(> 0)$ preserves order. First handle the case $> 0$, then use reflection $- x$ to obtain the case $< 0$

- #tag("multiply-real") $ℝ$ multiplication. let $x,y > 0$
#indent[
  $
    x ⋅ y &:= (ℚ_((0,x)) ⋅ ℚ_((0,y)) , ℚ_((x,∞)) ⋅ ℚ_((y,∞)))
    && "expect" (ℚ_((0,x y)) , ℚ_((x y,∞))) \

    1/x &:= (1/(ℚ_((x,∞))) , 1/(ℚ_((0,x))))
    && "expect" (ℚ_((0,1/x)),ℚ_((1/x,∞)))
  $
]
$ℤ,ℚ,ℝ$ have associativity, commutativity, distributivity for $+,⋅$

#tag("completeness-real") $ℝ$ completeness

#tag("exact-bound") Supremum Principle
#indent[
  let $A ⊆ ℝ$ have an upper bound

  $exists x ∈ ℝ, ⋃_(a ∈ A) ℚ_(< a) = ℚ_(< x)$

  Supremum $sup A := x$

  - $forall a ∈ A, a <= sup A$
  - $forall ε > 0, exists a in A, sup A - ε < a <= sup A$

  #tag("monotone-convergence") Monotone bounded #link(<limit-sequence-real>)[convergence] _Proof_ use Supremum Principle
]
#tag("nested-closed-interval-theorem") Nested Closed Interval Theorem
#indent[
  Whether it's an $ℕ$ nested interval or a $⊆$ linearly ordered chain of nested intervals, linear order implies monotonicity of interval endpoints. For the set of smaller endpoints, use supremum $a_0$; for the set of larger endpoints, use infimum $a_1$, obtaining with $a_0 <= a_1$ that the intersection of the nested closed intervals is the closed interval $[a_0,a_1] ≠ ∅$. $[a_0,a_1]$ can be understood as the minimum element of the $⊆$ linearly ordered chain of nested intervals
]
#tag("closed-interval-intersection-theorem")
#indent[
  In fact, it's sufficient that the smaller endpoints of the closed interval family are all $<=$ the larger endpoints to conclude the intersection is non-empty

  _Proof_ Similarly, for the smaller endpoints use supremum $a_0$, for the set of larger endpoints use infimum $a_1$, obtaining with $a_0 <= a_1$ that the intersection of the closed interval family is the closed interval $[a_0,a_1] ≠ ∅$
]
#let B = c-bf("B", rgb("#919191"))
#let C = c-bf("C", rgb("#919191"))
#tag("closed-interval-net-theorem") Closed interval #link(<net>)[net] $#B$ intersection non-empty $⋂ #B != ∅$

_Proof_
#indent[
  Closed interval network ==> The small endpoints of the closed interval family are all $<=$ large endpoints
]
The reverse direction "the small endpoints of the closed interval family are all $<=$ large endpoints ==> interval net" is not true. Consider a closed interval family with only two intervals $B_1, B_2$ where their intersection is non-empty $B_1 ∩ B_2 != ∅$ and $B_1 ∩ B_2 ⊊ B_1, B_2$, and there is no third interval belonging to their intersection. Although if we supplement the intersection, it can be satisfied

let $a_n : ℕ -> ℝ$

def $ℕ -> ℝ$ sequence $k ⇝ sup_(k >= n) {a_k}$ is monotonically decreasing, $k ⇝ inf_(k >= n) {a_k}$ is monotonically increasing

#tag("limsup") Upper limit

$ limsup_(n -> ∞) {a_n} := lim_(n -> ∞) sup_(k >= n) {a_k} = inf_(n in ℕ) sup_(k >= n) {a_k} $

#tag("liminf") Lower limit

  $ liminf_(n -> ∞) {a_n} := lim_(n -> ∞) inf_(n >= k) {a_k} = sup_(n in ℕ) inf_(n >= k) {a_k} $

*Example*

  - $a_k = 1 + 1/k$
    $
      sup_(n in ℕ) {a_n} &= 2 \
      sup_(n >= k) {a_k} &= 1 + 1/k \
      lim_(n -> ∞) sup_(n >= k) {a_k} &= 1
    $
  - $a_k = 1 + (-1)^k$

    $ limsup_(n -> ∞) {a_n} = 2 $

For $ℕ$ sequences, define $"distance"{a_(n),a_(n+1),...} := sup_(m,m' >= n) |a_m - a_m'|$

For general net, define $"distance"(B) = sup_(a,a' in B) |a - a'|$

#tag("limit-distance-vanish-sequence") := $lim_(n -> ∞) abs({a_(n),a_(n+1),...}) = 0$. i.e. tail distance vanish

#tag("limit-distance-vanish-net") := $forall ε > 0, exists B in #B, "distance"(B) < ε$

#tag("Cauchy-completeness-real") limit-distance-vanish sequence or net converges

_Proof_
#indent[
  limit-distance-vanish ==> $forall ε > 0, exists n ∈ ℕ, abs({a_(n),a_(n+1),...}) < ε$

  let $r = |a_1 ,…, a_(n)| + ε$, then $|{a_1, a_2, ...}| < r$. We can take $ε = 1 > 0$

  ==> limit-distance-vanish sequence is bounded

  ==> Monotonically increasing/decreasing bounded sequences $n ⇝ inf_(m >= n){a_m} , sup_(m >= n){a_m}$ have limits $liminf_(n -> ∞) {a_n} <= limsup_(n -> ∞) {a_n}$

  limit-distance-vanish property ==> $liminf_(n -> ∞) {a_n} = limsup_(n -> ∞) {a_n} = a$

  Thus $a_n$ converges to $a$

  For the net, similarly, it is proved that the tail of the net is bounded, and then, it has been proved that the intersection of bounded interval nets is non-empty. Take a point $a$ from it, and use limit-distance-vanish-net to get the net convergence $lim_(B in #B) sup_(a_B in B) |a_B - a| = 0$
]
Conversely, a convergent sequence is limit-distance-vanish. by triangle inequality $|a_m - a_m'| <= |a_m - a| + |a_m' - a|$

*Prop* A sequence $ℕ -> ℝ$ or net $#B$ converges to $a$ <==> limit-distance-vanish

#tag("uncountable-real") Real numbers are uncountable $|ℕ| < |ℝ|$
#indent[
  It has been proved that $|ℕ| < |Subset(ℕ)|$. cf. #link(<cardinal-increase>)[]

  recall ${0,1}^ℕ ≃ (ℕ -> "bool") ≃ Subset(ℕ)$

  $|Subset(ℝ)| = |ℕ -> ℕ| = |ℝ|$

  _Proof_
  #indent[
    According to the nested interval theorem, the binary decimal representation of real numbers: $a_0 . a_1 a_2 ...$ The $n$-th digit takes $0 ⇝ 0 ⋅ 1/2^n$ or $1 ⇝ 1 ⋅ 1/2^n$

    ==> ${0,1}^ℕ ≃ [0,1]$. Where, the two possible equivalent choices in binary are quotiented

    $[0,1] ≃ (-1,1)$ by linear mapping or affine mapping

    $(-1,1) ≃ ℝ$ by $x ⇝ x/(1 - x^2)$

    $(ℕ -> ℕ) ≃ (0,1]$

    _Proof_
    #indent[
      $
        (n_1, n_2, ...) ⇝ 1/2^(n_1) + 1/2^(n_1 + n_2) + ⋯
      $

      It represents that in binary, the first position where $1$ appears is $n_1$, the second position is $n_2$ ...

      Compare ${0,1}^ℕ$, $1/2^(m_1) + 1/2^(m_2) + ⋯$ vs $1/2^(n_1) + 1/2^(n_1 + n_2) + ⋯$

      $
        m_1 &= n_1 \
        m_2 &= n_1 + n_2 \
        &⋯
      $

      Distance $n_(i + 1) = m_(i + 1) - m_i$
    ]
  ]
]