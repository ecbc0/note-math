#import "../module/module.typ": *
#show: module

Starting from the one-dimensional case

#link(<geometric-series>)[Geometric series]

$ |a| < 1 ==> sum_(n in ℕ) a^n = lim_(n -> ∞) (1 - a^(n+1))/(1-a) = 1/(1-a) $

in $𝕂$, $|a b| = |a| |b|$

$|a_n v^n| = |a_n| |v|^n = (|a_n|^(1/n) |v|)^n$

#tag("convergence-radius-1d") Radius of convergence
#indent[
  (cf. #link(<limsup>)[])
  $
    R &:= 1/(limits(limsup)_(n -> ∞) {|a_n|^(1/n)}) in [0,∞] \
    "or " 1/R &:= limsup_(n -> ∞) {|a_n|^(1/n)}
  $
  ==> $|a_n|^(1/n) <= 1/R$
]
#tag("absolute-convergence-analytic-1d")
#indent[
  *Prop* $|v| < R$ ==> $a_n v^n$ converges absolutely

  _Proof_
  #indent()[
    $|a_n|^(1/n) <= 1/R$ and $|v| < R$

    use #link(<geometric-series-test>)[Geometric series test] and $|a_n|^(1/n) |v| <= (|v|)/R < 1$

    $ abs(sum_(n in ℕ) a_n v^n) <= sum_(n in ℕ) ((|v|)/R)^n = 1/(1 - (|v|)/R) $
  ]
  *Prop* $|v| > R$ ==> $a_n v^n$ diverges absolutely

  _Proof_ $1/R := limsup_(n -> ∞) {|a_n|^(1/n)}$ ==> For infinitely many $n in ℕ$, $|a_n|^(1/n) ≈ 1/R ==> |a_n|^(1/n) |v| > 1 ==> |a_n v^n| > 1$

  *Prop* $a_n v^n$ converges absolutely ==> $|v| <= R$
]
#tag("uniformaly-absolutely-convergence-analytic")
#indent[
  use $|v| <= r < R$. use #link(<geometric-serise-test>)[Geometric series domination]

  In the closed ball $Closed(𝔹)(r)$ of radius $r < R$, $sum a_n v^n$ converges uniformly and absolutely
]
The polynomial function $v ⇝ sum_(n=0)^N a_n v^n$ is continuous

Within the radius of convergence, the function defined by the power series

  $v ⇝ f(x+v) = sum_(n in ℕ) a_n v^n$, $|v| < R$

#tag("analytic-imply-continuous")
#indent[
  $R > 0$ ==> continuous

  $|f(x+v) - f(x)|
  &= abs(sum_(n = 0)^∞ a_n v^n - a_0) \
  &<= sum_(n=1)^∞ ((|v|)/R)^n \
  &= 1/(1 - (|v|)/R) - 1$

  $lim_(v -> 0) 1/(1 - (|v|)/R) - 1 = 0$
]
*Example*

  - The radius of convergence for $log(1-z) ∼ sum 1/n z^n$ is $1$ // link to definition of log as inverse of exp

  - The radius of convergence for $e^z ∼ sum 1/(n!) z^n$ is $∞$

  Convergence issues on the boundary

  - The radius of convergence for $log(1 - x) ∼ sum 1/n x^n$ is $1$, at $x = 1$ it is the harmonic series $sum 1/n$, which diverges absolutely
  - The radius of convergence for $sum 1/(n^2) x^n$ is $1$, at $x = 1$ it converges absolutely to $sum 1/(n^2) = (π^2)/6$

  - Absolute convergence vs. convergence: $log(1 - x) ∼ sum 1/n x^n$ converges for $x <= -1$, but not absolutely

Generalize the #link(<change-base-point-polynomial>)[] of polynomials to series

