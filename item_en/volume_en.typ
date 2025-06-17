#import "../module/module.typ": *
#show: module

#tag("affine-combination") 
#indent[
  Affine combination
  $
    sum_(0 .. N) t_i ⋅ x_i \
    t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 1
  $
  #show "Δ": it => text(it)

  is a well-defined affine point, or rather the coordinate definition does not depend on the choice of origin. Let the coordinates of $x_i$ be $v_i$. Change the origin $v_i' = v_i + Δ$
  $
    sum t_i (v_i + Δ) = (sum t_i v_i) + (sum t_i) Δ = (sum t_i v_i) + Δ
  $
  Regarding intuition, the simplest example is the proportional point of a straight line between two points #html.elem("img", attrs: (src: "../image/affine-combination-1.jpeg", width: "30%"))

  Can be iteratively or decomposed e.g. triangle $t_1 x_1 + t_2 x_2 + t_3 x_3 <--> s_1 (t_1 x_1 + t_2 x_2) + s_2 x_3$. And the decomposition operation is commutative. And it can be decomposed into multiple $>= 1$ order

  #html.elem("img", attrs: (src: "../image/affine-combination-2.jpeg", width: "30%"))
]
#tag("affine-coordinate") $t_i$ can be considered as a coordinate based on the point $x_i$. Affine coordinates. *alias* Barycentric coordinates #tag("barycentric-coordinate")

#tag("affine-independent") 
#indent[
  Affine independence := $x_k$ cannot be expressed as $sum_(i = 0 .. N without k) t_i x_i$

  Affine independence corresponds to the linear independence of $x_i - x_0$ after selecting one point e.g. $x_0$ as the origin

  If it is affine independent, then the vertices correspond to $t_k = 1 and t_(1 ,…, N without k) = 0$

  An $n$-dimensional affine space has at most $n+1$ affine independent points

  For the coordinates of $n+1$ affine independent points of an $n$-dimensional affine space $V$, $t_0 ,…, t_n$ have a one-to-one correspondence with the affine points of $V$

  If $t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 0$, although the coordinate $sum t_i v_i$ will not change due to changing the origin, it is not an affine point
]
#tag("affine-map-point-ver") *alias* #tag("simplicial-map")
 Let $y_1 ,…, y_n$ be points in another affine space. The affine mapping is determined by $f(x_i) = y_i$, and the situation of other points can be obtained by generating them through affine homomorphism
$
  sum t_i x_i ⇝ sum t_i y_i
$
#tag("center-of-affine-point-set") The center point of $sum_(0 .. N) t_i = 1$ is $t_1 = ⋯ = t_n = 1/N$ 

#tag("convex-hull") := extra $0 <= t_i <= 1$

#tag("simplex") := convex hull formed by affinely independent points

#html.elem("img", attrs: (src: "../image/simplex.jpeg", width: "70%"))

#tag("parallelogram") Due to symmetry, the description of parallelepiped can be simplified from the convex hull of $2n$ points to the description of $n$ points, after selecting the origin 

$ t_1 v_1 + ⋯ + t_n v_n, 0 <= t_i <= 1 $

#html.elem("img", attrs: (src: "../image/parallelogram.jpeg", width: "25%"))

#tag("parallelogram-simplex-correspond")
#indent[
  A parallelepiped can be $⨆$ decomposed into $n!$ simplexes that are equivalent under translation and reflection

  #html.elem("img", attrs: (src: "../image/shear-transformation.jpg", width: "30%"))

  The $n$ permutations of points $v_1 ,…, v_n$
  $
    t_(i(1)) v_(i(1)) + ⋯ + t_(i(n)) v_(i(n)) \ 
    0 <= t_(i(n)) <= ⋯ <= t_(i(1)) <= 1
  $
  Corresponding simplex 
  $
    s_0 0 + s_1 v_(i(1)) + (s_2 v_(i(1)) + v_(i(2))) + ⋯ + s_n (v_(i(1)) + ⋯ + v_(i(n))) \ 
    sum_(i=0..n) s_i = 1, 0 <= s_i <= 1
  $
  with
  $
    v_(i(n)) &=&s_n \
    v_(i(n-1)) &=&s_n + s_(n-1)\
    &⋮ \
    v_(i(1)) &=&s_n + s_(n-1) + ⋯ + s_1
  $
  Conversely, a simplex also gives many parallelepipeds with it as one of the $n!$ simplex blocks
  
  The structural strength given by these two things is about the same
]
#tag("volume-of-parallelogram") Volume assumption for $ℝ^n$
- Translation invariant
- Reflection invariant (unsigned volume)
- Finite $⨆$ -> finite volume $sum$ 
- If $v_1 ,…, v_n$ are not linearly independent, then in the lower-dimensional subspace, so the $n$-order volume is defined as zero
 
