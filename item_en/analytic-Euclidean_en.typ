#import "../module/module.typ": *
#show: module

The power function order in the power series $sum_(0 .. ∞) a_n v^n$ is different, introducing the asymmetry of the coefficient $a_n$, which makes it not necessarily suitable for series rearrangement? Although we will still discuss absolute convergence

One-dimensional case begins

#raw("#link(<geometric-series>)[Geometric series]")

$ |a| < 1 ==> sum_(n ∈ ℕ) a^n = lim_(n -> ∞) (1 - a^(n+1))/(1-a) = 1/(1-a) $

in $𝕂$, $|a b| = |a| |b|$ 

$|a_n v^n| = (|a_n|^(1/n) |v|)^n$

#tag("convergence-radius-1d") Radius of convergence
#indent[
  (cf. #raw("#link(<limsup>)[]"))
  $ 
    R &:=&1/(limits(limsup)_(n -> ∞) {|a_n|^(1/n)}) in [0,∞] \
    "or " 1/R &:=&limsup_(n -> ∞) {|a_n|^(1/n)}
  $
  ==> $|a_n|^(1/n) <= 1/R$
]
#tag("absolute-convergence-analytic-1d") 
#indent[
  $|v| < R$ ==> $a_n v^n$ absolutely converges

  _Proof_ 
  #indent()[  
    use #raw("#link(<geometric-series-test>)[geometric series test]") and $|a_n v^n|^(1/n) = |a_n|^(1/n) |v| <= (|v|)/R < 1$

    $ abs(sum_(n in ℕ) a_n v^n) <= sum_(n ∈ ℕ) ((|v|)/R)^n = 1/(1 - (|v|)/R) $
  ]
  $|v| > R$ ==> $a_n v^n$ absolutely diverges

  _Proof_ $1/R := limsup_(n -> ∞) {|a_n|^(1/n)}$ ==> for infinite terms in $n in ℕ$, $|a_n|^(1/n) ≈ 1/R ==> |a_n|^(1/n) |v| > 1 ==> |a_n v^n| > 1$
]
#tag("uniformaly-absolutely-convergence-analytic")
#indent[
  use $|v| <= r < R$. use #raw("#link(<geometric-serise-test>)[geometric series control]")

  in the closed ball $Closed(𝔹)(r)$ with radius $r < R$, $sum a_n v^n$ uniformly absolutely converges 
]
Polynomial function $v ⇝ sum_(n=0)^N a_n v^n$ is a continuous function

Function defined by power series within the radius of convergence

  $v ⇝ f(x+v) = sum_(n ∈ ℕ) a_n v^n$, $|v| < R$

#tag("analytic-imply-continuous")
#indent[
  $R > 0$ ==> continuous

  $|f(x+v) - f(x)| 
  &=&abs(sum_(n = 0)^∞ a_n v^n - a_0) \
  &<=&sum_(n=1)^∞ ((|v|)/R)^n \
  &=&1/(1 - (|v|)/R) - 1$

  $lim_(v -> 0) 1/(1 - (|v|)/R) - 1 = 0$
]
Extending the #raw("#link(<change-base-point-polynomial>)[]") of polynomials to series

#show "Δ": it => text(it)

#tag("change-base-point-analytic") 
#indent[
  $R > 0$ 
  
  ==> The power series after switching the base point of the power series $sum a_n v^n$ to $x + Δ in 𝔹(x,R)$
  $ 
    f((x+Δ)+v) = sum_(m ∈ ℕ)(sum_(n=m)^∞ a_n (x) binom(n,m) Δ^(n-m)) v^m = sum_(m ∈ ℕ) a_m (x+Δ) v^m
  $
  There is also a non-zero radius of convergence $R' > 0$ at $x+Δ$. (Figure) According to the triangle inequality, $R' >= R - |Δ|$

  #html.elem("img", attrs: (src: "../image/change-base-point-analytic.jpeg", width: "30%"))

]
*Example* 

  - $log(1-z) ∼ sum 1/n z^n$ radius of convergence is $1$ // link to definition of log as inverse of exp

  - $e^z ∼ sum 1/(n!) z^n$ radius of convergence is $∞$

  Convergence problem on the boundary

  - $log(1 - x) ∼ sum 1/n x^n$ 的 radius of convergence is $1$, at $x = 1$ it is the harmonic series $sum 1/n$, absolutely divergent
  - $sum 1/(n^2) x^n$ 的 radius of convergence is $1$, at $x = 1$ absolutely converges to 
  - $sum 1/(n^2) = (π^2)/6$
  
  - Absolute convergence vs convergence: $log(1 - x) ∼ sum 1/n x^n$ converges at $x < 1$

