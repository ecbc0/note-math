#import "../module/module.typ": *
#show: module

Subspace $span(v,w) ↪ ℝ^(p,q)$ 

The following are equivalent 
- $dim(span(v,w)) = 2$
- $v,w$ not co-linear
- $v ∧ w != 0$

if $span(v,w) ≃ ℝ^(1,1)$, possible 

- 2 time(-like) \
  *Example* 
  #indent()[
    $v = vec(1,0), w = vec(a,b)$, where $0 < |b| < |a|$ \
    $⟨ w ⟩^2 = a^2 - b^2 > 0$ \
    Can linearly generate $vec(0,1)$
  ]
- 1 time, 1 space \
  *Example* $v = vec(1,0), w = vec(0,1)$
- 1 time, 1 null \
  *Example* $v = vec(1,0), w = vec(a,a)$
- 2 null \ 
  *Example* $ℝ^(1,1), v = vec(a,a), w = vec(a,-a)$. Note that $v ⋅ w = 2 a^2 != 0$. signature $(1,1)$
- 2 space. \
  *Example* \
  $v = vec(0,1), w = vec(a,b)$, where $0 < |a| < |b|$
- other cases (symmetry of time $<-->$ space)

Consider the general $ℝ^(1,n)$ in $span(v,w)$

#tag("signature-of-2d-subspace-of-spacetime") *Prop* The possible signature of Minkowski $(1,n)$ in $dim = 2$'s $span(v,w)$ is 

- $1,1$
- $0,2$
- $0,1$

*Prop* time-like is only orthogonal to space-like

let $v$ time-like. Using orthogonal decomposition, let $v = v_0, w = w_0 + bf(w)$ then $⟨ v,w ⟩ = v_0 w_0 = 0 ==> w_0 = 0$ ==> $w$ space-like

*Prop* light-like $v$ is not orthogonal to 
- time-like
- light-like other than collinear with itself $k v$ #tag("metric-cannot-distinguish-colinear-light-like")

_Proof_ (@ref-7, (@ref-9, p.13))
#indent[
  Take an orthogonal decomposition according to the situation $ℝ^(1,n) = ℝ_"time" ⊕ ℝ^n_"space"$
  $
    v &=&v_0 + bf(v) \ 
    w &=&w_0 + bf(w)
  $
  - $w$ time-like ==> let $w = w_0$ ==> $⟨ v,w ⟩ = v_0 w_0 != 0$
  - $w$ light-like 
  #indent[
    $
      dmat(delim: #none ,
        ⟨ v ⟩^2,=,0,==>,v_0^2,=,⟨ bf(v) ⟩^2 ;
      ⟨ w ⟩^2,=,0,==>,w_0^2,=,⟨ bf(w) ⟩^2 ;
      ⟨ v,w ⟩,=,0,==>,v_0 w_0,=,⟨ bf(v) , bf(w) ⟩
      )
    $
    We prove that $w_0 ⋅ v = v_0 ⋅ w$
    $
      &w_0 ⋅ v - v_0 ⋅ w \ 
      =& w_0 ⋅ bf(v) - v_0 ⋅ bf(w) \ 
      in& ℝ^n_"space"
    $
    but
    $
      &⟨ w_0 ⋅ bf(v) - v_0 ⋅ bf(w) ⟩^2 \
      =& w_0^2 ⟨ bf(v) ⟩^2 - 2 v_0 w_0 ⋅ ⟨ bf(v) , bf(w) ⟩ + v_0^2 ⟨ bf(w) ⟩^2 \
      =& 0
    $
    space-like but length zero, so $w_0 ⋅ bf(v) - v_0 ⋅ bf(w) = 0$

    ==> $w_0 ⋅ v - v_0 ⋅ w = 0$
  ]
]
*Prop* The signature of the two-dimensional subspace of $ℝ^(1,n)$ cannot be $1,0$ or $0,0$

_Proof_ Use the previous theorem

*Prop* The signature of $span(v,w)$ expanded by two non-collinear time-like $v,w$ is $1,1$

_Proof_ Generate an orthogonal basis of $span(v,w)$ with one of them as the initial basis, but the signature cannot be $1,0$, so it can only be $1,1$

The projection of $v$ is ${k v in ℝ^(1,3) : k in ℝ} ⊂ "cone"$

