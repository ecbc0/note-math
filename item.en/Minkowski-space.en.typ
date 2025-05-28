#import "/module/module.typ": *
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
    $w^2 = a^2 - b^2 > 0$ \
    Can linearly generate $vec(0,1)$
  ]
- 1 time, 1 space \
  *Example* $v = vec(1,0), w = vec(0,1)$
- 1 time, 1 null \
  *Example* $v = vec(1,0), w = vec(a,a)$
- 2 null \ 
  *Example* $ℝ^(1,1), v = vec(a,a), w = vec(a,-a)$. Note $v ⋅ w = 2 a^2 != 0$. signature $(1,1)$
- 2 space. \
  *Example* \
  $v = vec(0,1), w = vec(a,b)$, where $0 < |a| < |b|$
- other cases (symmetry of time $<-->$ space)

use signature inertia, orthogonal basis continuation /* link */ ==> Minkowski $(1,n)$ The possible signature of $span(v,w)$ in $dim = 2$ is 

- $1,1$
- $0,2$

#tag("time-space-decompostion") Orthogonal decomposition
#indent[
  use orthogonal basis continuation

  in $1,n$, the orthogonal complement of a $dim = n$ space-like subspace is a $dim = 1$ time-like subspace 

  ==> ($span(v,v') ≃ ℝ^2$ space-like <==> there exists a time-like $w$ orthogonal to $v,v'$ simultaneously)

  ==> ($span(v,v') ≃ ℝ^(1,1)$ not space-like <==> there does not exist a time-like $w$ orthogonal to space-like $v,v'$ simultaneously)

  Intuitive: different space-like subspaces $S,S'$ cannot use compatible time calculation methods or the time-like orthogonal complements of $S,S'$ are different
]
in coordinate

#let time = "time"
#let space = "space"

$v = v.time + v.space$

$v w = v.time ⋅ w.time - v.space ⋅ w.space$
  
- $v^2,w^2 >= 0$
#indent[
  Categorical discussion $sign(v.time ⋅ w.time)$. The sign of the product of the time components of the inner product determines the sign of the inner product
  $ 
    sign(v.time ⋅ w.time) 
    &= sign(v.time ⋅ w.time - v.space ⋅ w.space) \ 
    &= sign(v w) 
  $
]
- $v^2,w^2 <= 0$
#indent[
  Categorical discussion $sign(v.space ⋅ w.space)$. The sign of the product of the space components of the inner product determines the sign of the inner product
  $ 
    sign(- v.space ⋅ w.space) 
    &= sign(v.time ⋅ w.time - v.space ⋅ w.space) \ 
    &= sign(v w) 
  $
]  
in Euclidean, we have #link(<quadratic-form-inequality-Euclidean>)[inner product inequality] $|v w|^2 <= abs(v) abs(w)$ ==> #link(<triangle-inequality-Euclidean>)[triangle inequality] $|v+w| <= |v|+|w|$

in signature $p,q$ quadratic form, this is generally not true

Derive the $p,q$ quadratic form #link(<tensor-induced-quadratic-form>)[derived] to alternating second-order linear 

$(v ∧ w)^2 = det mat(v^2 , v w ; w v , w^2) = v^2 w^2 - (v w)^2$

