#import "../module/module.typ": *
#show: module

#tag("parallelogram") Due to symmetry, a parallelepiped described by the convex hull of $2n$ points can be simplified to an $n$-point description. After selecting the origin,

$t_1 v_1 + ⋯ + t_n v_n, 0 <= t_i <= 1$, without requiring $t_1 + ⋯ + t_n = 1$

#image("../image/parallelogram.png", width: 25%)

#tag("parallelogram_simplex_correspond")
#indent[
  A parallelepiped can be decomposed into $n!$ simplices that are equivalent by translation and reflection (p. 587 of @ref-3)

  #image("../image/parallelogram_simplex_correspond.png", width: 30%)

  Selecting one simplex from the $n!$ simplices in the decomposition corresponds to selecting a permutation $i(1) ,…, i(n)$ of $1 ,…, n$ and imposing constraints on the parallelepiped coordinates:
  $
    t_(i(1)) v_(i(1)) + ⋯ + t_(i(n)) v_(i(n)) \ 
    0 <= t_(i(n)) <= ⋯ <= t_(i(1)) <= 1
  $
  The vertices of the corresponding simplex are:
  $
    0 \
    v_(i(1)) \
    v_(i(1)) + v_(i(2)) \
    ... \
    v_(i(1)) + ⋯ + v_(i(n))
  $
  Its affine combination representation is:
  $
    s_0 0 + s_1 v_(i(1)) + s_2(v_(i(1)) + v_(i(2))) + ⋯ + s_n (v_(i(1)) + ⋯ + v_(i(n))) \ 
    sum_(i=0..n) s_i = 1, 0 <= s_i <= 1
  $
  Expanding factors in the affine combination and comparing coefficients of $v_i$ yields the relationship between parallelepiped coordinates and affine coordinates:
  $
    t_(i(n)) &= s_n \
    t_(i(n-1)) &= s_n + s_(n-1) \
    &... \
    t_(i(1)) &= s_n + s_(n-1) + ⋯ + s_1 \
    1 &= s_n + s_(n-1) + ⋯ + s_1 + s_0
  $
  Conversely, a simplex also gives many parallelepipeds for which it serves as one of the $n!$ constituent simplices. For example, the relationship between a triangle and a parallelogram. In general, selecting one vertex of a simplex allows one to establish a coordinate system and construct a parallelepiped.
  
  Thus, the structural strength provided by simplices and parallelepipeds is comparable.
]
#tag("volume_of_parallelogram") For volume in $ℝ^n$, assume:
- Translation invariance
- Reflection invariance (unsigned volume)
- Finite disjoint decomposition $⨆$ (disjoint in the sense of zero measure) ==> finite additivity of volume $sum$
- If $v_1 ,…, v_n$ are not linearly independent, then they and their affine/linear combinations lie in a lower-dimensional subspace, and thus the $n$-dimensional volume is defined to be zero.
 
#tag("volume_of_simplex") is $1/n!$ of volume-of-parallelogram

#tag("shear_transformation") After decomposing a parallelepiped into $n!$ simplices, select one simplex, cut it, translate it, and form a new parallelepiped with the same volume. This is called a shear transformation. E.g., $t_1 (v_1 + v_2) + t_2 v_2 + ⋯ +  t_n v_n$. As shown below:

#image("../image/shear_transformation.png", width: 30%)

(image from p.587 of @ref-3)

To consider the change in the volume of a parallelepiped under a linear transformation, one usually decomposes the linear transformation into multiple "elementary linear transformations", which include shear transformations.

Shear transformations require the use of simplices, indicating that even though we define the volume of a parallelepiped, we still simultaneously use the concept of the volume of a simplex, once again verifying the close connection between simplices and parallelepipeds.

The volume invariance under shear transformations is algebraically e.g. $(v_1 + v_2) ∧ v_2 ∧ ⋯ ∧ v_n = v_1 ∧ v_2 ∧ ⋯ ∧ v_n$ or $det mat(
  1, 1;
  , 1;
  ,, ⋱;
  ,,,, 1
) = 1$

Scaling the edges by $ℕ,ℤ,ℚ,ℝ$ gives $n$-linearity of the volume. E.g. $forall a in ℝ, Vol(a v_1, v_2 ,…, v_n) = a Vol(v_1, v_2 ,…, v_n)$

Scaling and shearing of parallelepipeds correspond to the decomposition of $GL(n,ℝ)$ into elementary linear transformations, also used in Gaussian elimination, although they can also be applied to $m × n$ matrices.

#tag("volume_determinant") For volume change under $A ∈ GL(n,ℝ)$ of a parallelepiped $v_1 ,…, v_n$, $Vol(A v_1 ,…, A_n v_n) = det A Vol(v_1 ,…, v_n)$