*Prop* let $⟨ v ⟩^2 = 0$, let $w$ time-like or light-like with $v,w$ non-collinear. Then $span(v,w) ⊄ "cone"$

_Proof_
#indent[
  Known $⟨ v,w ⟩ != 0$

  On the light cone, it is equivalent to solving the quadratic equation for the variable $b$: $0 = (a v + b w)^2 = a b ⋅ ⟨ v,w ⟩ + b^2 ⋅ ⟨ w ⟩^2 = b ( b ⋅ ⟨ w ⟩^2 + a ⋅ ⟨ v,w ⟩)$

  $b != 0 ==> b = cases(
    - (a ⋅ ⟨ v,w ⟩)/(⟨ w ⟩^2) &"if" ⟨ w ⟩^2 != 0,
    ℝ &"if" ⟨ w ⟩^2 = 0
  )$
]
*Prop* The signature of the span $span(v,w)$ of two non-collinear light-like $v,w$ in $ℝ^(1,n)$ is $1,1$ or $0,1$

_Proof_ $ℝ^(0,2)$ Euclidean has no light-like, so there is no other possibility

*Example*
- $ℝ^(1,1)$'s $vec(1,±1)$
- $ℝ^(1,2)$'s $vec(1,1,0),vec(1,0,1)$. Subtracting gives an orthogonal basis $vec(1,1,0),vec(0,1,-1)$

#tag("simultaneity-relativity") Simultaneity in relativity
#indent[
  use orthogonal basis continuation

  in $1,n$, the orthogonal complement of a $dim = n$ space-like subspace is a $dim = 1$ time-like subspace 

  - ($span(v,v') ≃ ℝ^2$ space-like <==> there exists a time-like $w$ that is simultaneously orthogonal to $v,v'$)

  - ($span(v,v') ≃ ℝ^(1,1)$ not space-like <==> there does not exist a time-like $w$ that is simultaneously orthogonal to space-like $v,v'$)

  Intuition: Different space-like subspaces $S,S'$ cannot be calculated using compatible time calculation methods or the time-like orthogonal complements of $S,S'$ are not the same
]
use $ℝ^(1,n)$ orthogonal decomposition

$v = v_0 + bf(v)$

$⟨ v,w ⟩ = v_0 w_0 - ⟨ bf(v) , bf(w) ⟩$
  
- $⟨ v ⟩^2,⟨ w ⟩^2 >= 0$
#indent[
  Categorical discussion of $sign(v_0 w_0)$. The sign of the product of time components of the inner product determines the sign of the inner product
  $ 
    sign(v_0 w_0) 
    &=&sign(v_0 w_0 - ⟨ bf(v) , bf(w) ⟩) \ 
    &=&sign(⟨ v,w ⟩) 
  $
]
- $⟨ v ⟩^2,⟨ w ⟩^2 <= 0$
#indent[
  Categorical discussion of $sign(⟨ bf(v) , bf(w) ⟩)$. The sign of the product of space components of the inner product determines the sign of the inner product
  $ 
    sign(- ⟨ bf(v) , bf(w) ⟩) 
    &=&sign(v_0 w_0 - ⟨ bf(v) , bf(w) ⟩) \ 
    &=&sign(⟨ v,w ⟩) 
  $
]  
in Euclidean, we have #raw("#link(<quadratic-form-inequality-Euclidean>)[inner product inequality]") $|⟨ v,w ⟩|^2 <= abs(v) abs(w)$ ==> #raw("#link(<triangle-inequality-Euclidean>)[triangle inequality]") $|v+w| <= |v|+|w|$

in signature $p,q$ quadratic form, this is generally not true

Derive the $p,q$ quadratic form #raw("#link(<tensor-induced-quadratic-form>)[derived]") to alternating second-order linear 

$⟨ v ∧ w ⟩^2 = det mat(⟨ v ⟩^2 , ⟨ v,w ⟩ ; w v , ⟨ w ⟩^2) = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2$

