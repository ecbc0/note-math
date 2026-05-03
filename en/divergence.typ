#import "../module/module.typ": *
#show: module

#tag("orientation_of_real_linear_space") $ℝ^n$ direction

$A in GL(n,ℝ), det A != 0$

$ℝ ∖ 0 = ℝ_(< 0) ⊔ ℝ_(> 0)$

$GL(n,ℝ) = det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$

There are two directions. for vector base of $ℝ^n$, change order once $e_i <-> e_j$ change orientable, introduce a $-1$ factor. This is somewhat similar to alternating-tensor. orientation defined as quotient of vector base with same orientation. equivalent to decompose of $GL(n,ℝ)$ $det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$

#tag("orientation_of_boundary_of_simplex") 
#indent[
  simplx oriented boundary. The direction of the boundary ${x_0 ,…, x_n}$ of simplex ${x_0 ,…, x_n without x_i}$ is to define the direction for the $n-1$ affine subspace where the boundary is located, such that the interior $A$ is in the $n$-dimensional positive direction and the exterior $A^∁$ is in the $n$-dimensional negative direction 

  If we continue to define the direction for the boundary of the boundary, we will find that adjacent directions cancel out

  simplex vertices can construct a directed basis of $ℝ^n$ according to $x_0 -> x_1 -> ⋯ -> x_n$. Permutations make the directions differ by $sign(μ)$

  After selecting $x_0 ,…, x_n$ to be the positive direction of $ℝ^n$, the direction of the boundary is $(-1)^(i-1) x_0 ,…, x_n without x_i$

  similar to box

  *Example* Tetrahedron, right-hand rule, with the thumb pointing towards the inside of the tetrahedron to get the boundary direction (the index of the vertices in the picture starts from $1$ instead of $0$)

  #image("../image/orientation_of_simplex.png", width: 100%)
]
#tag("orientable_low_dim_polyhera") Polyhedron #link(<orientation_of_boundary_of_simplex>)[Orientable] is defined as: when constructing a polyhedron with simplexes, it is possible to define compatible orientations for all $k$ simplexes, such that the adjacent two $k$ simplexes $A, B$ have compatible orientations on their $k-1$ intersecting boundary simplexes, i.e., the orientation $O$ corresponds to the interior of simplex $A$ and the exterior of simplex $B$. The orientation $-O$ corresponds to the interior of simplex $B$ and the exterior of simplex $A$. i.e., simplex partition has well-defined interior and exterior.

*Eaxmple* #tag("Mobius_strip") Non-orientable Mobius-type polyhedron (image modified from wiki)

#image("../image/Moebius.svg", width: 50%)

No matter how the direction of each $k$ simplex is defined, there exists a pair of adjacent $k$ simplex $A,B$ whose $k-1$ connected boundary simplex directions are incompatible. i.e. Simplex partitioning has no well-defined inside and outside

Starting from the initial $k$ simplex, continuously and transitively defining compatible directions for adjacent $k$ simplexes, going around in a circle will lead to incompatible directions of the connected boundary simplex. Direction $O$ corresponds to the inside of $A,B$, direction $-O$ corresponds to the outside of $A,B$

#tag("simplex_chain") simplex chain

#tag("boundary_operator") 
#indent[
  Boundary operator $∂$

  boundary $c_k = ∂_(k+1) c_(k+1)$

  *Example* 

  - boundary-op-not-injective (p. 405 of @ref-11, vol.1)

    #image("../image/boundary_op_not_injective_1.png", width: 70%)

    #image("../image/boundary_op_not_injective_2.png", width: 80%)

  - #tag("tri_intersect_boundary")

    #image("../image/tri_intersect_boundary.png", width: 40%)

  cycle $∂ c = 0$

  $∂^2 = 0$ or $∂_k ∂_(k+1) = 0$

  $im ∂ ⊆ ker ∂$ or $im ∂_(k+1) ⊆ ker ∂_k$
]
#tag("simplex_homology") 
#indent[
  k-th homology $H_k (ℝ^n) = (ker ∂_k)/(im ∂_(k+1))$

  where $ker ∂_k, im ∂_(k+1)$ are in $k$ chain space

  Due to geometric meaning, only $ℤ$ coefficients are needed
]
#tag("real_linear_space_trivial_homology") 
#indent[
  $ℝ^n$ is trivial homology $forall k = 1 ,…, n, H_k (ℝ^n) = 0$ or $ker ∂_k = im ∂_(k+1)$ or in $ℝ^n$, the boundary of $c$ is zero <==> $c$ is a boundary

  Try to prove it by purely affine orientation & combinatorics technique, avoid Euclidean topology
]
#tag("existence_and_uniqueness_of_n_simplex_chain_with_boundary") 
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

#tag("homology_hole") For a set $ℝ^n$ minus a finite number or a countable number of separated linear subspaces or polyhedra, homology is not zero

