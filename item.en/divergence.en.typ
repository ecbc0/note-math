#import "/module/module.typ": *
#show: module

#tag("orientation-of-real-linear-space") $ℝ^n$ direction

$A in GL(n,ℝ), det A != 0$

$ℝ ∖ 0 = ℝ_(< 0) ⊔ ℝ_(> 0)$

$GL(n,ℝ) = det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$

There are two directions. for vector base of $ℝ^n$, change order once $e_i <-> e_j$ change orientable, introduce a $-1$ factor. This is somewhat similar to alternating-tensor. orientation defined as quotient of vector base with same orientation. equivalent to decompose of $GL(n,ℝ)$ $det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$

#tag("orientation-of-boundary-of-simplex") 
#indent[
  simplx oriented boundary. The direction of the boundary ${x_0 ,…, x_n}$ of simplex ${x_0 ,…, x_n without x_i}$ is to define the direction for the $n-1$ affine subspace where the boundary is located, such that the interior $A$ is in the $n$-dimensional positive direction and the exterior $A^∁$ is in the $n$-dimensional negative direction 

  If we continue to define the direction for the boundary of the boundary, we will find that adjacent directions cancel out

  simplex vertices can construct a directed basis of $ℝ^n$ according to $x_0 -> x_1 -> ⋯ -> x_n$. Permutations make the directions differ by $sign(μ)$

  After selecting $x_0 ,…, x_n$ to be the positive direction of $ℝ^n$, the direction of the boundary is $(-1)^(i-1) x_0 ,…, x_n without x_i$

  similar to box

  *Example* Tetrahedron, right-hand rule, with the thumb pointing towards the inside of the tetrahedron to get the boundary direction (the index of the vertices in the picture starts from $1$ instead of $0$)

  #image("/image/orientation-of-simplex.jpg", width: 100%)
]
#tag("orientable-low-dim-polyhera") Polyhedron #link(<orientation-of-boundary-of-simplex>)[Orientable] is defined as: when constructing a polyhedron with simplexes, it is possible to define compatible orientations for all $k$ simplexes, such that the adjacent two $k$ simplexes $A, B$ have compatible orientations on their $k-1$ intersecting boundary simplexes, i.e., the orientation $O$ corresponds to the interior of simplex $A$ and the exterior of simplex $B$. The orientation $-O$ corresponds to the interior of simplex $B$ and the exterior of simplex $A$. i.e., simplex partition has well-defined interior and exterior.

#tag("Mobius-strip") *Example* Non-orientable Mobius-type polyhedron (image modified from wiki)

#image("../image/Moebius.svg", width: 50%)

No matter how the direction of each $k$ simplex is defined, there exists a pair of adjacent $k$ simplex $A,B$ whose $k-1$ connected boundary simplex directions are incompatible. i.e. Simplex partitioning has no well-defined inside and outside

Starting from the initial $k$ simplex, continuously and transitively defining compatible directions for adjacent $k$ simplexes, going around in a circle will lead to incompatible directions of the connected boundary simplex. Direction $O$ corresponds to the inside of $A,B$, direction $-O$ corresponds to the outside of $A,B$

#tag("simplex-chain") simplex chain

#tag("boundary-operator") 
#indent[
  Boundary operator $∂$

  boundary $c_k = ∂_(k+1) c_(k+1)$

  *Example* 

  - boundary-op-not-injective

    #image("/image/boundary-op-not-injective-1.jpg", width: 70%)

    #image("/image/boundary-op-not-injective-2.jpeg", width: 80%)

  - #tag("tri-intersect-boundary")

    #image("/image/tri-intersect-boundary.jpg", width: 40%)

  cycle $∂ c = 0$

  $∂^2 = 0$ or $∂_k ∂_(k+1) = 0$

  $im ∂ ⊂ ker ∂$ or $im ∂_(k+1) ⊂ ker ∂_k$
]
#tag("simplex-homology") 
#indent[
  k-th homology $H_k (ℝ^n) = (ker ∂_k)/(im ∂_(k+1))$

  where $ker ∂_k, im ∂_(k+1)$ are in $k$ chain space

  Due to geometric meaning, only $ℤ$ coefficients are needed
]
#tag("real-linear-space-trivial-homology") 
#indent[
  $ℝ^n$ is trivial homology $forall k = 1 ,…, n, H_k (ℝ^n) = 0$ or $ker ∂_k = im ∂_(k+1)$ or in $ℝ^n$, the boundary of $c$ is zero <==> $c$ is a boundary

  Try to prove it by purely affine orientation & combinatorics technique, avoid Euclidean topology
]
#tag("existence-and-uniqueness-of-n-simplex-chain-with-boundary") 
#indent[
  in $ℝ^n$, uniqueness $n$ chain of $n-1$ boundary

  $ H_n = 0 ==> ker ∂_n = im ∂_(n+1) = 0 $

  so existence of boundary of nonzero $n$ chain
  $ 
    forall c in C_n, ∂ c = 0 
    &==> c in ker ∂_n = 0 \
    &==> c = 0 
  $
  and uniqueness of $n$ dim region surround by $codim = 1$ boundary
  $
    (c,c' in C_n) and (∂_n c = ∂_n c') &==> ∂_n (c-c') = 0 \
    &==> c - c' in ker ∂_n = 0 \
    &==> c=c'
  $
]
#show "δ": it => text(it, fill: rgb("#d25b00"))