#tag("quadratic-form-inequality-Minkowski") Inner product inequality
#indent[
  in $ℝ^(1,n)$, let $v,w$ not co-linear, so $dim(span(v,w)) = 2$

  $ℝ^(1,n)$ quadratic form restricted to $span(v,w)$, signature 
  - $1,1$ ==> $⟨ v ∧ w ⟩^2 = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 < 0$ ==> $⟨ v ⟩^2 ⟨ w ⟩^2 < ⟨ v,w ⟩^2$
  - $0,2$ ==> $⟨ v ∧ w ⟩^2 = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 > 0$ ==> $⟨ v ⟩^2 ⟨ w ⟩^2 > ⟨ v,w ⟩^2$
]
_Proof_
#indent[
  $dim(span(v,w)) = 2$ ==> $dim(⋀^2 span(v,w)) = binom(2,2) = 1$

  $span(v,w)$ quadratic form derived to $⋀^2 span(v,w)$ 

  signature

  - $1,1$ of $span(v,w)$ ==> $(-1)$ of $⋀^2 span(v,w)$ 
  
    _Proof_ 
    #indent[
      $1,1$ of $span(v,w)$ orthogonal basis $e_0,e_1$, $e_0^2 = 1, e_1^2 = -1$ ==> $⋀^2 span(v,w)$ orthogonal basis $e_0 ∧ e_1$, $(e_0 ∧ e_1)^2 = e_0^2 ⋅ e_1^2 = -1$
    ]
    ==> $⟨ v ∧ w ⟩^2 < 0$, i.e. inner product inequality

  - $0,2$ of $span(v,w)$ ==> $(+1)$ of $⋀^2 span(v,w)$

    ==> $⟨ v ∧ w ⟩^2 > 0$
]
#tag("triangel-inequality-Minkowski") Triangle inequality
#indent[
  $⟨ v + w ⟩^2 = ⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2$

  - 2 time 
  #indent[
    $⟨ v ⟩^2 > 0$, $|v| := (⟨ v ⟩^2)^(1/2)$

    - $⟨ v,w ⟩ > 0$ ==> $|v+w| > |v| + |w|$
    - $⟨ v,w ⟩ < 0$ ==> $⟨ v + w ⟩^2 < (|v| - |w|)^2$
  ]
  - 1 time, 1 null
  #indent[  
    $⟨ w ⟩^2 = 0$ ==> $⟨ v + w ⟩^2 = ⟨ v ⟩^2 + 2 ⟨ v,w ⟩$
    - $⟨ v,w ⟩ > 0$ ==> $⟨ v + w ⟩^2 > ⟨ v ⟩^2$
    - $⟨ v,w ⟩ < 0$ ==> $⟨ v + w ⟩^2 < ⟨ v ⟩^2$
  ]
]
_Proof_ of 2 time-like
#indent[
  $⟨ v ⟩^2, ⟨ w ⟩^2 > 0$

  $|v| := (⟨ v ⟩^2)^(1/2)$

  - $⟨ v,w ⟩ > 0$
  #indent[
    $⟨ v + w ⟩^2 > 0$

    use #raw("#link(<quadratic-form-inequality-Minkowski>)[]") $⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 = ⟨ v ∧ w ⟩^2 < 0$

    ==> $abs(v) abs(w) < ⟨ v,w ⟩$

    ==> 
    $
      ⟨ v + w ⟩^2 
      &>&⟨ v ⟩^2 + 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &=&(|v| + |w|)^2
    $
    ==> $ |v+w| > |v| + |w| $
  ]
  - $⟨ v,w ⟩ < 0$
  #indent[
    $⟨ v,w ⟩ < 0$ 

    ==> $- abs(v) abs(w) > ⟨ v,w ⟩$

    ==> 
    $ 
      ⟨ v + w ⟩^2 
      &<&⟨ v ⟩^2 - 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &=&(|v| - |w|)^2      
    $
    $sign ⟨ v + w ⟩^2$ is uncertain

    *Example* let $v = vec(1,0)$. let $w$ past time-like
    
    - $w = vec(-1,0) ==> ⟨ v + w ⟩^2 = 0$
    
    - $w = vec(-1,1/2) ==> ⟨ v + w ⟩^2 = -1/4$
    
    - $w = vec(-1/2,0) ==> ⟨ v + w ⟩^2 = 1/4$
  ]
]
Euclidean space can already discuss different convergence directions e.g. whether the sequence $x_n/(|x_n|)$ converges to $𝕊^(n-1)$. Spiral-like things do not converge in direction space

Euclidean space converges to a point in all $𝕊^(n-1)$ directions <==> converges to a point uniformly in all directions, by compactness of $𝕊^(n-1), ℝℙ^(n-1)$

