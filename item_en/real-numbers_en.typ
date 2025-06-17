#import "../module/module.typ": *
#show: module

Natural number $ℕ$ addition
#indent[
  $a$ is counting $a$ times $1$, $a + b$ is counting $a$ times first, then counting $b$ times

  - Associative law: $(a + b) + c = a + (b + c)$
  - Commutative law: $a + b = b + a$
]
_Proof_ The intuition in the real world is that for counting $+1$, no matter how the counting task is manually divided into several subtasks, the result will not be affected, and the total decomposition methods are limited. The associative and commutative laws of addition are just special cases. Just as we recognize natural numbers by counting, we can always recognize the commutative and associative laws by counting. Everything reduces to the case of complete additive decomposition, with only the commutative and associative laws of a large number of $1$s.

It seems difficult for computers to express this intuition, but it seems that all finite results must be correct. Similar to what is done in #raw("#link(<natural-number>)[]"), in order for computers to express this property, which holds for all natural numbers, using finite characters, memory, and finite time (and potentially infinite time), it needs to be defined as a true proposition.

The usual "proof" is to use the smallest assumption, the associative law of $1$, $(a + b) + 1 = a + (b + 1)$ or the definition of addition $(a + 1) + b = (a + b) + 1$, and then deduce other

Natural number $ℕ$ multiplication
#indent[
  $a ⋅ b$ is counting $a$ times of counting $b$ times

  It also satisfies the commutative and associative laws. The intuition in the real world is "two-dimensional and three-dimensional rectangles". For counting $+1$, no matter how it is decomposed into subtasks of product decomposition, it will not affect the result. Therefore, the commutative and associative laws of multiplication are just special cases of complete multiplication decomposition i.e. prime factorization, and the total number of decompositions is limited
]
Distributive law of natural number operations
#indent[
  $(a + b) ⋅ c = a ⋅ c + b ⋅ c$

  The intuition is to decompose the side length of a two-dimensional rectangle into sum
]
Integer $ℤ$
#indent[
  The number axis has two directions
]
Rational number $ℚ$
#indent[
  $n$ equal division operation, the inverse of multiplication $1/n$

  Do not confuse it with the division and remainder of $ℕ,ℤ$, which is a successive subtraction of a number $a$ by another number $b$, rather than equal division
]
Real number $ℝ$
#indent[
  One intuition of real numbers is length

  Given the intuitiveness of real numbers, we can assume that it exists and use many axioms to define real numbers i.e. assume a true proposition. But you can also "recover" real numbers from rational numbers
]
Examples of irrational numbers
#indent[
  Algebraic integer $"algebraic-integer" := {x ∈ ℝ : (x^n + a_(n - 1) x^(n - 1) + ⋯ + a_0 = 0) and (a_0, a_1 ,…, a_(n - 1) ∈ ℤ)}$

  The "integer" in algebraic integer is because $"algebraic-integer" ∩ ℚ = ℤ$

  _Proof_ (p.43 of @ref-8)
  #indent[
    Take $p,q in ℤ$ and make them relatively prime. Substitute $x = p/q$ into the equation, multiply by $q^n$
    $
    p^n + a_(n-1) q p^(n-1) + ⋯ + a_0 q^n = 0 \
    p^n = - q (a_(n-1) p^(n-1) + ⋯ + a_0 q^(n-1))
    $
    The right side is divisible by $q$. But $p,q$ are relatively prime, so $q = ± 1$ or $p = ± 1$.

    $p != ± 1 ==> q = ± 1$

    $p = ± 1 ==> ± 1 = p^n = q ⋅ "some-integer" ==> q = ± 1$

    So $q = ± 1$. Thus $x = ± p in ℤ$
  ]

  Special case ${x ∈ ℚ : x^2 - 2 = 0}$. But $(± 1)^2 = 1$ and $|x| >= 2 ==> |x|^2 >= 4$

  So ${x ∈ ℚ : x^2 - 2 = 0} = ∅$ that is $sqrt(2)$ is not a rational number
]
Algebraic number $"algebraic-number" := {x ∈ ℝ : (a_n x^n + a_(n - 1) x^(n - 1) + ⋯ + a_0 = 0) and (a_0, a_1 ,…, a_n ∈ ℤ)}$

