#import "../module/module.typ": *
#show: module

In flat spaces, linear and affine are often mixed. Similarly, in flat spaces, polynomials are also like this. Zero-order polynomials correspond to the base point in affine.

First, handle the one-dimensional real case.

$ℕ$ exponential power function $k ∈ ℕ, map(ℝ, ℝ, v, v^k)$

#tag("polynomial_function_1d") Polynomial functions are finite linear combinations of power functions. (Affine) base point $x$, (vector) offset $v$
$
  f(x+v)
  &= a_0 + a_1 v + ⋯ + a_n v^n \
  &= sum_(k = 0 .. n) a_k v^k \

  f(x) &= a_0
$
The representation of a polynomial function is not affine invariant, i.e., switching the base point $x ⇝ x + Δ = y$ yields a representation of the same degree but with different coefficients. Scaling $v ⇝ λ v$ is also like this.

#tag("change_base_point_polynomial") Switching base point $x ⇝ x + Δ = y$
$
  f(x + v) &= a_0 (x) + a_1 (x) v + ⋯ + a_n (x) v^n \
  f(y + w) &= a_0 (y) + a_1 (y) w + ⋯ + a_n (y) w^n
$
Then
$
  a_p (y)
  &= a_p (x + Δ) \
  &= sum_(k = p .. n) a_k (x) binom(k,p) Δ^(k-p)
$
_Proof_ $f(y + v) = f(x + (Δ + v))$ Expand and compute, compare the coefficients of $v^p$ to get the expression for $a_p (y)$. Use the commutativity of summation to collect $v$ power function terms.

$
  f(x + (Δ + v))
  &= sum_(k = 0 .. n) a_k (x) (v + Δ)^k \
  &= sum_(k = 0 .. n) a_k (x) sum_(p= 0 .. k) binom(k,p) v^p Δ^(k-p) \
  f(y + v) &= sum_(p = 0 .. n) (sum_(k = p .. n) a_k (x) binom(k,p) Δ^(k-p)) v^p
$
If using $0$ as the base point in coordinates and changing the symbol $v ⇝ x$, then the polynomial function is expressed as $f(x) = a_0 + a_1 x + ⋯ + a_n x^n$

Generalizing from polynomials as finite linear combinations to countably infinite linear combinations, called $ℕ$ exponential power series of functions.
$
  f(x+v) &= lim_(n -> ∞) a_0 + a_1 v + ⋯ + a_n v^n \
  f(x+v) &≈ a_0 + a_1 v + ⋯ + a_n v^n
$
Some functions are not defined directly from $ℕ$ exponential power series. *Example* $1/x , 1/z$ can be defined directly through division, without needing to use power series for definition.

Besides $ℕ$ as countable infinite data, $ℤ, ℚ$ can also be used.