#tag("volume-of-simplex") is $1/n!$ of volume-of-parallelogram

#tag("shear-transformation") After decomposing the parallelepiped into simplexes, cut and translate to form a new parallelepiped with the same volume. Called shear transformation. e.g. $t_1 (v_1 + v_2) + t_2 v_2 + ⋯ +  t_n v_n$

#html.elem("img", attrs: (src: "../image/shear-transformation.jpg", width: "30%"))

(image from p.587 of @ref-3)

Shear transformation volume invariance is algebraically e.g. $(v_1 + v_2) ∧ v_2 ∧ ⋯ ∧ v_n = v_1 ∧ v_2 ∧ ⋯ ∧ v_n$ or $det mat(
  1, 1;
  , 1;
  ,, ⋱;
  ,,,, 1
) = 1$

Scaling of edges $ℕ,ℤ,ℚ,ℝ$. e.g. $forall a in ℝ, Vol(a v_1, v_2 ,…, v_n) = a Vol(v_1, v_2 ,…, v_n)$

The stretching and shearing of parallelepipeds corresponds to the decomposition of $GL(n,ℝ)$ into elementary linear transformations, which is also used in Gaussian elimination (although they can be used for $m × n$ matrices)

#tag("volume-determinant") The volume change of parallelepiped $v_1 ,…, v_n$ is $A ∈ GL(n,ℝ), Vol(A v_1 ,…, A_n v_n) = det A Vol(v_1 ,…, v_n)$

Choose a basis $e_1 ,…, e_n$ of $ℝ^n$, the volume of the parallelepiped generated by it is $1$, and the volume of other parallelepipeds $A e_1 ,…, A e_n$ is $det A$

This is the oriented volume. $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$ The set of parallelepipeds remains the same, so the absolute volume remains the same, but the directions of $v_1,v_2 ,…, v_n$ and $v_2,v_1 ,…, v_n$ are opposite

Oriented volume = Unoriented volume + Direction factor

$v_1 ,…, v_n$ linearly dependent ==> in a lower-dimensional subspace ==> zero volume. At this time, $A in GL$ can be extended to $A in Lin$, and zero volume algebraically corresponds to $A ∉ GL <==> det(A) = 0$

For $ℝ^n$'s $k$-th order parallelepiped and simplex

Map the parallelepiped to $ℝ^n$'s $k$-th order alternating tensor $(ℝ^n)^(∧ k)$'s decomposable element $v_1 ∧ ⋯ ∧ v_k$

#tag("try-to-define-volume-of-low-dim") How to define low-dimensional volume? Consider two methods. Similar to linear form vs quadratic form. The first is like defining $vec(v_1,v_2)$ as $v_1 + v_2$ or $|v_1 + v_2|$, the second is similar to defining $(v_1^2 + v_2^2)^(1/2)$ or $|v_1^2 - v_2^2|^(1/2)$

#let base-alt = $e_(i_1) ∧ ⋯ ∧ e_(i_k)$
#let index-alt = $i_1 < ⋯ < i_k$
#let coefficent-alt = $det mat(
  v _1^(i_1) , ⋯ , v _k^(i_1) ;
  ⋮,,⋮;
  v _1^(i_k) , ⋯ , v _k^(i_k)
)$