Note that $a_n = 1$ is not required, $x in ℚ$ is not restricted, including all rational numbers $p/q$, some irrational numbers e.g. $sqrt(2)$

Algebraic number $"algebraic-number"$ is a countable set, real number $ℝ$ is an uncountable set

Transcendental number $"transcendental-number" := ℝ ∖ "algebraic-number" != ∅$. $e,π$ are transcendental numbers

Decimal, binary vs nested interval vs segmentation

Decimal (nested interval) seems very intuitive

However, decimal cannot natively handle $e = sum_(n = 0)^∞ 1/n!$

Many different $ℕ$ nested intervals have the same limit, e.g. $[0,1/n]$ vs $[-1/n,0]$, need limit-distance-vanish system quotient. let $"distance" (A) = sup_(x,x' in A) |x - x'|$

let $A_0 ⊃ A_1 ⋯ , B_0 ⊃ B_1 ⋯$ and $lim_(n -> ∞) "distance"(A_n),"distance"(B_n) = 0$, limit-distance-vanish relation (*alias* Cauchy convergence) 
$
  forall (ε ∈ ℚ) and (ε > 0), exists N ∈ ℕ, forall n,m > N, "distance"(A_n union B_m) < ε
$
You can change the $ℕ$ rational number interval nesting to a general rational number interval whose length #raw("#link(<hom-limit>)[limit]") tends to zero $⊂$ #raw("#link(<maximal-linear-order>)[linearly ordered chain]") or a more general rational number interval whose length tends to zero (maximal) #raw("#link(<net>)[net]")

A rational number interval is a subset $A ⊂ ℚ$ with property order uninterrupted 

$ And_(a,b in A \ a < b) And_(c in ℚ \ a < c < b) c in A $

From an operational simplicity perspective, Dedekind-cut should be used. "Operational simplicity" means 
- let $x ∈ ℝ$, ${x} <-> ℝ ∖ {x}$ one-to-one correspondence
- $(ℝ ∖ {x}) ∩ ℚ = ℚ ∖ {x} = ℚ_(< x) ⊔ ℚ_(> x)$
- So $x in ℝ$ and $ℚ_(< x) ⊔ ℚ_(> x)$ one-to-one correspondence

#tag("Dedekind-cut") irrational number $ℝ ∖ ℚ$
#indent[
  $x ∈ ℝ ∖ ℚ$ one-to-one corresponds to ${(A,B) ∈ Subset(ℚ)^2 : (ℚ = A ⊔ B) and (forall (a,b) ∈ (A,B), a < b)}$ 

  $x := (A,B)$. Record $(A,B)$ as $(ℚ_(< x), ℚ_(>  x))$ again
]
Real number $ℝ := ℚ ⊔ (ℝ ∖ ℚ)$

- #tag("order-real") $ℝ$ order $x < y <==>  (ℚ_(< x) ⊊ ℚ_(< y))$

let 
$
  A + A' := {a + a' : (a,a') ∈ (A,A')} \
  A ⋅ A' := {a ⋅ a' : (a,a') ∈ (A,A')}
$
- #tag("add-real") $ℝ$ addition. let $x,y ∈ ℝ$
#indent[  
  $
    x + y &:=&(ℚ_(< x) + ℚ_(< y) , ℚ_(> x) + ℚ_(>  y)) 
    &&"expect" (ℚ_(< x + y) , ℚ_(>  x + y)) \

    -x &:=&(- ℚ_(> x), - ℚ_(< x)) 
    &&"expect" (ℚ_(< -x),ℚ_(>  -x))
  $
  ]
Because of the existence of $< 0$, multiplication does not preserve order. But the multiplication of $ℚ_(> 0), ℝ_(> 0)$ preserves order. First deal with the case of $>  0$, and then use reflection $- x$ to get the case of $< 0$

