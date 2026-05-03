#import "../module/module.typ": *
#show: module

One-dimensional separable variable ODE
$
  (#d x)/(#d t) = f(t) g(x)
  &--> 1/g(x) #d x = f(t) #d t \
  &--> x = G^(-1)(F(t))
$
where $G = integral 1/g(x) #d x, F = integral f(t) #d t$, initial value undecided

*Example*
- $f(t) = a, g(x) = x, (#d x)/(#d t) = a x$. $x(t) = x(0) exp(a t)$

- $f(t) = 1, g(x) = x^2, (#d x)/(#d t) = x^2$. $x(t) = 1/(1/x(0) - t)$

#tag("exponential_of_vector_field") *Question*
#indent[
  let $U$ open in $ℝ^n$

  The vector field is an analytic function $v : U -> ℝ^n$

  If you know matrix Lie groups, then you should know that Lie algebras can be mapped to Lie groups via $exp$
  $
    exp: map(g, G, X, sum_(n =  0)^∞ X^n/n!)
  $
  This also holds for analytic functions; in the sense of analytic topological convergence, $exp v$ should generate a local analytic diffeomorphism. The value of $exp v$ at $x$ should be
  $
    (exp v) (x)
    &= (sum_(n=0)^∞ v^n/(n!)) (x) \
    &= x + v(x) + 1/2! v(x)^2 + ⋯
  $
  $n$ polynomial like $(λ v(x))^n = λ^(n) (v(x)^n)$

  Or adding $t$
  $
    (exp t v) (x)
    &= x + t v(x) + t^2/2! v(x)^2 + ⋯
  $
  Such that it corresponds to the ODE $∂_t (exp t v) (x) = v((exp t v) (x))$. We know that ODE theory can also give local diffeomorphisms through vector fields
]
*Example*

Comparing the results of pure vector fields to the results of ODE integral curves, you will find the results are the same. Take the case of constant coefficient linear or one-dimensional separable ODEs as an example

- $v(x) = A(x) equiv A in gl(d,𝕂)$
#indent[
  compare $vel(x) = A x$, expect $(sum_(0..∞) 1/n! (A t)^n)(x)$ with $t = 1$

  $f(t,x) = (𝟙 + t A + t^2/2! A^2 + ⋯) (x) = (sum t^n/n! A^n ) (x) = (exp t A) (x)$

  *Example* #tag("harmonic_oscillator")
  #indent[
    Harmonic oscillator $acc(x) = ∓ ω^2 x$ first-orderized
    $
      mat((#d)/(#d t) ; , (#d)/(#d t)) vec(x,v) = mat(, 1 ; ∓ ω^2) vec(x,v)
    $
    Trigonometric case takes $- ω^2$
    $
      exp t mat(, 1 ; - ω^2) = mat(
        cos ω t , 1/ω sin ω t ;
        - ω sin ω t , cos ω t
      )
    $
    Thus
    $
      x(t) = x_0 cos ω t + v_0/ω sin ω t
    $
    Or written in the form of complex exponentials
    $
      x(t) = 1/2 (x_0 - #i v_0/ω) e^(#i ω t) + 1/2 (x_0 + #i v_0/ω) e^(- #i ω t) =: a (ω, #i) e^(#i ω t) + a (ω, -#i) e^(- #i ω t)
    $
    Hyperbolic case takes $+ ω^2$, similarly

    The characteristic polynomial equation of the harmonic oscillator equation is $ξ^2 ± ω^2 = 0$ or $ξ^2 = ± ω^2$. We are interested in the trigonometric case $ξ^2 + ω^2 = 0$ or $ξ = ± #i ω$, whose prototype is $ξ^2 = - 1$ or $ξ^2 = ± #i$. This gives a motivation for complex numbers

    In the case where the harmonic oscillator $x$ is a real-valued function, in the complex exponential representation of the solution, to keep the result in $ℝ$, when $x_0,v_0 in ℝ$, the coefficients in front of $e^(± #i ω t)$ should be complex conjugates of each other $x_0 ± (v_0)/(#i ω)$
  ]
]
- $ℝ -> ℝ$, $v(x) = x^2$
#indent[
  compare $vel(x) = x^2$, expect $1/(1/x - t)$ with $t = 1$

  $v(x)^2 = v'(x) v(x) = 2 ⋅ x^3$

  $v(x)^3 = (2 x^3)' v(x) = (2 ⋅ 3) ⋅ x^4$

  ...

  $v(x)^n = n! ⋅ x^(n+1)$

  $v(x)^n / n! = x^(n+1)$

  $(exp v)(x)
  &= sum_(m=1)^∞ x^m \
  &= 1/(1-x) - 1$

  Or

  $(t^n v(x)^n) / n! = t^n x^(n+1)$

  $(exp t v)(x)
  &= 1/t sum_(m=1)^∞ (t x)^m \
  &= 1/t (1/(1 - t x) - 1) \
  &= 1/t ((t x)/(1 - t x)) \
  &= 1/(1/x - t)$
]
#tag("vector_field_as_δ_diffeomorphism") Near the local analytic homeomorphism $𝟙$, the vector field $v$ serves as the coordinate of the local analytic homeomorphism group $v ⇝ exp v$. This is similar to #link(<geodesic_coordinate>)[]

ODE, it's also a one-parameter homomorphism embedding $(exp t v)(x) : ℝ ↪ "Loc_diff"$

$ (#d)/(#d t) (exp t v) (x) = v((exp t v) (x)) $

Usually denoted as $x(t) = (exp t v)(x_0), x(0) = x_0$

For proof techniques, see #link("https://en.wikipedia.org/wiki/Cauchy-Kovalevskaya_theorem")[wiki:Cauchy-Kovalevskaya_theorem], where the convergence radius of the power series is estimated using a special upper bound control method, similar to what was done in #link(<inverse_analytic>)[]. Or, in the topology of analytic function space, use the continuity of operator $f ∘ g$ and $f^(-1)$, use inverse function theorem

$F(x_0, x) = (c x_0)/(x_0 - x)$, $(#d x)/(#d t) = F(x_0, x)$ ==> $x(t, x_0) = x_0 - (x_0^2 - 2 c t x_0)^(1/2)$

#tag("integral_curve") Picard iteration (#link("https://en.wikipedia.org/wiki/Picard–Lindelöf_theorem")[wiki]) representation of ODE solutions or integral curves e.g.
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 v( ⋯ v(x(0)) ⋯ )
$
A time-varying vector field ODE is a special kind of vector field $(1, v(x))$ on $ℝ × ℝ^n$

If it is a time-varying linear ODE then (*alias* Dyson series)
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 A(t_n) ⋯ A(t_1) x(0)
$
The solution to a constant coefficient ODE $((#d^n)/(#d t^n) + a_(n-1) (#d^(n-1))/(#d t^(n-1)) + ⋯ + a_0) x = 0$ can be written in analytic form, by converting the ODE into a first-order constant coefficient linear ODE $(#d)/(#d t) y = A y$ regarding $y = (x, (#d)/(#d t) x ,…, (#d^n)/(#d t^n) x)$, and then writing matrix $A$ in Jordan normal form

#tag("Lie_bracket") Lie bracket
#indent[
  The #link(<conjugate_action>)[] of $"Diff"$ $(f,g) ⇝ f g f^(-1)$

  Suppose $v, w$ generate $f, g$. The first-order derivative is $(v, w) ⇝ w$, while the second-order derivative mixing $v, w$ is $(v, w) ⇝ "ad"(v)(w) = [v,w]$, which can also be understood as $w$ first then $v$, so that a "linear representation of the Lie group" $"Ad"$ is obtained midway

  Note that after swapping the order of $g,f$, $(g,f) ⇝ g f g^(-1)$ is a different mapping

  $[v,w](x) = v(x) w(x) - w(x) v(x)$

  $[v,w] = -[w,v]$

  for $GL,gl$, $[A,B] ∼ A B - B A$
]
#let L = $L$
#tag("Lie_derivative") Lie derivative *alias* drag derivative
#indent[
  let $v$ generate a one-parameter diffeomorphism $t ⇝ exp(t v) = f_t in "Diff"$ through $t v$

  let $w_t = #d f_(t)^(-1) (f_t (x) : "base", w(f_t (x)) : "vector")$

  $#L _v (w) := lim_(t -> 0) 1/t (w_t - w_0) $

  $#L _v (w) = [v,w]$

  Jacobi identity $#L _([v,w]) = [#L _v,#L _w]$ or $[v_1,[v_2,w_3]] + [v_3,[v_1,v_2]] + [v_2,[v_3,v_1]] = 0$

  The Lie derivative can also be defined for tensor fields ...
]
#tag("first_order_PDE_integrable_condition") *alias* #tag("Frobenius_theorem") generalizes first-order ODE integral curves to first-order PDE system integral surfaces; in this case, the linear space spanned by the vector fields $v_1 ,…, v_n$ needs to form a Lie subalgebra, or use the more general concept of involutive/integrable subbundles. Solutions to the PDE can come from successive ODE integral curves along coordinate directions, and the result doesn't depend on the choice of path. In the case of first-order linear PDE systems, the integrability condition becomes the symmetry of second-order partial derivatives under coordinates