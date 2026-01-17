#import "../module/module.typ": *
#show: module

use alternation of #link(<tensor-induced-quadratic-form>)[]  
$
  ⟨v_1 ∧ ⋯ ∧ v_k , w_1 ∧ ⋯ ∧ w_k⟩ = det ⟨v_i,w_j⟩ 
$
Iterate through all $i_1 < ⋯ < i_k$, orthonormal bases $e_(i_1) ∧ ⋯ ∧
e_(i_k)$ with $⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2 = ⟨ e_(i_1) ⟩^2 ⋯ ⟨ e_(i_k) ⟩^2$, to obtain the signature

let $v,w ∈ ℝ^n$. $v,w$ span $ℝ^2$ <==> $v ∧ w != 0$

*Abbreviation* $⟨v⟩^2 := ⟨v,v⟩, |v| := (⟨v⟩^2)^(1/2)$

#tag("quadratic-form-inequality-Euclidean") Inner product inequality (Euclidean). $0 <= ⟨v ∧ w⟩^2 = det mat(⟨v⟩^2, ⟨v,w⟩; ⟨w,v⟩, ⟨w⟩^2) = ⟨v⟩^2 ⟨w⟩^2 - ⟨w,v⟩^2$. i.e. $⟨w,v⟩^2 <= ⟨v⟩^2 ⟨w⟩^2$ or $⟨v,w⟩ <= |v| |w|$

#tag("triangle-inequality-Euclidean") Triangle inequality (Euclidean)
  - $|v + w| <= |v| + |w|$ 

    _Proof_
      $
        ⟨v+w⟩^2 &= ⟨v⟩^2 + 2 ⟨v,w⟩ + ⟨w⟩^2 \
        &>= ⟨v⟩^2 + 2 |v| |w| + ⟨w⟩^2 \
        &= (|v| + |w|)^2
      $
  - $|v - w| >= stretch(|, size: #120%)|v| - |w|stretch(|, size: #120%)$

    _Proof_
      $
        |v| &<= |v-w| + |w| \
        |w| &<= |v-w| + |v|
      $
  - A more general inequality when $dim >= 2$ should be $|v + w| <= K (|v| + |w|)$. For simplicity, we temporarily do not use this more general assumption.

    For the $p$ norm $|v|_p = (|v_1|^p + ⋯ + |v_n|^p)^(1/p)$, the infimum of $K$ such that $|v + w|_p <= K(|v|_p + |w|_p)$, or the supremum of $(|v + w|_p)/(|v|_p + |w|_p)$ over $v, w$, is $2^(1/p - 1)$.

    (_Proof_ First, calculate an upper bound for $(|v + w|_p)/(|v|_p + |w|_p)$, then prove that it is the supremum. Use differential techniques to prove that for $a, b >= 0$, $(a + b)^p <= a^p + b^p$. Apply it to the components of the $p$ norm. Let $x = |v|_p, y = |w|_p$, and convert to trying to calculate the maximum value of $f(x,y) = (x^p + y^p)^(1/p) / (x + y)$. Due to homogeneity, scaling $f(a x, a y) = f(x, y)$ does not affect the result. Assume $y = 1$. Use differential methods to calculate the maximum value of $g(x) = (x^p + 1)^(1/p) / (x + 1)$, obtaining the upper bound $2^(1/p - 1)$. Then, use the embedding $v = (1, 0), w = (0, 1)$ in $ℝ^2$ to show that this value can be achieved, so $2^(1/p - 1)$ is the supremum. When $0 < p < 1$, $2^(1/p - 1) > 1$, which makes the normal triangle inequality invalid.)
#tag("Euclidean-space-topology") Euclidean $ℝ^d$ topology. $f : ℝ^d -> ℝ^d'$ is continuous at $a ∈ ℝ^d$ :=
  $
    forall ε > 0, exists δ > 0, forall x : |x - a| < δ, |f(x) - f(a)| < ε
  $
let $A ⊆ ℝ^d$

#tag("closure") Closure := $closed(A) = {x ∈ ℝ^d : inf_(x ∈ A) |x-a| = 0}$

#tag("closed-set") Closed set := $closed(A) = A$

(open) closed(𝔹) $𝔹(a,r) := {x ∈ ℝ^d : |x - a| < r}$

#tag("open-set") Open set $U ⊆ ℝ^d$ := $forall x ∈ U, exists r > 0, 𝔹(x,r) ⊆ U$

$A$ open <==> $A^∁$ closed 

#let I = c-bf("I", rgb("#919191"))
#let J = c-bf("J", rgb("#919191"))

#tag("interval") Interval refers to a subset $I$ of $ℝ$ with property that the order is uninterrupted
$ 
  And_(a,b ∈ I \ a <= b) And_(x ∈ ℝ \ a <= x <= b) x ∈ I 
$
#tag("best-interval-decomposition") The optimal interval decomposition of $A ⊆ ℝ$
#indent[
  def $"Interval" ⊆ Subset(ℝ)$ as the set of all intervals, including open, closed, half open half closed, single point. (Here we are not to define topology and no need to generalize to higher dimension, so not need to restrict to only open interval)

  def $#J (A) := {I ⊆ A : I ∈ "Interval"}$

  Due to the existence of single-point intervals, $#J != ∅$ and $⋃ #J = A$

  $#J (A)$ has a $⊆$ #link(<linear-order>)[linear order chain]. Taking $⋃$ for each maximal linear order chain will continue to yield intervals. The set of these intervals is denoted as $#I (A)$

  $#I (A) != ∅$ and $⨆ #I (A) = A$  

  The intervals in $#I$ are disjoint, and the decomposition method is unique, so these intervals form the optimal interval decomposition of $A$

  - When $|#I (A)| = 1$, $A$ is an interval, connected
  - When $|#I (A)| > 1$, $A$ is not connected. *Example* $ℝ ∖ 0 = ℝ_(< 0) ⊔ ℝ_(>  0), ℚ = ⨆ _(x ∈ ℚ) {x}$

  If $A$ is a closed set, then the intervals in $#I (A)$ are all closed intervals
]
recall the $⊆$ #link(<linear-order>)[] #link(<nested-closed-interval-theorem>)[intersection of nested closed intervals is non-empty]