Minkowski space direction space $ℚ^(1,n)(± 1)$ is non compact. Although we have not yet defined the net of $ℚ^(1,n)(± 1)$

The #raw("#link(<net>)[]") of Minkowski space needs to be sufficiently far from the light cone $⟨ v ⟩^2 = 0$ 

#let time = "time"
#let space = "space"

let $ℍ𝕪^n (time\/space) := {x in ℝ^(1,n) : x^2 = ± 1}$

#let future = "future"
#let past = "past"

For convergent timelike directions, they can be separated 
#indent[
  - Future: $v in ℍ𝕪^n (time,future) = {x in ℝ^(1,n) : x^2 = 1, x_0 > 0}$
  - Past: $v in ℍ𝕪^n (time,past) = {x in ℝ^(1,n) : x^2 = 1, x_0 < 0}$
  - Mixed: $ℍ𝕪^n (time)$ quotient away the two leaves $±v$, becoming a projective space type direction space
]
in $ℝ^(1,1)$ 

let $ℍ𝕪 := ℍ𝕪^1 (time,future) = {(t,x) in ℝ^(1,1) : t^2 - x^2 = 1 , t > 0}$

#tag("hyperbolic-complex") Hyperbolic complex number. cf. #raw("#link(<split-complex-number>)[]")
#indent[
  $(x,y) ≃ x + y #i-split = x 𝟙 + y #i-split $
  
  - $𝟙 ⋅ #i-split = #i-split ⋅ 𝟙 = #i-split$
  - $#i-split^2 = 𝟙$
  - $(x_1 + y_1 #i-split) ⋅ (x_2 + y_2 #i-split)$ expand according to the distributive law
]
#tag("hyperbolic-exp") 
#indent[
  $exph z := sum_(n ∈ ℕ) 1/(n!) z^n$

  use binomial

  - $exph (z+w) = (exph z) (exph w)$

  - $exph(t + #i-split x) = exph(t) exph(#i-split x)$

  - $exph (ϕ #i-split) = cosh ϕ + (sinh ϕ) #i-split in ℍ𝕪$, $ϕ in ℝ$. by $cosh^2 - sinh^2 = 1$
    
    #tag("polor-coordinate-hyperbolic") 
    
    #html.elem("img", attrs: (src: "../image/polor-coordinate-hyperbolic.jpeg", width: "50%")) 
    
    Hyperbolic polar coordinates $v = |v| exph(ϕ #i-split)$, $|v| = (v v^*)^(1/2) = ⟨ v ⟩^2^(1/2)$, $ϕ in ℝ$. $ϕ$ can come from $ℍ𝕪$ geodesic length parameter. Also known as hyperbolic angle #tag("hyperbolic-angle")

    Polar coordinates are the decomposition of distance and direction
    
    $|v|$ is not the geodesic length of $ℍ𝕪$, but the length of $v ∈ ℝ^(1,1)$
]
#tag("hyperbolic-isom")
#indent[
  group isomorphism (compare with the case of complex numbers) // link

    - $ℝ$
    - $ℍ𝕪$
    - $#U (1,ℂ_"split")$
    - $SO(1,1)$

    $exph ((ϕ + ψ)#i-split) = exph(ϕ #i-split) exph(ψ #i-split)$

    $ϕ ⇝ sinh ϕ = 1/2 (e^ϕ - e^(-ϕ))$ monotonically increasing
    
    Solving the quadratic equation $x = 1/2 (e^ϕ - 1/e^ϕ) <==> (e^ϕ)^2 - 2 x e^ϕ - 1$ yields the inverse mapping

    $ϕ = sinh^(-1)(x) = log (x^2 + (x^2 + 1)^(1/2))$ 

    inverse $argh : ℍ𝕪 -> ℝ$
    
    $argh(t + x #i-split) = log (x^2 + (x^2 + 1)^(1/2))$

    *Question* Similar to how $ℂ$ uses stereographic projection and $tan^(-1)$, $ℂ_"split"$ uses #raw("#link(<stereographic-projective-hyperbolic>)[hyperbolic projection]") and $tanh^(-1)$ to handle hyperbolic angles or geodesic length mapping $argh$
]
The geodesic coordinates of $ℍ𝕪$ are $exph(#i-split ϕ) , ϕ in ℝ$

Notation conflict. Geodesic coordinates are also usually denoted as $exp$, but not defined using $#i,#i-split$ algebra

Geodesic coordinates are Riemman isomorphic or Euclidean isomorphic

$A ⊂ ℍ𝕪$ compact <==> $1/#i-split logh A ⊂ ℝ$ compact 

Hyperbolic polar coordinates $ℝ^(1,1)(time,future) ≃ ℝ(>=0) × ℍ𝕪$ 
$
  mat(delim: #none,
  ℝ(>=0) × ℝ , --> , ℂ_"split" , --> , ℝ^(1,1) ;
  (r,ϕ) , ~~> , r exph(ϕ #i-split) , ~~> , r (cosh ϕ, sinh ϕ)
  )
$

net structure of $0 in ℝ^(1,1)$
#indent[
  Distance $r = |z|$, direction space $ℍ𝕪$ or its projection $ℍ𝕪 ℙ$, geodesic length $ϕ$ are all $SO(1,1)$ invariant. $SO(1,1)$ is the isometry group of $ℍ𝕪$

  Define (time,future) #raw("#link(<net>)[net]") far away from the light cone $⟨ v ⟩^2 = 0$ 

    $[0,r] × [ϕ - R, ϕ + R]$. $R$ as the geodesic sphere radius
    
    or product net struct of distance space $ℝ_(>= 0)$ and direction space $ℍ𝕪$

    Limit method
    - $r -> 0$ distance continuous
    - $R -> 0$ direction continuous
]
in $ℝ^(1,1)$, time-like and space-like are basically symmetric, so space like net is similar

$f : ℝ^(1,1) -> ℝ^(1,1)$ ((time,future),(time,future)) continuous at $f(0) = 0$ :=
#indent[
  in hyperbolic polar coordinates 
  $
    forall ε, Epsilon > 0 \ 
    exists δ, Δ > 0 \
    forall r < δ, R < Δ \
    (|f| < ε) and (|argh (f)| < Epsilon)
  $
]
Generalization to higher dimensions, rough intuition: 
#indent[
  Minkowski $ℝ^(1,n)$ can be decomposed into a $1$ dim distance space $ℝ_(>= 0)$ and an $n$ dim direction space ${⟨ x ⟩^2 = ±1}$. Let's use their product topology.

  Now we need to define the topology of the direction space $ℚ^(1,n) (± 1)$. We can use the $n$ dim geodesic coordinates of $ℚ^(1,n) (± 1)$. We can use the topology of geodesic coordinates, which is of $ℝ^n$ type or $ℝ^(1,n-1)$ type. By induction on dimension, we need to define the topology of $ℝ^(1,1)$, which again decomposes into a $1$ dim radial space and a $1$ dim direction space $ℚ^(1,1)$. Now the $1$ dim direction space is just a hyperbolic curve, which is a Riemann submanifold, metric inherited from the metric of $ℝ^(1,1)$.

  To define geodesics using pure quadratic form techniques, a geodesic starting from $p in ℚ^(1,n) (± 1)$ is an embedded hyperbola $ℍ𝕪$, defined as $ℚ^(1,n) (± 1)$ and the $2$ dim space spanned by $p$ and $q in p^⟂$.
]

The tangent space of the quadratic manifold $ℚ^(p,q)(± 1)$ can be defined as the (affine) subspace orthogonal to the radial direction

The definition of geodesics of the quadric surface $ℚ^(p,q)(± 1)$ does not require manifold techniques, only use geodesic as secant line of the cross-section span by (radial + tangent) + embedded $ℍ𝕪$ and its geodesic length. *Question* Is there a better and more intuitive definition?

$ℍ𝕪^n (time) = ℚ^(1,n)(1)$ type #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic.jpeg", width: "30%"))

$ℍ𝕪^n (space) = ℚ^(1,n)(-1)$ type 
  #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic-1.jpeg", width: "30%"))
  #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic-2.jpeg", width: "30%"))
  #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic-3.jpeg", width: "30%"))


#tag("geodesic-of-quadratic-manifold") $ℍ𝕪^n (time)$ geodesic
#indent[  
  let $v in ℍ𝕪^n (time) = ℚ^(1,n)(1) = {x_0^2 - (x_1^2 + ⋯ + x_n^2) = 1}$ 
  
  Orthogonal complement space $v^perp ≃ ℝ^n$, $n$ dimensional spacelike 
  
  Affine space $v + v^perp$ as tangent space of $ℍ𝕪^n (time)$

  let $w in v^perp$, $|w| = 1$

  $span(v,w)$ is a two-dimensional subspace, signature $1,1$

  $span(v,w) ≃ ℝ^(1,1)$, intersecting with $ℍ𝕪^n (time)$ to get an embedded $ℍ𝕪$
  
  Obtain the geodesic of base point $v$ in the direction $w$ 
  
  $ ϕ ⇝ v cosh(ϕ) + w sinh(ϕ) $
]
$ℍ𝕪^n (time)$ geodesic sphere
#indent[
  $ 𝔹(v,R) = {v cosh(ϕ) + w sinh(ϕ) in ℍ𝕪^n (time) : w in v^perp , |w| = 1 , ϕ <= R} $

  where $v^⟂ ≃ ℝ^n, {|w| = 1} ≃ 𝕊^(n-1)$
 ]