#tag("quadratic-form-inequality-Minkowski") Inner product inequality
#indent[
  in $ℝ^(1,n)$, let $v,w$ not co-linear, so $dim(span(v,w)) = 2$

  $ℝ^(1,n)$ quadratic form restricted on $span(v,w)$, signature 
  - $1,1$ => $(v ∧ w)^2 = v^2 w^2 - (v w)^2 < 0$ => $v^2 w^2 < (v w)^2$
  - $0,2$ => $(v ∧ w)^2 = v^2 w^2 - (v w)^2 > 0$ => $v^2 w^2 > (v w)^2$
]
*Proof*
#indent[
  $dim(span(v,w)) = 2$ ==> $dim(⋀^2 span(v,w)) = binom(2,2) = 1$

  $span(v,w)$ quadratic form derives to $⋀^2 span(v,w)$ 

  signature

  - $1,1$ of $span(v,w)$ ==> $(0,1)$ of $⋀^2 span(v,w)$ 
  
    *Proof* 
    #indent[
      $1,1$ of $span(v,w)$ orthonormal basis $e_0,e_1$, $e_0^2 = 1, e_1^2 = -1$ ==> $⋀^2 span(v,w)$ orthonormal basis $e_0 ∧ e_1$, $(e_0 ∧ e_1)^2 = e_0^2 ⋅ e_1^2 = -1$
    ]
    ==> $(v ∧ w)^2 < 0$, i.e. inner product inequality

  - $0,2$ of $span(v,w)$ ==> $(1,0)$ of $⋀^2 span(v,w)$

    ==> $(v ∧ w)^2 > 0$
]
#tag("triangel-inequality-Minkowski") triangle inequality
#indent[
  $(v+w)^2 = v^2 + 2 v w + w^2$

  - 2 time 
  #indent[
    $v^2 > 0$, $|v| := (v^2)^(1/2)$

    - $v w > 0$ ==> $|v+w| > |v| + |w|$
    - $v w < 0$ ==> $(v+w)^2 < (|v| - |w|)^2$

    (cf. #link(<same-time-direction>)[])
  ]
  - 2 space
  #indent[
    $v^2 < 0$, $|v| := (-v^2)^(1/2)$

    - $v w < 0$ ==> $|v+w| > |v| + |w|$
    - $v w > 0$ ==> $(v+w)^2 > - (|v| - |w|)^2$

    symmetric to case (2 time)
  ]
  - 1 time, 1 space. no special result?

  - 1 time, 1 null
  #indent[  
    $w^2 = 0$ ==> $(v+w)^2 = v^2 + 2 v w$

    time $v$, null $w$ 
    - $v w > 0$ ==> $(v+w)^2 > v^2$
    - $v w < 0$ ==> $(v+w)^2 < v^2$
  ]
  - 2 null 
  #indent[
    $(v+w)^2 = 2 v w$ 
    
    in coordinate, $vec(a,a) ⋅ vec(b,-b) = 2 a b$
  ]
]
*Proof* 
#indent[
  - 2 time
  #indent[
    $v^2, w^2 > 0$

    $|v| := (v^2)^(1/2)$

    - $v w > 0$
    #indent[
      $(v+w)^2 > 0$

      use #link(<quadratic-form-inequality-Minkowski>)[] $v^2 w^2 - (v w)^2 = (v ∧ w)^2 < 0$

      ==> $abs(v) abs(w) < v w$

      ==> 
      $
        (v+w)^2 
        &> v^2 + 2 abs(v) abs(w) + w^2 \
        &= (|v| + |w|)^2
      $
      ==> $ |v+w| > |v| + |w| $
    ]
    - $v w < 0$
    #indent[
      $v w < 0$ 

      ==> $- abs(v) abs(w) > v w$

      ==> 
      $ 
        (v+w)^2 
        &< v^2 - 2 abs(v) abs(w) + w^2 \
        &= (|v| - |w|)^2      
      $
      $sign((v+w)^2)$ uncertain

      *Example* let $v = vec(1,0)$. let $w$ past time-like
      
      - $w = vec(-1,0) ==> (v+w)^2 = 0$
      
      - $w = vec(-1,1/2) ==> (v+w)^2 = -1/4$
      
      - $w = vec(-1/2,0) ==> (v+w)^2 = 1/4$
    ]
  ]
  - 2 space
  #indent[
    $v^2, w^2 < 0$

    $|v| := (-v^2)^(1/2)$

    - $v w < 0$
    #indent[
      $v w < - abs(v) abs(w)$ and $(v+w)^2 < 0$

      $ (v+w)^2 < v^2 - 2 abs(v) abs(w) + w^2 $

      ==>
      $
        - (v+w)^2 
        &> (-v^2) + 2 abs(v) abs(w) + (-w^2) \ 
        &= (|v| + |w|)^2
      $
      ==>

      $ |v+w| > |v| + |w| $
    ]
    - $v w > 0$
    #indent[
      $v w > abs(v) abs(w)$
      $ 
        (v+w)^2 
        &> v^2 + 2 abs(v) abs(w) + w^2 \ 
        &= -(|v| - |w|)^2  
      $
    ]
  ]
]
Euclidean space can already discuss different convergence directions e.g. whether the sequence $x_n/(|x_n|)$ converges to $𝕊^(n-1)$. Spiral-like things do not converge in direction space

