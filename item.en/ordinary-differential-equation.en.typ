#import "/module/module.typ": *
#show: module

separable ODE in 1 dimension 
$ 
  (#d x)/(#d t) = f(t) g(x) 
  &--> 1/g(x) #d x = f(t) #d t \
  &--> x = G^(-1)(F(t)) 
$ 
where $G = integral 1/g(x) #d x, F = integral f(t) #d t$, initial value undetermined

*Example*
- $f(t) = a, g(x) = x$. $x(t) = x(0) exp(a t)$
- $f(t) = 1, g(x) = x^2$. $x(t) = 1/(1/x(0) - t)$

#tag("invariant-of-vector-field ")
#indent[
  $ ∂_(v(x)) f (x) = #d f(x) v(x) = v(f(x)) $

  *Question* maybe $exp$ like, Taylor series of vector field 
  $ 
    f(x) 
    &= x + v(x) + 1/2! ∂_(v(x)) v(x) + 1/3! ∂_(v(x)) (∂_(v(x)) v(x)) + ⋯ \
    &= x + sum_(n=0)^∞ 1/((n+1)!) (∂_(v(x)))^n v (x) 
  $
  $n+1$ polynomial like $(∂_(λ v(x)))^n λ v (x) = λ^(n+1) (∂_(v(x)))^n v (x)$
]
*Example* 

compare to the result from separable ODE in 1 dimension

- $v(x) = A(x), A in gl(d,𝕂)$
#indent[  
  expect $f(t,x) = exp(A t)(x)$ for $f(0,x) ⇝ f(1,x)$, expect $x ⇝ exp(A) (x)$
  
  $#d v (x) = A$, $n >= 2 ==> #d^k v (x) = 0$

  $∂_(v(x)) v(x) 
  &= A(v(x)) \
  &= A^2 (x)$

  $(∂_(v(x)))^2 v(x) 
  &= #d (A^2(x))(v(x)) \
  &= A^2(v(x)) \
  &= A^3(x) $ 
  
  ...

  $(∂_(v(x)))^n v(x) = A^(n+1) (x)$

  $f(x) = (𝟙 + A + 1/2! A^2 + ⋯) (x) = (sum 1/n! A^n ) (x) = (exp A) (x)$

  $#d f(x) v(x) 
  &= (exp A)(A (x)) \
  &= A(exp(A)(x)) \
  &= v(f(x))$
]
- $ℝ -> ℝ$, $v(x) = x^2$
#indent[
  expect $f(t,x) = 1/(1/x - t)$ for $f(0,x) ⇝ f(1,x)$, expect $x ⇝ x/(1-x) = 1 - 1/(1-x)$ 

  $∂_(v(x))v(x) = v'(x) v(x) = 2 ⋅ x^3$

  $∂_(v(x))(∂_(v(x))v(x)) = (2 x^3)' v(x) = (2 ⋅ 3) ⋅ x^4$

  ...

  $(∂_(v(x)))^n v (x) = (n+1)! ⋅ x^(n+2)$

  $f(x) 
  &= x + sum_(n=0)^∞ 1/((n+1)!) (∂_(v(x)))^n v (x) \
  &= sum_(m=1)^∞ x^m \
  &= 1 - 1/(1-x)$

  $#d f(x) v(x) 
  &= (1/(1-x))^2 x^2 \
  &= (x/(1-x))^2 \
  &= v(f(x))$
]
*Question* 
#indent[
  The $f(t,x)$ in $f(0,x) = x, f(1,x) = f(x)$ should correspond to the case of a dilation vector field $t ⋅ v(x)$

  One-parameter homomorphism embedding $f(t,x) : ℝ ↪ "Diff"$

  $-v$ and initial value $y = f(x)$ gives $f^(-1)$. $f^(-1)(t,y) = f(-t,y)$
]
$f(t,x)$ is called flow. exp road emission-like coordinates

#tag("vector-field-as-δ-diffeomorphism") Near $𝟙$, the vector field is the coordinate of the diffeomorphism group $v ⇝ exp v$, similar to #link(<geodesic-coordinate>)[]

ODE

$ (#d)/(#d t) f(t,x) = ∂_(v(x)) f(t,x) = v(f(t,x)) $

#link("https://en.wikipedia.org/wiki/Cauchy-Kovalevskaya_theorem")[wiki:Cauchy-Kowalevski theorem], the estimation of the radius of convergence uses a special upper bound control method, similar to what is done in #link(<analytic-inverse>)[]

$F(x,γ) = (c x)/(x-γ)$, $(#d)/(#d t) γ = F(x,γ)$ ==> $γ(t,x) = x - (x^2 - 2 c t x)^(1/2)$

#tag("integral-curve") Picard iteration of ODE solution (#link("https://en.wikipedia.org/wiki/Picard–Lindelöf_theorem")[wiki]) representation or integral curve e.g.
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 f(t_n, ⋯ f(t_1, x(0)) ⋯ )
$
If it is a linear ODE, then (*alias* Dyson series)
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 A(t_n) ⋯ A(t_1) x(0)
$
Linear ODE. The solution of a constant coefficient ODE can be written by transforming it into a first-order differential equation system + Jordan normal form

#tag("Lie-bracket") Lie bracket
#indent[
  Start from the conjugation action of the $"Diff"$ group $g,f ⇝ f g f^(-1)$ // link

  Differential := $"ad"(v)(w) = [v,w]$

  $[v,w](x) = ∂_(v(x)) w(x) - ∂_(w(x)) v(x)$

  $[v,w] = [w,v]$

  for $GL,gl$, $[A,B] ∼ A B - B A$
]
#tag("Lie-derivative") Lie derivative *alias* drag derivative
#indent[
  let $v$ generate a one-parameter diffeomorphism $t ⇝ f_t in "Diff"$
  
  let $w_t = #d f_(t)^(-1) (f_t (x) : "base", w(f_t (x)) : "vector")$

  $L_v (w) := lim_(t -> 0) 1/t (w_t - w_0) $

  $L_v (w) = [v,w]$
  
  Jacobi identity $L_([v,w]) = [L_v,L_w]$ or $[v_1,[v_2,w_3]] + [v_3,[v_1,v_2]] + [v_2,[v_3,v_1]] = 0$

  Lie derivative can also be defined for tensor fields ...
]