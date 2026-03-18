#import "../module/module.typ": *
#show: module

In flat space, linear and affine are often mixed. Similarly, in flat space, so are polynomials. Zero-order polynomials correspond to the use of affine

First deal with the case of one-dimensional real numbers

$ℕ$ exponential power function $k ∈ ℕ, map(ℝ, ℝ, v, v^k)$ 

#tag("polynomial-function-1d") A polynomial function is a finite linear combination of power functions. (Affine) base point $x$, (vector) offset $v$
$
  f(x+v) 
  &= a_0 + a_1 v + ⋯ + a_n v^n \
  &= sum_(k = 0 .. n) a_k v^k \

  f(x) &= a_0
$
Polynomial function representation is not affine invariant, i.e. switching the base point $x ⇝ x + Δ = y$ will result in a polynomial function representation of the same order but with different coefficients. Scaling $v ⇝ λ v$ is also the case

#tag("change-base-point-polynomial") Switch base point $x ⇝ x + Δ = y$
$
  f(x + v) &= a_0 (x) + a_1 (x) v + ⋯ + a_n (x) v^n \
  f(y + w) &= a_0 (y) + a_1 (y) w + ⋯ + a_n (y) w^n
$
Represents the same affine function
$
  x + v = y + w ==> f(x + v) = f(y + w)
$
then
$
  a_p (y) 
  &= a_p (x + Δ) \
  &= sum_(k = p .. n) a_k (x) binom(k,p) Δ^(k-p)
$
_Proof_ $f(y + v) = f(x + (Δ + v))$ expand the calculation, to compare coefficients, collect $v$ power function terms, by the exchange of summation 

$
  sum_(k = 0 .. n) a_k (x) (v + Δ)^k 
  &= sum_(k = 0 .. n) a_k (x) sum_(p= 0 .. k) binom(k,p) v^p Δ^(k-p) \
  &= sum_(p = 0 .. n) (sum_(k = p .. n) a_k (x) binom(k,p) Δ^(k-p)) v^k
$

If the base point is $0$ in the coordinates and the symbol $v ⇝ x$ is changed, then the polynomial function is expressed as $f(x) = a_0 + a_1 x + ⋯ + a_n x^n$

Extending from polynomial as a finite linear combination to a countably infinite linear combination is called the $ℕ$ exponential power series of a function
$
  f(x+v) &≈ a_0 + a_1 v + ⋯ + a_n v^n \
  f(x+v) &= lim_(n -> ∞) a_0 + a_1 v + ⋯ + a_n v^n
$
The definitions of some functions do not come directly from the $ℕ$ exponential power series, *Example* $1/x , 1/z$

In addition to $ℕ$ as countably infinite data, $ℤ, ℚ$ can also be used. The $ℕ$ exponential power function $v^k$ is changed to the $ℚ$ exponential power function $v^(p/q)$

  - $v^(-k) = 1/v^k$ requires multiplicative inverse

  - $v^(1/k) = root(k,v)$ requires solving the equation $w^k = v$ and needs to deal with the issue of whether the number of solutions is unique

  - $v^(-k)$ is unbounded at $v = 0$
  
  - When $p/q ∉ ℕ$, the multiple derivatives will not be interrupted $forall n, (v^(p/q) ⇝ p/q ⋯ (p/q - n + 1) v^(p/q - n) != 0)$

Here we only deal with $ℕ$ power series for the time being, and refer to them as power series for short

Now deal with the high-dimensional case i.e. $ℝ^d → ℝ^d'$

If the range is $ℝ$, we can also define the multiplication of functions $(f g)(x) = f(x) g(x)$ and the multiplicative inverse $(1/f)(x) = 1/f(x)$

First try to define polynomial functions and power series based on tensors i.e. multilinear
$
  ⨂_(k = 0 .. n) ℝ^d
$
If not necessary, there is no need to take the linear direct sum of tensors of all orders $⨁_(n = 0 .. ∞)$ (called tensor algebra)

#tag("polynomial-function") Using the range $ℝ^d'$ and multilinear function $a_k ∈ Lin((ℝ^d)^(⊗ k) → ℝ^d')$. Base point $x$, offset $v$, define polynomial function
$
  f(x+v) 
  &= a_0 + a_1 v + ⋯ + a_n v^(⊗ n) \
  &= sum_(0 .. n) a_k v^(⊗ k) \

  f(x) &= a_0
$
Affine transformations, i.e., changing the base point i.e. translation, or linear transformations i.e. $GL$ (including scaling), do not change the order of the polynomial

$a_1 v, a_2 v^(⊗ 2) ∈ ℝ^d'$ may not be collinear

Extending to $ℂ$ is simple. For the cases of $ℍ,𝕆$, due to non-commutativity and non-associativity, high-dimensional linear algebra and tensors require new processing methods

Different tensors may give the same polynomial, but the symmetric tensor is uniquely corresponding

Change notation
- $v^(⊙ k) ⇝ v^k$ #tag("power-tensor")
- $v ⊙ w ⇝ v w$

The method to restore from a monomial of order $n$ or a power tensor $v^n$ to a symmetric tensor of order $n$ $v_1 ⋯ v_n$ is difference

In the $n$-th order monomial $(v_1 + ⋯ + v_n)^n$ of $v_1 + ⋯ + v_n$, there is a term $v_1 ⋯ v_n$, but there are many other interfering terms