Choose a basis $e_1 ,…, e_n$ of $ℝ^n$, define the volume of the parallelepiped they generate as $1$, then the volume of another parallelepiped $A e_1 ,…, A e_n$ is $det A$.

This is oriented volume. $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$; the set of the parallelepiped remains the same, so the absolute volume is unchanged, but the orientation of $v_1,v_2 ,…, v_n$ and $v_2,v_1 ,…, v_n$ is opposite.

Oriented volume = unsigned volume + orientation factor

$v_1 ,…, v_n$ linearly dependent ==> lie in lower-dimensional subspace ==> zero volume. Here we can extend $A in GL$ to $A in Lin$, and zero volume corresponds algebraically to $A in Lin ∖ GL <==> det(A) = 0$

Associate the parallelepiped $v_1 ,…, v_n$ with the decomposable element $v_1 ∧ ⋯ ∧ v_n = det(v_1 ,…, v_n)$ of the $n$-th order alternating tensor $(ℝ^n)^(∧ n)$ of $ℝ^n$.

$v_1 ∧ ⋯ ∧ v_n$ is an $n$-fold tensor whose $n$-linearity comes from the linearity of scaling the lengths of the $n$ edges of the parallelepiped.

Why can the concept of volume be positive, yet the $n$-alternating tensor $det$ be negative?

Negativity arises from extending edge scaling from $ℝ_(> 0)$ (only the $+1$ direction) to the $-1$ direction of $ℝ$, as a fully linear operation.

Any linear transformation can be decomposed into scalings and shears. Shears do not change volume, so the $-1$ effect must come entirely from scalings, including transformations like "swapping the order of basis vectors," e.g., $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$. However, this is not intuitive.

*Example* The 2D case, easily generalizable to any two vectors in $n$ dimensions:
- Shear $mat(1, 1;, 1) vec(x, y) = vec(x + y, y)$ does not change volume.
- Shear $mat(1; -1, 1) vec(x + y, y) = vec(x + y, -x)$.
- Shear $mat(1, 1;, 1) vec(x + y, -x) = (y, -x)$.
- Scaling by $-1$ $(y, -x) ⇝ (y, x)$ yields volume $-1$.

You can also choose to discard the concept of negative volume entirely, saying volume is a positive multilinear alternating form, a positive determinant, similar to the treatment of densities on manifolds.

#tag("try_to_define_volume_of_low_dim") View a $k$-subspace as a manifold; for example, choose a $k$-basis on it to establish coordinates, then it has its own volume. But $ℝ^n$ contains many $k$-subspaces. If we only need to consider one $k$-subspace or $k$-submanifold, the problem stops there. However, we want to define volume for all $k$-subspaces simultaneously, choosing a $k$-basis on each $k$-subspace to establish a coordinate system defining the $k$-volume of that $k$-subspace, and for each $0 <= k <= n$, what is a good choice?

Consider two approaches. Similar to linear forms vs. quadratic forms. Both definitions of volume coincide for $k = n$.

#let base-alt = $e_(i_1) ∧ ⋯ ∧ e_(i_k)$
#let index-alt = $i_1 < ⋯ < i_k$
#let coefficent-alt = $det mat(
  v _1^(i_1) , ⋯ , v _k^(i_1) ;
  ⋮,,⋮;
  v _1^(i_k) , ⋯ , v _k^(i_k)
)$