#tag("homology-hole") For a set $ℝ^n$ minus a finite number or a countable number of separated linear subspaces or polyhedra, homology is not zero

#image("../image/homology-hole.jpeg", width: 100%)

simplex divergence operator as the dual of the boundary operator $⟨ ∂ σ , ω ⟩ = ⟨ σ , ∂^† ω ⟩$ for $k$ simplex $σ$ & simplicial $k-1$ form $ω$ on $∂ σ$. (Consider modifying the notation of the boundary operator to avoid conflict with the differential notation)

#tag("homology-divergence-operator") When $k = n$, there is only one choice $∂^† ω = frac(integral_(∂ σ) ω,Vol(σ)) Vol$. recall $n$ form is equivalent to a scalar function

It may be difficult to deal with when $k < n$

For micro-molecular manifolds, it becomes easier to handle. At this time, the divergence operator analogue is the exterior derivative operator $#d$. Intuitively, it's some kind of $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$, where $Vol$ is the volume on the manifold. $σ$ is not limited to simplex, but a large class of regions

*Question* Even if $Vol$ is not yet defined on the manifold or the metric is not yet defined, this formula can obtain the result in the coordinate system using only the $Vol$ of the box (including the $Vol$ of the lower dimension boundary), the definition of $n$ form $#d ω$ is coordinate-independent. In other words, the definition of the exterior derivative does not depend on the selection of volume form or metric, but only on the differential structure of the manifold. Conversely, the volume form in the coordinates can also be extended to the entire manifold

#tag("exterior-differential") 
#indent[
  Calculate $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$ using box in coordinates, all coordinates tend to $0$, each coordinate axis direction becomes calculating partial derivatives $∂_i$ of certain things 
  
  The result is $#d ω = #d (ω_(i_1  i_k) #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)) = ∂_(i) ω_(i_1  i_k) #d x^i ∧ #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)$
  
  Further simplification is omitted for now

  *Question* Under the simplex center affine coordinates, what is the form of the exterior derivative?
]
#tag("Stokes-theorem") 
#indent[
  for #link(<orientable>)[] almost everywhere analytic manifolds with boundary, Stokes' theorem $integral_(∂ M) ω = integral_(M) #d ω$ or $⟨ ∂ M , ω ⟩ = ⟨ M , #d ω ⟩$
]
Perhaps it seems strange at first glance, but this is effective, first infinitesimal $#d ω := lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ))$ then integral $integral #d ω := lim sum ⋯$, but the fundamental theorem of one-dimensional calculus is like this

But the division of one-dimensional intervals, the boundary of one-dimensional intervals, and the integral of the boundary of one-dimensional intervals are all too simple, and high dimensions are not that simple

For high dimensions, if it's curved, it's very difficult. First deal with straight things i.e. simplex or parallelepiped. The partition is also of the same type of region, and boundary cancellation is also very simple. Then, similar to one dimension, use the differential mean value theorem to approximate compact control. This proves Stokes' Theorem for $ℝ^n$ simplex or parallelepiped.

#tag("Stokes-theorem-proof") *Question*
#indent[
  use the approximation method used in defining #link(<integral-on-manfold>)[]

  Use countable + linear approximation + partition limit that used in the definition of form integral on manifold #link(<integral-on-manfold>)[] 

  Approximately decompose into simplex or box, then use Stokes theorem of simplex + internal boundary cancellation, only the real boundary of manifold is left

  Need to use $n-1$ form $ω$ and #link(<integral-on-submanfold>)[]

  Approximation on the boundary may require special attention. For example, approximations on boundaries shoud use simplex (box) centered on the boundary and differential at points on the boundary.

  Probably need some kind of Sobolev control?
]
I have not deal with the Stokes theorem for manifold without boundary, have not define $∂ M := ∅ and integral_(∂ M) ω := integral_(∅) ω = 0$. *Example* of manifold without $ℝ^n$

Correspondence between boundary operator and exterior derivative

homology

cohomology