Now consider the higher-dimensional case. $𝕂^d -> 𝕂^(d')$ power series

Note the $|v|$ symmetry, for example $#O (d)$ of $ℝ^d$, $#U (d)$ of $ℂ^d$

Generalize the polynomial function #raw("#link(<polynomial-function>)[]") to the power series $sum A_n (v^n)$

Unlike one-dimensional, in higher dimensions, generally there is no $|A_n (v^n)| = |A_n| |v|^n$. There isn't even a definition for $|A_n|$

#tag("linear-map-induced-norm")
#indent[  
  let $A in Lin(⊗^n 𝕂^d -> 𝕂^(d'))$

  $|A|$ is defined as the uniform control coefficient for all directions $v in 𝕂ℙ^(d-1)$. compactness of $𝕂ℙ^(d-1)$ will make this definition meaningful (and cannot be directly used for general $p,q$ quadratic form direction space $ℚ^(p,q)(± 1)$)


  $ |A| := sup_(v in 𝕂ℙ^(d-1)) |A(v^n)|_(𝕂^(d')) = sup_(v in 𝕂^d) ( |A(v^n)| )/( |v|^n ) $

  so that (for all direction) $ |A (v^n)| <= |A| |v|^n $ 

  and

  - $|λ A| = |λ| |A|$
  - $|A + B| <= |A| + |B|$

  Compared to the $𝕂^1$ case, the computability of the definition of $𝕂^d$ is low
]
#tag("convergence-radius") radius of convergence 

$ R = 1/(limits(limsup)_(n -> ∞) {|A_n|^(1/n)}) $

#tag("absolute-convergence-analytic")
#indent[
  #raw("#link(<absolute-convergence-analytic-1d>)[same as]") $𝕂^1$

  - $|v| < R$ ==> $A_n (v^n)$ absolutely converges

  - There exists a direction $v/(|v|)$, forall $|v| > R$, $A_n (v^n)$ is absolutely divergent
]
_Proof_ (of divergence) 
#indent[
  use #raw("#link(<linear-map-induced-norm>)[]") $|A_n|$, there exists $v_n in 𝕂ℙ^(d-1)$ such that $|A_n ((v_n)^n)| ≈ |A_n|$

  use $limsup$ definition, for infinitely many terms $n in ℕ$, $|A_n|^(1/n) ≈ limsup {|A_n|^(1/n)} = 1/R$

  use passing to compact $𝕂ℙ^(d-1)$ and the subsequence of $v_n$ converges to $v$

  ==> for infinitely many terms $n in ℕ$, $|A_n ((v_n)^n)| ≈ |A_n (v^n)|$

  ==> for infinitely many terms $n in ℕ$, $|A_n (v^n)|^(1/n) ≈ limsup {|A_n|^(1/n)} = 1/R$

  Scale $w/(|w|) := v in 𝕂ℙ^(d-1)$ to $w in 𝕂^d$

  ==> $|A_n (w^n)| = |A_n (v)| |w|^n $
  
  let $|w| > R$

  ==> for infinitely many terms $n in ℕ$, $|A_n|^(1/n) |w| > 1 ==> |A_n (w^n)| > 1$
]
Another point of view: for each direction $v in 𝕂ℙ^(d-1)$, consider the radius of convergence $R(v)$ of the $𝕂$ line embedding. then let $R = inf_(v in 𝕂ℙ^(d-1)) R(v)$

Similar to one-dimensional case also have 

- #raw("#link(<uniformaly-absolutely-convergence-analytic>)[]")
  
- #raw("#link(<analytic-imply-continuous>)[]")

- #raw("#link(<change-base-point-analytic>)[]")

for $f(x+v) = sum A_n (v^n)$, the $n$-th order #raw("#link(<difference-polynomial>)[difference]") gives 

$ n! A_n (v_1 ⋯ v_n) + o(v^n) $

Replace $v_k -> t_k v_k$

$
  t_1 ⋯ t_n n! A_n (v_1 ⋯ v_n) + o(t_1 ⋯ t_n)
$

The power series converges uniformly and absolutely within the radius of convergence, so the limit can be exchanged

$lim_(t_1 ,…, t_k -> 0) 1/(t_1 ⋯ t_n)$ can recover the $n$-th order monomial

#tag("differential") 
#indent[
  $n$th order differential $#d^n f(x) in Lin(⊙^n 𝕂^d -> 𝕂^(d'))$
  $
    #d^n f(x) (v_1 ⋯ v_n) &:=&n! A_n (v_1 ⋯ v_n) \
    
    &=&lim_(t_1 ,…, t_k -> 0) 1/(t_1 ⋯ t_n) sum_(B ⊂ {1,...,n}) (-1)^(|B| - n) f(x + sum_(b in B) t_b v_b)
  $
]
*Example* 
#indent[
  $ #d f(x)(v) &=&lim_(t -> 0) 1/t (f(x + t v) - f(x)) $
  $ 
    #d^2 f(x)(v_1 v_2) = lim_(t_1,t_2 -> 0) 1/(t_1 t_2) 
      &+&f(x + t_1 v_1 + t_2 v_2) \
      &-&f(x + t_1 v_1) \
      &-&f(x + t_2 v_2) \
      &+&f(x)
  $
]  
The definition of difference and differential can be used for any function, it does not need to be a function defined by power series