(time,future)-like net struct of $ℝ^(1,n)$


  #html.elem("img", attrs: (src: "../image/polor-coordinate-hyperbolic.jpeg", width: "40%"))
  #html.elem("img", attrs: (src: "../image/Minkowski-net.jpeg", width: "30%"))


Hyperbolic polar coordinates as the product net struct of distance space $ℝ_(>= 0)$ and direction space $ℍ𝕪^n (time)$
#indent[
  $[0,r] × 𝔹(v,R)$

  Limit method: $r -> 0$, $R -> 0$. or distance continuous + direction continuous
]
$f : ℝ^(1,n) -> ℝ^(1,n)$ (time,future),(time,future) continuous at $f(0) = 0$ :=
#indent[
  in hyperbolic polar coordinates (time,future) 
  $
    forall ε, Epsilon > 0 \ 
    exists δ, Δ > 0 \
    forall r < δ, R < Δ \
    (|f| < ε) and (|argh (f)| < Epsilon)
  $
]
let $v in ℍ𝕪^n (space) = ℚ^(1,n)(-1) = {x_0^2 - (x_1^2 + ⋯ + x_n^2) = -1}$

Orthogonal complement space $v^perp ≃ ℝ^(1,n-1)$

Affine space $v + v^perp$ as tangent space of $ℍ𝕪^n (space)$