#tag("coboundary-operator") 
#indent[
  coboundary $ω_k = #d _(k-1) ω_(k-1)$

  cocycle $#d ω = 0$. Intuitively, the divergence of the form at this point is zero

  $#d^2 = 0$ or $#d _k #d _(k-1) = 0$

  $im #d ⊂ ker #d$ or $im #d _(k-1) ⊂ ker #d _k$
]
#tag("de-Rham-cohomolgy") k-th de Rham cohomology $H^k (M) = (ker #d _k)/(im #d _(k-1))$

in $ℝ^n$, cohomology trivial $forall k = 1 ,…, n, H^k = 0$

#tag("cohomology-hole") form with "hole". *Example* in $ℝ^2$, $#d 1/r$ or $(-x_2)/(|x|^2) #d x_1 + (x_1)/(|x|^2) #d x^2$ has a singularity at $x = 0$. In non-$ℝ^n$ manifolds, the form and Stokes' theorem can reveal the holes in the manifold even if the function has no singularities. *Example* $𝕊^1$ or $𝕊^1 × 𝕊^1$

The case of metric manifolds

The integral of the $k$ form $ω$ is equivalent to the integral of $⟨ ω , Vol_k ⟩ Vol_k$

#tag("Hodge-star") 
#indent[
  Hodge star operator as the orthogonal complement dual of the form

  $⋆ : (⋀^k ℝ^n)^⊺ -> (⋀^(n-k) ℝ^n)^⊺$ 

  $⋆ ω$ with $ω ∧ ⋆ ω = ⟨ ω , ω ⟩ Vol_n$ ==> $ω ∧ ⋆ η = ⟨ ω , η ⟩ Vol_n$

  $⋆^2 = 𝟙$ ==> $⟨ ω , η ⟩ = ⟨ ⋆ ω , ⋆ η ⟩$

  $⋆ Vol_k = Vol_(n-k)$
]
#tag("flux") 
#indent[
  Integral of $k$ form $ω$ -> Integral of $⟨ ω , Vol_k ⟩ Vol_k$ -> Integral of $⟨ ⋆ ω, ⋆ Vol_(n-k) ⟩ Vol_k$, interpreted as the quantity $⟨ ⋆ ω , Vol_(n-k) ⟩$ of the orthogonal complement $⋆ Vol_k = Vol_(n-k)$ of $Vol_k$ integrated over $Vol_k$, i.e. flux

  Represent the flux $n-k$ alternating tensor using the inner product duality $bra(⋆ ω), bra(Vol_(n-1)) in ⋀^(n-k) ℝ^n$, the inner product represents the orthogonal projection of the quantity $bra(⋆ ω)$ onto the flux direction $bra(Vol_(n-1))$
]
*Example* in Euclidean $ℝ^3$, $⋀^1 ℝ^3 ≃ ⋀^2 ℝ^3 ≃ ℝ^3$.

- $0$ form
#indent[
  $#d ω in (⋀^1 ℝ^3)^⊺ <--> bra(⋆ #d ω) = grad ω in ⋀^2 ℝ^3$

  Coordinates $ grad f = vec(∂_1 f, ∂_2 f, ∂_3 f) $

  Stokes' theorem #tag("gradient")
  $
    ω(x_1) - ω(x_0) 
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_l ⟨ grad ω , #d l ⟩
  $
]
- $1$ form
#indent[  
  $#d ω in ⋀^2 ℝ^3 <--> bra(⋆ #d ω) = curl bra(ω) in ⋀^1 ℝ^3$

  Coordinates $ curl vec(v_1,v_2,v_3) = vec(∂_2 v_3 - ∂_3 v_2, ∂_3 v_1 - ∂_1 v_3, ∂_1 v_2 - ∂_2 v_1) $

  $bra(ω) in ⋀^1 ℝ^3$

  Stokes' Theorem #tag("curl")
  $
    integral_(∂ S) ⟨ bra(ω) , #d l ⟩ 
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_S ⟨ curl bra(ω) , #d S ⟩
  $
  where $n = ⋆ Vol_2 = Vol_1$
]
- $2$ form
#indent[  
  $#d ω in ⋀^3 ℝ^3 <--> bra(⋆ #d ω) = div bra(ω) in ⋀^0 ℝ^3$

  Coordinates $ div vec(v_1,v_2,v_3) = ∂_1 v_1 + ∂_2 v_2 + ∂_3 v_3 $

  $bra(ω) in ⋀^2 ℝ^3$

  Stokes' Theorem #tag("divergence")
  $
    integral_(∂ V) ⟨ bra(ω) , #d S ⟩
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_V ⟨ div bra(ω) , #d V ⟩ 
  $
]
in Minkowski $ℝ^(1,3)$, $⋀^2 ℝ^(1,3) ≃ ⋀^(4-2) ℝ^(1,3)$