#tag("change-base-point-analytic")
#indent[
  $R > 0$

  ==> Power series $sum a_n v^n$ after shifting the base point to $x + Δ in 𝔹(x,R)$
  $
    f((x+Δ)+v)
    &= sum_(m in ℕ) a_m (x) (v + Δ)^m \
    &= sum_(m in ℕ)(sum_(n=m)^∞ a_n (x) binom(n,m) Δ^(n-m)) v^m \
    &= sum_(m in ℕ) a_m (x+Δ) v^m
  $
  It also has a non-zero radius of convergence $R' > 0$ at $x+Δ$. By the triangle inequality, $R' >= R - |Δ|$
  $
    sum_(m = 0 .. n) a_m (x+Δ) v^m &= sum_(m = 0 .. n) a_m (x) (v + Δ)^m \

    abs(sum_(m in ℕ) a_m (x+Δ) v^m) &<= sum_(m in ℕ) |a_k (x)| (|v| + |Δ|)^m
  $
  #image("../image/change-base-point-analytic.png", width: 30%)
  It converges absolutely when $|v| + |Δ| < R$, i.e., $|v| < R - |Δ|$, thus $R' >= R - |Δ|$
]
Now consider the higher-dimensional case. Power series $𝕂^d -> 𝕂^(d')$

Note the $|v|$ symmetry, e.g., $#O (d)$ for $ℝ^d$, $#U (d)$ for $ℂ^d$

Generalize the polynomial function #link(<polynomial-function>)[] to power series $sum A_n (v^n)$

Unlike the one-dimensional case, in higher dimensions, generally $|A_n (v^n)| = |A_n| |v|^n$ does not hold. Even $|A_n|$ is not yet defined

#tag("linear-map-induced-norm")
#indent[
  let $A in Lin(⊗^n 𝕂^d -> 𝕂^(d'))$

  $|A|$ is defined as the uniform control coefficient for all directions $v in 𝕂ℙ^(d-1)$. The compactness of $𝕂ℙ^(d-1)$ will make this definition meaningful

  $ |A| := sup_(v in 𝕂ℙ^(d-1)) |A(v^n)|_(𝕂^(d')) = sup_(v in 𝕂^d) ( |A(v^n)| )/( |v|^n ) $

  so that (for all direction) $ |A (v^n)| <= |A| |v|^n $

  and

  - $|λ A| = |λ| |A|$
  - $|A + B| <= |A| + |B|$

  Compared to the $𝕂^1$ case, the computability of the definition for $𝕂^d$ is lower
]
#tag("convergence-radius") Convergence radius

$ R = 1/(limits(limsup)_(n -> ∞) {|A_n|^(1/n)}) $

#tag("absolute-convergence-analytic")
#indent[
  #link(<absolute-convergence-analytic-1d>)[same as] $𝕂^1$

  - $|v| < R$ ==> $A_n (v^n)$ converges absolutely

  - There exists a direction $v/(|v|)$, forall $|v| > R$, $A_n (v^n)$ diverges absolutely
]
_Proof_ (of divergence)
#indent[
  Use #link(<linear-map-induced-norm>)[] $|A_n|$, there exists $v_n in 𝕂ℙ^(d-1)$ such that $|A_n ((v_n)^n)| ≈ |A_n|$

  Using the $limsup$ definition, for infinitely many $n in ℕ$, $|A_n|^(1/n) ≈ limsup {|A_n|^(1/n)} = 1/R$

  use passing to compact $𝕂ℙ^(d-1)$ and $v_n$ subsequence converges to $v$

  ==> infinitely many terms in $n in ℕ$ $|A_n ((v_n)^n)| ≈ |A_n (v^n)|$

  ==> infinitely many terms in $n in ℕ$ $|A_n (v^n)|^(1/n) ≈ limsup {|A_n|^(1/n)} = 1/R$

  scale $w/(|w|) := v in 𝕂ℙ^(d-1)$ to $w in 𝕂^d$

  ==> $|A_n (w^n)| = |A_n (v)| |w|^n $

  let $|w| > R$

  ==> infinitely many terms in $n in ℕ$ $|A_n|^(1/n) |w| > 1 ==> |A_n (w^n)| > 1$
]
*Prop* $A_n v^n$ converges absolutely ==> $|v| <= R$

similar to one-dimensional case, also have

- #link(<uniformaly-absolutely-convergence-analytic>)[]

- #link(<analytic-imply-continuous>)[]

- #link(<change-base-point-analytic>)[]

for $f(x+v) = sum A_n (v^n)$, the $n$-th order #link(<difference-polynomial>)[difference] gives

$ n! A_n (v_1 ⋯ v_n) + o(v^n) $

substitute $v_k -> t_k v_k$

$
  t_1 ⋯ t_n n! A_n (v_1 ⋯ v_n) + o(t_1 ⋯ t_n)
$

power series converges uniformly absolutely within the radius of convergence, thus limits can be interchanged

$lim_(t_1 ,…, t_k -> 0) 1/(t_1 ⋯ t_n)$ can recover the $n$-th order monomial

#tag("differential")
#indent[
  $n$-th order differential $#d^n f(x) in Lin(⊙^n 𝕂^d -> 𝕂^(d'))$
  $
    #d^n f(x) (v_1 ⋯ v_n) &:= n! A_n (v_1 ⋯ v_n) \

    &= lim_(t_1 ,…, t_k -> 0) 1/(t_1 ⋯ t_n) sum_(B ⊆ {1,...,n}) (-1)^(|B| - n) f(x + sum_(b in B) t_b v_b)
  $
]
*Example*
#indent[
  $ #d f(x)(v) &= lim_(t -> 0) 1/t (f(x + t v) - f(x)) $
  $
    #d^2 f(x)(v_1 v_2) = lim_(t_1,t_2 -> 0) 1/(t_1 t_2) (
      &+ f(x + t_1 v_1 + t_2 v_2) \
      &- f(x + t_1 v_1) \
      &- f(x + t_2 v_2) \
      &+ f(x))
  $
]
the definitions of difference and differential can be applied to any function, not necessarily defined by power series

#tag("polynomial-expansion") Polynomial expansion $ f(x+v) ∼ sum 1/(n!) #d^n f(x)(v^n) $ *alias* power series, Taylor expansion, Taylor series

#tag("polynomial-approximation") Polynomial approximation $ f(x+v) ∼ sum_(n=0..N) 1/(n!) #d^n f(x)(v^n) + o(v^N) $ *alias* Taylor expansion, Taylor approximation, Taylor polynomial #tag("Taylor-expansion") #tag("Taylor-approximation") #tag("Taylor-polynomial")

#tag("derivative") Derivative *alias* derivative, directional derivative

$ (∂ f)/(∂ v) (x) := #d f(x)(v) = lim 1/t (f(x + t v) - f(x)) $

