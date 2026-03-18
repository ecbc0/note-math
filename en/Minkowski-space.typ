#import "../module/module.typ": *
#show: module

Consider the subspace $span(v,w) ↪ ℝ^(p,q)$

The following are equivalent
- $dim(span(v,w)) = 2$
- $v,w$ not co-linear

if $span(v,w) ≃ ℝ^(1,1)$, according to the intuition of $ℝ^(1,1)$ (draw a picture), bases of the following types are all possible
- 2 time(-like)
- 2 space
- 1 time, 1 space
- 1 time, 1 light
- 1 space, 1 light
- 2 light

*Example*

- 2 time(-like) \
  #indent()[
    $v = vec(1,0), w = vec(a,b)$, where $0 < |b| < |a|$ \
    $⟨ w ⟩^2 = a^2 - b^2 > 0$ \
    $v, w$ can linearly generate $vec(0,1)$, thus spanning $ℝ^(1,1)$
  ]
- 2 space \
  $v = vec(0,1), w = vec(a,b)$, where $0 < |a| < |b|$
- 1 time, 1 space \
  $v = vec(1,0), w = vec(0,1)$
- 1 time, 1 light \
  $v = vec(1,0), w = vec(a,a)$
- 1 space, 1 light similarly
- 2 light \
  *Example* $ℝ^(1,1), v = vec(a,a), w = vec(a,-a)$. Note $v ⋅ w = 2 a^2 != 0$. \
  $v ± w$ generate $ℝ^(1,1)$

Consider a general $span(v,w)$ in $ℝ^(1,n)$

#tag("signature-of-2d-subspace-of-spacetime") *Prop* The possible signatures of a $dim = 2$ $span(v,w)$ in Minkowski $(1,n)$ are

- $1,1$
- $0,2$
- $0,1$

We will prove later that signatures $(1,0), (0,0)$ are impossible

Intuitively, the plane spanned by two lines (imagine the case of $ℝ^(1,2)$)
- $1,1$ intersects both the interior and exterior of the light cone. Although all types of bases are possible, all bases of the following types are of signature $1,1$
  - 2 time
  - 1 time, 1 light
  - 2 light
- $0,2$ only intersects the exterior of the light cone
  - 2 space
- $0,1$ is tangent to the light cone, does not intersect the interior of the light cone, and intersects the light cone only along a single light-like line
  - 1 light, 1 space

*Prop* $ℝ^(1,n)$ can have $0,1$ signature subspaces. _Proof_ $ℝ^(1,2)$'s $vec(1,1,0),vec(1,1,1)$

*Prop* time-like is orthogonal only to space-like

let $v$ be time-like. Using orthogonal decomposition $ℝ^(1,n) = v ⊕ v^⟂$, let $v = v_0, w = w_0 + bf(w)$ then $⟨ v,w ⟩ = v_0 w_0 = 0 ==> w_0 = 0$ ==> $w$ is space-like

*Prop* light-like $v$ is not orthogonal to
- time-like. because time-like is orthogonal only to space-like
- light-like vectors other than those colinear with itself $k v$ #tag("metric-cannot-distinguish-colinear-light-like")

