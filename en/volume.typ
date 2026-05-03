#import "../module/module.typ": *
#show: module

#tag("parallelogram") Due to symmetry, a parallelepiped can be described by the convex hull of $2n$ points, simplified to an $n$-point description. After selecting an origin,

$t_1 v_1 + ⋯ + t_n v_n, 0 <= t_i <= 1$, without requiring $t_1 + ⋯ + t_n = 1$

#image("../image/parallelogram.png", width: 25%)

#tag("parallelogram_simplex_correspond")
#indent[
  A parallelepiped can be decomposed into $n!$ translation- and reflection-equivalent simplices (p. 587 of @ref-3)

  #image("../image/shear_transformation.png", width: 30%)

  A decomposed simplex corresponds to choosing a permutation $i(1) ,…, i(n)$ of $1 ,…, n$:
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
  The affine combination representation is:
  $
    s_0 0 + s_1 v_(i(1)) + s_2(v_(i(1)) + v_(i(2))) + ⋯ + s_n (v_(i(1)) + ⋯ + v_(i(n))) \ 
    sum_(i=0..n) s_i = 1, 0 <= s_i <= 1
  $
  Comparing the coefficients of $v_i$, the relationship between parallelepiped coordinates and affine coordinates is:
  $
    t_(i(n)) &= s_n \
    t_(i(n-1)) &= s_n + s_(n-1) \
    &... \
    t_(i(1)) &= s_n + s_(n-1) + ⋯ + s_1 \
    1 &= s_n + s_(n-1) + ⋯ + s_1 + s_0
  $
  Conversely, a simplex also gives many parallelepipeds for which it serves as one of the $n!$ simplex pieces. For example, the relationship between a triangle and a quadrilateral. In general, selecting one vertex of a simplex allows establishing a coordinate system and constructing a parallelepiped.
  
  Therefore, the structural strength provided by a simplex and a parallelepiped is roughly equivalent.
]
#tag("volume_of_parallelogram") For volume in $ℝ^n$, assume:
- Translation invariance
- Reflection invariance (unsigned volume)
- Finite decomposition of sets $⨆$ (disjoint in the sense of zero measure) -> finite summation of volumes $sum$
- If $v_1 ,…, v_n$ are not linearly independent, then they and their affine/linear combinations lie in a lower-dimensional subspace, hence the $n$-dimensional volume is defined as zero.
 
#tag("volume_of_simplex") is $1/n!$ of volume-of-parallelogram

#tag("shear_transformation") After decomposing a parallelepiped into $n!$ simplices, select one simplex, cut, translate, and form a new parallelepiped with the same volume. This is called a shear transformation. E.g., $t_1 (v_1 + v_2) + t_2 v_2 + ⋯ +  t_n v_n$. As shown below:

#image("../image/shear_transformation.png", width: 30%)

(image from p.587 of @ref-3)

If we want to consider the change in volume of a parallelepiped under a linear transformation, we usually consider decomposing the linear transformation into multiple "elementary linear transformations", and elementary transformations include shear transformations.

Even if we define the volume of a parallelepiped, the shear transformation indicates that this still utilizes the concept of simplex volume, again verifying the close relationship between simplex and parallelepiped.

Algebraically, the volume invariance under shear transformation is, e.g., $(v_1 + v_2) ∧ v_2 ∧ ⋯ ∧ v_n = v_1 ∧ v_2 ∧ ⋯ ∧ v_n$ or $det mat(
  1, 1;
  , 1;
  ,, ⋱;
  ,,,, 1
) = 1$

Scaling of edges by $ℕ,ℤ,ℚ,ℝ$. E.g., $forall a in ℝ, Vol(a v_1, v_2 ,…, v_n) = a Vol(v_1, v_2 ,…, v_n)$

Scaling and shearing of a parallelepiped correspond to the decomposition of $GL(n,ℝ)$ into elementary linear transformations, which are also used in Gaussian elimination, although they can also be applied to $m × n$ matrices.

#tag("volume_determinant") For volume change under $A ∈ GL(n,ℝ)$: $Vol(A v_1 ,…, A_n v_n) = det A Vol(v_1 ,…, v_n)$

Choose a basis $e_1 ,…, e_n$ of $ℝ^n$, define the volume of the parallelepiped they generate as $1$, then the volume of another parallelepiped $A e_1 ,…, A e_n$ is $det A$.

This is oriented volume. $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$; the set of the parallelepiped does not change, so the absolute volume does not change, but $v_1,v_2 ,…, v_n$ and $v_2,v_1 ,…, v_n$ have opposite orientations.

Oriented volume = unsigned volume + orientation factor.

$v_1 ,…, v_n$ linearly dependent ==> lie in a lower-dimensional subspace ==> zero volume. Here we can extend $A in GL$ to $A in Lin$, and zero volume corresponds algebraically to $A in Lin ∖ GL <==> det(A) = 0$.