Successive differences and derivatives $#d^2 f(x)(v_1 v_2) =$
$
  #d^2 f(x)(v_1 v_2)
  &=lim_(t_2) 1/(t_2)
  sum_(B_2 ⊆ {2}) lim_(t_1) 1/(t_1)
  sum_(B_1 ⊆ {1}) (-1)^(|B_1|+|B_2|-2)
  f(x + ...) \

  &= lim_(t_2) 1/(t_2) ((∂ f)/(∂ v_1) (x + t_2 v_2) - (∂ f)/(∂ v_1) (x)) \

  &= (∂^2 f)/(∂ v_2 ∂ v_1) (x)
$
#link(<successive-difference>)[Successive difference] Independent of order + limit exchange ==> Commutativity of directional derivatives $(∂^2 f)/(∂ v_1 ∂ v_2) = (∂^2 f)/(∂ v_2 ∂ v_1)$

#tag("successive-derivative") Successive derivative
  $
    (∂^n f)/(∂ v_1 ⋯ ∂ v_n) (x)
    &:= lim_(t_n -> 0) 1/(t_n) ((∂ f)/(∂ v_1 ⋯ ∂ v_(n-1)) (x + t_n v_n) - (∂ f)/(∂ v_1 ⋯ ∂ v_(n-1)) (x)) \
    &= #d^n f(x)(v_1 ⋯ v_n)
  $
==> Directional derivative representation of power series $f(x+v) = sum 1/(n!) (∂^n f)/(∂ v^n) (x)$

The concept of successive derivative uses the subtraction of tangent vectors at different points, implicitly employing the concept of connection

#tag("partial-derivative") Partial derivative
#indent[
  Using coordinates. let $e_k$ be the basis of $𝕂^d$. so $t_k e_k$ $<-->$ coordinate $k$ component $t_k$

  $ (∂ f)/(∂ x_k) (x) := (∂ f)/(∂ e_k) (x) = lim_(t_k -> 0) 1/(t_k) (f(x + t_k e_k) - f(x)) $

  and so on
]
let $v = a_1 e_1 + ⋯ + a_d e_d$. use #link(<successive-derivative>)[], #link(<partial-derivative>)[]