1. A basis $e_1 ,…, e_n$ of $ℝ^n$ gives a basis of the alternating tensor space: $#base-alt, 1 <= #index-alt <= n$ 
#indent[
  Use it to define volume: for each $1 <= k <= n$, the volume $Vol_(n,k)$ is a $k$-form on $ℝ^n$ satisfying $Vol_(n,k) (#base-alt) = 1$, forall $#index-alt$

  For a general parallelepiped $v_1 ∧ ⋯ ∧ v_k = (v_1^(i_1) e_(i_1)) ∧ ⋯ ∧ (v_k^(i_k) e_(i_k)) = sum_(#index-alt) #coefficent-alt #base-alt$, the volume is:
  $
    Vol(v_1 ∧ ⋯ ∧ v_k) &:= sum_(#index-alt) #coefficent-alt 
  $
  Under this volume definition, the volume of a nonzero decomposable alternating tensor can be zero. Consider $ℝ^2$, $A = mat(1,0;-1,1) in GL(2,ℝ)$ such that $A e_1 = mat(1,0;-1,1) vec(1,0) = vec(1,-1)$. $A e_1$ is a $1$-st order decomposable alternating tensor of $ℝ^2$. $Vol_(2,1)(A e_1) = Vol_(2,1)(e_1 - e_2) = 1 - 1 = 0$.
  
  Under this volume definition, as shown by $A in GL(2,ℝ)$ in the example, the volume preservation property of shear transformations for $n$-th order volume in $ℝ^n$ does not hold for $k < n$ order volume in $ℝ^n$.

  *Question* A specific basis $e_1 ,…, e_n$ is chosen, so which other bases yield the same result? Or what is the linear subgroup that preserves all orders of linear-form volumes?
  
  The $A = mat(
    a^1_1, ⋯, a^1_n;
    ⋮,,⋮;
    a^n_1, ⋯, a^n_n
  ) in GL(n,ℝ)$ preserving all orders of volume satisfies, for $k = 1 ,…, n$ and for $#index-alt$, $Vol_(n,k)(A e_(i_1) ∧ ⋯ ∧ A e_(i_k)) = 1$, or $sum_(j_1 < ⋯ < j_k) det mat(
    a^(j_1)_(i_1), ⋯, a^(j_i)_(i_k);
    ⋮,,⋮;
    a^(j_k)_(i_1), ⋯, a^(j_k)_(i_k)
  ) = 1$

  *Example* $Vol_(n,1)(A e_i) = a^1_i + ⋯ + a^n_i$ (sum of elements of the $i$-th column of matrix $A in GL(n,ℝ)$). The situation for $n-1$ is analogous to that for $1$, i.e., $a^i_j$ for $Vol_(n,1)$ corresponds to the cofactor of $a^i_j$ for $Vol_(n,n-1)$.
  
  The cofactor is the determinant of the matrix $A$ with the $i$-th row and $j$-th column removed, or used in the decomposition representation of $det$ as an $(1, n-1)$-alternating tensor. Cofactors generalize to the $(k, n-k)$-alternating tensor decomposition representation of $det$ or the Laplace expansion of the determinant.

  *Example* $Vol_(2,1)(A e_i) = a^1_i + a^2_i$.
  
  In $ℝ^2$, $A = mat(
    a^1_1, a^1_2;
    a^2_1, a^2_2
  )$ preserving all volumes satisfies:
  $
    a^1_1 a^2_2 - a^2_1 a^1_2 &= 1 space && (2^"nd" "order volume") \
    a^1_1 + a^2_1 &= 1 && (1^"st" "order volume") \
    a^1_2 + a^2_2 &= 1
  $
  One coordinate representation of the solution to this system is:
  $
    x &in ℝ \
    a^1_1 &= 1 - x \
    a^2_1 &= x \
    a^1_2 &= -x \
    a^2_2 &= 1 + x \
    A &= mat(1-x,-x;x,1+x) = mat(1;,1) + mat(-x,-x;x,x)
  $
  This is an affine line in $gl(2,ℝ)$ passing through $𝟙 = mat(1;,1)$. $SO(2)$ or $SO(1,1)$ is not a subset. $det mat(1-x,-x;x,1+x) = 1 - 2 x^2$, so generally not in $SL(2,ℝ)$.
]
2. Choose a non-degenerate quadratic form.
#indent[
  #link(<tensor_induced_quadratic_form>)[Induces] a quadratic form on the alternating space: $⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2  = det ⟨ v_i , v_j ⟩$.
  
  Unsigned volume is defined as the absolute square root: $|det ⟨ v_i , v_j ⟩|^(1/2)$ or $abs(det mat(
    ⟨ v_1 , v_1 ⟩, ⋯, ⟨ v_1 , v_n ⟩;
    ⋮,,⋮;
    ⟨ v_n , v_1 ⟩, ⋯, ⟨ v_n , v_n ⟩
    ))^(1/2)$.
    
  Choose an orthonormal basis $e_1 ,…, e_n$.
  
  $v_1 ∧ ⋯ ∧ v_k = sum_(#index-alt) det mat(
    v_1^(i_1) , ⋯ , v_k^(i_1) ;
    ⋮,,⋮;
    v_1^(i_k) , ⋯ , v_k^(i_k)
  ) e_(i_1) ∧ ⋯ ∧ e_(i_k)$.
  
  Quadratic form:
  $
    ⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2 &= sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2 \
    Vol_(n,k)(v_1 ∧ ⋯ ∧ v_k) &:= abs(sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2)^(1/2)
  $
  $⟨ v_1 ∧ ⋯ ∧ v_n ⟩^2 = 0$ <==> zero volume.
  
  In the non-Euclidean case, light-like vectors have an effect.

  Different signatures yield different volume definitions for the same set for orders $k < n$.
]

#tag("polyhedra") Polyhedron := finite union of n-simplices. Countable generalization yields countable polyhedra.

#image("../image/polyhedra.png", width: 30%)