#tag("bounded-closed-interval-is-compact") Bounded closed interval of $ℝ$ ==> #link(<compact>)[]

_Proof_ 
#let B = c-bf("B", rgb("#919191"))
#let C = c-bf("C", rgb("#919191"))
#indent[
Assume $A$ is a bounded closed interval, and $#B$ is a net of $A$

Since $A$ is a closed set, the definition of $closed(B)$ is the same for the topologies of $ℝ$ and $A$

Since $A$ is bounded, we can define the non-empty infimum set $L = {inf(B) in ℝ : B in #B}$ and the supremum set $U = {sup(B) in ℝ : B in #B}$

According to the property of nets (or using the corresponding interval net $[inf(B), sup(B)]$), it can be proven that all numbers in $L$ are $<=$ all numbers in $U$

$L$ has an upper bound, $U$ has a lower bound, so we can take the infimum/supremum, and it satisfies $sup(L) <= inf(U)$

We prove that $l = sup(L) in ⋂_(B in #B) closed(B)$

Take $B_0 in #B$, prove that $l in closed(B)_0$

_Proof_
#indent[
    Define $S = { inf(B) : B in #B and B ⊆ B_0 }$

    $S != ∅$ because $B_0 in S$

    $inf(B) in closed(B) ⊆ closed(B)_0$

    $closed(B)_0$ is a closed set, so $l_0 = sup(S) in closed(B)_0$

    $S = { inf(B) : B in #B and B ⊆ B_0 } ⊆ { inf(B) : B in #B } = L$

    Therefore $l_0 = sup(S) <= sup(L) = l$

    That is $l_0 <= l$

    Next, prove $l <= l_0$

    For each $B_1 in #B$, _since $#B$ is a net_, there exists $B in #B$ such that $B ⊆ B_0 ∩ B_1$

    Thus $B ⊆ B_0$, so $inf(B) in S$ and $inf(B) <= sup(S)$

    And $B ⊆ B_1$, so $inf(B_1) <= inf(B)$

    By the arbitrariness of selecting $B_1 in #B$, we have $sup(S)$ being the upper bound of $L = { inf(B_1) : B_1 in #B }$, thus $sup(L) <= sup(S)$, which means $l <= l_0$

    Therefore $l = l_0$

    Since $l_0 in closed(B)_0$, then $l in closed(B)_0$
]
Due to the arbitrary choice of $B_0 in #B$, we have $l in ⋂_(B in #B) closed(B)$

Therefore $⋂_(B in #B) closed(B) != ∅$
]
#tag("compact-imply-subsequence-converge") $A$ compact ==> sequence ${x_n} ⊆ A$ has a convergent subsequence. The same applies to nets

_Proof_ 
#indent[
  $B_n = {x_n,x_(n+1),...}$ forms a net $#B$
  
  $A$ compact ==> $⋂_(n ∈ ℕ) closed(B)_n != ∅$
  
  let $x ∈ ⋂_(n ∈ ℕ) closed(B)_n$
  
  use the definition of closure $closed(B)_n$ 
  
  $ 
    x in closed(B)_n 
    <==> forall ε_n > 0, exists i_n > i_(n-1), |x_(i_n) - x| < ε_n 
  $

  let $ε_n -> 0$ 
  
  ==> $forall ε > 0, exists N in ℕ, forall n > N, |x_(i_n) - x| < ε$
]
- Unit closed ball $closed(𝔹)^n := {x ∈ ℝ^n : x^2 <= 1}$
- Unit sphere $𝕊^(n-1) := {x ∈ ℝ^n : x^2 = 1}$

#tag("circle-is-compact") $𝕊^1$ compact

_Proof_ $e^(#i θ) : ℝ -> 𝕊^1$ is continuous
#indent[
  $𝕊^1$ is continuously isomorphic to $ℝ/ℤ$ (#link(<quotient-topology>)[]) is continuously isomorphic to $closed(𝔹)^1/𝕊^0$ i.e. $[-1,1] = closed(𝔹)^1$ collapsing endpoints ${-1,1} = 𝕊^0$ (quotient-topology)

  $closed(𝔹)^1 = [-1,1]$ bounded closed interval compact ==> quotient $𝕊^1 = closed(𝔹)^1/𝕊^0$ compact. by #link(<quotient-topology-preserve-compact>)[quotient preserves compact]
]
#tag("closed-ball-sphere-is-compact") 

_Proof_ 
#indent[
  $closed(𝔹)^1, 𝕊^1$ compact. Inductive hypothesis $closed(𝔹)^n, 𝕊^n$ compact

  - $closed(𝔹)^(n+1)$ compact
  #indent[
    $
      f : dmat( delim: #none ,
        𝕊^n × [0,1], ⟶, closed(𝔹)^(n+1);
        (x,r), ⟿, r ⋅ x
      )
    $
    (Draw a picture) continuous. Isomorphism is obtained after quotienting the origin $0 ∈ ℝ^(n+1)$

    $𝕊^n × [0,1]$ compact. by #link(<product-topology-preserve-compact>)[]

    $(𝕊^n × [0,1])/{0 ∈ ℝ^(n+1)} ≃ closed(𝔹)^(n+1)$ compact
  ]
  - $𝕊^(n+1)$ compact
  #indent[
    Constructing $𝕊^(n+1)$ from $𝕊^n$ using polar coordinates, after quotient, we get $𝕊^(n+1)$ compact

    Another method $closed(𝔹)^(n+1)$ the boundary $𝕊^n$ collapses to a point to get $closed(𝔹)^(n+1)/𝕊^n ≃ 𝕊^(n+1)$ compact
    
    _Proof_ 
    #indent[
     $1/(1 - |x|^2) x : 𝔹^(n+1) <-> ℝ^(n+1)$ maps the sphere $𝕊(|x|)$ to the sphere $𝕊^((|x|)/(1 - |x|^2))$ and $r/(1 - r^2) : [0,1) <-> ℝ_(>= 0)$

     Stereographic projection $ℝ^(n+1) <-> 𝕊^(n+1) ∖ N$

     The composite mapping $𝔹^(n+1) -> 𝕊^(n+1) ∖ N$ plus the mapping $∂ closed(𝔹)^(n+1) = 𝕊^n$ mapping to $N$, the resulting $closed(𝔹)^(n+1) -> 𝕊^(n+1)$ mapping is still continuous, and after quotient it is a bijection
    ]
  ]
]
Projective space (Euclidean) compact. _Proof_ $ℝℙ^n := ℝ^(n+1)/{k x} ≃ 𝕊^n/{± x}$ 