==> Partial derivative representation of power series (also cf. #link(<multi-combination>)[])
$
  f(x+v)
  &=
    sum_n 1/(n!)
    sum_(i_1 ⋯ i_n = 1 ,…, d)
    (∂^n f)/(∂ x_(i_1) ⋯ ∂ x_(i_n)) (x)
    a_(i_1) ⋯ a_(i_n) \
  &=
    sum_n 1/(n!)
    sum_(k_1 + ⋯ + k_d = n)
    binom(n, k_1 ⋯ k_d)
    (∂^n f)/(∂ x_1^(k_1) ⋯ ∂ x_d^(k_d)) (x)
    a_1^(k_1) ⋯ a_d^(k_d)
$
when domain = $𝕂^1$, $f(x+v) = sum 1/n! (#d^n f)/(#d x^n) (x) v^n$

define $∂_(x_k) := e_k$ and dual basis $#d x_k$ with $#d x_k (a_1 ∂_(x_1) + ⋯ + a_d ∂_(x_d)) = a_k$

==> Partial derivative representation of differential as coefficient--basis expansion of symmetric tensor
$
  #d^n f(x)
  =
    sum_(k_1 + ⋯ + k_d = n)
    binom(n, k_1 ⋯ k_d)
    (∂^n f)/(∂ x_1^(k_1) ⋯ ∂ x_d^(k_d)) (x)
    #d x_1^(k_1) ⋯ #d x_d^(k_d)
$
when domain = $𝕂^1$

- $#d^n f(x) = (#d^n f)/(#d x^n) (x) #d x^n$

- $#d^n f (x) (1) = (#d^n f)/(#d x^n) (x)$

*Example*
#indent[
  let $f(x) = 1/(1-x)$

  $#d^n f (x) (1) = (#d^n f)/(#d x^n) (x) = n! (1/(1-x))^(n+1) $

  $(#d^n f)/(#d x^n) (0) = n!$

  $1/(1-v) = f(0+v) ∼ sum 1/n! (#d^n f)/(#d x^n) (0) v^n = sum v^n $, or

  $1/(1-x) ∼ sum x^n$
]
if using range space coordinates $f = vec(f_1 , dots.v , f_(d'))$ then first-order differential $#d f$ is represented as Jacobi matrix #tag("Jacobi-matrix")
$
  #d f = mat(
    (∂ f_1)/(∂ x_1) , ... , (∂ f_1)/(∂ x_d) ;
    ⋮,,⋮;
    (∂ f_(d'))/(∂ x_1) , ... , (∂ f_(d'))/(∂ x_d)
    )
$
#tag("differential-function") Differential function
  $
    mat( delim: #none ,
      𝕂^d &⟶ Lin(⊙^n 𝕂^d -> 𝕂^(d')) ;
      x &⟿ #d^n f(x)
    )
  $
Treating the range $Lin(⊙^n 𝕂^d -> 𝕂^(d'))$ as a linear space, using the power norm, allows for power series expansion

#tag("successive-differential")
#indent[
  isomorphism
  $
    mat( delim: #none ,
      Lin(⊙^m 𝕂^d -> Lin(⊙^n 𝕂^d -> 𝕂^(d'))) &⟶ Lin(⊙^(m+n) 𝕂^d -> 𝕂^(d')) ;
      #d^m (#d^n f) &⟿ #d^(m+n) f
    )
  $
  with
  $
    #d^m (#d^n f) (v_1 ⋯ v_m)
    = (v_(m+1) ⋯ v_(m+n) ⇝ #d^(m+n) f (v_1 ⋯ v_m v_(m+1) v_(m+n)))
  $

  same norm $|#d^m (#d^n f)| = |#d^(m+n) f|$

  same convergence radius (#link(<exponential-root-of-power-function>)[use] $lim_(m -> ∞) (m+n)^(1/m) = 1$)
]
_Proof_ (draft) Commutativity of derivatives $#d^m, (v_1 ⋯ v_m)$ and $#d^n, (v_(m+1) ⋯ v_(m+n))$. norm estimation $|#d^(m+n) f (v_1 ⋯ v_(m+n))| <= |#d^(m+n) f| |v_1| ⋯ |v_(m+n)|$

*Abbreviation* $#d^m (#d^n f) = #d^(m+n) f$ despite notational conflict

==> Power series of differential function $#d^n f (x+v) = sum_(m) 1/(m!) #d^(m+n) f (x) (v^n)$

#tag("anti-derivative")

  - $𝕂 -> 𝕂$

    use $(#d)/(#d v) v^n = n v^(n-1)$

    ==> $((#d)/(#d v))^(-1) sum_(n >= 0) a_n v^n -> sum_(n >= 0) (a_n)/n v^(n+1)$. Zero-order term is indeterminate

  - $𝕂^d -> 𝕂^(d')$ ...

#tag("mean-value-theorem-analytic-1d") Mean Value Theorem for Differentiation
- Intermediate value ver. for $ℝ -> ℝ$ function $ exists c in (a,b), f(b) - f(a) = (b - a) f'(c) $
- compact uniform linear growth control ver. $ |f(b) - f(a)| <= |b - a| sup_(c in [a,b]) |f'(c)| $
_Proof_
#indent[


  use $f(x) - f(a) - (f(b) - f(a))/(b - a) (x - a)$ reduce to

  $ f(a) = f(b) = 0 ==> exists x in (a,b), f'(x) = 0 $

  Both cases
  - $f ≡ 0$
  - $exists c in (a,b), f(c) != 0$ thus $f$ has extremum $f(x) != 0$ and $x in (a,b)$. Then $f'(x) = 0$
]
#tag("fundamental-theorem-of-calculus") Fundamental Theorem of Calculus

$ f(b) - f(a) = integral_a^b f'(x) #d x $

Technique used in proof: Mean Value Theorem compact uniform linear growth control ver. + compact partition uniform approximation

#tag("mean-value-theorem-analytic") Higher dimensions generally lack intermediate value ver. Mean Value Theorem for $ℝ^d -> ℝ^d'$. Use embedded line $t -> x + t v$ reduce to $ℝ$ case
#indent[
  - First order
  #indent[
    $ f(x+v) = f(x) + integral_0^1 #d t space f'(x + t v) v $

    by the Fundamental Theorem of Calculus and #link(<chain-rule-1d>)[] and $(#d)/(#d t) (x + t v) = v$

    remainder estimation, uniform linear control
    $
      f(x+v) - f(x)
      &= o(1) "or" O(v) \
      &<= |v| sup_(t in [0,1]) |f'(x + t v)|
    $
    ]
  - higher order
  #indent[
    $ f(x+v) = sum_(n=0)^m 1/(n!) #d^n f(x)(v^n) + integral_0^1 #d t (1-t)^m/(m!) #d^(m+1) f(x + t v) (v^(m+1)) $

    by integration by parts
    $
      1/n! #d^n f (x) v^n
      &= - (((1-t)^n)/(n!) #d^n f(x + t v) v^n)|_0^1 \
      &= - integral_0^1 #d t (#d)/(#d t) (((1-t)^n)/(n!) #d^n f(x + t v) v^n) \
      &= integral_0^1 #d t (((1-t)^(n-1))/((n-1)!) #d^n f(x + t v) v^n) \
      &quad  - integral_0^1 #d t (((1-t)^n)/(n!) #d^(n+1) f(x + t v) v^(n+1)) \
      &= R_(n-1) - R_(n)
    $
    $n$ summed from $1$ up to $m$
    $
      R_(0) - R_(m) &= sum_(n=1)^m 1/(n!) #d^n f(x)(v^n) \

      R_(m) &= integral_0^1 #d t (1-t)^m/(m!) #d^(m+1) f(x + t v) (v^(m+1)) \

      R_(0) &= integral_0^1 #d t ( #d^1 f(x + t v) v) \

      &= integral_0^1 #d t ( #d^1 f(x + t v) (#d)/(#d t) (x + t v)) \
      &= integral_0^1 #d t ( (#d)/(#d t) f(x + t v)) \
      &= f(x + t v) |_0^1 \
      &= f(x + v) - f(x)
    $
    remainder estimation, uniform $m+1$ order power control
    $
      f(x+v) - sum_(n=0)^m 1/(n!) #d^n f(x)(v^n)
      &= o(v^m) "or" O(v^(m+1)) \
      &= integral_0^1 #d t (1-t)^m/(m!) #d^(m+1) f(x + t v) (v^(m+1)) \
      &<= integral_0^1 #d t (1-t)^m/(m!) sup_(t in [0,1]) |#d^(m+1) f (x + t v)| |v|^(m+1) \
      &=  1/(m+1)! |v|^(m+1) sup_(t in [0,1]) |#d^(m+1) f (x + t v)|
    $
  ]
]
let power series $sum A_n (v^n)$

#tag("convergence-domain") convergence domain at a point := ${v in 𝕂^d : lim_(N -> ∞) sum_(n=0)^N A_n (v^n) "converge"}$

computing the coefficients after changing the base point of a power series uses the interchange of summation

for polynomials, the sum is finite, the order of summation can be interchanged, thus changing the base point is well-defined #link(<change-base-point-polynomial>)[]

however, for infinite sums (limits), if not absolutely convergent, they are not always compatible with changes in summation order #link(<series-rearrangement>)[]

changing the base point of a power series may alter the convergence domain

*Example*
#indent[
  $ 1/(1-z) = sum z^n = lim_(n -> ∞) (1 - z^(n+1))/(1-z) $

  with $z^(n+1) = |z|^(n+1) e^(#i (n+1) θ)$

  convergence domain is $|z| < 1$

  changing the base point leads to a change in the convergence domain

    - $1/2 in {|z| < 1}$,
      $w = z - 1/2$,
      $1/(1-z) = 1/(1/2 - (z - 1/2)) = 2/(1 - 2 w)$

      convergence domain ${z = w + 1/2 : 2|w| < 1}$, an open ball of radius $1/2$

    - $-1/2 in {|z| < 1}$
      $w = z + 1/2$,
      $1/(1-z) = 1/(3/2 - (z + 1/2)) = (2/3)/(1 - 2/3 w)$

      convergence domain ${z = w - 1/2 : 2/3 |w| < 1}$, an open ball of radius $3/2$
]
repeatedly changing the base point can "alter" the value it converges to

*Example*
#indent[
  - $log (1-z) ∼ sum 1/n z^n $
  #indent[
    let $Δ_1 ,…, Δ_m in ℂ$ with $Δ_1 + ⋯ + Δ_m = 0$

    let $sum 1/n z^n$ successively switch base points $Δ_1 , Δ_1 + Δ_2 ,…, Δ_1 + ⋯ + Δ_m in ℂ$, finally returning to $0$

    if each displacement $Δ_(i+1)$ is within the convergence region of the base point $Δ_1 + ⋯ + Δ_i$

    then the final power series is $2 k π #i + sum 1/n z^n$, where $k$ is the number of times the path formed by $Δ_1 ,…, Δ_m$ (counterclockwise) winds around $0$
    ]
  - $log(z)$. Winding around $1$ $k$ times yields $2 k π #i + log(z)$

  - $z^(1/2) = e^(1/2 log z)$

  #indent[Winding around $1$ $k$ times yields $(-1)^k z^(1/2)$, by $e^(1/2 ⋅ 2 k π #i) = (-1)^k$]
]
#tag("analytic-continuation")

- Well-defined continuation region: unaffected by switching base points

- Maximal continuation region: cannot be continued well-definedly any further

*Example*
#indent[
  - $log(1-z) ∼ sum 1/n z^n$ convergence radius $1$
  #indent[
    Cannot be continued well-definedly to $ℂ ∖ {1}$. by winding around $0$ $k$ times yields $2 k π #i + log(1-z)$

    The maximal well-defined continuation region should be $ℂ ∖ {x + #i 0 : x <= -1}$
  ]
  - $1/(1-z) ∼ sum z^n$ convergence radius $1$
  #indent[
    Can be well-definedly extended to $ℂ ∖ {1}$, coinciding with $1/(1-z)$ defined by division in $ℂ$

    Note $#d _(z) log(1-z) = 1/(1-z)$, or $#d _(z) log(z) = 1/z$. Indicates that derivative or antiderivative affects
  ]
  - $1/x, x in (-∞,0)$ and $1/x, x in (0,+∞)$ are already maximal extensions
  #indent[
    The maximal extension of $1/z$ is $ℂ ∖ 0$

    The power series coefficients of $1/z$ contain complex numbers, unlike $1/x$ which only contains real numbers
  ]
]
#tag("analytic-function") Analytic function := For every point $x$ in the domain of $f$, $f$ can be defined near $x$ by a power series at $x$: $f(x + v) = sum_(n = 0..∞) A_n v^n$. Here $A_n = 1/n! #d^n f (x)$

#tag("analytic-isomorphism") Analytic isomorphism := $f : D <-> D'$
  - $f$ is bijective
  - $f, f^(-1)$ are analytic functions
  This implies $forall x in D, #d f (x) in GL(𝕂^d)$, because $𝟙 = #d 𝟙 = #d (f ∘ f^(-1)) = #d f ∘ #d f^(-1)$

*Example*
#indent[
  - $A in GL(d,𝕂)$ is an analytic isomorphism. $#d A = A, #d^2 A = 0$

  - $f(x) = 1/3 x^3 + x$
  #indent[
    $(#d f)/(#d x) = x^2 + 1 > 0$ ==> $(#d f^(-1))/(#d y) > 0$, $f,f^(-1)$ monotonically increasing ==> $f$ is an $ℝ -> ℝ$ analytic diffeomorphism

    $f(z) = 1/3 z^3 + z = 0$, $(#d f)/(#d z) = z^2 + 1$ in $ℂ$ has solutions $± #i$ ==> $#d f (± #i) ∉ GL$ ==> $f$ is not an $ℂ -> ℂ$ analytic diffeomorphism
  ]
  - $f(x) = e^x$ with $(#d f)/(#d x) = e^x > 0$ is an $ℝ -> ℝ_(>0)$ analytic diffeomorphism
  #indent[
    $f(z) = e^z$ with $(#d f)/(#d z) = e^z != 0$ is a local analytic diffeomorphism, but not an $ℂ -> ℂ ∖ {0}$ analytic diffeomorphism. Not injective: $e^(0) = e^(#i 2 π) = 1$
  ]
]
#tag("power-series-space")
#indent[
  Power series space

  $ ⨁_(n = 0)^∞ Lin(⊙^n 𝕂^d -> 𝕂^(d')) $

  Attempt to define a distance on the power series space. Expect $A,B$ to be close within some radius $r$, in other words, $A - B$ is close to $0$ within radius $r$

  (note: $| |$ is #link(<linear-map-induced-norm>)[]

  let $r < R_A, R_B$

  $ sum_(n = 0..∞) |A_n - B_n| r^n < ε $

  Note we performed a radius truncation $r < R_A, R_B$, at this point on the closed disk of radius $r$, the power series converges absolutely and uniformly

  $r$ closed disk is compact, which brings many good properties. Consider $A = 1/(1 - x) = sum_(n = 0 .. ∞) x^n$, it is unbounded near $x = 1$. Then for $λ A = λ ⋅ 1/(1 - x)$, no matter how close $λ != 1$ is to $1$, $λ A - A = (λ - 1) A$ is still unbounded near $x = 1$. But if we consider the closed disk of radius $< 1$ centered at the origin $0$, there $A = 1/(1-x)$ is bounded

  *Example* The truncated polynomials (Taylor polynomials) of the power series $A$ itself also approximate $A$. Because $sum_(n = 0 .. ∞) |A_n| r^n < ∞ ==> lim_(N -> ∞) sum_(n = N .. ∞) |A_n| r^n = 0$

  Another possibly topologically equivalent formulation is to use $sup_(n >= 1) |A_n - B_n| r^n$. The equivalence is because

  - $sup_(n >= 1) |A_n - B_n| r^n <= sum_(n = 1 .. ∞) |A_n - B_n| r^n$

  - Take $r < ρ < R_A, R_B$, then
    $
      sum_(n = 1 .. ∞) |A_n - B_n| r^n
      &= sum_(n = 1 .. ∞) |A_n - B_n| ρ^n (r/ρ)^n \
      &<= (sup_(n >= 1) |A_n - B_n| ρ^n) sum_(n = 1 .. ∞) (r/ρ)^n \
      &= sup_(n >= 1) |A_n - B_n| ρ^n ⋅ (1/(1 - r/ρ) - 1)
    $
]
There is a possibly too weak topology. $sup_(n >= 1) |A_n - B_n|$.

Let $A_n ≡ 0, B_n (k) = cases(1/k "if" k = n, 0 "if" k != n)$. Although $lim_(k -> ∞) sup |A_n - B_n (k)| = 0$ and the radii of convergence for $A_n, B_n (k)$ are both $∞$. The value of $A$ at $r > 1$ is $A(r) = 0$, the value of $B(k)$ at $r > 1$ is $B (k) (r) = B_k (k) (r) = 1/k r^k -> ∞ != 0$. In this case $sum_(n >= 1) |A_n - B_n (k)| r^n$ is also $1/k r^k$

There is a possibly too strong topology
$
  𝔹(A,ε) := {B : forall n in ℕ_(>= 1), |A_n - B_n|^(1/n) < ε} $ or $|A_n - B_n| < ε^n
$
Based on the given $A_n$, it should be possible to construct $B_n$ satisfying such conditions, at least the case $d,d' = 1$ is simple

Define the distance between power series

$ "dist"(A,B) = sup_(n >= 1) |A_n - B_n|^(1/n) $

As a uniform control for $forall n >= 1$

It is not a norm. $|λ A_n|^(1/n) = |λ|^(1/n) |A_n|$

Why is this topology said to be too strong? Consider the case $ℝ -> ℝ$, consider $A_n ≡ 1$, then $sum x^n = 1/(1 - x)$

Should it be $lim_(λ -> 1) λ A = A$?

Under this definition of distance, no matter how close $λ != 1$ is to $1$
$
  "dist"(λ(A), A) = sup_(n >= 1) |λ - 1|^(1/n) = 1
$
This means that this topology is too strong in the sense that $lim_(λ -> 1) λ A != A$. The reason might be that the inequality $|x + y|^(1/n) <= |x|^(1/n) + |y|^(1/n)$ is too crude. By raising both sides to the power of $n$ and comparing, one can see

*Prop* $sup_(n in ℕ) |A_n - B_n (λ)| r^n -> 0 ==> |A_n - B_n (λ)| = 0$

_Proof_ For $ε > 0, n in ℕ$, take $ε_n = ε ⋅ (r^n)^(-1)$. $|A_n - B_n (λ)| r^n <= sup_(n in ℕ) |A_n - B_n (λ)| r^n < ε_n ==> |A_n - B_n (λ)| < ε$

Now consider the topology of the space of analytic functions. We need to use techniques similar to the compact-open topology used for spaces of continuous functions

The radius of convergence $R(x)$ of an analytic function $f$ at each point $x$ should be a continuous function

Let compact $K$ be contained in the domain of the analytic function $f$. Then ${R(x) > 0 : x in K}$ has a non-zero infimum $r$ on the compact set $K$. That is, $forall x in K, R(x) > r$. Therefore, we can define the norm of $f$ on $K$ as
$
  |f|_(K, r) &= sup_(x in K) sum_(n in ℕ) 1/n! abs(f^((n))(x)) r^n \
  "or" |f|_(K, r) &= sup_(x in K) sup_(n in ℕ) 1/n! abs(f^((n))(x)) r^n
$
If there exists $r > 0$ for a compact $K$ such that $sup_(x in K) sum_(n in ℕ) 1/n! abs(f^((n))(x)) r^n$, then by the definition of analyticity, $f$ is analytic on $K$

For an open set $U$, $f$ is analytic on every compact $K ⊆ U$ <==> $f$ is analytic on $U$

For compact $K$, $r > 0$ define the space (it is a Banach space)
$
  V_(K,r) = { f in C^ω (U) : |f|_(K,r) < ∞ }
$
The topological basis or net basis of $C^ω (U)$, defined as
$
  B(K,r_K,ε) = { f in C^ω (U) : |f|_(K,r_K) < ε }
$
$f_m -> f$ is expressed as
$
  forall ε > 0, forall K ⋐ U, exists r_K > 0 \
  exists N in ℕ, forall m > N \
  f, f_m in V_(K,r_K) \
  |f_m - f|_(K,r_K) < ε
$
where $exists N in ℕ, forall m > N$ can be replaced by any net structure beyond $ℕ$

*Prop* $forall x in U, forall n in ℕ, forall K ⋐ U, lim_(m -> ∞) sup_(x in K) | f_n^((m))(x) - f^((m))(x) | = 0$

_Proof_
Fix $n in ℕ, ε > 0, K ⋐ U$. Take $(K,r_K)$ to get $V_(K,r_K)$. Take $ε_n = ε ⋅ (1/n! r_K^n)^(-1)$, take $N_n$ such that $m > N_n ==> |f_m - f|_(K,r_K) < ε_n$
$
  sup_(x in K) 1/n! | f_n^((m))(x) - f^((m))(x) | r_K^n
  &<= sup_(x in K) sup_(m in ℕ) 1/m! | f_n^((m))(x) - f^((m))(x) | r_K^m \
  &= |f_m - f|_(K,r_K) \
  &< ε_n
$
==> $sup_(x in K) | f_n^((m))(x) - f^((m))(x) | < ε$

*Prop* The Taylor polynomial $f_n = T_n (f)$ of $f$ expanded at $x$ converges to $f$ on $𝔹(x, R(x))$

_Proof_
#indent[
  let $A_n = 1/n! f^((n))$
  $
    R_N &= f - T_n (f) = sum_(n = N+1 .. ∞) A_n v^n \
    R_N^((m)) &= sum_(n = N+1 .. ∞) A_n frac(n!,(n-m)!) v^(n - m) \
    sum_(m = 0..∞) 1/m! |R_N^((m))| r^m &<= sum_(m = 0..∞) 1/m! r^m sum_(n = N+1 .. ∞) |A_n| frac(n!,(n-m)!) |v|^(n - m) \
    &= sum_(n = N+1 .. ∞) |A_n| sum_(m = 0..n) frac(n!, m! (n-m)!) r^m |v|^(n-m) \
    &= sum_(n = N+1 .. ∞) |A_n| (r + |v|)^n
  $
  Take $r_(closed(𝔹)(x,|v|)) = R(x) - |v|$? Obtain $sum_(n = N+1 .. ∞) |A_n| (r + |v|)^n < ∞$ and then
  $ lim_(N -> ∞) sum_(n = N+1 .. ∞) |A_n| (r + |v|)^n = 0 $
]
*Prop* For real analytic functions, the zero-order $sup_(x in K) |f_n (x) - f(x)|$ cannot control $|f - f_n|_(K, r)$

*Example* $f = 0, f_n = 1/sqrt(n) sin(n x)$. $lim_(n -> ∞) sup_(x in K) |f_n (x) - f(x)| = 0$. $|f_n ' (x)| = |sqrt(n) cos(n x)| <= sqrt(n)$. Since $lim_(n -> ∞) |f_n ' (x) - f(x)| != 0$, it is impossible that $f_n -> f$

If a real analytic function is extended to a complex analytic function (by extending $v$ from $ℝ^d$ to $ℂ^d$), then by the Cauchy integral formula it can be proven that the $V_(K, r_K)$ topology is equivalent to $sup_(z in K(r_K)) |f(z) - g(z)|$, where

$K(r) = { x in ℂ^d : exists y in K, |x - y| <= r }$

Note that, the zero-order control $|f(z) - g(z)|$ for $z$ in non-real space, if one wants to express it through the real functions $f(x), g(x)$ and $z$, requires control of the higher-order derivatives of the real functions $f(x), g(x)$

Take the one-dimensional case as an example. let $sup_(z in K(R)) |f(z)| = M < ∞$. let $r < R$
$
  1/n! f^((n))(x) &= frac(1,2 π #i) integral_(|z - x| = r) frac(f(z),(z - x)^(n+1)) #d z \
  1/n! |f^((n))(x)| &<= 1/(2 π) ⋅ 2 π r ⋅ frac(sup_(z in K(R)) |f(z)|, r^(n+1)) \
  &= M/(r^n)
$
Thus $|f|_(K,r) = sup_(n in ℕ) 1/n! |f^((n))(x)| r^n <= M < ∞$, i.e.
$
  |f|_(K,r) <= sup_(z in K(R)) |f(z)|
$
let $|f|_(K,R) = M < ∞$, let $r < R$. let $x in K$
$
  1/n! |f^((n))(x)| R^n &<= |f|_(K,R) = M \
  1/n! |f^((n))(x)| |z - x|^n &<= M (frac(|z - x|, R))^n \
  &<= M (r/R)^n
$
Thus
$
  |f(z)| &<= sum_(n = 0..∞) 1/n! |f^((n))(x)| |z - x|^n \
  &<= M sum_(n = 0..∞) (r/R)^n \
  &= M/(1 - r/R)
$
Thus $sup_(z in K(r)) |f(z)| <= M/(1 - r/R) < ∞$, i.e.
$
  sup_(z in K(r)) |f(z)| <= |f|_(K,R)
$
*Example*
#indent[
  $sin z = 1/(2 i) (e^(#i z) - e^(- #i z)), sinh z = 1/2 (e^z - e^(-z))$

  $|sin(n(x + #i y))|^2 = sin^2 (n x) + sinh^2 (n y)$

  $abs(1/sqrt(n) sin n z) = sqrt(1/n (sin^2 n x + sinh^2 (n y)))$

  $lim_(n -> ∞) 1/n sin^2 n x = 0$

  $lim_(n -> ∞) 1/n sinh^2 (n y) = ∞$ (if $y != 0$)

  $lim_(n -> ∞) sup_(z in K(r_K)) |f_n (z) - f(z)| = lim_(n -> ∞) sup_(z in K(r_K)) abs(1/sqrt(n) sin n z) = ∞$
]
in analytic spaces and their nets

  - #tag("inverse-op-continous-in-analytic-space") $f ≈ g$ ==> $f^(-1) ≈ g^(-1)$

  - #tag("compose-op-continous-in-analytic-space") $f_1 ≈ f_2$ and $g_1 ≈ g_2$ ==> $f_1 ∘ g_1 ≈ f_2 ∘ g_2$

Or rather, $#none ^(-1) , ∘$ operators are all continuous functions of analytic spaces

same for linear $f + g$, multiplication $f g$, inversion $1/f$?

- $a f + b g$
#indent[
  $|(a f + b g) -(a f_0 + b g_0)|_(K, L) <= |a| |f - f_0|_(K, L) + |b| |g - g_0|_(K, L)$
]
- $f g$
#indent[
  $(f g)^((n)) = sum_(m = 0..n) 1/m! f^((m)) 1/(n-m)! g^((n-m))$

  We need to estimate $|f g|_(K,r)$. We prove $V_(K,r)$ is a Banach algebra
  $
    (|(f g)^((n)) (x) |)/(n!) (r)^n
    & <= sum_(k = 0)^n (| f^((k)) |)/(k!) (| g^((n - k)) |)/((n - k)!) (r)^n \
    &= sum_(k = 0)^n ((| f^((k)) |)/(k!) r^k)((| g^((n - k)) |)/((n - k)!) r^(n - k)) \

    sum_(n in ℕ) (|(f g)^((n)) (x) |)/(n!) (r)^n
    &= sum_(n in ℕ) sum_(k = 0)^n (| f^((k)) |)/(k!) (| g^((n - k)) |)/((n - k)!) (r)^n \
    &= sum_(n in ℕ) ((| f^((n)) |)/(n!) r^n) ⋅ sum_(m in ℕ) ((| g^((m)) |)/(m!) r^(m))
  $
  Therefore $|f g|_(K,r) <= |f|_(K,r) |g|_(K,r)$
]
- $1/f$
#indent[
  $
    1/(f + h) - 1/f = 1/f (1/(1 + h/f) - 1) = 1/f sum_(m = 1..∞) (-1)^m (h/f)^m
  $
  Assume $f$ is nonzero on $K$, then $1/f$ is also analytic. Considering that $f$ and $1/f$ may have different convergence properties, if necessary, shrink $r$. Then by the triangle inequality and multiplication inequality of the norm
  $
    abs(1/(f + h) - 1/f)_(K,r)
    &<= sum_(m = 1..∞) abs(1/f)_(K,r) (|h|_(K,r) ⋅ abs(1/f)_(K,r))^n \
    &= abs(1/f)_(K,r) (1/(1 - |h|_(K,r) ⋅ abs(1/f)_(K,r)) - 1)
  $
  It's enough to choose $|h|_(K,r) < (abs(1/f)_(K,r))^(-1)$?
]
- Composition $f ∘ g$, compositional inverse $f^(-1)$. Omitted for now

Connected components of the topology of analytic function spaces

#tag("homotopy-analytic") Analytic #link(<homotopy>)[homotopy]

#tag("power-series-analytic-equivalent") Analytically equivalent power series := Two power series come from the power series expansion of the same analytic function at different points. Is this equivalent to all possible analytic continuations? (Riemann Surface?)

#tag("power-series-analytic-homotopy-equivalent") Analytically homotopy equivalent power series := Two power series come from the power series expansion of the same analytic function homotopy class at different points