- #tag("multiply-real") $ℝ$ multiplication. let $x,y > 0$
#indent[
  $
    x ⋅ y &:=&(ℚ_((0,x)) ⋅ ℚ_((0,y)) , ℚ_((x,∞)) ⋅ ℚ_((y,∞))) 
    && "expect" (ℚ_((0,x y)) , ℚ_((x y,∞))) \

    1/x &:=&(1/(ℚ_((x,∞))) , 1/(ℚ_((0,x)))) 
    && "expect" (ℚ_((0,1/x)),ℚ_((1/x,∞)))
  $
]
$ℤ,ℚ,ℝ$'s $+,⋅$ all have associativity, commutativity, and distributivity

$ℝ$ completeness #tag("completeness-real")

#tag("exact-bound") Least-upper-bound property
#indent[
  let $A ⊂ ℝ$ have an upper bound
  
  $exists x ∈ ℝ, ⋃_(a ∈ A) ℚ_(< a) = ℚ_(< x)$
  
  Supremum $sup A := x$

  - $forall a ∈ A, a <= sup A$ 
  - $forall ε > 0, exists a in A, sup A - ε < a <= sup A$

  #tag("monotone-convergence") monotone bound #raw("#link(<limit-sequence-real>)[convergence]") _Proof_ use exact-bound
]
#tag("nested-closed-interval-theorem") Nested interval theorem
#indent[
  Whether it is $ℕ$ nested intervals or $⊂$ linearly ordered chain nested intervals, linear order means the monotonicity of interval endpoints, use supremum $a_1$ and infimum $a_0$ for the endpoints with $a_0 <= a_1$ to get the intersection of nested closed intervals is a closed interval $[a_0,a_1] ≠ ∅$. $[a_0,a_1]$ can be understood as the minimal element of $⊂$ linear order chain nested closed sets
] 
#let B = c-bf("B")
#let C = c-bf("C")
#tag("closed-interval-net-theorem") Closed interval #raw("#link(<net>)[net]") $#B$ intersection is non-empty $⋂ #B != ∅$

_Proof_
#indent[
  Supplement the net $#B$ with all finite intersections

  Take a #raw("#link(<maximal-linear-order>)[maximal linearly ordered chain]") $#C$. By the nested interval theorem, its intersection is a non-empty closed interval $⋂ #C != ∅$

  By the linear order maximality of $#C$, intuitively, the closed interval $⋂ #C$ will be smaller than all closed intervals of $#B$, so $⋂ #C subset ⋂ #B$

  $forall B in #B$, we prove $⋂ #C subset B$

  Define the closed interval linear ordered chain $#C _B = {B ∩ C in #B : C in #C}$. $B ∩ C subset B$. We prove $⋂ #C _B = ⋂ #C$

  Proof by contradiction. Assume $⋂ #C _B subset.neq ⋂ #C$. Then the small/large endpoint of $⋂ #C _B$ is larger/smaller than the small/large endpoint of $⋂ #C$

  The $subset$ linear ordered chain satisfies $⋂_(A supset A_0) A = A_0$

  - If the closed interval $⋂ #C _B ∉ #B$, then use the $ℝ$ exact bound principle for the endpoints
  #indent[
    $
      exists B ∩ C_0 in #C _B \
      B ∩ C_0 in #B \
      B ∩ C_0 = ⋂_(B ∩ C supset B ∩ C_0) B ∩ C subset.neq ⋂ #C
    $
    There exists $B ∩ C_0 in #B$ that belongs to $⋂ #C$, which contradicts that $⋂ #C$ is a $⊂$ maximal linear ordered chain
  ]
  - If the closed interval $⋂ #C _B in #B$, the same contradiction applies
]
let $a_n : ℕ -> ℝ$

def $ℕ -> ℝ$ sequence $k ⇝ sup_(k >= n) {a_k}$ monotone decreasing, $k ⇝ inf_(k >= n) {a_k}$ monotone increasing

#tag("limsup") Upper limit

$ limsup_(n -> ∞) {a_n} := lim_(n -> ∞) sup_(k >= n) {a_k} = inf_(n in ℕ) sup_(k >= n) {a_k} $

#tag("liminf") Lower limit

  $ liminf_(n -> ∞) {a_n} := lim_(n -> ∞) inf_(n >= k) {a_k} = sup_(n in ℕ) inf_(n >= k) {a_k} $