Similarly $ℂℙ^n$ (and $ℍℙ,𝕆ℙ$)

#tag("Euclidean-set-distance") $|A| := sup_(x,y ∈ A) |x-y|$ 

- #tag("bounded") bounded := $|A| < ∞$ 
- #tag("unbounded") unbounded := $|A| = ∞$ 

$|A|$ is $SO(n) ⋊ ℝ^n$ invariant

Considering the translation invariance of infinity $∞$, use stereographic projection technique

$ℝ ⊔ {∞} ≃ 𝕊^n$ by stereographic projection

Translation does not change the infinity $∞$ of $ℝ^n ⊔ {∞}$ (but only a conformal mapping of $ℝ^n ⊔ {∞} ≃ 𝕊^n$, conformal group $SO(1,n)$) 

in Euclidean topology of $ℝ^n ⊔ {∞} ≃ 𝕊^n$
- Bounded <==> away from $∞$ <==> $∞ ∉ closed(A)$
- Unbounded <==> $∞ ∈ closed(A)$

#tag("Euclidean-space-compact-iff-bounded-closed") $A ⊆ ℝ^n$ compact <==> $A$ is a bounded closed set 

_Proof_
#indent[
  - <==
  #indent[
    The bounded closed set $A$ of $ℝ^n$ corresponds to a closed set of $ℝ^n ⊔ {∞}$ and does not include $∞$

    $𝕊^n$ compact + #link(<closed-set-in-compact-space-is-compact>)[] ==> $A$ is compact in $𝕊^n$

    From $ℝ^n ⊔ {∞}$ topology, restrict back to subspace $ℝ^n$ topology + $A subset ℝ^n$

    Get $A$ compact
  ]
  - ==>
  #indent[
    - Closed set
    #indent[
      let $x ∈ closed(A)$

      $𝔹(x,r) ∩ A$ forms a net of $A$. Note that it is possible that $x ∉ 𝔹(x,r) ∩ A$

      - compact ==> $∅ != ⋂_(r > 0) closed(𝔹)(x,r) ∩ A ⊆ A$

      - $⋂_(r > 0) closed(𝔹)(x,r) = x$

      ==> $∅ != {x} ∩ A ==> x in A$
    ]
    - Bounded
    #indent[
      The open ball of $ℝ^d$ does not contain $∞$. The open ball family ${𝔹(x,r) ⊆ ℝ^n : (x ∈ A) and (r > 0)}$ covers $A$. Take #link(<compact-finite-open-cover>)[finite cover], still does not contain $∞$
    ]
  ]
]
let $#B$ be net of $ℝ^n$