let $w in v^perp$, $|w| = 1$

- $w$ timelike
#indent[
  $span(v,w)$ signature $1,1$

  $span(v,w) ≃ ℝ^(1,1)$ intersects with $ℍ𝕪^n (space)$ to obtain an embedded $ℍ𝕪$

  Obtain the geodesic line with base point $v$ and direction $w$ 

  $ ϕ ⇝ w cosh(ϕ) + v sinh(ϕ) $
]
- $w$ spacelike
#indent[
  $span(v,w)$ signature $0,2$

  $span(v,w) ≃ ℝ^2$ intersects with $ℍ𝕪^n (space)$ to obtain an embedded $𝕊$

  Obtain the geodesic line with base point $v$ and direction $w$ 

  $ ϕ ⇝ w cos(ϕ) + v sin(ϕ) $
]
$ℍ𝕪^n (space)$ is not a Euclidean type metric manifold, so the concept of geodesic ball needs to be modified

spacelike direction space $ℍ𝕪^n (space)$'s geodesic coordinates $v^⟂ ≃ ℝ^(1,n-1)$, based on dimension induction, using $ℝ^(1,n-1)$'s net struct, obtain $ℍ𝕪^n (space)$'s local net struct

Since the net is a product type decomposition, it will probably decompose into multiple one-dimensional radii as we induct, which is called #tag("multi-radius-geodesic-ball"). Will the order of decomposition affect it?

Then try to define the space-like net struct of $ℝ^(1,n)$ using hyperbolic polar coordinates i.e. the product net struct of distance and direction

Then we can define $f : ℝ^(1,n) -> ℝ^(1,n)$ (space,space)-like continuous at $f(0) = 0$, or simply spacelike continuous

The case of $(p,q)$ signature should be similar 

The timelike net and spacelike net of $ℝ^(1,n)$ are not equivalent

$f: ℝ^(1,n) -> ℝ^(1,n)$ Minkowski continuity is defined as timelike continuous and spacelike continuous

Minkowski homeomorphic is defined as $f,f^(-1)$ are both Minkowski continuous