Euclidean space converges to a point in all $𝕊^(n-1)$ directions <==> converges uniformly to a point in all directions, by compactness of $𝕊^(n-1), ℝℙ^(n-1)$

Minkowski space direction space $ℚ^(1,n)(± 1)$ is non compact. Although we haven't defined the net of $ℚ^(1,n)(± 1)$

The #link(<net>)[] of Minkowski space needs to be far enough from the light cone $v^2 = 0$ 

let $ℍ𝕪^n (time\/space) := {x in ℝ^(1,n) : x^2 = ± 1}$

#let future = "future"
#let past = "past"

For converging time-like directions, can be separated 
#indent[
  - Future: $v in ℍ𝕪^n (time,future) = {x in ℝ^(1,n) : x^2 = 1, x_0 > 0}$
  - Past: $v in ℍ𝕪^n (time,past) = {x in ℝ^(1,n) : x^2 = 1, x_0 < 0}$
  - Mixture: $ℍ𝕪^n (time)$ quotient out the two leaves $±v$, becoming the directional space of projective space type
]
in $ℝ^(1,1)$ 

let $ℍ𝕪 := ℍ𝕪^1 (time,future) = {(t,x) in ℝ^(1,1) : t^2 - x^2 = 1 , t > 0}$

#tag("hyperbolic-complex") Hyperbolic complex number. cf. #link(<split-complex-number>)[]
#indent[
  $(x,y) ≃ x + y #i-split = x 𝟙 + y #i-split $
  
  - $𝟙 ⋅ #i-split = #i-split ⋅ 𝟙 = #i-split$
  - $#i-split^2 = 𝟙$
  - $(x_1 + y_1 #i-split) ⋅ (x_2 + y_2 #i-split)$ expand according to the distributive law
]
#tag("hyperbolic-exp") 
#indent[
  $exph z := sum_(n ∈ ℕ) 1/(n!) z^n$

  use binomial theorem

  - $exph (z+w) = (exph z) (exph w)$

  - $exph(t + #i-split x) = exph(t) exph(#i-split x)$

  - $exph (ϕ #i-split) = cosh ϕ + (sinh ϕ) #i-split in ℍ𝕪$, $ϕ in ℝ$. by $cosh^2 - sinh^2 = 1$
    
    #tag("polor-coordinate-hyperbolic") (Figure) Hyperbolic polar coordinates $v = |v| exph(ϕ #i-split)$, $|v| = (v v^*)^(1/2) = ⟨v,v⟩^(1/2)$, $ϕ in ℝ$. $ϕ$ can come from $ℍ𝕪$ geodesic length parameter. Also called hyperbolic angle #tag("hyperbolic-angle")

    Polar coordinates are the decomposition of distance and direction
    
    $|v|$ is not the geodesic length of $ℍ𝕪$, but the length of $v ∈ ℝ^(1,1)$
]
#tag("hyperbolic-isom")
#indent[
  group isomorphism (compare with the complex number case) // link

    - $ℝ$
    - $ℍ𝕪$
    - $#U (1,ℂ_"split")$
    - $SO(1,1)$

    $exph ((ϕ + ψ)#i-split) = exph(ϕ #i-split) exph(ψ #i-split)$

    $ϕ ⇝ sinh ϕ = 1/2 (e^ϕ - e^(-ϕ))$ monotonically increasing
    
    Solve the quadratic equation $x = 1/2 (e^ϕ - 1/e^ϕ) <==> (e^ϕ)^2 - 2 x e^ϕ - 1$ to obtain the inverse mapping

    $ϕ = sinh^(-1)(x) = log (x^2 + (x^2 + 1)^(1/2))$ 

    inverse $argh : ℍ𝕪 -> ℝ$
    
    $argh(t + x #i-split) = log (x^2 + (x^2 + 1)^(1/2))$

    *Question* Imitate $ℂ$ with stereographic projection and $tan^(-1)$, $ℂ_"split"$ use #link(<stereographic-projective-hyperbolic>)[hyperbolic projection] and $tanh^(-1)$ to handle hyperbolic angle or geodesic length mapping $argh$
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

  Define (time,future) far away from the light cone $v^2 = 0$ #link(<net>)[网] 

    $[0,r] × [ϕ - R, ϕ + R]$. $R$ as geodesic ball radius
    
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
Generalize to higher dimensions

The definition of geodesics of the quadric surface $ℚ^(p,q)(± 1)$ does not require manifold techniques, only using geodesics as the intersection line of the section spanned by radial + tangential + embedded $ℍ𝕪$ and its geodesic length. *Question* Is there a better and more intuitive definition?

#tag("geodesic-of-quadratic-manifold") $ℍ𝕪^n (time)$ geodesic (diagram) 
#indent[  
  let $v in ℍ𝕪^n (time) = ℚ^(1,n)(1) = {x_0^2 - (x_1^2 + ⋯ + x_n^2) = 1}$ 
  
  Orthogonal complement space $v^perp ≃ ℝ^n$, $n$ dimensional space-like 
  
  Affine space $v + v^perp$ as tangent space of $ℍ𝕪^n (time)$

  let $w in v^perp$, $|w| = 1$

  $span(v,w)$ is a two-dimensional subspace, signature $1,1$

  $span(v,w) ≃ ℝ^(1,1)$, and intersects with $ℍ𝕪^n (time)$ to get an embedded $ℍ𝕪$
  
  Get the geodesic line in the $v$ base point $w$ direction 
  
  $ ϕ ⇝ v cosh(ϕ) + w sinh(ϕ) $
]
$ℍ𝕪^n (time)$ geodesic sphere
#indent[
  $ 𝔹(v,R) = {v cosh(ϕ) + w sinh(ϕ) in ℍ𝕪^n (time) : w in v^perp , |w| = 1 , ϕ <= R} $

  where $v^⟂ ≃ ℝ^n, {|w| = 1} ≃ 𝕊^(n-1)$
 ]
(time,future)-like net struct of $ℝ^(1,n)$

Hyperbolic polar coordinates as product net struct of distance space $ℝ_(>= 0)$ and direction space $ℍ𝕪^n (time)$
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

- $w$ time-like
#indent[
  $span(v,w)$ signature $1,1$

  $span(v,w) ≃ ℝ^(1,1)$ intersects with $ℍ𝕪^n (space)$ to get an embedded $ℍ𝕪$

  Get the geodesic line in the $v$ base point $w$ direction 

  $ ϕ ⇝ w cosh(ϕ) + v sinh(ϕ) $
]
- $w$ space-like
#indent[
  $span(v,w)$ signature $0,2$

  $span(v,w) ≃ ℝ^2$ intersects with $ℍ𝕪^n (space)$ to get an embedded $𝕊$

  Get the geodesic line in the $v$ base point $w$ direction 

  $ ϕ ⇝ w cos(ϕ) + v sin(ϕ) $
]
$ℍ𝕪^n (space)$ is not a Euclidean type metric manifold, so the concept of geodesic sphere needs to be modified

