#import "../module/module.typ": *
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

  #image("../image/orientation-of-simplex.jpg", width: 100%)
]
#tag("orientable-low-dim-polyhera") Polyhedron #link(<orientation-of-boundary-of-simplex>)[Orientable] is defined as: when constructing a polyhedron with simplexes, it is possible to define compatible orientations for all $k$ simplexes, such that the adjacent two $k$ simplexes $A, B$ have compatible orientations on their $k-1$ intersecting boundary simplexes, i.e., the orientation $O$ corresponds to the interior of simplex $A$ and the exterior of simplex $B$. The orientation $-O$ corresponds to the interior of simplex $B$ and the exterior of simplex $A$. i.e., simplex partition has well-defined interior and exterior.

*Eaxmple* #tag("Mobius-strip") Non-orientable Mobius-type polyhedron (image modified from wiki)

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

    #image("../image/boundary-op-not-injective-1.jpg", width: 70%)

    #image("../image/boundary-op-not-injective-2.jpeg", width: 80%)

  - #tag("tri-intersect-boundary")

    #image("../image/tri-intersect-boundary.jpg", width: 40%)

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

#tag("Stokes-theorem") 
#indent[
  Similar to the one-dimensional #link(<fundamental-theorem-of-calculus>)[Fundamental Theorem of Calculus]. Intuitively, divergence and the divergence theorem = high-dimensional Fundamental Theorem of Calculus

  Define #tag("exterior-differential") $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$ in coordinates, where $Vol$ is the volume of the coordinates, $σ$ is a large class of regions, and the calculation result does not depend on the choice of coordinates. 

  Then there is Stokes-theorem 
  
  for #link(<orientable>)[orientable] almost everywhere analytic manifold with boundary, $integral_(∂ M) ω = integral_(M) #d ω$ or $⟨ ∂ M , ω ⟩ = ⟨ M , #d ω ⟩$
  
  Calculate $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$ using a box in coordinates. When all coordinates approach $0$, it will be a partial derivative $∂_i$ of something calculated for each coordinate axis direction. The result is $#d ω = #d (ω_(i_1 ⋯ i_k) #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)) = ∂_(i) ω_(i_1 ⋯ i_k) #d x^i ∧ #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)$, further simplification is omitted for now.

  *Question* What is the form of the exterior derivative calculation result in the barycentric coordinates of a simplex?
]
However, in the proof of the one-dimensional Fundamental Theorem of Calculus, the division of a one-dimensional interval, the boundary of a one-dimensional interval, and the integral of the boundary of a one-dimensional interval are all too simple. High-dimensional regions are not that simple.

#tag("Stokes-theorem-simple") For higher dimensions, it is difficult if it is curved. First, deal with straight things i.e. simplex or parallelepiped. The division is also the same type of region, and the boundary cancellation is also simple. Then, similar to one dimension, approximate with the Mean Value Theorem of Differential + compact control. This proves Stokes' theorem for $ℝ^n$ simplex or parallelepiped.

#tag("Stokes-theorem-proof") *Question*
#indent[
  use the approximation method used in defining #link(<integral-on-manfold>)[]

  Use countable + linear approximation + partition limit that used in the definition of form integral on manifold #link(<integral-on-manfold>)[] 

  Approximately decompose into simplex or box, then use Stokes theorem of simplex + internal boundary cancellation, only the real boundary of manifold is left

  Need to use $n-1$ form $ω$ and #link(<integral-on-submanfold>)[]

  Approximation on the boundary may require special attention. For example, approximations on boundaries shoud use simplex (box) centered on the boundary and differential at points on the boundary.

  Probably need some kind of Sobolev control?
]
Things like the Gauss--Bonnet theorem of Euclidean metric manifold should also be provable using this method. Although it still needs to be considered why the result is a homology invariant Euler characteristic (off by an $n$-dimensional Euclidean volume factor, expressed as a power of $π$) that is independent of the metric.

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

  Represent the flux $n-k$ alternating tensor using the inner product duality $(⋆ ω)^♯, (Vol_(n-1))^♯ in ⋀^(n-k) ℝ^n$, the inner product represents the orthogonal projection of the quantity $(⋆ ω)^♯$ onto the flux direction $(Vol_(n-1))^♯$ (image)
]
*Example* in Euclidean $ℝ^3$, $⋀^1 ℝ^3 ≃ ⋀^2 ℝ^3 ≃ ℝ^3$.

- $0$ form
#indent[
  $#d ω in (⋀^1 ℝ^3)^⊺ <--> (⋆ #d ω)^♯ = grad ω in ⋀^2 ℝ^3$

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
  Note that at this time, you can add a directional two-dimensional "rotation 90 degrees" to change the two-dimensional divergence into a two-dimensional curl, and the normal flux to the boundary becomes the tangent flow to the boundary.

  $#d ω in ⋀^2 ℝ^3 <--> (⋆ #d ω)^♯ = curl ω^♯ in ⋀^1 ℝ^3$

  Coordinates $ curl vec(v_1,v_2,v_3) = vec(∂_2 v_3 - ∂_3 v_2, ∂_3 v_1 - ∂_1 v_3, ∂_1 v_2 - ∂_2 v_1) $

  $ω^♯ in ⋀^1 ℝ^3$

  Stokes' Theorem #tag("curl")
  $
    integral_(∂ S) ⟨ ω^♯ , #d l ⟩ 
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_S ⟨ curl ω^♯ , #d S ⟩
  $
  where $n = ⋆ Vol_2 = Vol_1$
]
- $2$ form
#indent[  
  $#d ω in ⋀^3 ℝ^3 <--> (⋆ #d ω)^♯ = ω^♯ in ⋀^0 ℝ^3$

  Coordinates $ div vec(v_1,v_2,v_3) = ∂_1 v_1 + ∂_2 v_2 + ∂_3 v_3 $

  $bra(ω) in ⋀^2 ℝ^3$

  Stokes' Theorem #tag("divergence")
  $
    integral_(∂ V) ⟨ ω^♯ , #d S ⟩
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_V ⟨ div ω^♯ , #d V ⟩
  $
]
in Minkowski $ℝ^(1,3)$, $⋀^2 ℝ^(1,3) ≃ ⋀^(4-2) ℝ^(1,3)$