#image("../image/homology_hole.png", width: 100%)

#tag("Stokes_theorem") 
#indent[
  Similar to the one-dimensional #link(<fundamental_theorem_of_calculus>)[Fundamental Theorem of Calculus]. Intuitively, divergence and the divergence theorem = high-dimensional Fundamental Theorem of Calculus

  Define #tag("exterior_differential") $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$ in coordinates, where $Vol$ is the volume of the coordinates, $σ$ is a large class of regions, and the calculation result does not depend on the choice of coordinates. 

  Then there is Stokes-theorem 
  
  for #link(<orientable>)[orientable] analytic manifold with boundary and form with cohomology zero, $integral_(∂ M) ω = integral_(M) #d ω$ or $⟨ ∂ M , ω ⟩ = ⟨ M , #d ω ⟩$
  
  Calculate $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$ using a box in coordinates. When all coordinates approach $0$, it will be a partial derivative $∂_i$ of something calculated for each coordinate axis direction. The result is $#d ω = #d (ω_(i_1 ⋯ i_k) #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)) = ∂_(i) ω_(i_1 ⋯ i_k) #d x^i ∧ #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)$, further simplification is omitted for now.

  *Question* What is the form of the exterior derivative calculation result in the barycentric coordinates of a simplex?
]
However, in the proof of the one-dimensional Fundamental Theorem of Calculus, the division of a one-dimensional interval, the boundary of a one-dimensional interval, and the integral of the boundary of a one-dimensional interval are all too simple. High-dimensional regions are not that simple.

#tag("Stokes_theorem_simple") For higher dimensions, it is difficult if it is curved. First, deal with straight things i.e. simplex or parallelepiped. The division is also the same type of region, and the boundary cancellation is also simple. Then, similar to one dimension, approximate with the Mean Value Theorem of Differential + compact control. This proves Stokes' theorem for $ℝ^n$ simplex or parallelepiped.