1. A basis of $ℝ^n$ gives a basis of the alternating tensor space $#base-alt, #index-alt$ 
#indent[
  Use it to define volume: For each $k$, a special alternating $k$ multilinear function or $k$ form of $ℝ^n$ $Vol_(n,k)$, defined as $Vol_(n,k) (#base-alt) = 1$, forall $#index-alt$

  So for a general parallelepiped $v_1 ∧ ⋯ ∧ v_k = (v_1^(i_1) e_(i_1)) ∧ ⋯ ∧ (v_k^(i_k) e_(i_k)) = sum_(#index-alt) #coefficent-alt #base-alt$ the volume is 
  $
    Vol(v_1 ∧ ⋯ ∧ v_k) &:=&sum_(#index-alt) #coefficent-alt \
    "or " &:=&abs(sum_(#index-alt) #coefficent-alt)
  $
  The volume of a nonzero decomposable alternating tensor can be zero, $A = mat(1,0;-1,1) in GL(2,ℝ)$ such that $Vol(2,1)(A e_1) = 1 - 1 = 0$. The shear transformation of order $n$ does not hold for order $k$

  *Question* A special basis is selected, so what other bases have the same result? or what is the linear subgroup that keeps the volume unchanged? 
  
  $SL(n,ℝ)$ does not preserve $k < n$ dimensional volume. e.g. $mat(1/2;,2)$ or $mat(-1;,-1)$ does not preserve $1$ dimensional volume

  matrix $A$ that preserves all order volumes $A = mat( 
    a^1_1, ⋯, a^1_n;
    ⋮,,⋮;
    a^n_1, ⋯, a^n_n
  ) in GL(n,ℝ)$ satisfies, for $k = 1 ,…, n$ for $#index-alt$, $Vol_(n,k)(A e_(i_1) ∧ ⋯ ∧ A e_(i_k)) = 1$, or $sum_(j_1 < ⋯ < j_k) det mat(
    a^(j_1)_(i_1), ⋯, a^(j_i)_(i_k);
    ⋮,,⋮;
    a^(j_k)_(i_1), ⋯, a^(j_k)_(i_k)
  ) = 1$

  *Example* $Vol_(n,1)(A e_i) = a^1_i + ⋯ + a^n_i$ (sum of elements in the $i$ th column). The $n-1$ and $1$ cases are similar, i.e. $a^i_j$ corresponds to the remaining sub式 
  
  (The cofactor is used in the $1,n-1$ alternating tensor decomposition representation of $det$, which can be generalized to the $k,n-k$ alternating tensor decomposition representation or Laplace expansion of $det$)

  *Example* $Vol_(2,1)(A e_i) = a^1_i + a^2_i$
  
  matrix $A$ preserves all $ℝ^2$ volumes $A = mat(
    a^1_1, a^1_2;
    a^2_1, a^2_2
  )$ satisfies
  $
    a^1_1 a^2_2 - a^2_1 a^1_2 &=&1 \
    a^1_1 + a^2_1 &=&1 \
    a^1_2 + a^2_2 &=&1
  $
  a coordinate representation of the solution
  $
    x &in&ℝ \
    a^1_1 &=&1 - x \
    a^2_1 &=&x \
    a^1_2 &=&-x \
    a^2_2 &=&1 + x \
    A &=&mat(1-x,-x;x,1+x)
  $
  is an affine line of $gl(2,ℝ)$ passing through $𝟙 = mat(1;,1)$. $SO(2)$ or $SO(1,1)$ is not its subset
]
2. Select a non-degenerate quadratic form
#indent[
  #raw("#link(<tensor-induced-quadratic-form>)[Derive]") the quadratic form of the alternating space $⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2  = det ⟨ v_i , v_j ⟩$. Undirected volume $|det ⟨ v_i , v_j ⟩|^(1/2)$ or $abs(det mat(
    ⟨ v_1 , v_1 ⟩, ⋯, ⟨ v_1 , v_n ⟩;
    ⋮,,⋮;
    ⟨ v_n , v_1 ⟩, ⋯, ⟨ v_n , v_n ⟩
    ))^(1/2)$. According to the orthonormal basis and its coefficients $v_1 ∧ ⋯ ∧ v_k = sum_(#index-alt) det mat(
    v_1^(i_1) , ⋯ , v_k^(i_1) ;
    ⋮,,⋮;
    v_1^(i_k) , ⋯ , v_k^(i_k)
  ) e_(i_1) ∧ ⋯ ∧ e_(i_k)$, write it as a standard quadratic form
  $
    ⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2 &=&sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2 \
    Vol_(n,k)(v_1 ∧ ⋯ ∧ v_k) &:=&abs(sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2)^(1/2)
  $
  $⟨ v_1 ∧ ⋯ ∧ v_n ⟩^2 = 0$ <==> volume is zero
  
  In the non-Euclidean case, light-like will have an impact

  Different signature volume definitions will be different for the same set of order $k < n$
]
The two volume definitions coincide for $k = n$