_Proof_
#indent[
  Take an orthogonal decomposition $ℝ^(1,n) = ℝ_"time" ⊕ ℝ^n_"space"$, let $v,w$ be light-like and orthogonal
  $
    v &= v_0 + bf(v) \
    w &= w_0 + bf(w)
  $
  $
    dmat(delim: #none ,
      ⟨ v ⟩^2,=,0,==>,v_0^2,=,⟨ bf(v) ⟩^2 ;
    ⟨ w ⟩^2,=,0,==>,w_0^2,=,⟨ bf(w) ⟩^2 ;
    ⟨ v,w ⟩,=,0,==>,v_0 w_0,=,⟨ bf(v) , bf(w) ⟩
    )
  $
  $bf(v), bf(w)$ are space-like. According to the Euclidean inner product inequality
  $
    ⟨ bf(v), bf(w) ⟩^2 &<= ⟨ bf(v) ⟩^2 ⟨ bf(w) ⟩^2 \
    (v_0 w_0)^2 &<= v_0^2 w_0^2
  $
  but $(v_0 w_0)^2 = v_0^2 w_0^2$, so the Euclidean inner product inequality takes equality, thus $bf(v), bf(w)$ are colinear $bf(w) = k bf(v)$.
  $
    v_0 w_0 &= ⟨ bf(v) , bf(w) ⟩ \
    &= k ⟨ v ⟩^2 \
    &= k v_0^2
  $
  This implies $w_0 = k v_0$, thus $w = k v$
]
*Prop* The signature of a two-dimensional subspace of $ℝ^(1,n)$ cannot be $1,0$ or $0,0$

_Proof_ Use the previous theorem

  *Question* Is there a proof that does not rely on orthogonal decomposition of time and space? But note, this proposition does not hold for general $ℝ^(p,q)$. In $ℝ^(2,2)$, the following are orthogonal and non-collinear
  - 1 time, 1 light $v = vec(1, 0, 0, 0), w = vec(0, 1, 0, 1)$
  - 2 light $v = vec(1, 0, 1, 0), w = vec(0, 1, 0, 1)$
  A further concept is "Totally Isotropic Subspace"

*Prop* When $p,q >= 2$, all signatures are possible for the subspace $span(v,w)$ of $ℝ^(p,q)$

_Proof_ In this case $ℝ^(p,q)$ contains the subspace $ℝ^(2,2)$, where it is easy to construct subspaces of all possible signatures

*Prop* For two non-collinear time-like vectors $v,w$ in $ℝ^(1,n)$, the signature of their span $span(v,w)$ is $1,1$

_Proof_ Use one of the time-like vectors as the initial basis to generate an orthogonal basis for $span(v,w)$, but the signature cannot be $1,0$, so it must be $1,1$

*Prop* In $ℝ^(1,n)$ let $v$ be light-like, $w$ be time-like or light-like, and $v,w$ be non-collinear. Then $span(v,w) ≃ ℝ^(1,1)$