Map the parallelepiped $v_1 ,…, v_n$ to the decomposable element $v_1 ∧ ⋯ ∧ v_n = det(v_1 ,…, v_n)$ of the $n$-th alternating tensor $(ℝ^n)^(∧ n)$ of $ℝ^n$.

$v_1 ∧ ⋯ ∧ v_n$ is an $n$-fold tensor, its $n$-fold linearity comes from the linearity of scaling the lengths of the $n$ edges of the parallelepiped.

Why can volume, a positive number, correspond to the $n$-alternating tensor $det$ which can be negative?

The negativity arises from extending edge scaling from $ℝ_(> 0)$ (only +1 direction) to $ℝ$ (including the $-1$ direction), as a fully linear operation.

Any linear transformation can be decomposed into scaling and shearing. Shearing does not change volume, so the $-1$ effect must come from scaling, including transformations like "swapping the order of basis vectors", e.g., $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$. However, this is not intuitively obvious.

*Example* The two-dimensional case, easily generalizable to any two vectors in $n$ dimensions:
- Shear $mat(1, 1;, 1) vec(x, y) = vec(x + y, y)$ does not change volume.
- Shear $mat(1; -1, 1) vec(x + y, y) = vec(x + y, -x)$.
- Shear $mat(1, 1;, 1) vec(x + y, -x) = (y, -x)$.
- $-1$ scaling $(y, -x) ⇝ (y, x)$ makes the volume $-1$.

In fact, if you completely discard the concept of negative volume, you can say volume is positive multilinear alternating, a positive determinant, similar to the treatment of integration of densities on manifolds.

#tag("try_to_define_volume_of_low_dim") Consider a $k$-subspace as a manifold; for example, choose a $k$-basis to establish a coordinate system on it, then it has its own volume. However, $ℝ^n$ has many $k$-subspaces. If we only need to consider one $k$-subspace or $k$-submanifold, the problem ends here. But we want to define volume for all $k$-subspaces simultaneously, and for each $k$-subspace, choose a $k$-basis to establish a coordinate system to define the $k$-volume of that $k$-subspace. What is a good choice?

Consider two methods. Similar to linear form vs quadratic form. The first is like defining $v_1 + v_2$ or $|v_1 + v_2|$ for $vec(v_1,v_2)$; the second is like defining $(v_1^2 + v_2^2)^(1/2)$ or $|v_1^2 - v_2^2|^(1/2)$. The two definitions of volume coincide for $k = n$.

#let base-alt = $e_(i_1) ∧ ⋯ ∧ e_(i_k)$
#let index-alt = $i_1 < ⋯ < i_k$
#let coefficent-alt = $det mat(
  v _1^(i_1) , ⋯ , v _k^(i_1) ;
  ⋮,,⋮;
  v _1^(i_k) , ⋯ , v _k^(i_k)
)$