all $f in SO(1,n)$ are continuous and homeomorphic

$Lin(ℝ^(1,n) -> ℝ^(1,n))$ General linear functions may not be Minkowski continuous

Geodesic coordinates or hyperbolic polar coordinates are locally Minkowski homeomorphic or locally Euclidean homeomorphic by definition

$ℍ𝕪^n (time)$ is a Riemman manifold, const negative curvature

$ℍ𝕪^n (space)$ is a Lorentz manifold, const positive curvature

$ℍ𝕪^n (space)$ *alias* de Sitter space

#tag("hyperbolic-cosine-formula") Hyperbolic cosine formula
#indent[
  let $v,w in ℍ𝕪$

  let $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    ⟨ v,w ⟩ 
    &=&Re(v ⋅ w^*) \
    &=&Re(exph ((ϕ - ψ) #i-split)) \
    &=&cosh(ϕ - ψ)
  $
  let $v,w$ future time-like. $|v| := (⟨ v ⟩^2)^(1/2)$

  $v/(|v|),w/(|w|) in ℍ𝕪$

  $(⟨ v,w ⟩)/(abs(v) abs(w)) = cosh(ϕ - ψ)$

  Cosine formula
  $ 
    ⟨ v + w ⟩^2 
    &=&⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2 \ 
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) (⟨ v,w ⟩)/(abs(v) abs(w)) \
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) cosh (ϕ - ψ)
  $
]
#tag("isom-top-hyperbolic-Euclidean")

  $ℍ𝕪$ in $ℂ_"split" = ℝ^(1,1)$ limit structure under distance $≃$ geodesic distance $≃$ Euclidean $ℝ^1$ 

_Proof_ 
#indent[
  let $v,w in ℍ𝕪$, $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    ⟨ v - w ⟩^2 
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &=&2 (1 - cosh(ϕ - ψ)) \
    &<=&0 " by " cosh >= 1
  $
  let $"dist"(v,w) := (- ⟨ v - w ⟩^2)^(1/2)$
  
  use $cosh ϕ = 1 <==> ϕ = 0$
  $
    "dist"(v,w) = 0
    &<==>&⟨ v - w ⟩^2 = 0 \
    &<==>&ϕ = ψ \
    &<==>&v = w 
  $
  use $cosh ϕ = 1/2 (e^ϕ + e^(-ϕ))$ continuity
  $ 
    forall ε > 0 , exists δ > 0 , forall ϕ , ψ ∈ ℝ \
    |ϕ - ψ| < δ ==> "dist"(v,w) < ε 
  $
]
Generalize to $ℍ𝕪^(n) subset ℝ^(1,n)$, Euclidean $ℝ^n$

_Proof_ 
#indent[
  use geodesic coordinates

  similar to $ℝ^(1,1)$, try to prove
  $ 
    ⟨ v - w ⟩^2 
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &=&2 (1 - cosh(|ϕ - ψ|)) \
    &<=&0
  $
  where

  - $ϕ,ψ$ are geodesic coordinates of $v,w$
  - $|ϕ - ψ|$ is the Euclid distance in geodesic coordinates
]
The base point of the stereographic projection of the sphere $𝕊^n$ is on $𝕊^n$. More than two coordinate charts are needed to cover all of $𝕊^n$

#tag("stereographic-projective-hyperbolic") time-like hyperboloid $ℍ𝕪^n (time)$ considers stereographic projection, with two base points on the two branches of the hyperboloid respectively, and the projection forms separate singular points in the direction of the light cone

#html.elem("img", attrs: (src: "../image/stereographic-projective-hyperbolic-time-like.jpg", width: "50%"))

space-like hyperboloid, use space-like base points to define hyperbolic projection, and the projection coordinate chart is a lower-dimensional Minkowski space

Should the transformation function be a Minkowski continuous homeomorphism?

#html.elem("img", attrs: (src: "../image/stereographic-projective-hyperbolic-space-like.jpg", width: "50%"))

Perform 3d plotting for the case of $ℝ^(1,2)$, and draw the light cone of the base point (note that the light cone is "vertical") 

Even if the intuition of drawing may be difficult, the analytical calculation should not be difficult

$exph$ can be generalized to $ℍ' ≃ ℝ^(2,2)$ and $𝕆' ≃ ℝ^(4,4)$?