space like direction space $ℍ𝕪^n (space)$ geodesic coordinates $v^⟂ ≃ ℝ^(1,n-1)$, according to dimension induction, using the net struct of $ℝ^(1,n-1)$, we get the local net struct of $ℍ𝕪^n (space)$

Since net is a product type decomposition, the induction will probably decompose into multiple one-dimensional radii, called #tag("multi-radius-geodesic-ball"). Does the decomposition order matter?

Then try to define the space-like net struct of $ℝ^(1,n)$ using hyperbolic polar coordinates i.e. the product net struct of distance and direction

Then we can define $f : ℝ^(1,n) -> ℝ^(1,n)$ (space,space)-like continuous at $f(0) = 0$, or space-like continuous for short

The case of $(p,q)$ signature should be similar 

The time-like net and space-like net of $ℝ^(1,n)$ are not equivalent

$f: ℝ^(1,n) -> ℝ^(1,n)$ Minkowski continuous is defined as time-like continuous and space-like continuous

Minkowski homeomorphic is defined as $f,f^(-1)$ are both Minkowski continuous

all $f in SO(1,n)$ are continuous and homeomorphic

$Lin(ℝ^(1,n) -> ℝ^(1,n))$ General linear functions may not be Minkowski continuous

Geodesic coordinates or hyperbolic polar coordinates are locally Minkowski homeomorphic or locally Euclidean homeomorphic by definition