1. A basis $e_1 ,…, e_n$ of $ℝ^n$ gives a basis of the alternating tensor space: $#base-alt, 1 <= #index-alt <= n$ 
#indent[
  Use this to define volume: for each $1 <= k <= n$, the volume $Vol_(n,k)$ is a $k$-form on $ℝ^n$ satisfying $Vol_(n,k) (#base-alt) = 1$, forall $#index-alt$.

  For a general parallelepiped $v_1 ∧ ⋯ ∧ v_k = (v_1^(i_1) e_(i_1)) ∧ ⋯ ∧ (v_k^(i_k) e_(i_k)) = sum_(#index-alt) #coefficent-alt #base-alt$, the volume is:
  $
    Vol(v_1 ∧ ⋯ ∧ v_k) &:= sum_(#index-alt) #coefficent-alt \
    "or " &:= abs(sum_(#index-alt) #coefficent-alt)
  $
  Under this volume definition, the volume of a non-zero decomposable alternating tensor may be zero. Consider the $ℝ^2$ case: $A = mat(1,0;-1,1) in GL(2,ℝ)$ gives $A e_1 = mat(1,0;-1,1) vec(1,0) = vec(1,-1)$. $A e_1$ is a $1$-st order decomposable alternating tensor of $ℝ^2$. $Vol_(2,1)(A e_1) = Vol_(2,1)(e_1 - e_2) = 1 - 1 = 0$.
  
  Under this volume definition, as shown by $A in GL(2,ℝ)$ above, the property of shear transformation preserving volume for $n$-dimensional volume in $ℝ^n$ does not hold for $k < n$ dimensional volumes in $ℝ^n$.

  *Question* A specific basis $e_1 ,…, e_n$ is chosen. Which other bases yield the same result? Or, what is the linear subgroup that preserves all first-order volumes?
  
  $SL(n,ℝ)$ does not preserve $k < n$ dimensional volumes. E.g., $mat(1/2;,2)$ or $mat(-1;,-1)$ does not preserve the $1$-dimensional volume of the $e_1$ subspace.

  $A = mat(
    a^1_1, ⋯, a^1_n;
    ⋮,,⋮;
    a^n_1, ⋯, a^n_n
  ) in GL(n,ℝ)$ that preserves volumes of all orders satisfies, for $k = 1 ,…, n$ for $#index-alt$, $Vol_(n,k)(A e_(i_1) ∧ ⋯ ∧ A e_(i_k)) = 1$, or $sum_(j_1 < ⋯ < j_k) det mat(
    a^(j_1)_(i_1), ⋯, a^(j_i)_(i_k);
    ⋮,,⋮;
    a^(j_k)_(i_1), ⋯, a^(j_k)_(i_k)
  ) = 1$.

  *Example* $Vol_(n,1)(A e_i) = a^1_i + ⋯ + a^n_i$ (sum of entries of the $i$-th column of the $A in GL(n,ℝ)$ matrix). The cases for $n-1$ and $1$ are similar, i.e., the $a^i_j$ in $Vol_(n,1)$ correspond to the cofactors of $a^i_j$ in $Vol_(n,n-1)$.
  
  The cofactor is the determinant of the matrix obtained from $A$ by deleting the $i$-th row and $j$-th column, or is used in the decomposition representation of $det$ as an $n$-alternating tensor into $1, n-1$ alternating tensors. Cofactors can be generalized to the $k, n-k$ alternating tensor decomposition representation of $det$ or the Laplace expansion of the determinant.

  *Example* $Vol_(2,1)(A e_i) = a^1_i + a^2_i$.
  
  For $ℝ^2$, the $A = mat(
    a^1_1, a^1_2;
    a^2_1, a^2_2
  )$ preserving all volumes satisfies:
  $
    a^1_1 a^2_2 - a^2_1 a^1_2 &= 1 space && (2^"nd" "order volume") \
    a^1_1 + a^2_1 &= 1 && (1^"st" "order volume") \
    a^1_2 + a^2_2 &= 1
  $
  A coordinate representation of the solution set of this system is:
  $
    x &in ℝ \
    a^1_1 &= 1 - x \
    a^2_1 &= x \
    a^1_2 &= -x \
    a^2_2 &= 1 + x \
    A &= mat(1-x,-x;x,1+x) = mat(1;,1) + mat(-x,-x;x,x)
  $
  which is an affine line in $gl(2,ℝ)$ passing through $𝟙 = mat(1;,1)$. $SO(2)$ or $SO(1,1)$ is not a subset thereof.
]
2. Choose a non-degenerate quadratic form.
#indent[
  #link(<tensor_induced_quadratic_form>)[Induces] a quadratic form on the alternating space: $⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2  = det ⟨ v_i , v_j ⟩$.
  
  The unsigned volume is defined as the square root of the absolute value: $|det ⟨ v_i , v_j ⟩|^(1/2)$ or $abs(det mat(
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
  
  The quadratic form:
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
  
  In the non-Euclidean case, light-likeness has an effect.

  Different signatures yield different volume definitions for the same set of order $k < n$.
]
#tag("convex_hull_decomposition") A convex hull can be decomposed into simplices in this way:
- The vertices of the simplices belong to the vertices of the convex hull.
- The interiors of the simplices are disjoint.
- The union of the simplices is the convex hull.

The decomposition is not unique.

*Example* 

Four points in $ℝ^2$:

#image("../image/convex_hull_decomposition_1.png", width: 40%)

Five points in $ℝ^2$:

#image("../image/convex_hull_decomposition_3.png", width: 50%)

*Prop* A convex hull can be decomposed into simplices.

_Proof_
#indent[
  Based on the figures above, a proof can be sketched as follows:

  Induct on dimension. Take a vertex $x_i$.
  
  Classify the boundary facets into:
  - those containing $x_i$
  - those not containing $x_i$

  $H$ can be decomposed into cones formed by $x_i$ and the boundary facets $F_i$ not containing $x_i$.

  Each $F_i$ is a convex hull of one lower dimension and can be decomposed into $n - 1$-dimensional simplices.

  These simplices together with $x_i$ form $n$-dimensional simplices.

  The convex hull is decomposed into these simplices.
]
The intersection of convex hulls is a convex hull.

*Example* #image("../image/simplex_intersection.png", width: 60%)

The set difference of simplices may not be a convex hull. But it can still be decomposed into simplices.

*Example* #image("../image/simplex_substraction.png", width: 20%)

#tag("polyhedra") Polyhedron := finite union of n-simplices. Countable generalization -> countable polyhedron.

#image("../image/polyhedra.png", width: 30%)

#tag("Lebesgue_measurable") 
#indent[
  #image("../image/measure_approximation.png", width: 30%)
  Lebesgue measurable set $A$. Approximate with a finite union of simplex $P$, #link(<symmetric_set_minus>)[symmetric difference] $A Δ P$ cover with countable simplexes as a measure estimate error

  Specifically, for a set $A$, the outer measure is defined as $m^*(A) = inf_(ℕ-"polyhedra" C ⊇ A) Vol(C)$ if $m^*(A)$ is finite. The outer measure of a polyhedron is finite, and under Euclidean distance, due to the compactness property, it can be proven to satisfy subadditivity, so the outer measure of a polyhedron is its own volume (in geometries of spaces with signatures other than Euclidean, not all polyhedra should be used to define volume).

  Among sets with finite outer measure, using the outer measure of the symmetric difference as the distance $d(A, B) = m^*(A Δ B)$, a metric space is formed (@ref-12). (It is not necessary for zero distance to imply equality.) Polyhedra form a metric subspace. The volume of a polyhedron is a real-valued function on it, which can be proven to be continuous, using $|Vol(A) - Vol(B)| <= Vol(A Δ B)$, the essence of the proof is using $|Vol(A ∖ B) - Vol(B ∖ A)| <= Vol(A ∖ B) + Vol(B ∖ A)$

  Thus, a measurable set is defined as the closure of the family of polyhedra in the outer measure metric space. The measure of a measurable set is defined as the extension of the polyhedron volume function as a continuous function on its closure.

  The definition of integration will use similar method.

  Non-measurable sets are sets that have a finite outer measure but are not in the closure of polyhedra. Non-measurable sets exist (Vitali sets defined using the axiom of choice).
]

#tag("Lebesgue_measure")
#indent[
  The symmetric difference of sets satisfies
  
  $B Δ B' subset (A Δ B) ∪ (A Δ B')$ 

  Corresponding triangle inequality $d(B,B') <= d(A,B) + d(A,B')$

  _Proof_ $B ∖ B' ⊆ (B ∖ A) ∪ (A ∖ B')$ 

  #stack( dir: ltr,
    image("../image/measure_triangle_inequality_1.png", width: 40%),
    image("../image/measure_triangle_inequality_2.jpeg", width: 50%)
  )
  by
  $
    x in B ∖ B' 
    &<==>x in B and x in.not B' \
    &<==> (x in B and x in.not B') and (x in.not A or x in A) \
    &<==> (x in B and x in.not B' and x in.not A) or (x in B and x in.not B' and x in A) \
    &==> (x in B and x in.not A) or (x in A and x in.not B') \
    &<==> x in (B ∖ A) ∪ (A ∖ B') 
  $
  The other side is similar

  Triangle inequality
  $
    d(B,B') &= d(B Δ B') \
    &<= d((A Δ B) ∪ (A Δ B')) \
    &<= d(A,B) + d(A,B')
  $
]
#tag("try_to_define_low_dim_measure") Try to define $ℝ^n$'s $k < n$ dimensional measurable set. Since the codimension of the $k$ region $≠ 0$, it is obvious that we cannot use set difference and simplex covering as measure estimation errors to approximate a general "$k$ dimensional set" 

