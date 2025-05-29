#import "/module/module.typ": *
#show: module

$exp$ is $(𝕂,+) -> (𝕂 ∖ 0, ⋅)$ homomorphism

#tag("real-exponential")
#indent[
  If the exponent is a natural number, then $a^(n+m) = a^(n) a^m$. It can be simply generalized to rational numbers

  For the exponent being a real number, define the exponential function $x ⇝ a^x$ as satisfying $a^(x+y) = a^x a^y$ and $a^1 = a$

  Assume $f(x) = a^x$ is analytic. Power series expansion of $f(x+y) = f(x)f(y)$ (requires commutativity of $ℝ,ℂ,ℂ_"split"$?)

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
#tag("power-function") Defining the exponential function means that for each $a in ℝ$, each real exponent $x$ is defined, and thus the power function $a ⇝ a^x$ is also defined, or rewritten as $x ⇝ x^a$

It can also be expressed as $x^a = exp(a log x)$

#tag("Euler-formula")

  - $ℂ$
  $
    exp z &= cos z + #i sin z \
    #i &≃ mat(,-1;1) ∼ so(2)
  $
  - $ℂ_"split"$
  $
    exph z &= cosh z + #i sinh z \
    #i-split &≃ mat(,1;1) ∼ so(1,1)
  $