The whole problem is symmetric with respect to $v_1 ,…, v_n$, so a symmetric construction should be used

In the second order $(v_1 + v_2)^2 - v_1^2 - v_2^2 = 2 v_1 v_2$

#tag("difference-symmetric-tensor") Symmetric tensor $n$-th order difference
$
  sum_(I ⊆ {1 ,…, n}) (-1)^(|I| - n) (sum_(i ∈ I) v_i)^m = cases(
    0 &"if" m < n ,
    n! ⋅ v_1 ⋯ v_n &"if" m = n ,
    != 0 &"else"
  ) 
$
*Question* Is there an intuitive understanding of the $n$-th order difference?

#tag("successive-difference") The $n$-th order difference can be written as $n$ times the first-order difference
$
  sum_(I_n ⊆ {n}) ⋯ sum_(I_1 ⊆ {1}) (-1)^(|I_n| - 1) ⋯ (-1)^(|I_1| - 1) 
  (sum_(i_1 ∈ I_1) v_(i_1) + ⋯ + sum_(i_n ∈ I_n) v_(i_n))^n
$
where $I_k ⊆ {k} <==> I_k ∈ Subset{k} = {∅,{k}}$, $sum_(i_k ∈ ∅) v_(i_k) = 0$, $I := ⋃_(1 .. n) I_k subset {1 ,…, n}$

Due to the commutativity of summation, the order of successive differences does not affect the final result

_Proof_ of #link(<difference-symmetric-tensor>)[]
#indent[
  $
    sum_(I ⊆ {1 ,…, n}) (-1)^(|I| - n) (sum_(i ∈ I) v_i)^m
    &= sum_(I ⊆ {1 ,…, n}) (-1)^(|I| - n) sum_(μ : {1 ,…, m} -> A) v_(μ(1)) ⋯ v_(μ(m))
  $
  Forcibly write it as a summation over all $μ : {1 ,…, m} -> {1 ,…, n}$, with a weight to calculate the number of repetitions
  $
    sum_(μ : {1 ,…, m} -> {1 ,…, n}) "weight"(μ) ⋅ v_(μ(1)) ⋯ v_(μ(m))
  $
  where the weight for each $μ$ is defined as
  $
    "weight"(μ) = (-1)^n sum_(I in Subset{1 ,…, n} : \ μ{1 ,…, m} ⊆ I) (-1)^(|I|)
  $
  For any non-empty finite set $X$, $sum_(A ⊆ X) (-1)^(|A|) = 0$

  _Proof_
  #indent[
    #link(<combination>)[] $A ⊆ X$ <==> for each $|A| = 0 ,…, |X|$ there are $binom(|X|,|A|)$ choices

    $
      sum_(A ⊆ X) (-1)^(|A|) 
      &= sum_(|A| = 0 .. |X|) binom(|X|,|A|) (-1)^(|A|) \
      &= (1 - 1)^(|X|) \
      &= 0   
    $
  ]
  for ${I ∈ Subset{1 ,…, n} : μ{1 ,…, m} ⊆ I}$

  define $A(I) := I ∖ μ{1 ,…, m}$

  define $X := Subset({1 ,…, n} ∖ μ{1 ,…, m})$ 

  $A(I)$ is a bijection
  $
    (-1)^(|I|) 
    &= (-1)^(|I ∖ μ{1 ,…, m}| + |μ{1 ,…, m}|) \
    &= (-1)^(|A|) ⋅ (-1)^(μ{1 ,…, m})
  $
  Weight
  $
    "weight"(μ) = (-1)^n ⋅ (-1)^(|μ{1 ,…, m}|) ⋅ sum_(A ⊆ X) (-1)^(|A|)
  $
  $
    "weight"(μ) = 0
    &<==> X != ∅ \
    &<==> μ{1 ,…, m} ⊊ {1 ,…, n}
  $
  The last condition
  - When $m < n$, it must hold for all $μ$
  - When $m = n$, it only holds when $μ$ is a bijection i.e. $μ$ is all $n$-th order permutations, then $"weight"(μ) = 1$

  The symmetric tensor makes $v_(μ(1)) ⋯ v_(μ(m)) = v_1 ⋯ v_n$

  There are $n!$ $n$-th order permutations
]
The *symmetry* of the *symmetric* multilinear function $a_m$ allows the properties of #link(<difference-symmetric-tensor>)[difference] to be inherited

#tag("difference-polynomial") The $n$-th order difference of $f(x + v) = a_n v^n$ is $n! ⋅ a_n (v_1 ⋯ v_n)$

The $n$-th order difference of $f(x + v) = a_n v^m, m < n$ is $0$

From this, we get that the polynomial function determines its multiple symmetric linear function representation _Proof_ First, $n$-difference gives the same $a_n$, after removing $a_n$ from both sides, it is still the same polynomial function, the order is $< n$, continue $n-1$ difference to get the same $a_(n-1)$ ...

For power series, finite-order difference can never give zero

Formally, division and limits can be used to eliminate higher-order terms
$
  1/(t^n) (a_n (t v)^n + a_(n+1) (t v)^(n+1) + ⋯) 
  &= a_n v^n + a_(n+1) v^(n+1) t + ⋯ \
  &= a_n v^n + o(1) \
  lim_(t -> 0) 
  &= a_n v^n
$