#tag("polynomial-expansion") Polynomial expansion $ f(x+v) ∼ sum 1/(n!) #d^n f(x)(v^n) $ *alias* power series, Taylor expansion, Taylor series

#tag("polynomial-approximation") Polynomial approximation $ f(x+v) ∼ sum_(n=0..N) 1/(n!) #d^n f(x)(v^n) + o(v^N) $ *alias* Taylor expansion, Taylor approximation, Taylor polynomial

#tag("derivative") difference quotient *alias* derivative, directional derivative 

$ (∂ f)/(∂ v) (x) := #d f(x)(v) = lim 1/t (f(x + t v) - f(x)) $

Successive difference and difference quotient $#d^2 f(x)(v_1 v_2) =$
$
  #d^2 f(x)(v_1 v_2) 
  &=&lim_(t_2) 1/(t_2) 
  sum_(B_2 ⊂ {2}) lim_(t_1) 1/(t_1) 
  sum_(B_1 ⊂ {1}) (-1)^(|B_1|+|B_2|-2) 
  f(x + ...) \

  &=&lim_(t_2) 1/(t_2) ((∂ f)/(∂ v_1) (x + t_2 v_2) - (∂ f)/(∂ v_1) (x)) \

  &=&(∂^2 f)/(∂ v_2 ∂ v_1) (x)
$
#raw("#link(<successive-difference>)[Successive difference]") does not depend on the order + limit exchange ==> $(∂^2 f)/(∂ v_1 ∂ v_2) = (∂^2 f)/(∂ v_2 ∂ v_1)$

#tag("successive-derivative") Successive difference quotient   
  $ 
    (∂^n f)/(∂ v_1 ⋯ ∂ v_n) (x) 
    &:=&lim_(t_n -> 0) 1/(t_n) ((∂ f)/(∂ v_1 ⋯ ∂ v_(n-1)) (x + t_n v_n) - (∂ f)/(∂ v_1 ⋯ ∂ v_(n-1)) (x)) \ 
    &=&#d^n f(x)(v_1 ⋯ v_n) 
  $
==> Directional derivative representation of power series $f(x+v) = sum 1/(n!) (∂^n f)/(∂ v^n) (x)$

The concept of successive difference quotient uses the subtraction of tangent vectors at different points, implicitly using the concept of connection

#tag("partial-derivative") Partial derivative
#indent[
  Use coordinates. let $e_k$ be the basis of $𝕂^d$. so $t_k e_k$ $<-->$ coordinate $k$ component $t_k$

  $ (∂ f)/(∂ x_k) (x) := (∂ f)/(∂ e_k) (x) = lim_(t_k -> 0) 1/(t_k) (f(x + t_k e_k) - f(x)) $

  and so on
]
let $v = a_1 e_1 + ⋯ + a_d e_d$. use #raw("#link(<successive-derivative>)[]"), #raw("#link(<partial-derivative>)[]")