$ℍ𝕪^n (time)$ is Riemman manifold, const negative curvature

$ℍ𝕪^n (space)$ is Lorentz manifold, const positive curvature

$ℍ𝕪^n (space)$ *alias* de Sitter space

#tag("hyperbolic-cosine-formula") hyperbolic cosine formula
#indent[
  let $v,w in ℍ𝕪$

  let $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    ⟨v,w⟩ 
    &= Re(v ⋅ w^*) \
    &= Re(exph ((ϕ - ψ) #i-split)) \
    &= cosh(ϕ - ψ)
  $
  let $v,w$ be future time-like. $|v| := (v^2)^(1/2)$

  $v/(|v|),w/(|w|) in ℍ𝕪$

  $(⟨v,w⟩)/(abs(v) abs(w)) = cosh(ϕ - ψ)$

  Cosine formula
  $ 
    (v+w)^2 
    &= v^2 + 2 ⟨v,w⟩ + w^2 \ 
    &= v^2 + w^2 + 2 abs(v) abs(w) (⟨v,w⟩)/(abs(v) abs(w)) \
    &= v^2 + w^2 + 2 abs(v) abs(w) cosh (ϕ - ψ)
  $
]
#tag("isom-top-hyperbolic-Euclidean")

  The limit structure of $ℍ𝕪$ under the distance of $ℂ_"split" = ℝ^(1,1)$ $≃$ geodesic distance $≃$ Euclidean $ℝ^1$ 

*Proof* 
#indent[
  let $v,w in ℍ𝕪$, $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    (v-w)^2 
    &= v^2 + w^2 - 2 ⟨v,w⟩ \
    &= 2 (1 - cosh(ϕ - ψ)) \
    &<= 0 " by " cosh >= 1
  $
  let $"dist"(v,w) := (- (v-w)^2)^(1/2)$
  
  use $cosh ϕ = 1 <==> ϕ = 0$
  $
    "dist"(v,w) = 0
    &<==> (v-w)^2 = 0 \
    &<==> ϕ = ψ \
    &<==> v = w 
  $
  use $cosh ϕ = 1/2 (e^ϕ + e^(-ϕ))$ continuity
  $ 
    forall ε > 0 , exists δ > 0 , forall ϕ , ψ ∈ ℝ \
    |ϕ - ψ| < δ ==> "dist"(v,w) < ε 
  $
]
Generalize to $ℍ𝕪^(n) subset ℝ^(1,n)$, Euclidean $ℝ^n$

*Proof* 
#indent[
  use geodesic coordinates

  similar to $ℝ^(1,1)$, try to prove
  $ 
    (v-w)^2 
    &= v^2 + w^2 - 2 ⟨v,w⟩ \
    &= 2 (1 - cosh(|ϕ - ψ|)) \
    &<= 0
  $
  where

  - $ϕ,ψ$ are the geodesic coordinates of $v,w$
  - $|ϕ - ψ|$ is the Euclid distance in geodesic coordinates
]
The base point of the stereographic projection of the sphere $𝕊^n$ is on $𝕊^n$. More than two coordinate charts are needed to cover all of $𝕊^n$

#tag("stereographic-projective-hyperbolic") time-like hyperboloid $ℍ𝕪^n (time)$ Consider stereographic projection, with two base points on the two branches of the hyperboloid respectively, and the projection forms separated singularities in the direction of the light cone

#image("../image/stereographic-projective-hyperbolic-time-like.jpg", width: 50%)

space-like hyperboloid, use a space-like base point to define the hyperbolic projection, and the projection coordinate chart is a lower-dimensional Minkowski space

Should the transition function be a Minkowski continuous homeomorphism?

#image("../image/stereographic-projective-hyperbolic-space-like.jpg", width: 50%)

Perform 3d plotting for the case of $ℝ^(1,2)$, and draw the light cone of the base point (note that the light cone is "vertical") 

Even if the intuition of drawing may be difficult, analytical calculation should not be difficult

Can $exph$ be generalized to $ℍ' ≃ ℝ^(2,2)$ and $𝕆' ≃ ℝ^(4,4)$?