*Example*

  - $a_k = 1 + 1/k$
    $ 
      sup_(n in ℕ) {a_n} &=&2 \ 
      sup_(n >= k) {a_k} &=&1 + 1/k \
      lim_(n -> ∞) sup_(n >= k) {a_k} &=&1 
    $
  - $a_k = 1 + (-1)^k$

    $ limsup_(n -> ∞) {a_n} = 2 $
    
For the $ℕ$ sequence, define $"distance"{a_(n),a_(n+1),...} := sup_(m,m' >= n) |a_m - a_m'|$

For a general net, define $"distance"(B) = sup_(a,a' in B) |a - a'|$

#tag("limit-distance-vanish-sequence") := $lim_(n -> ∞) abs({a_(n),a_(n+1),...}) = 0$ i.e. tail distance vanish

#tag("limit-distance-vanish-net") := $forall ε > 0, exists B in #B, "distance"(B) < ε$

#tag("Cauchy-completeness-real") limit-distance-vanish sequence or net converges 
  
_Proof_
#indent[
  Unbounded ==> $forall ε > 0, forall N ∈ ℕ, exists n > N, abs({a_(n),a_(n+1),...}) >= ε$ 
  
  ==> The limit-distance-vanish sequence is bounded
  
  ==> The monotonically increasing or decreasing bounded sequences $n ⇝ inf_(m >= n){a_m} , sup_(m >= n){a_m}$ have limits $liminf_(n -> ∞) {a_n} <= limsup_(n -> ∞) {a_n}$
  
  limit-distance-vanish property ==> $liminf_(n -> ∞) {a_n} = limsup_(n -> ∞) {a_n} = a$ 
  
  Thus $a_n$ converges to $a$

  For nets, by the closed interval net theorem, let $a in ⋂_(B in #B) B != ∅$. Using limit-distance-vanish-net, we obtain that the net converges $lim_(B in #B) sup_(a_B in B) |a_B - a| = 0$
]
Conversely, a convergent sequence is limit-distance-vanish. by the triangle inequality $|a_m - a_m'| <= |a_m - a| + |a_m' - a|$

Sequence $ℕ -> ℝ$ or net $#B$ converges to $a$ <==> limit-distance-vanish 

#tag("uncountable-real") The real number is uncountable $|ℕ| < |ℝ|$ 
#indent[
  It has been proved that $|ℕ| < |Subset(ℕ)|$. cf. #raw("#link(<cardinal-increase>)[]")

  recall ${0,1}^ℕ ≃ (ℕ -> "bool") ≃ Subset(ℕ)$

  $|Subset(ℝ)| = |ℕ -> ℕ| = |ℝ|$

  _Proof_ 
  #indent[
    According to the nested interval theorem, the binary decimal point representation of real numbers: $a_0 . a_1 a_2 ...$ The $n$-th digit takes $0 ⇝ 0 ⋅ 1/2^n$ or $1 ⇝ 1 ⋅ 1/2^n$

    ==> ${0,1}^ℕ ≃ [0,1]$. Where, quotient the possible two equivalent choices in binary

    $[0,1] ≃ (-1,1)$ by linear map or affine map

    $(-1,1) ≃ ℝ$ by $x ⇝ x/(1 - x^2)$

    $(ℕ -> ℕ) ≃ (0,1]$ 

    _Proof_ 
    #indent[
      $
        (n_1, n_2, ...) ⇝ 1/2^(n_1) + 1/2^(n_1 + n_2) + ⋯
      $

      It represents in binary, the first position where $1$ appears is $n_1$, the second position is $n_2$ ...

      Compare ${0,1}^ℕ$, $1/2^(m_1) + 1/2^(m_2) + ⋯$ vs $1/2^(n_1) + 1/2^(n_1 + n_2) + ⋯$
      
      $ 
        m_1 &=&n_1 \ 
        m_2 &=&n_1 + n_2 \ 
        &⋯
      $
      
      Distance $n_(i + 1) = m_(i + 1) - m_i$
    ]
  ]
]