_Proof_
#indent[
  $⟨ v ⟩^2 = 0$

  $v,w$ are not orthogonal, $⟨ v,w ⟩ != 0$
  $
    ⟨ a v + b w ⟩^2
    &= 2 a b ⋅ ⟨ v,w ⟩ + b^2 ⋅ ⟨ w ⟩^2 \
    &= b ( b ⋅ ⟨ w ⟩^2 + a ⋅ ⟨ v,w ⟩)
  $
  Fix a $b > 0$, consider
  $
    b ⋅ ⟨ w ⟩^2 + a ⋅ ⟨ v,w ⟩ = ⟨ v,w ⟩ (a - (-b ⋅ ⟨ w ⟩^2)/⟨ v,w ⟩)
  $
  By adjusting $a$, positive or negative results can be obtained, thus having time-like and space-like, so the $±$ signatures are both $>= 1$, it can only be $1,1$

  Another method. The quadratic form corresponds to matrix $G = mat(⟨ v,v ⟩, ⟨ v,w ⟩; ⟨ w,v ⟩, ⟨ w,w ⟩)$ in basis $v,w$. Transforming to signature standard form corresponds to matrix transformation $A^⊺ G A = mat(λ_1;,λ_2)$
  $
    λ_1 λ_2 = det mat(λ_1;,λ_2) = (det A)^2 det G = - ⟨ v,w ⟩ ^2 (det A)^2 < 0
  $
  Thus $λ_1, λ_2$ are one positive and one negative, corresponding to $1,1$ signature
]
#tag("simultaneity-relativity") Relativity of Simultaneity
#indent[
  According to orthogonal basis extension, it can be proved

  in $1,n$, the orthogonal complement of a $dim = n$ space-like subspace is a $dim = 1$ time-like subspace

  - ($span(v,v') ≃ ℝ^2$ space-like) <==> (there exists a time-like $w$ orthogonal to both $v,v'$) \
    _Proof_
      Note, time-like is only orthogonal to space-like
      - (==>) Start extension from $span(v,v')$. The time-like $w$ basis vector is orthogonal to the space-like basis vectors
      - (<==) Start extension from $w$. All space-like basis vectors form the orthogonal complement space $w^⟂$ of $w$. $v,v'$ are orthogonal to $w$, so belong to $w^⟂$, and all subspaces of Euclidean space are Euclidean

  Thus the contrapositive also holds

  - ($span(v,v') cancel(≃) ℝ^(2)$ not space-like) <==> (there does not exist a time-like $w$ orthogonal to both space-like $v,v'$)

  Intuition: Different space-like subspaces $S,S'$ may not have compatible time measurement methods or the time-like orthogonal complements of $S,S'$ may be different
]
Take a spacetime orthogonal decomposition of $ℝ^(1,n)$

$v = v_0 + bf(v)$

$⟨ v,w ⟩ = v_0 w_0 - ⟨ bf(v) , bf(w) ⟩$

*Prop* $⟨ v ⟩^2,⟨ w ⟩^2 >= 0$ ==> The sign of the product of time components determines the sign of the inner product
$
  sign(v_0 w_0)
  &= sign(v_0 w_0 - ⟨ bf(v) , bf(w) ⟩) \
  &= sign(⟨ v,w ⟩)
$
_Proof_ Case analysis for $sign(v_0 w_0) >= 0, <= 0$

- $sign(v_0 w_0) >= 0$. let $v_0, w_0 > 0$. $⟨ v ⟩^2 >= 0 ==> v_0^2 >= ⟨ bf(v) ⟩^2$. Similarly for $w$. Then by the Euclidean inner product inequality
  $
    v_0^2 w_0^2
    >= ⟨ bf(v) ⟩^2 ⟨ bf(w) ⟩^2
    >= ⟨ bf(v), bf(w) ⟩^2
  $
  Thus $v_0 w_0 - ⟨ bf(v) , bf(w) ⟩ >= 0$, i.e., same sign as $v_0 w_0$
- $sign(v_0 w_0) <= 0$. let $v_0 > 0, w_0 < 0$. Set $w'_0 = - w_0$ and apply the conclusion from $sign(v_0 w'_0) >= 0$

in Euclidean, we have

#link(<quadratic-form-inequality-Euclidean>)[Inner product inequality] $|⟨ v,w ⟩|^2 <= abs(v) abs(w)$ ==> #link(<triangle-inequality-Euclidean>)[Triangle inequality] $|v+w| <= |v|+|w|$

in signature $p,q$ quadratic form, this generally does not hold

As mentioned earlier, the quadratic form under the basis $v,w$ corresponds to the matrix $G = mat(⟨ v,v ⟩, ⟨ v,w ⟩; ⟨ w,v ⟩, ⟨ w,w ⟩)$. Transforming to the standard quadratic form, the corresponding matrix transformation is $A^⊺ G A = mat(λ_1;,λ_2)$
  $
    λ_1 λ_2 = det mat(λ_1;,λ_2) = (det A)^2 det G
  $
$det G = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 = λ_1 λ_2$

#tag("quadratic-form-inequality-Minkowski") Inner product inequality
- $⟨ v ⟩^2 ⟨ w ⟩^2 < ⟨ v,w ⟩^2$ \
  $λ_1, λ_2$ one positive and one negative, corresponding to $1,1$ signature
- $⟨ v ⟩^2 ⟨ w ⟩^2 > ⟨ v,w ⟩^2$ \
  $λ_1, λ_2$ with the same sign, corresponding to $2,0$ or $0,2$ signature
- $⟨ v ⟩^2 ⟨ w ⟩^2 = ⟨ v,w ⟩^2$ \
  Other signatures or $v,w$ are collinear

#tag("triangel-inequality-Minkowski") $1,1$ signature triangle inequality
#indent[
  $⟨ v + w ⟩^2 = ⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2$

  - 2 time
  #indent[
    $⟨ v ⟩^2 > 0$, $|v| := (⟨ v ⟩^2)^(1/2)$

    - $⟨ v,w ⟩ > 0$ ==> $|v+w| > |v| + |w|$
    - $⟨ v,w ⟩ < 0$ ==> $⟨ v + w ⟩^2 < (|v| - |w|)^2$
  ]
  - 1 time, 1 light
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

    use #link(<quadratic-form-inequality-Minkowski>)[] $⟨ v ⟩^2 ⟨ w ⟩^2 < ⟨ v,w ⟩^2$

    ==> $abs(v) abs(w) < ⟨ v,w ⟩$

    ==>
    $
      ⟨ v + w ⟩^2
      &> ⟨ v ⟩^2 + 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &= (|v| + |w|)^2
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
      &< ⟨ v ⟩^2 - 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &= (|v| - |w|)^2
    $
    Note $sign ⟨ v + w ⟩^2$ is uncertain

    *Example* let $v = vec(1,0)$. let $w$ be past time-like

    - $w = vec(-1,0) ==> ⟨ v + w ⟩^2 = 0$

    - $w = vec(-1,1/2) ==> ⟨ v + w ⟩^2 = -1/4$

    - $w = vec(-1/2,0) ==> ⟨ v + w ⟩^2 = 1/4$
  ]
]
The limit or continuity in Euclidean space is directly defined using open balls $𝔹(r) = { ⟨ x ⟩^2 < r^2 }$ (to simplify the discussion, only consider the origin $0$ as the center)