#tag("Lebesgue_measurable") 
#indent[
  #image("../image/measure_approximation.png", width: 30%)
  Lebesgue measurable set $A$. Approximation by finite union $P$ of simplices, with the symmetric difference $A Δ P$ covered by countably many simplices to estimate the measurement error.

  Specifically, define the outer measure of a set $A$ as $m^*(A) = inf_(ℕ-"polyhedra" C ⊇ A) Vol(C)$ if $m^*(A)$ is finite. The outer measure of polyhedra is finite, and under the Euclidean metric, by compactness, subadditivity can be proven. Hence, the outer measure of a polyhedron is its own volume (In geometries with signatures other than Euclidean, not all polyhedra are likely used to define volume).

  Among sets with finite outer measure, using the outer measure of the symmetric difference as a distance $d(A, B) = m^*(A Δ B)$ yields a metric space (@ref-12). (Distance zero does not need to imply equality.) Polyhedra form a metric subspace. Volume of polyhedra is a real-valued function on them, which can be shown to be continuous via $|Vol(A) - Vol(B)| <= Vol(A Δ B)$; the essence of the proof uses $|Vol(A ∖ B) - Vol(B ∖ A)| <= Vol(A ∖ B) + Vol(B ∖ A)$.

  Consequently, measurable sets are defined as the closure of the family of polyhedral sets in the outer measure metric space. The measure of a measurable set is defined as the continuous extension of the polyhedral volume function to its closure.

  The definition of the integral will follow a similar method.

  Non-measurable sets are those with finite outer measure but not belonging to the closure of polyhedra. Non-measurable sets exist (Vitali sets defined using the axiom of choice).
]

#tag("Lebesgue_measure")
#indent[
  The symmetric difference of sets satisfies:
  
  $B Δ B' subset (A Δ B) ∪ (A Δ B')$ 

  Corresponding to the triangle inequality $d(B,B') <= d(A,B) + d(A,B')$.

  _Proof_ 
  #indent[
    $B ∖ B' ⊆ (B ∖ A) ∪ (A ∖ B')$ 

    #stack( dir: ltr,
      image("../image/measure_triangle_inequality_1.png", width: 40%),
      image("../image/measure_triangle_inequality_2.jpeg", width: 50%)
    )
    because:
    $
      x in B ∖ B' 
      &<==>x in B and x in.not B' \
      &<==> (x in B and x in.not B') and (x in.not A or x in A) \
      &<==> (x in B and x in.not B' and x in.not A) or (x in B and x in.not B' and x in A) \
      &==> (x in B and x in.not A) or (x in A and x in.not B') \
      &<==> x in (B ∖ A) ∪ (A ∖ B') 
    $
    The other side is similar:

    $B' ∖ B ⊆ (B' ∖ A) ∪ (A ∖ B)$

    Taking the union of both results gives:

    $B Δ B' subset (A Δ B) ∪ (A Δ B')$
  ]
  
  Triangle inequality:
  $
    d(B,B') &= d(B Δ B') \
    &<= d((A Δ B) ∪ (A Δ B')) \
    &<= d(A,B) + d(A,B')
  $
]
#tag("try_to_define_low_dim_measure") Attempt to define $k < n$ dimensional measurable sets in $ℝ^n$. Since the codimension of a $k$-region is $≠ 0$, it is clearly not possible to approximate general "$k$-dimensional sets" by set differences and simplex covers for measurement error estimation.

#tag("pathologic_example_measure_of_boundary") 
#indent[
  Using the Euclidean metric structure, some low-dimensional measurable sets can be defined, but pathological examples still exist (ignore details for now, consult Wikipedia).

  - The painter's paradox. Finite measure but boundary of infinite measure. Uses unbounded regions.
  - Koch snowflake. Finite measure but boundary measure is undefined or infinite. Uses a boundary that is nowhere differentiable.

  Examples where the $n$-dimensional volume is approximated but the boundary volume is not:

  - Schwarz lantern.
  - Infinite staircase approximating the hypotenuse of a right triangle $sqrt(2) = 2$ or a circle ($π = 4$) or, with large normal oscillations, $sqrt(2) = π = ∞$.
]
#tag("measure_theoretic_boundary")
#indent[
  Measure-theoretic boundary. Dimension --- some supremum $d < n$ --- may not be a natural number but a real number.

  For a general measurable set, intuitively, the boundary =

  $ {x in ℝ^n : not lim_("hull" -> x) frac(Vol(A ∩ "hull"),Vol("hull")) = 0,1} $

  where $"hull" -> x$ refers to the overall scaling to the center of any convex hull centered at $x$.

  Or boundary = not interior or exterior. Interior = limit $1$, Exterior = limit $0$.
]
Lebesgue differentiation theorem states that the measure of the boundary is zero.

- Interval subdivisions of the edges of a rectangle/parallelepiped yield rectangular product subdivisions.
- Barycentric subdivision (note that the boundary is also subdivided).

#image("../image/measure_subdivision.png", width: 80%)