#tag("convex-hull-decomposition") convex hull optimal decomposition to simplex, the method is not unique. Troublesome combinatorial problem

*Example* 

$ℝ^2$ 's $4$ points

#html.elem("img", attrs: (src: "../image/convex-hull-decomposition-1.jpg", width: "40%"))

$ℝ^2$ 's $5$ points. First select $2$ simplex, that is, select $3$ vertices

#html.elem("img", attrs: (src: "../image/convex-hull-decomposition-2.jpg", width: "80%"))

Find out which simplex combinations are decompositions of the convex hull

#html.elem("img", attrs: (src: "../image/convex-hull-decomposition-3.jpg", width: "50%"))

The intersection of convex hulls is a convex hull

*Example* #html.elem("img", attrs: (src: "../image/simplex-intersection.jpg", width: "60%"))

The reduced set of a simplex may not be a convex hull. But it can still be decomposed into simplex 

*Example* #html.elem("img", attrs: (src: "../image/simplex-substraction.jpg", width: "20%"))

#tag("polyhedra") Polyhedron :=
#indent[
  #html.elem("img", attrs: (src: "../image/polyhedra.jpeg", width: "40%"))
  n simplex finite union with

  - internally disjoint
  - transitively connected between two n simplex
  - the transitive boundary is n-1 simplex

  The dimension of the transitive boundary is to give the polyhedron the best connectivity
]
#tag("low-dim-polyhedra") Low-dimensional sub-polyhedra. As a submanifold-like setting? i.e. Adjacent simplexes with $k-1$ boundaries in $ℝ^k$ dimension have only two -> piecewise embedded in $ℝ^n$. Otherwise, consider the example of a three-connected boundary #html.elem("img", attrs: (src: "../image/tri-intersect-boundary.jpg", width: "40%"))

Countable generalization -> Countable polyhedron

#tag("polyhedra-measurable") 
#indent[
  #html.elem("img", attrs: (src: "../image/measure-approximation.jpeg", width: "30%"))
  Polyhedron measurable set $A$. Approximate with a countable polyhedron $P$, #raw("#link(<symmetric-set-minus>)[symmetric difference]") $A Δ P$ cover with countable simplexes as a measure estimate error

  Sets $A,B$ define distance (@ref-12)

  $ d(A,B) := inf_("polyhedra" C \ A Δ B ⊂ C) Vol(C) $

  Measurable set $A$ := $inf_("polyhedra" P) d(A,P) = 0$

  Distance from set $A$ to "origin" $∅$ is $A Δ ∅ = A$ and $d(A) : = d(A,∅) = inf_("polyhedra" C \ A ⊂ C) Vol(C)$ 

  $d(A Δ B) = d(A,B)$

  If $A ⊂ A'$ then $d(A) <= d(A')$

  $d(A ∪ A') <= d(A) + d(A')$ _Proof_ by $(A ⊂ P) and (A' subset P') ==> (A ∪ A') subset (P ∪ P')$

  Note that such measurable sets have good connectivity. In one dimension, there are only intervals, excluding the Smith–Volterra–Cantor set, etc. Operations such as the union of polyhedral measurable sets are also restricted.
]
#tag("Lebesgue-measurable") If transitive connectivity is not used, then the definition of a general measurable set is obtained. alias: Lebesgue measurable set. Non-measurable sets exist.