==> Partial derivative representation of power series (also cf. #raw("#link(<multi-combination>)[]"))
$ 
  f(x+v) 
  &=&
    sum_n 1/(n!) 
    sum_(i_1 ⋯ i_n = 1 ,…, d) 
    (∂^n f)/(∂ x_(i_1) ⋯ ∂ x_(i_n)) (x)
    a_(i_1) ⋯ a_(i_n) \
  &=&
    sum_n 1/(n!) 
    sum_(k_1 + ⋯ + k_d = n)
    binom(n, k_1 ⋯ k_d) 
    (∂^n f)/(∂ x_1^(k_1) ⋯ ∂ x_d^(k_d)) (x)
    a_1^(k_1) ⋯ a_d^(k_d)
$
when domain = $𝕂^1$, $f(x+v) = sum (#d^n f)/(#d x^n) (x) v^n$

define $∂_(x_k) := e_k$ and dual basis $#d x_k$ with $#d x_k (a_1 ∂_(x_1) + ⋯ + a_d ∂_(x_d)) = a_k$

==> The partial derivative representation of the differential as coefficients of a symmetric tensor -- base expansion
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
if use range space coordinates $f = vec(f_1 , dots.v , f_(d'))$ then the first-order differential $#d f$ is represented as the Jacobi matrix #tag("Jacobi-matrix")
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
      𝕂^d ,⟶, Lin(⊙^n 𝕂^d -> 𝕂^(d')) ;
      x ,⟿, #d^n f(x)
    ) 
  $
Taking the range $Lin(⊙^n 𝕂^d -> 𝕂^(d'))$ as a linear space, and using the power norm, it can be expanded as a power series

#tag("successive-differential")
#indent[
  isomorphism
  $
    mat( delim: #none ,
      Lin(⊙^m 𝕂^d -> Lin(⊙^n 𝕂^d -> 𝕂^(d'))) ,⟶, Lin(⊙^(m+n) 𝕂^d -> 𝕂^(d')) ;
      #d^m (#d^n f) ,⟿, #d^(m+n) f
    )
  $
  with 
  $ 
    #d^m (#d^n f) (v_1 ⋯ v_m) 
    = (v_(m+1) ⋯ v_(m+n) ⇝ #d^(m+n) f (v_1 ⋯ v_m v_(m+1) v_(m+n))) 
  $

  same norm $|#d^m (#d^n f)| = |#d^(m+n) f|$

  same convergence radius (#raw("#link(<exponential-root-of-power-function>)[use]") $lim_(m -> ∞) (m+n)^(1/m) = 1$)
]
_Proof_ (draft) Commutativity of derivatives $#d^m, (v_1 ⋯ v_m)$ and $#d^n, (v_(m+1) ⋯ v_(m+n))$. norm estimation $|#d^(m+n) f (v_1 ⋯ v_(m+n))| <= |#d^(m+n) f| |v_1| ⋯ |v_(m+n)|$

*Abbreviation* $#d^m (#d^n f) = #d^(m+n) f$ Although the notation conflicts

==> Power series of the differential function $#d^n f (x+v) = sum_(m) 1/(m!) #d^(m+n) f (x) (v^n)$

#tag("anti-derivative")

  - $𝕂 -> 𝕂$
  
    use $(#d)/(#d v) v^n = n v^(n-1)$
    
    ==> $((#d)/(#d v))^(-1) sum_(n >= 0) a_n v^n -> sum_(n >= 0) (a_n)/n v^(n+1)$. The zero-order term is uncertain

  - $𝕂^d -> 𝕂^(d')$ ...

#tag("mean-value-theorem-analytic-1d") Differential mean value theorem
- Intermediate value ver. $ exists c in (a,b), f(b) - f(a) = (b - a) f'(c) $
- compact uniform linear control ver. $ |f(b) - f(a)| <= |b - a| sup_(c in [a,b]) |f'(c)| $
_Proof_
#indent[
  

  use $f(x) - (f(b) - f(a))/(b - a)$ reduce to

  $ f(a) = f(b) = 0 ==> exists c in (a,b), f'(c) = 0 $

  - $f ≡ 0$ 
  - $exists a',b' in (a,b), a' < b', sign f(a') ≠ sign f(b')$ 
  
  ==> $exists c in (a',b'), f'(c) = 0$ _Proof_ by #raw("#link(<mean-value-theorem-continuous>)[intermediate value theorem]")

  The intermediate value theorem uses the complete order of $ℝ$
  
  The order of $ℝ_(>= 0)$ used in the absolute value estimate may not have enough strength to obtain the mean value theorem of derivatives
]
#tag("fundamental-theorem-of-calculus") Fundamental Theorem of Calculus 

$ f(b) - f(a) = integral_a^b f'(x) #d x $

Mean Value Theorem compact uniform linear control ver. + compact partition uniform approximation

#tag("mean-value-theorem-analytic") Mean Value Theorem for $ℝ^d -> ℝ^d'$. Reduce to the case of $ℝ$ using the embedded line $t -> x + t v$
#indent[
  - First order 
  #indent[
    $ f(x+v) = f(x) + integral_0^1 #d t space f'(x + t v) v $ 
    
    by Fundamental Theorem of Calculus and #raw("#link(<chain-rule-1d>)[]") and $(#d)/(#d t) (x + t v) = v$
  
    remainder estimation, uniform linear control
    $ 
      f(x+v) - f(x) 
      &=&o(1) "or" O(v) \
      &<=&|v| sup_(t in [0,1]) |f'(x + t v)| 
    $
    ]
  - Higher order 
  #indent[
    $ f(x+v) = sum_(n=0)^m 1/(n!) #d^n f(x)(v^n) + integral_0^1 #d t (1-t)^m/(m!) #d^(m+1) f(x + t v) (v^(m+1)) $

    by integration by parts 
    $
      1/m! #d^m f (x + t v) v^m 
      &=&- (((1-t)^m)/(m!) #d^m f(x + t v) v^m)|_0^1 \
      &=&- integral_0^1 #d t (#d)/(#d t) (((1-t)^m)/(m!) #d^m f(x + t v) v^m) \
      &=&integral_0^1 #d t (((1-t)^(m-1))/((m-1)!) #d^m f(x + t v) v^m) \
      &quad&  - integral_0^1 #d t (((1-t)^m)/(m!) #d^(m+1) f(x + t v) v^(m+1))
    $
    remainder estimation, uniform $m+1$ order power control

    $ f(x+v) - sum_(n=0)^m 1/(n!) #d^n f(x)(v^n) 
    &=&o(v^m) "or" O(v^(m+1)) \
    &<=&1/(m+1)! |v|^(m+1)  sup_(t in [0,1]) |#d^(m+1) f (x + t v)| $
  ]
]
let power series $sum A_n (v^n)$

#tag("convergence-domain") domain of convergence := ${v in 𝕂^d : lim_(N -> ∞) sum_(n=0)^N A_n (v^n) "converge"}$

Calculating the coefficients after switching the base point of the power series uses the exchange of summation

for polynomials, the summation is finite, the order of summation is exchanged, so switching the base point is well-defined #raw("#link(<change-base-point-polynomial>)[]")

However, the limit of infinite summation, if not absolutely convergent, is not always compatible with changing the order of summation #raw("#link(<series-rearrangement>)[]")

Switching the base point of a power series may change the domain of convergence

*Example*
#indent[
  $ 1/(1-z) = sum z^n = lim_(n -> ∞) (1 - z^(n+1))/(1-z) $ 

  with $z^(n+1) = |z|^(n+1) e^(#i (n+1) θ)$

  The domain of convergence is $|z| < 1$

  Switching the base point causes the domain of convergence to change
    
    - $1/2 in {|z| < 1}$, 
      $w = z - 1/2$, 
      $1/(1-z) = 1/(1/2 - (z - 1/2)) = 2/(1 - 2 w)$

      domain of convergence ${z = w + 1/2 : |w| < 1/2}$, open ball of radius $1/2$

    - $-1/2 in {|z| < 1}$
      $w = z + 1/2$,
      $1/(1-z) = 1/(3/2 - (z + 1/2)) = (2/3)/(1 - 2/3 w)$

      domain of convergence ${z = w - 1/2 : |w| < 3/2}$, open ball of radius $3/2$
]
Continuously switching the base point can "change" the value to which it converges

*Example* 
#indent[
  - $log (1-z) ∼ sum 1/n z^n $
  #indent[
    let $Δ_1 ,…, Δ_m in ℂ$ with $Δ_1 + ⋯ + Δ_m = 0$

    let $sum 1/n z^n$ successively switch base points $Δ_1 , Δ_1 + Δ_2 ,…, Δ_1 + ⋯ + Δ_m in ℂ$, and finally return to $0$
    
    if each displacement $Δ_(i+1)$ is within the domain of convergence of the base point $Δ_1 + ⋯ + Δ_i$, and the power series limit is used
    
    then the final power series is $2 k π #i + sum 1/n z^n$, where $k$ is the number of turns the path formed by $Δ_1 ,…, Δ_m$ makes around $0$
    ]
  - $log(z)$. Rotating $k$ turns around $1$ yields $2 k π #i + log(z)$

  - $z^(1/2) = e^(1/2 log z)$
    
  #indent[Rotating $k$ turns around $1$ yields $(-1)^k z^(1/2)$, by $e^(1/2 ⋅ 2 k π #i) = (-1)^k$]
]
#tag("analytic-continuation")

- Well-defined continuation region: not affected by switching base points

- Maximal continuation region: cannot be well-definedly continued anymore

*Example* 
#indent[
  - $log(1-z) ∼ sum 1/n z^n$ radius of convergence $1$
  #indent[
    Cannot be well-definedly continued to $ℂ ∖ {1}$. by rotating $k$ turns around $0$ yields $2 k π #i + log(1-z)$
    
    The maximal well-defined continuation region is $ℂ ∖ {x + #i 0 : x <= -1}$
  ]
  - $1/(1-z) ∼ sum z^n$ radius of convergence $1$
  #indent[
    Can be well-definedly continued to $ℂ ∖ {1}$, coinciding with $1/(1-z)$ defined by $ℂ$ division

    $#d _(z) log(1-z) = 1/(1-z)$, or $#d _(z) log(z) = 1/z$
  ]
  - $1/x, x in (-∞,0)$ and $1/x, x in (0,+∞)$ are already maximal continuations
  #indent[
    The maximal continuation of $1/z$ is $ℂ ∖ 0$

    The power series coefficients of $1/z$ contain complex numbers, unlike $1/x$ which only contains real numbers
  ]
]
#tag("analytic-function") Analytic function := Power series with non-zero radius of convergence at any point + maximal analytic continuation 

#tag("analytic-isomorphism") Analytic isomorphism := $f : D <-> D'$
  - Analytic function
  - $forall x in D, #d f (x) in GL(𝕂^d)$
  - same for $f^(-1)$
*Example* 
#indent[
  - $A in GL(d,𝕂)$ is an analytic isomorphism

  - $f(x) = 1/3 x^3 + x$ 
  #indent[
    $(#d f)/(#d x) = x^2 + 1 > 0$ ==> $(#d f^(-1))/(#d y) > 0$, $f,f^(-1)$ monotonically increasing ==> $f$ is $ℝ -> ℝ$ analytic isomorphism
    
    $f(z) = 1/3 z^3 + z = 0$, $(#d f)/(#d z) = z^2 + 1$ in $ℂ$ has solutions $± #i$ ==> $#d f (± #i) ∉ GL$ ==> $f$ is not $ℂ -> ℂ$ analytic isomorphism
  ]
  - $f(x) = e^x$ with $(#d f)/(#d x) = e^x > 0$ is $ℝ -> ℝ_(>0)$ analytic isomorphism
  #indent[
    $f(z) = e^z$ with $(#d f)/(#d z) = e^z != 0$ is a local analytic isomorphism, but not a $ℂ -> ℂ ∖ {0}$ analytic isomorphism. Non-injective: $e^(0) = e^(#i 2 π) = 1$
  ]
]
Attempt to define distance on the power series space. Inspired by
#indent[
  $|A_n (v^n)|^(1/n) <= |A_n|^(1/n) |v|$

  $1/R = limsup {|A_n|^(1/n)}$

  Triangle inequality $|A + B|^(1/n) <= |A|^(1/n) + |B|^(1/n)$ _Proof_ by both sides $n$ power, binomial expansion
]
#tag("power-series-space") 
#indent[  
  Power series space
  
    $ ⨁_(n = 1)^∞ Lin(⊙^n 𝕂^d -> 𝕂^(d')) $

    #raw("#link(<net>)[]") (note: $|A|$ is #raw("#link(<linear-map-induced-norm>)[]"))
  
    $ 𝔹(A,ε) := {B : forall n in ℕ_(>= 1), |A_n - B_n|^(1/n) < ε} $ (or $|A_n - B_n| < ε^n$)

  Distance

    $ "dist"(A,B) = sup_(n >= 1) |A_n - B_n|^(1/n) $ 
    
    as uniform control for forall $n >= 1$
]
Power series space is a distance space and complete. _Proof_ by inheriting from $| |^(1/n)$ of forall $n >= 1$

$"dist"$ is not a norm, eg. $|λ A_n|^(1/n) = |λ|^(1/n) |A_n|^(1/n)$

The closeness of the radius of convergence $R_A ≈ R_B$
#indent[
  $|B|^(1/n) <= |A|^(1/n) + |A - B|^(1/n)$

  $|A|^(1/n) <= |B|^(1/n) + |A - B|^(1/n)$

  ==> $|A - B|^(1/n) >= | |A|^(1/n) - |B|^(1/n) |$

  $|A_n - B_n|^(1/n) < ε$

  ==> $| |A_n|^(1/n) - |B_n|^(1/n) | < ε$

  ==> $|A_n|^(1/n) - ε <= |B_n|^(1/n) <= |A_n|^(1/n) + ε$

  ==> $limsup {|B_n|^(1/n)} ≈ limsup {|A_n|^(1/n)}$

  ==> $R_A ≈ R_B$
]
The closeness of the converged values
#indent[
  $abs( 
    sum_(n >= 1) A_n (v^n) - sum_(n >= 1) B_n (v^n) 
  )
  &<=&sum_(n >= 1) |A_n - B_n| |v|^n \ 
  &<=&sum_(n >= 1) ε^n |v|^n \
  &=&1/(1 - ε |v|) - 1 \
  &->&0$
]
#tag("Sobolev-space") for Sobolev anayltic space, try use almost-everywhere analytic + $integral abs(1/n! #d^n f)^(1/n)$ as the control function to approximate the objective function $integral abs(1/n! ϕ_n - 1/n! #d^n g)^(1/n) <= integral abs(1/n! #d^n f)^(1/n)$, where $ϕ_n$ is the #tag("weak-differential") of $ϕ$. (note: $|A|$ is #raw("#link(<linear-map-induced-norm>)[]")) Or just use the almost-everywhere analytic space with analytic integral norm restrictions, or perform Cauchy net completion of this space with integral norm

Weaker net control
#indent[
  let $r < R_A$

  use data $A,ε$ and new data $r$

  $ {B : sum_(n >= 1) |A_n - B_n| r^n < ε} $

  *Example* including the truncated polynomial approximation of $A$, i.e. Taylor polynomial by $sum_(n = 0 .. ∞) |A_n| r^n < ∞ ==> lim_(N -> ∞) sum_(n = N .. ∞) = 0$
]
For symmetry considerations, the definition of analytic should not depend on the specific power series expansion base point

Comparison of power series distance control at different base points
#indent[
  For base point $x$, power series $A,B$ with $"dist"(A,B) = ε$

  Simultaneously switch the base point to $x + Δ$

  Coefficient estimation

  $ 
    |A_m (x+Δ) - B_m (x+Δ)| 
    &=&abs( 
      sum_(n=m>=1)^∞ (A_n (x) - B_n (x)) binom(n,m,n-m) Δ^(n-m)
    ) \
    &<=&sum_(n=m>=1)^∞ ε^n binom(n,m,n-m) |Δ|^(n-m) \ 
    &=&ε^m sum_(p = 0)^∞ binom(p+m , m, p) |ε Δ|^p ("use" p = n-m) \
    &=&ε^m 1/((1-|ε Δ|)^(m+1)) 
  $

  ==> $ |A_m (x+Δ) - B_m (x+Δ)|^(1/m) <= ε 1/((1-|ε Δ|)^(1 + 1/m)) $

  $1/((1-|ε Δ|)^(1 + 1/m)) <= 1/((1-|ε Δ|)^2)$ decreases with respect to $ε$

  ==> $ ε = "dist"(A,B)(x) -> 0 ==> "dist"(A,B)(x + Δ) -> 0 $

  let $r < R(x)$

  ==>

  $ lim_("dist"(A,B)(x) -> 0) sup_(|Δ|<=r) {sum |A_n (x+Δ) - B_n (x+Δ)| |v|^n} = 0 $ 

  Continue, finitely many times

  let $x_i = x + Δ_1 + ⋯ + Δ_i$

  ==> The power series distance at one point $x$ uniformly controls the power series distance of the region $⋃_(i=1)^N overline(𝔹)(x_i , r_i)$

  Although this still cannot maintain the well-definedness of analytic continuation, e.g. $log(z)$
]
#tag("analytic-space")
#indent[
  Net of analytic space

  let $f$ be analytic, with domain $D_f$

  The #raw("#link(<net>)[net]") of $f$
  #indent[
    - let $ε > 0$

    - let $D ⊂ D_f$ and $D$ compact and transitively connected, i.e. for $a,b in D$, there exists a construction $limits(⋃)_(i=1)^N overline(𝔹)(x_i , r_i)$ connecting $x_1 = a, x_N = b$ 
    
    - forall analytic $g$ with property \
      $g$ domain of convergence contains $D$, $sup_(x in D) "dist"( 1/(n!) #d^n f , 1/(n!) #d^n g )(x) < ε$
  ]

  Net's approximation method: $D -> D_f$ and $ε -> 0$

  when verifying the property of the net "$forall B',B'' in "Net", exists B in "Net", B ⊂ B' ∩ B''$"
  
  if $D',D''$ are separated, it is necessary to construct a transitively connected $D$ containing $D',D''$

  A possible construction method: connect $D',D''$ with a compact polyline, such that the bounded ball of $"dist"( 1/(n!) #d^n f , 1/(n!) #d^n g )(x) < ε$ covers every point on the path, use finite covering
]
Power series space and analytic space deal with $n >= 1$ order differential coefficients

The $n = 0$ order differential coefficient has basically no effect

The modification of the $n = 0$ coefficient of a base point simultaneously acts on other base points, and does not affect the $n >= 1$ coefficient, $A_m (x+Δ) = sum_(n=m>=1)^∞ A_n (x) binom(n,m,n-m) Δ^(n-m)$

compare the net of analytic space vs the net of continuous function space (should be something compact open topology?)

in analytic space and its net

  - #tag("inverse-op-continous-in-analytic-space") $f ≈ g$ ==> $f^(-1) ≈ g^(-1)$

  - #tag("compose-op-continous-in-analytic-space") $f_1 ≈ f_2$ and $g_1 ≈ g_2$ ==> $f_1 ∘ g_1 ≈ f_2 ∘ g_2$

  Or rather, the $#none ^(-1) , ∘$ operators are continuous functions of analytic space

  same for linear $f + g$, multiplication $f g$, inversion $1/f$?

*Example* 

  - Affine linear
  #indent[
    $f(x+v) = A_0 + A_1 v$
    
    radius of convergence $∞$
    
    The first-order term of the power series of any base point is const $A_1$
    
    A uniform distance can be defined in the affine linear space $|A_1 - B_1| = sup_(v in 𝕂ℙ^(d-1)) |(A_1 - B_1)(v)|$
  ]
  - Polynomial mapping
  #indent[
    $f(x+v) = A_0 + A_1 v + ⋯ + A_n v^n$

    radius of convergence $∞$

    A uniform distance cannot be defined in the polynomial function space
  ]
#tag("connected-analytic") in analytic space, $1/x, x in (-∞,0)$ and $1/x, x in (0,+∞)$ are in different connected components? 

The properties of singularities within connected components are invariant under analytic homeomorphism

#tag("homotopy-analytic") analytic #raw("#link(<homotopy>)[homotopy]")