#tag("Stokes_theorem_proof") *Question*
#indent[
  I changed my mind. According to the intuitive treatment of integrals on manifolds and Stokes' theorem, one should use direct subdivision of the manifold, rather than approximate subdivision.

  Partitioning in integration can be directly done using zero-order measurable sets (closed under diffeomorphisms). The regions used for partitioning in Stokes' theorem should be similar to sets of finite perimeter (Cacciopoli sets) in geometric measure theory (#link(<ref_33>)[]). I hope they are closed under finite unions, intersections, and subtractions, and closed under diffeomorphisms.

  Prove that a manifold with boundary is locally such a region (finding polyhedral approximations based on manifold properties), and that integrals on the boundary in this theory should coincide with integrals on the boundary in manifold theory (similar to theory of reduced boundary in geometric measure theory). Prove that well-behaved manifolds with singularities also belong to such regions, i.e., polyhedra, cones, well-behaved codimensions $> 1$ singularity.

  The proof of Stokes' theorem is to take a finite cover of compact support forms with this type of regions, subtract overlaps, partition, then use Stokes' theorem on the partitioned regions, where integrals cancel out on interior boundaries, leaving only the actual boundary of the manifold.

  Although I want to avoid compact support differentiable forms, there are some cautions. the proper inclusion chain (on $[0, 1]$) $"continuous differential" ⊊^(|x|) "Lipschitz" ⊊^(sqrt(x)) "absolutely continuous" ≃ "Sobolev" W^(1,1)$ shows that, due to the lack of a differential mean value theorem, it seems that the (locally) Sobolev or absolute continuity of the $n-1$ form and its exterior differential is not suitable for geometrically defining the exterior differential as the limit of the boundary integral divided by the volume and then using the mean value theorem and barycentric partitioning and geometrically proving that the simplex satisfies Stokes' theorem ... Although Sobolev or absolute continuity still satisfies Stokes' theorem for every local sufficient small simplex, hence if the differential is bound, we can use integral mean value to control. But mean value is the definition of Lipschitz (for simplex volume), and pure (locally) Lipschitz will also implies differential exists almost everywhere and is (locally) $L^1$

  As long as $k$-dimensional affine subspaces are viewed as manifolds (for example, by choosing a $k$-basis on them to establish a coordinate system), they have their own volume. After choosing a basis for the $k$-subspace, the $k$-form defined pointwise on $ℝ^n$ can become real-valued on it. The integrability on the boundary of a simplex requires at least that the form becomes an integrable function in every $k$-direction. Due to the linearity of form space and integrals, it only needs to become an integrable function on a basis of the $k$-direction space (corresponding to the $k$-alternating tensor space of $ℝ^n$), which is also known as "the components of the form are locally $L^1$". At least such (locally) $L^1$ forms are preserved under diffeomorphisms, just as Lebesgue measurable sets are preserved under diffeomorphisms. In principle, it can be said that the function of the $k$-subspace derived from the form in the $k$-direction can be approximated by piecewise constant functions supported on the simplex, similar to usual integration. If we don't assume differentiable forms, then we haven't even defined the exterior derivative, nor have we proven Stokes' theorem on a simplex.

  Try to define differentiation starting from integration, as a way to combine measure and differentiation. First, define what a form that satisfies the local infinitesimal Stokes' theorem is --- an integrable, exterior differentiable form --- and then use forms that satisfy the local infinitesimal Stokes' theorem (instead of compact support differentiable forms) to define what a region that globally satisfies Stokes' theorem is, by a polyhedral approximation.

  Then try to define the exterior derivative of an $n-1$ form using its average derivative (using an $n$-dimensional simplex/box/polytope/ball and its boundary shrinking to a point? The largest distance from $x$ to $σ$ $-> 0$) $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$ to define exterior differential.

  Next, we need to prove Stokes' theorem for simplexes. Using barycentric subdivision techniques, then use estimates provided by the mean value theorem.

  Then we can try to define "regions where Stokes' theorem can be applied" similar to sets of finite perimeter, or simply called sets of finite perimeter. The required restriction is that, intuitively, among all measurable sets, there is a subset of measurable sets for which the overall Stokes' theorem can be applied to their boundaries. Intuitively, the restrictions for such regions should be similar to, in the polyhedral net approximating the measurable set, there exists a sub-net that uniformly controls all normalized or projectivized integrable exterior differential forms (or something more general) on the boundary of the approximating polyhedron.

  The relationship between functions of bounded variation and sets of finite perimeter in geometric measure theory is like the relationship between integrable functions and measurable sets in zero-order measure theory.

  Since exterior differentiation only has first-order derivatives and there are no infinite-order exterior derivatives, on metric manifold, the $L^2$ norm of a form $|ω|_(L^2) + |#d ω|_(L^2)$ is suitable for Banach/Hilbert space theory (infinite-order derivatives are not suitable for Banach space theory).

  Because the topology of a manifold may have nontrivial cohomology, for some cohomologically nonzero forms $ω$, its exterior differential form $#d ω$ cannot cancel out all internal boundaries when integral, and hence it will have some extra thing similar to "residue" in complex analysis. For example, (#tag("cohomology_hole"). *Example* In $ℝ^2 ∖ 0$, $#d 1/r$ or $(-x_2)/(|x|^2) #d x_1 + (x_1)/(|x|^2) #d x^2$, satisfying $#d^2 1/r = 0$, so have integral zero on $𝔹 ∖ 0$, but the integral of $#d 1/r$ over $𝕊^1$ as the boundary of $𝔹 ∖ 0$ is nonzero. *Example* $𝕊^1$ is homology isomorphism to $ℝ^2 ∖ 0$.

  Another example where the boundary integral cannot cancel out: if a vector field or form for which Stokes' theorem holds on a closed ball $𝔹$ has a closed disk-like region on its boundary removed, Stokes' theorem no longer holds. Intuitively, after removing a closed disk, the flux leaks out, indicating that the new boundary does not enclose the interior of the manifold. If an open disk were removed instead of a closed disk, the result would not be a manifold with boundary, it would have a boundary of codimension > 1, and the boundary of the boundary would not be zero.

  May need some kind of compact constraint, since non-compact will have some kind of infinity that makes boundary cancellation fail, and may have residue term
]
Things like the Gauss--Bonnet theorem of Euclidean metric manifold should also be provable using this method. Although it still needs to be considered why the result is a homology invariant Euler characteristic (off by an $n$-dimensional Euclidean volume factor, expressed as a power of $π$) that is independent of the metric.

*Todo* Given counterexamples like the Cantor set construction, almost everywhere analytic is not the correct approach to handle singularity. Instead, try to use deletion of singularity to get manifold with boundary.

I have not deal with the Stokes theorem for manifold without boundary, have not define $∂ M := ∅ and integral_(∂ M) ω := integral_(∅) ω = 0$. *Example* of manifold without $ℝ^n$

Correspondence between boundary operator and exterior derivative

homology

cohomology

#tag("coboundary_operator") 
#indent[
  coboundary $ω_k = #d _(k-1) ω_(k-1)$

  cocycle $#d ω = 0$. Intuitively, the divergence of the form at this point is zero

  $#d^2 = 0$ or $#d _k #d _(k-1) = 0$

  $im #d ⊆ ker #d$ or $im #d _(k-1) ⊆ ker #d _k$
]
#tag("de_Rham_cohomolgy") k-th de Rham cohomology $H^k (M) = (ker #d _k)/(im #d _(k-1))$

in $ℝ^n$, cohomology trivial $forall k = 1 ,…, n, H^k = 0$

The case of metric manifolds

The integral of the $k$ form $ω$ is equivalent to the integral of $⟨ ω , Vol_k ⟩ Vol_k$

#tag("Hodge_star") 
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