#tag("nested-closed-set-theorem") The intersection of nested bounded closed sets of $ℝ^n$ is non-empty. The intersection result is also a closed set. It can be understood as the minimal element of $⊆$ linear order chain nested closed sets

#tag("closed-net-theorem") The intersection of a net of bounded closed sets of $ℝ^n$ is non-empty
_Proof_
#indent[
  Map the closed set of $ℝ^n$ to the closed set of $ℝ^n ⊔ {∞} ≃ 𝕊^n$, $𝕊^n$ is compact, so the intersection of nested closed sets or the intersection of a net of closed sets is non-empty. Boundedness makes it not converge to $∞$
]
#tag("limit-distance-vanish-net") := $lim_(B ∈ #B) |B| = 0$ 

or $forall ε > 0, exists B ∈ #B, |B| < ε$. The tail of the net is bounded

A net can be composed of tails $B_n = {x_n,x_(n+1),...}$ 

#tag("Cauchy-completeness-Euclidean") 
#indent[
  in $ℝ^n$, limit-distance-vanish net converges to a point
  
  $ℝ^n$ bounded closed = compact ==> let $x in ⋂_(B ∈ #B) closed(B) != ∅$

  limit-distance-vanish $lim_(B ∈ #B)|B| = 0$ ==> $⋂_(B ∈ #B) closed(B) = {x}$
]
Some infinite-dimensional linear spaces e.g. #link(<Lebesgue-integrable>)[] $L^1$, bounded closed sets cannot be compact but still satisfy limit-distance-vanish net converging to a point

According to induction, finite summation is associative and commutative. But this does not guarantee infinite summation i.e. 

let
- Rearrangement $f : ℕ <-> ℕ$ 
- $x_n = a_1 + ⋯ + a_n$ converges to $x$
Then $y_n = a_(f(1)) + ⋯ + a_(f(n))$ may not converge or converge to other value $y != x$

compare
- $sum 1/n = ∞$
- $sum (-1)^(n+1) 1/n = log(1+1) = log(2)$ 
Convergence (not ==>) Absolute convergence

let $a_n$ be a sequence $ℕ -> ℝ$

- $sum_(.. ∞) a_n$ converges ==> $lim_(n -> ∞) a_n = 0$
  
  _Proof_ $forall ε > 0, exists N in ℕ, forall n > N, abs(sum_(i = 1 .. n) a_i - a) < ε/2$ 

   ==> By the triangle inequality 
   
   $ |a_n| = abs(sum_(i = 1 .. n+1) a_i - sum_(i = 1 .. n) a_i) <= abs(sum_(i = 1 .. n+1) a_i - a) + abs(sum_(i = 1 .. n) a_i - a) < ε $
- $lim_(n -> ∞) a_n != 0$ ==> $sum_(.. ∞) a_n$ does not converge

Any sequence $x_n$ can define $a_n = x_n - x_(n-1)$ such that $x_n = a_1 + ⋯ + a_n$

Rearrangement $f : ℕ <-> ℕ$ does not change the tail behavior of the sequence $lim_(n -> ∞) a_(f(n)) = lim_(n -> ∞) a_n$

If $a_n >= 0$, $sum a_n$ rearrangement invariant

_Proof_ 
#indent[
  $sum a_n < ∞ ==> forall ε > 0, exists N ∈ ℕ, forall m > ℕ, sum a_n - epsilon < sum_(n=0..m) a_n <= sum a_n$

  $N' := max {f^(-1)(1) ,…, f^(-1)(N)}$

  ==> ${1 ,…, N} ⊆ {f(1) ,…, f(N')}$

  ==> $forall M > N', sum a_n - epsilon <= sum_(n=0..N) a_n <= sum_(n=0..M) a_(f(n)) <= sum a_n$ (by $a_n >= 0$)

  ==> $lim_(M -> ∞) sum_(n=0..M) a_(f(n)) = sum a_n$
]
def
$
  a_n^+ &:= "switch"(a_n) cases(>= 0 => a_n , < 0 => 0) \

  a_n^- &:= "switch"(a_n) cases(>= 0 => 0 , < 0 => - a_n) \

  a_n^+,a_n^- &>= 0 \

  a_n &= a_n^+ - a_n^-
$
$ sum |a_n| < ∞ <==> sum a_n^+, sum a_n^- < ∞ $

#tag("series-rearrangement-absolutely-convergence-real") Absolute convergence $sum_(.. ∞) |a_n|$ ==> $sum_(.. ∞) a_n$ converges and rearrangement invariant 
  
_Proof_ $a_n = a_n^+ - a_n^-$ and use operation of convergent sequence 
  $
    lim sum_(.. N) a_n 
    
    = lim sum_(.. N) a_n^+ - lim sum_(.. N) a_n^-
  $
$sum a_n^+ = ∞$ and $sum a_n^- < ∞$ ==> $sum a_n = +∞$ and rearrangement invariant

*Question* The case of $l^2$ norm $(sum |a_n|^2)^(1/2)$ reduce to $b_n = |a_n|^2$?

harmonic series $sum 1/n = ∞$ vs $sum 1/n^2 = π^2 / 6$, say that, $l^1$ convergence is closer to normal convergence. $l^2$ convergence is more suitable for Fourier serise

The last possibility

#tag("series-rearrangement-real") 
#indent[
  let $lim_(n -> ∞) a_n = 0$ and $sum a_n^+ = sum a_n^- = ∞$

  $exists f : ℕ <-> ℕ, sum a_(f(n))$
  - Converges to $ℝ,+∞,-∞$
  - Does not converge to $ℝ,+∞,-∞$ 
]
*Example*
- Convergent case $a_n = (-1)^(n+1) 1/n$
- Divergent case $a_n = (-1)^n$

_Proof_ 
#indent[
  - Converges to $A ∈ ℝ$
  #indent[
    $p_1 := inf { p ∈ ℕ : A < sum_(.. p) a_n^+ }$. Meaning: $p_1$ is the smallest natural number that makes the positive summation greater than $A$

    $q_1 := inf { q ∈ ℕ : A > sum_(.. p_1) a_n^+ - sum_(.. q) a_n^- }$. Meaning: $q_1$ is the smallest natural number that makes the negative summation less than $A$

    $p_2 := inf { p ∈ ℕ : A > sum_(.. p) a_n^+ - sum_(.. q_1) a_n^- }$

    And so on, exhaust all $a_n$

    Rearrange $a_1,a_2,...$ to 
    $
      a_1^+ ,…, a_(p_1)^+ \ - a_1^- ,…, - a_(q_1)^- \ a_(p_1 + 1)^+ ,…, a_(p_2)^+ \
      ⋮
    $
    According to the definition of $p_(N+1)$
    $
      0 

      &< (sum_1^(p_(N+1)) a_n^+ - sum_1^(q_N) a_n^-) - A \

      &<= (sum_1^(p_(N+1)) a_n^+ - sum_1^(q_N) a_n^-) 
      - (sum_1^(p_(N+1) - 1) a_n^+ - sum_1^(q_N) a_n^-) \

      &= a_(p_(N+1))^+
    $
    According to the definition of $q_(N+1)$
    $
      0 
      
      < (sum_1^(p_(N+1)) a_n^+ - sum_1^(q_N ,…, q_(N+1) - 1) a_n^-) - A 
      
      <= a_(p_(N+1))^+
    $
    And so on
    $
      - a_(q_(N+1))^- 

      <= (sum_1^(p_(N+1) ,…, p_(N+2) - 1) a_n^+ - sum_1^(q_(N+1)) a_n^-) - A 

      < 0
    $
    $lim_(n -> ∞) a_n = 0 ==> lim_(N -> ∞) a_(p_(N))^+ = lim_(N -> ∞) a_(q_N)^- = 0$

    ==> $lim_(N -> ∞) sum_(.. N) a_n = A$
  ]
  - Converges to $+∞$
  #indent[
    In the handling of $A ∈ ℝ$
    
    Change $A < sum_1^⋯ a_n^+ - sum_1^⋯ a_n^-$ to $N < sum_1^⋯ a_n^+ - sum_1^⋯ a_n^-$

    Change $A > ⋯$ to $N > ⋯$
  ]
  - Does not converge to $ℝ,+∞,-∞$
  #indent[
    Change $A < ⋯$ to $1 < ⋯$

    Change $A > ⋯$ to $-1 > ⋯$
  ]
]
Series in $ℝ^d$ that are rearrangement invariant are also absolutely convergent series