In Minkowski space or p,q quadratic form space, a direct imitation of the Euclidean case is
- timelike ${0 <= ⟨ x ⟩^2 < r^2 }$, spacelike ${ -r^2 < ⟨ x ⟩^2 <= 0 }$, or
- When merging classes, the class is empty ${ -r^2 < ⟨ x ⟩^2 < r^2 }$

But note that at this time
+ The limit meaning represented by $r^2 -> 0$ is different from the Euclidean case. For example, although two distinct points on the light cone are "separated," their quadratic distance is zero. For a point $a != 0$ on the light cone, although it is separated from $0$, it can be transformed via $SO(p,q)$ so that the coordinates of $a$ approach $0$ arbitrarily. Taking $ℝ^(1,1)$ as an example, let $a = (t,x) = (1,1)$. After transformation, $mat(cosh ϕ, sinh ϕ; sinh ϕ, cosh ϕ) vec(1,1) = vec(cosh ϕ + sinh ϕ, cosh ϕ + sinh ϕ) = vec(e^ϕ, e^ϕ)$, then $lim_(ϕ -> -∞) e^ϕ = 0$. $(1,1)$ under the orbit of the $SO(1,1)$ action is the ray $k (1,1), k > 0$
+ Taking $ℝ^(1,1)$ as an example, $ℍ𝕪 = { t^2 - x^2 = 1} $ should be the analogue of the sphere $𝕊 = { x^2 + y^2 = 1 }$ in $ℝ^2$. Based on graphical intuition in $ℝ^2$, some points on $ℍ𝕪$ appear far from the origin $0$, but in fact the $1,1$ distance of any point on $ℍ𝕪$ is the same; any two points on $ℍ𝕪$ can be transformed into each other via an $SO(1,1)$ transformation, just like the situation with $𝕊$. On $ℝ^(1,n)$, when the quadratic form distance $> 0$, it can be considered as the timelike geodesic distance or the proper time of an inertial particle. Timelike points on $ℝ^(1,n)$ can be transformed via $SO(1,n)$ to have zero spatial coordinates, meaning transforming from uniform motion to rest, where proper time = time. Similar conclusions likely hold for $ℝ^(p,q)$ as well.