#tag("pathologic_example_measure_of_boundary") 
#indent[
  Using the Euclidean metric structure, some low-dimensional measurable sets can be defined, but there are still pathological examples (temporarily ignore the details, wiki it yourself) 

  - Painter's paradox. Measure is finite but the measure of the boundary is infinite. Unbounded region is used
  - Koch snowflake. The measure is finite, but the measure of the boundary is either undefinable or infinite. Uses a boundary that is nowhere differentiable.

  An example of approximating $n$ volume but not approximating the boundary volume

  - Schwarz Lantern
  - Infinite staircase approaching the hypotenuse of a triangle $sqrt(2) = 2$ or circle ($π = 4$) or as long as there is large normal oscillation, $sqrt(2) = π = ∞$
]
#tag("measure_theoretic_boundary")
#indent[
  Measure theory boundary. Dimension --- some supremum $d < n$ --- may not be a natural number but a real number

  For general measurable sets, intuitively, boundary = 

  $ {x in ℝ^n : not lim_("ball" -> x) frac(Vol(A ∩ "ball"),Vol("ball")) = 0,1} $

  where $"ball" -> 0$ means that the overall scaling of a ball centered on any $x$ goes to zero

  or boundary = neither inside nor outside. Inside = limit $1$, outside = limit $0$
]
Lebesgue differentiation theorem says that the measure of the boundary is zero

- The interval division of the sides of a rectangle/parallelogram gives a rectangular product-style division
- Barycentric subdivision (note that also subdivide the boundary)

#image("../image/measure_subdivision.png", width: 100%)