#tag("Lebesgue-measure")
#indent[
  The symmetric difference of sets satisfies
  
  $B Δ B' subset (A Δ B) ∪ (A Δ B')$ 

  Corresponding triangle inequality $d(B,B') <= d(A,B) + d(A,B')$

  _Proof_ $B ∖ B' ⊂ (B ∖ A) ∪ (A ∖ B')$ 
  
    #html.elem("img", attrs: (src: "../image/measure-triangle-inequality-1.jpeg", width: "40%"))
    #html.elem("img", attrs: (src: "../image/measure-triangle-inequality-2.jpeg", width: "50%"))
  
  by
  $
    x in B ∖ B' 
    &<==>&x in B and x in.not B' \
    &<==>&(x in B and x in.not B') and (x in.not A or x in A) \
    &<==>&(x in B and x in.not B' and x in.not A) or (x in B and x in.not B' and x in A) \
    &==>&(x in B and x in.not A) or (x in A and x in.not B') \
    &<==>&x in (B ∖ A) ∪ (A ∖ B') 
  $
  The other side is similar

  Triangle inequality
  $
    d(B,B') &=&d(B Δ B') \
    &<=&d((A Δ B) ∪ (A Δ B')) \
    &<=&d(A,B) + d(A,B')
  $

  For polyhedra $P,P'$ with finite volume and $d(A,P),d(A,P') < ε$

  Unique limit
  $
    |Vol(P) - Vol(P')| = Vol(P Δ P') = d(P,P') <= d(A,P) + d(A,P') < 2 ε
  $
  If we use the #raw("#link(<net>)[net]") of a polyhedron approximating $A$, then there is a #raw("#link(<hom-limit>)[limit homomorphism]") $Vol(A) := lim_(d(A,P) -> 0) Vol(P)$ 
  
  Obtain the definition of finite measure. The definition of infinite measure comes from the countable approximation of finite measure, or $sum_(n=1..∞) ε_n < ε$ technique
]
#tag("try-to-define-low-dim-measure") Try to define $ℝ^n$'s $k < n$ dimensional measurable set. Since the codimension of the $k$ region $≠ 0$, it is obvious that we cannot use set difference and simplex covering as measure estimation errors to approximate a general "$k$ dimensional set" 

#tag("pathologic-example-measure-of-boundary") 
#indent[
  Using the Euclidean metric structure, some low-dimensional measurable sets can be defined, but there are still pathological examples (temporarily ignore the details, wiki it yourself) 

  - Painter's paradox. Measure is finite but the measure of the boundary is infinite. Unbounded region is used
  - Koch snowflake. The measure is finite, but the measure of the boundary is either undefinable or infinite. Uses a boundary that is nowhere differentiable.

  An example of approximating $n$ volume but not approximating the boundary volume

  - Schwarz Lantern
  - Infinite staircase approaching the hypotenuse of a triangle $sqrt(2) = 2$ or circle ($π = 4$) or as long as there is large normal oscillation, $sqrt(2) = π = ∞$
]
#tag("measure-theoretic-boundary")
#indent[
  Measure theory boundary. Dimension --- some supremum $d < n$ --- may not be a natural number but a real number

  For measurable sets of polyhedra, intuitively, boundary = the maximum minus the minimum in the zero-measure set quotient of the measurable set $⋃ [A] ∖ ⋂ [A]$

  For general measurable sets, intuitively, boundary = 

  $ {x in ℝ^n : not lim_("simp" -> x) frac(Vol(A ∩ "simp"),Vol("simp")) = 0,1} $

  where $"simp" -> 0$ means that the overall scaling of a simplex centered on any $x$ goes to zero

  or boundary = neither inside nor outside. Inside = limit $1$, outside = limit $0$
]
Lebesgue differentiation theorem says that the measure of the boundary is zero

- The interval division of the sides of a rectangle gives a rectangular product-style division
- Connecting the center of a simplex to $n$ points has $binom(n+1,n) = n$ ways to divide a simplex into $n$ sub simplices
- Or use the midpoint of all lower-dimensional simplices on the boundary

#html.elem("img", attrs: (src: "../image/measure-subdivision.jpeg", width: "100%"))