#image("../image/hyperbolic-to-space-bijective.png", width: 50%)

$ℝ^(p,q)$'s "continuity of coordinate distance", i.e., $ℝ_+^p × ℝ_-^q$ product distance, is finer than $ℝ^(p,q)$'s "continuity of quadratic form distance", because $|x_+^2 - x_-^2| <= x_+^2 + x_-^2$

Denote the coordinate distance continuity structure as $C$, and the quadratic form distance continuity structure as $Q$
- When the domain continuity structure $A$ is the same, continuity of functions with codomain $C$ implies continuity of functions with codomain $Q$, $"continuous"(A -> C) ==> "continuous"(A -> Q)$
- When the codomain continuity structure $A$ is the same, continuity of functions with domain $Q$ implies continuity of functions with domain $C$, $"continuous"(Q -> A) ==> "continuous"(C -> A)$
- There is no comparison relation between $"continuous"(C -> C)$ and $"continuous"(Q -> Q)$

Possible clue for the rationality of the $p, q$ quadratic form distance: $ℝ^(p, q)$, via the $(1, 1)$ tensor $ℝ^(p,q)^⊺ ⊗ ℝ^(p,q)$ as a linear map space, inherits a tensor quadratic form. When restricted to $so(p,q)$, it becomes proportional to the Killing form quadratic form of $so(p, q)$ #link(<Killing-form-of-orthogonal-group>)[]. Signature $(p q, binom(p,2) + binom(q, 2))$, where $p q$ is the number of boosts, $binom(p,2)$ are time-like rotations, and $binom(q,2)$ are space-like rotations. Under the Killing form, boosts have positive distance, while time/space rotations both have negative distance.

$ℝ^(1,1)$'s timelike region $"time-like"(1,1) = { (t,x) in ℝ^(1,1) : t^2 - x^2 > 0 }$. It can be decomposed into the radial space part $ℝ(>= 0)$ and the directional space part $ℍ𝕪 = { (t,x) in ℝ^(1,1) : t^2 - x^2 = 1 }$

#image("../image/hyperbolic-to-space-bijective.png", width: 50%)

Similar to polar coordinates in $ℝ^2$, we can use hyperbolic polar coordinates $(r, ϕ)$, where $r$ is the quadratic form distance, and $ϕ$ is the geodesic length on $ℍ𝕪$, also called the hyperbolic angle #tag("hyperbolic-angle") or rapidity #tag("rapidity")

#let time = "time"
#let space = "space"
#let future = "future"
#let past = "past"

#tag("polor-coordinate-hyperbolic") Hyperbolic polar coordinates $ℝ^(1,1)(time,future) ≃ ℝ(>=0) × ℍ𝕪$
$
  mat(delim: #none,
  ℝ(>=0) × ℝ , --> , ℂ_"split" , --> , ℝ^(1,1) ;
  (r,ϕ) , ~~> , r exph(ϕ #i-split) , ~~> , r (cosh ϕ, sinh ϕ)
  )
$
#tag("hyperbolic-cosine-formula") Hyperbolic Cosine Formula
#indent[
  let $v,w in ℍ𝕪$

  let $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $
    ⟨ v,w ⟩
    &= Re(v ⋅ w^*) \
    &= Re(exph ((ϕ - ψ) #i-split)) \
    &= cosh(ϕ - ψ)
  $
  let $v,w$ future time-like. $|v| := (⟨ v ⟩^2)^(1/2)$

  $v/(|v|),w/(|w|) in ℍ𝕪$

  $(⟨ v,w ⟩)/(abs(v) abs(w)) = cosh(ϕ - ψ)$

  Hyperbolic Cosine Formula
  $
    ⟨ v + w ⟩^2
    &= ⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2 \
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) (⟨ v,w ⟩)/(abs(v) abs(w)) \
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) cosh (ϕ - ψ)
  $
]
#tag("isom-top-hyperbolic-Euclidean")

  Limit structure of $ℍ𝕪$ under the $ℂ_"split" = ℝ^(1,1)$ distance $≃$ geodesic distance $≃$ Euclidean $ℝ^1$