Changing the $ℕ$ exponential power function $v^k$ to the $ℚ$ exponential power function $v^(p/q)$ introduces new aspects that require attention.

  - $v^(-k) = 1/v^k$ requires a multiplicative inverse.

  - $v^(1/k) = root(k,v)$ requires solving the equation $w^k = v$ and addressing the issue of whether the solution is unique.

  - $v^(-k)$ is unbounded at $v = 0$.

  - When $p/q ∉ ℕ$, repeated differentiation does not terminate $forall n, (v^(p/q) ⇝ (#d^n )/(#d v^n) v^(p/q) = p/q ⋯ (p/q - n + 1) v^(p/q - n) != 0)$.

For now, we only deal with $ℕ$ power series, abbreviated as power series.

Now handle the higher-dimensional case i.e. $ℝ^d → ℝ^d'$.

If the codomain is $ℝ$, we can additionally define function multiplication $(f g)(x) = f(x) g(x)$ and multiplicative inverse $(1/f)(x) = 1/f(x)$.

First, attempt to base the definitions of polynomial functions and power series on tensors i.e. multilinearity.
$
  ⨂_(k = 0 .. n) ℝ^d
$
If not necessary, there is no need to take the linear direct sum $⨁_(n = 0 .. ∞)$ for tensors of all orders (known as the tensor algebra) for now.

#tag("polynomial_function") Using codomain $ℝ^d'$ and multilinear functions $a_k ∈ Lin((ℝ^d)^(⊗ k) → ℝ^d')$. Base point $x$, offset $v$, define polynomial function
$
  f(x+v)
  &= a_0 + a_1 v + ⋯ + a_n v^(⊗ n) \
  &= sum_(0 .. n) a_k v^(⊗ k) \

  f(x) &= a_0
$
Affine transformations, i.e., changing the base point i.e. translation, or linear transformations i.e. $GL$ (including scaling), do not change the degree of the polynomial.

$a_1 v, a_2 v^(⊗ 2) ∈ ℝ^d'$ may not be collinear.

Generalization to $ℂ$ is straightforward. For the cases of $ℍ,𝕆$, due to non-commutativity and non-associativity, it becomes very troublesome.

There may be different tensors $a_k, a'_k$ that give the same polynomial, but a polynomial corresponds to a unique symmetric tensor $b_k$.

Change notation.
- $v^(⊙ k) ⇝ v^k$ #tag("power_tensor")
- $v ⊙ w ⇝ v w$

Using difference techniques, one can recover the $n$-th order symmetric tensor $v_1 ⋯ v_n$ from the $n$-th order monomial or power tensor $v^n$.

In the $n$-th order monomial $(v_1 + ⋯ + v_n)^n$ of $v_1 + ⋯ + v_n$, there is a term $v_1 ⋯ v_n$, but there are many other interfering terms.

The entire problem is symmetric in $v_1 ,…, v_n$, so a symmetric construction should be used.

In second order $(v_1 + v_2)^2 - v_1^2 - v_2^2 = 2 v_1 v_2$

#tag("difference_symmetric_tensor") Symmetric tensor $n$th order difference
$
  sum_(I ⊆ {1 ,…, n}) (-1)^(|I| - n) (sum_(i ∈ I) v_i)^m = cases(
    0 &"if" m < n ,
    n! ⋅ v_1 ⋯ v_n &"if" m = n ,
    != 0 &"else"
  )
$
*Question* Is there an intuitive understanding of $n$th order difference?

#tag("successive_difference") $n$th order difference can be written as $n$ successive first-order differences
$
  sum_(I_n ⊆ {n}) ⋯ sum_(I_1 ⊆ {1}) (-1)^(|I_n| - 1) ⋯ (-1)^(|I_1| - 1)
  (sum_(i_1 ∈ I_1) v_(i_1) + ⋯ + sum_(i_n ∈ I_n) v_(i_n))^n
$
where $I_k ⊆ {k} <==> I_k ∈ Subset{k} = {∅,{k}}$, $sum_(i_k ∈ ∅) v_(i_k) := 0$, $I := ⋃_(1 .. n) I_k subset {1 ,…, n}$

Due to the commutativity of summation, the order of successive differences does not affect the final result

_Proof_ of #link(<difference_symmetric_tensor>)[]
#indent[
  Fully expand
  $
    (sum_(i ∈ I) v_i)^m &= sum_(μ : {1 ,…, m} -> I) v_(μ(1)) ⋯ v_(μ(m))
  $
  A function $μ : {1 ,…, m} -> I ⊆ {1 ,…, n}$ can be viewed as a function $μ : {1 ,…, m} -> {1 ,…, n}$. Thus
  $
    sum_(I ⊆ {1 ,…, n}) (-1)^(|I| - n) (sum_(i ∈ I) v_i)^m

    &= sum_(μ : {1 ,…, m} -> {1 ,…, n}) ((-1)^n sum_(I in Subset{1 ,…, n} : \ μ{1 ,…, m} ⊆ I) (-1)^(|I|)) v_(μ(1)) ⋯ v_(μ(m))
  $
  Define weight
  $
    "weight"(μ) := (-1)^n sum_(I in Subset{1 ,…, n} : \ μ{1 ,…, m} ⊆ I) (-1)^(|I|)
  $
  *Prop* For any non-empty finite set $X$, $sum_(A ⊆ X) (-1)^(|A|) = 0$

  _Proof_
  #indent[
    All $A ⊆ X$ can be classified according to $|A| in {0 ,…, |X|}$, each $|A|$ corresponds to $binom(|X|,|A|)$ choices (#link(<combination>)[]). Thus

    $
      sum_(A ⊆ X) (-1)^(|A|)
      &= sum_(|A| = 0 .. |X|) binom(|X|,|A|) (-1)^(|A|) \
      &= (1 - 1)^(|X|) \
      &= 0
    $
  ]
  for ${I ∈ Subset{1 ,…, n} : μ{1 ,…, m} ⊆ I}$

  define $A(I, μ) := I ∖ μ{1 ,…, m}$

  define $X(μ) := Subset({1 ,…, n} ∖ μ{1 ,…, m})$

  There is a bijection $map(Subset {1 ,…, n}, X(μ), I, A(I, μ))$
  $
    (-1)^(|I|)
    &= (-1)^(|I ∖ μ{1 ,…, m}| + |μ{1 ,…, m}|) \
    &= (-1)^(|A(I,μ)|) ⋅ (-1)^(|μ{1 ,…, m}|)
  $
  Weight
  $
    "weight"(μ)

    &= (-1)^n sum_(I in Subset{1 ,…, n} : \ μ{1 ,…, m} ⊆ I) (-1)^(|I|) \

    &= (-1)^n ⋅ (-1)^(|μ{1 ,…, m}|) sum_(I in Subset{1 ,…, n} : \ μ{1 ,…, m} ⊆ I) (-1)^(|A(I,μ)|) \

    &= (-1)^n ⋅ (-1)^(|μ{1 ,…, m}|) ⋅ sum_(A ⊆ X(μ)) (-1)^(|A|)
  $
  $
    "weight"(μ) = 0
    &<==> X != ∅ \
    &<==> μ{1 ,…, m} ⊊ {1 ,…, n}
  $
  Final condition
  - When $m < n$, it always holds for all $μ$
  - When $m = n$, it fails only when $μ$ is a bijection i.e. $μ$ is all $n$th order permutations, then
    - $|μ{1 ,…, m}| = n$
    - $X(μ) = ∅$ and $sum_(A ⊆ X(μ)) (-1)^(|A|) = 0$
    - $"weight"(μ) = 1$

  Symmetric tensors make $v_(μ(1)) ⋯ v_(μ(m)) = v_1 ⋯ v_n$

  Remaining $sum_(μ in "permu"(n)) v_1 ⋯ v_n = |"permu"(n)| ⋅ v_1 ⋯ v_n$

  There are $n!$ permutations of order $n$

  So the result is $n! ⋅ v_1 ⋯ v_n$
]
The *symmetry* of a *symmetric* multilinear function $a_m$ allows the property of #link(<difference_symmetric_tensor>)[difference] to be inherited

#tag("difference_polynomial") The $n$-th order difference of $f(x + v) = a_n v^n$ is $n! ⋅ a_n (v_1 ⋯ v_n)$

The $n$-th order difference of $f(x + v) = a_n v^m, m < n$ is $0$

From this we obtain

*Prop* A polynomial function determines its symmetric multilinear function representation

_Proof_ Suppose polynomial $f$ has two symmetric multilinear function representations $b_k, b'_k$
$
  f(x + v) = sum_(k = 0..n) b_k v^k = sum_(k = 0..n) b'_k v^k
$
First, the $n$-th order difference gives the same $b_n = b'_n$. Simultaneously removing the $n$-th order term yields a polynomial of degree $< n$ and its two symmetric multilinear representations $b_k, b'_k$. Induction on $< n$ yields the conclusion

For power series, finite-order differences can never yield zero

Formally, division and limits can be used to eliminate higher-order terms
$
  1/(t^n) (a_n (t v)^n + a_(n+1) (t v)^(n+1) + ⋯)
  &= a_n v^n + a_(n+1) v^(n+1) t + ⋯ \
  &= a_n v^n + o(1) \
  lim_(t -> 0)
  &= a_n v^n
$