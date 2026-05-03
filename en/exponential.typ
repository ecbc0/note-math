#import "../module/module.typ": *
#show: module

#tag("real_exponential")
#indent[
  If the exponent is a natural number, then $a^(n+m) = a^(n) a^(m)$. When $a in ℚ$, $a ⇝ a^n$ is continuous and monotonically increasing, so the inverse function is also continuous and monotonically increasing, denoted as $a^(1/n)$. $a^(n+m) = a^(n) a^(m)$ can be generalized to rational powers. Due to continuity, $a ⇝ a^n$ can be extended to the $ℝ$ power function

  Another way is to solve this function if $ℝ$ exponential function $x ⇝ a^x$ satisfies the property $a^(x+y) = a^x a^y$ and $a^0 = 1, a^1 = a$

  Assume $f(x) = a^x$ is analytic. Power series expansion of $f(x+y) = f(x)f(y)$ (requires commutativity of $ℝ,ℂ,ℂ_"split"$?) (First, assume that there exists a function $f$ that satisfies this property, and derive the form $f(x) = sum((f^((1))(0))/n!x)^n$, then prove that $f$ satisfies this property.)

  Expand both sides
  $
    sum (f^((n)) (0))/n! (x+y)^n &= sum (f^((n)) (0))/n! x^n sum (f^((n)) (0))/n! y^n \

    sum_n sum_(i+j=n) (f^((n)) (0))/n! n!/(i! j!) x^i y^j &=  sum_n sum_(i+j=n) (f^((i)) (0))/i! (f^((j)) (0))/j! x^i y^j
  $
  Let the coefficients be the same $forall n, forall i+j=n, f^((n)) (0) = f^((i)) (0) f^((j)) (0)$ \
  ==>
  - $forall n,  f^((n)) (0) = f^((n)) (0) f^((0)) (0) ==> f^((0)) (0) = 1$ 
  - $forall n, f^((n)) (0) = (f^((1)) (0))^n$
  ==> 
  $
    f(x) = sum ((f^((1)) (0))/n! x)^n
  $

  #tag("natural_exponential") def $e^x = exp x = sum 1/n! x^n : ℝ -> (0,∞)$ with $e^1 = exp(1) = sum 1/n! = e$ #link(<natural_constant>)[]

  *Todo* Prove that $f(x) = sum((f^((1))(0))/n!x)^n$ satisfies $f(x + y) = f(x) f(y)$. (Techniques used in the proof: absolute convergence, rearrangement invariance, supremum, forced convergence (where one side is supremum), summation in "triangular form" (relative to $(j, k) in ℕ^2$ rectangle) $sum_(i = 1..n) sum_(j + k = n)$)

  from the series, we can see that, differential $(#d)/(#d x) (e^x) = e^x > 0$ ==> $e^x$ exists #link(<inverse_analytic>)[]

  #tag("natural_logarithm") def $log = exp^(-1) : (0,∞) -> ℝ$. $(#d)/(#d x) log x = 1/x$

  for $a > 0$, def $f^1 (0) := log a in ℝ$

  for $a$, def $f^1 (0) := log a in 𝕂$
  $
    a^1 &= f(1) \
    &= sum 1/n! (log a)^n \
    & = exp log a \
    & = a \

    a^x &= f(x) \
    &= sum 1/n! (log a ⋅ x)^n \
    &= exp (x log a)
  $
]
#tag("power_function") Defining the exponential function means that for each $a in ℝ$, each real exponent $x$ is defined, and thus the power function $a ⇝ a^x$ is also defined, or rewritten as $x ⇝ x^a$

It can also be expressed as $x^a = exp(a log x)$

#tag("Euler_formula")

  - $ℂ$
  $
    exp z &= cos z + #i sin z \
    #i &≃ mat(,-1;1) ∼ so(2)
  $
  - $ℂ_"split"$
  $
    exph z &= cosh z + #i-split sinh z \
    #i-split &≃ mat(,1;1) ∼ so(1,1)
  $