_Proof_
#indent[
  let $v,w in ℍ𝕪$, $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $
    ⟨ v - w ⟩^2
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &= 2 (1 - cosh(ϕ - ψ)) \
    &<= 0 " by " cosh >= 1
  $
  let $"dist"(v,w) := (- ⟨ v - w ⟩^2)^(1/2)$

  use $cosh ϕ = 1 <==> ϕ = 0$
  $
    "dist"(v,w) = 0
    &<==> ⟨ v - w ⟩^2 = 0 \
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

_Proof_
#indent[
  use geodesic coordinates

  similar to $ℝ^(1,1)$, try to prove
  $
    ⟨ v - w ⟩^2
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &= 2 (1 - cosh(|ϕ - ψ|)) \
    &<= 0
  $
  where

  - $ϕ,ψ$ are the geodesic coordinates of $v,w$
  - $|ϕ - ψ|$ is the Euclidean distance in geodesic coordinates
]
Geodesics on quadratic manifolds can be defined using purely quadratic form techniques

The tangent space at point $a$ of the quadratic manifold $ℚ^(p,q)(± r^2)$ can be defined as the (affine) subspace orthogonal to the radial vector $a$

The initial direction $b$ of the geodesic starting from point $a$ is in the tangent space of $ℚ^(p,q)$ at point $a$, $b in ⊤_(a) (ℚ^(p,q))$

The geodesic is defined as $span(a, b) ∩ ℚ^(p,q)$

$ℍ𝕪^n (time) = ℚ^(1,n)(1)$ type (p. 19 of @ref-9) #image("../image/quadratic-manifold-geodesic.png", width: 30%)

$ℍ𝕪^n (space) = ℚ^(1,n)(-1)$ type #stack( dir: ltr,
  image("../image/quadratic-manifold-geodesic-1.png", width: 30%),
  image("../image/quadratic-manifold-geodesic-2.png", width: 30%),
  image("../image/quadratic-manifold-geodesic-3.png", width: 30%)
)

$ℍ𝕪^n (time)$ is a Riemann manifold with constant negative curvature

$ℍ𝕪^n (space)$ is a Lorentz manifold with constant positive curvature

$ℍ𝕪^n (space)$ *alias* de Sitter space

The base points ("north and south poles") of the stereographic projection of the sphere $𝕊^n$ lie on $𝕊^n$. More than two coordinate charts are needed to cover the entire $𝕊^n$

#tag("stereographic-projective-hyperbolic") For the time-like hyperboloid $ℍ𝕪^n (time)$, consider stereographic projection. The two base points lie on the two sheets of the hyperboloid respectively, and the projection forms separated singularities in the light cone direction (the cross shape in the figure below)

#image("../image/stereographic-projective-hyperbolic-time-like.jpg", width: 50%)

In the projection coordinates of the future base point, the coordinates of the past base point are zero, but the coordinates of the future base point are either absent or are $∞$

$ℝ^(1,1)$ is special, so the future coordinates in the figure above are disconnected. However, when the spatial dimension is $> 1$, the future coordinates should be connected

It should be possible to generalizable to $p,q$ quadratic forms. The case of $-1$ distance is the case of $+1$ distance for $q,p$.

$ℝ^(1,2)$ space-like hyperboloid, the projective coordinate chart is a Minkowski space of one lower dimension. Perform 3D plotting, draw the light cone of the base point (note that the light cone is "vertical").

#image("../image/stereographic-projective-hyperbolic-space-like.png", width: 50%)

Even if the visual intuition for plotting might be difficult, the analytical calculation should not be hard