$sum a_n$ converges ==> $lim_(n -> ∞) a_n = 0$

#tag("series-rearrangement-absolutely-convergence") 
#indent[
  let $a_n$ be a $ℕ -> ℝ^d$ sequence

  $sum |a_n| < ∞$ ==> $sum a_n$ converges and is rearrangement invariant 
]
_Proof_ 
#indent[
  - $sum a_n$ converges. by using the triangle inequality $abs(sum_(N+1)^∞ a_n) <= sum_(N+1)^∞ |a_n|$ and $ℝ^d$ #link(<Cauchy-completeness-Euclidean>)[Cauchy sequence converges]

  - Rearrangement invariant
  #indent[
    $forall ε > 0, exists N ∈ ℕ, (abs(sum_(.. N) a_n - A) < ε/2) and (sum_(N+1)^∞ |a_n| < ε/2)$

    $N' := max {f^(-1)(1) ,…, f^(-1)(N)}$

    ${1 ,…, N} ⊆ {f(1) ,…, f(N')}$

    $forall M > N', 
    abs(sum_(.. M) a_(f(n)) - A) 
    <= abs(sum_(.. N) a_n - A) + sum_(N+1)^∞ |a_n| 
    < ε$
  ]
]
Now consider the case where $sum a_n$ is not absolutely convergent

def $V := { x ∈ ℝ^d : sum |⟨ a_n, x ⟩| < ∞ }$

From the triangle inequality or the equivalence of $1$-norm, $2$-norm, $∞$-norm of $ℝ^d$
- $V$ is a linear subspace
- $V = ℝ^d ==> sum |a_n| < ∞$

let $V != ℝ^d$. The $V$ component of $sum a_n$ is absolutely convergent

Consider the $V^⟂$ component of $sum a_n$

#tag("series-rearrangement") 
#indent[
  let $x ∈ V^⟂$ 

  - $sum ⟨ a_n , x ⟩^+ = ∞$ and $sum ⟨ a_n , x ⟩^- < ∞$ ==> $sum a_n$ converges to $∞$ in the $x$ component, rearrangement invariant \
  - $sum ⟨ a_n , x ⟩^+ = sum ⟨ a_n , x ⟩^- = ∞$. $sum a_n$ is rearrangement unstable in the $x$ component
]

The *positive* linear combination $k a_n + k' a'_n$ with $sign(k) = sign(k')$ of sequences with the same convergence pattern preserves their convergence pattern