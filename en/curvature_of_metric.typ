#import "../module/module.typ": *
#show: module

#tag("flat_metric") 
#indent[
  flat metric := a metric such that there exist coordinates $y$ where $forall x, g(x) = η$ standard metric

  The submanifold metric of $𝕊^2$ inherited from $ℝ^3$ is not #link(<flat_metric>)[], but rather #link(<quadratic_manifold_is_constant_sectional_curvature>)[constant-sectional-curvature].

  When does a flat metric exist?

  Choose a coordinate $y$, with metric $g$ 
  
  Assume transformation to $x$ with metric $η$, then

  - $g = (∂ x)/(∂ y)#none ^⊺ ⋅ η ⋅ (∂ x)/(∂ y)$

  - $g^(-1) = (∂ y)/(∂ x) ⋅ η ⋅ (∂ y)/(∂ x)#none ^⊺ $ 

  - $(∂ x)/(∂ y) ⋅ g^(-1) ⋅ (∂ x)/(∂ y)#none ^⊺ = η$

  #link(<connection_transformations>)[Connection transformations] 
  $
    Γ(y) 
    = (∂ y)/(∂ x) ⋅ Γ(x) ⋅ (∂ x)/(∂ y) + (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y))
  $
  For flat metric $Γ(x) = 0$, thus
  $
    Γ(y) = (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y))
  $
  Equivalently

  $ (∂)/(∂ y) ((∂ x)/(∂ y)) = (∂ x)/(∂ y) ⋅ Γ(y) $

  This property, combined with the initial condition of $p$, allows for the recovery of the flat metric using PDE, i.e., for proving  
  
  $ (∂)/(∂ y) ((∂ x)/(∂ y) ⋅ g^(-1) ⋅ (∂ x)/(∂ y)#none ^⊺) = 0 $

  _Proof_
  #indent[
    product-rule expansion of the above differential
    $
      &= ((∂)/(∂ y) ((∂ x)/(∂ y))) ⋅ g^(-1) ⋅ ((∂ x)/(∂ y))^⊺ \
      &quad + (∂ x)/(∂ y) ⋅ ((∂)/(∂ y) (g^(-1))) ⋅ ((∂ x)/(∂ y))^⊺ \
      &quad + (∂ x)/(∂ y) ⋅ g^(-1) ⋅ ((∂)/(∂ y) ((∂ x)/(∂ y))^⊺) 
        &quad "then use" (∂)/(∂ y) ((∂ x)/(∂ y)) = (∂ x)/(∂ y) ⋅ Γ(y) \

      &= (∂ x)/(∂ y) ⋅ (g^(-1)(Γ,) + ∂ g^(-1) + g^(-1)(,Γ)) ⋅ ((∂ x)/(∂ y))^⊺
        &quad "see" #link(<differenial_of_metric_inverse_vs_connection>)[link] \

      &= 0
    $
  ]
  linear PDE for $(∂ x)/(∂ y)$ 
  
  $ (∂)/(∂ y) ((∂ x)/(∂ y)) = (∂ x)/(∂ y) ⋅ Γ(y) $ 
  
  is solvable <==> satisfies #link(<linear_PDE_integrable_condition>)[]
  $
    [∇_i,∇_i'] = 0
  $
  where $∇ = ∂ + Γ$ is #link(<geodesic_derivative>)[]

  or $ [∇_v, ∇_v'] - ∇_([v,v']) = 0 $

  If $(∂ x)/(∂ y) (y)$ is solved, integrating again with the initial condition yields $x (y)$, which gives the conversion function from coordinate $y$ to the flat-metric coordinate $x$

  In flat-metric coordinates $Γ = 0$, so the geodesic ODE is $acc(x) = 0$, so flat-metric coordinates will be geodesic coordinates 
]
When not exist flat metric coordinate, choose #link(<Einstein_metric>)[] as minimal #link(<scalar_curvature>)[]

Now, do not assume flat metric

#tag("curvature_of_metric") 
#indent[
  Curvature ($R$ from "Riemann")

    - $R_(i i') = [∇_i,  ∇_i']$
    - $(R_(i i'))_j^j' = [∇_i,  ∇_i']_j^j'$

  $[∇_i,∇_i']$ is a tensor (even though $∇$ is not)

  name-overload: Curvature := #link(<metric_dual>)[] of curvature $R := g [∇_i,∇_i'] $

  In coordinates $R_(i i j' j') = g_(j' k) (R_(i i'))_j^k$ 
]
#tag("flat_metric_iff_curvature_0") flat-metric <==> curvature is zero

#tag("curvature_determine_metric_locally") 
#indent[
  "flat-metric <==> curvature zero" can be generalized to curvature determines local metric

  If two metrics $g,g'$ and their curvatures are related by a local diffeomorphism between points $p,p'$, and the differential is an isometry between the tangent spaces $p,q$, then the local diffeomorphism is a local isometry of $g,g'$.
]
#tag("curvature_in_geodesic_coordinate") 
#indent[
  At the origin $p$ of geodesic coordinates, by calculation, through

  - #link(<metric_connection>)[] definition of $Γ$ and definition of curvature $R$
  - $Γ(p) = 0$

  we have
  $ R_(i_1 i_2 j_1 j_2) = 1/2 sum_(i, j in 2!) sign(i) sign(j) ∂_(i_1 j_1) g_(i_2 j_2) $
  or
  $
    R_(i i' j j') = 1/2 (∂_(i j) g_(i' j') + ∂_(i' j') g_(i j) - ∂_(i j') g_(i' j) - ∂_(i' j) g_(i j'))
  $
]
==> If in geodesic coordinates, the second order derivative of the Taylor expansion of the metric is also zero $g(p + v) = η + o(v^2),$ then the curvature is also zero $R = 0$, which leads to a flat-metric, and thus the higher order derivatives are also zero $o(v^2) = 0$

#tag("symmetry_of_curvature")  
#indent[
  - $R_(i(12) j(12)) =$
  #indent[
    - $- R_(i(#emph("21")) j(12))$
    - $- R_(i(12) j(#emph("21"))$
    - $R_(#emph($j$) (12) #emph($i$) (12))$
  ]
  - $sum_("cyclic" (123)) R_(i(123) j) = 0$

  or

  - $R_(i i' j j') =$
  #indent[
    - $- R_(i' i j j')$
    - $- R_(i i' j' j)$
    - $R_(j j' i i')$
  ]
  - $R_(i i' i'' j) + R_(i' i'' i j) + R_(i'' i i' j) = 0$

  ==> $R in ⨀^2 (⋀^2 V^⊺)$
]
_Proof_ Definition of curvature $R$ in geodesic coordinates, expressed using $Γ$ or $g$

#tag("algebraic_curvature_tensor") The algebraic curvature tensor is defined to satisfy the above symmetries (@ref-6, lect 8) 

#tag("curvature_product")  
#indent[
  Mimicking #link(<curvature_in_geodesic_coordinate>)[the definition of curvature in geodesic coordinates], for second-order symmetric tensors $T, S ∈ ⨀^2 V^⊺$, define the curvature-product
  $
    (T #cvt-prod S)_(i_1 i_2 j_1 j_2) 
    
    = sum_(i, j in 2!) sign(i) sign(j) T_(i_1 j_1) S_(i_2 j_2)
  $
  or
  $
    (T #cvt-prod S)_(i i' j j') 
    
    = T_(i j) S_(i' j') + T_(i' j') S_(i j) - T_(i j') S_(i' j) - T_(i' j) S_(i j')
  $
  $T #cvt-prod S$ satisfies #link(<symmetry_of_curvature>)[], so $T #cvt-prod S in "curvature"$, or $#cvt-prod : (⨀^2 V^⊺)^2 -> "curvature"$

  At the origin of geodesic coordinates, the curvature is (formally) 
  
  $ R = 1/2 (∂^2 #cvt-prod g) $ 
]
*Def* $f(R_i(1234)) := sum_("cyclic" (123)) R_(i(123) i(4))$

- $f$ maps $T ∈ ⨀^2 (⋀^2 V^⊺)$ to itself and $f^2 = f$, i.e. #link("https://en.wikipedia.org/wiki/Projection_(linear_algebra)")[wiki:Projection\_(linear_algebra)], so $⨀^2 (⋀^2 V^⊺) = ker f ⊕ im f$

- $ker f = "curvature"$

- For alternating tensors $T,S ∈ ⋀^2 V^⊺$, $f(T ⊙ S) = T ∧ S$, so $im(f) = ⋀^4 V^⊺$

#tag("dimension_of_algebraic_curvature") Using $("domain")/("kernel") ≃ "image"$, we have the dimension of the algebraic curvature tensor space 

$
  dim("curvature") 
  &= dim(⨀^2 (⋀^2 V^⊺)) - dim(⋀^4 V^⊺) \
  &= 1/12 n^2 (n^2 - 1)
$ 

where $n = dim V$ 

metric is a tensor $g ∈ ⨀^2 V^⊺$

Mapping $g #cvt-prod : ⨀^2 V^⊺ -> "curvature"$ 

#tag("adjoint_of_curvature_product") $(g #cvt-prod)^† : "curvature" -> ⨀^2 V^⊺$ :=
#indent[
  For $T ∈ ⨀^2 V^⊺$ and $S ∈ "curvature"$ and the #link(<tensor_induced_metric>)[] of $"curvature",⨀^2 V^⊺$
  $
    g(g #cvt-prod T, S) = g(T, (g #cvt-prod)^† S)
  $
  For each $S ∈ "curvature"$, the linear function

  $ (T ⇝ g(g #cvt-prod T, S)) ∈ (⨀^2 V^⊺)^⊺ $ 

  has the metric-adjoint of the $⨀^2 V^⊺$ space :=

  $ (g #cvt-prod)^† (S) ∈ ⨀^2 V^⊺ $ 

  The linear function $T ⇝ g(g #cvt-prod T, S)$ can be represented by the metric of the $⨀^2 V^⊺$ space 

  $ T ⇝ g(T, (g #cvt-prod)^† S) $

  In coordinates $((g #cvt-prod)^† S)_(i j) = 4 g^(i' j') S_(i i' j j')$
]

$g #cvt-prod$ is injective, and $(g #cvt-prod)^†$ is surjective. _Proof_ uses the pre-inverse and post-inverse of composite mappings. The construction method refers to the calculation in #link(<curvature_decomposition>)[]

$dim(im(g #cvt-prod)^†) = dim(im(g #cvt-prod)) = dim ⨀^2 V^⊺$

metric-adjoint $(g #cvt-prod)^†$ ==> $ker(g #cvt-prod)^† ⟂ im(g #cvt-prod) ⊆ "curvature"$

Linear mapping $(g #cvt-prod)^†$ ==> $dim ker(g #cvt-prod)^† + dim im(g #cvt-prod)^† = "curvature"$

==> $ker(g #cvt-prod)^† ⟂ im(g #cvt-prod) = "curvature"$

Mapping $g ⋅ : ℝ -> ⨀^2 V^⊺$

metric-adjoint $(g ⋅)^† : ⨀^2 V^⊺ -> ℝ$ :=

for $r ∈ ℝ$ and $T ∈ ⨀^2 V^⊺$
$
  g(g ⋅ r, T) = g(r, (g ⋅)^† T) = r ⋅ ((g ⋅)^† T)
$
$g(g ⋅ r, T) = r ⋅ g(g,T) $ so $(g ⋅)^† T = g(g,T)$

In coordinates $g(g , T) = g^(i j) T_(i j)$

$g ⋅$ is injective, $(g ⋅)^†$ is surjective

$dim(im(g ⋅)^†) = dim(im(g ⋅))$

$ker(g ⋅)^† ⟂ im(g ⋅) = ⨀^2 V^⊺ = im(g #cvt-prod)^†$

#tag("curvature_decomposition_space") 
$
  "curvature" = ker(g #cvt-prod)^† ⟂ ker(g ⋅)^† ⟂ im(g ⋅) 
$ 
Orthogonal decomposition into tensor subspace, and cannot be decomposed further, i.e., irreducible

#tag("curvature_decomposition") forall $T ∈ "curvature"$, exists $S ∈ ⨀^2 V^⊺$, orthogonal decomposition $T = U + g #cvt-prod S ∈ ker(g #cvt-prod)^† ⊕ im(g #cvt-prod)$

_Proof_ if it's true then 
#indent[
  $1/4 (g #cvt-prod)^† T &= (g #cvt-prod)^† (g #cvt-prod) S \
  &= (n-2) S + g ⋅ g(g,S)$ 

  $1/4 (g ⋅)^† (g #cvt-prod)^† T &= (n-2) ⋅ g(g,S) + g(g,g) ⋅ g(g,S) \
  &= 2(n-1) ⋅ g(g,S)$

  $S = 1/(4(n-2)) ((g #cvt-prod)^† T - 1/(2(n-1)) g ⋅ (g ⋅)^† (g #cvt-prod)^† T)$

  - #tag("Ricci_curvature") $"Ric" := 1/4 (g #cvt-prod)^† R$ 

    In coordinates $"Ric"(i j) = g^(i' j') R_(i i' j j')$

  - #tag("scalar_curvature") $"scal" := 1/4 (g ⋅)^† (g #cvt-prod)^† R$ 

    In coordinates $"scal" = g^(i j) g^(i' j') R_(i i' j j')$

  - #tag("conformal_curvature") $W := R - g #cvt-prod 1/(n-2) ("Ric" - 1/(2(n-1)) ⋅ g ⋅ "scal") ∈ ker(g #cvt-prod)^†$ (named so because if it vanish then the metric conformally flat when $n >= 4$) ($W$ from "Weyl")

  Similarly, the orthogonal decomposition $⨀^2 V^⊺ = ker(g ⋅)^† ⊕ im(g ⋅)$ is $(S - 1/n ⋅ g ⋅ (g ⋅)^† S) + 1/n ⋅ g ⋅ (g ⋅)^† S$

  trace-free Ricci-curvature $"tr-free-Ric" := "Ric" - 1/n ⋅ g ⋅ "scal" ∈ ker(g ⋅)^†$

  Curvature Orthogonal Decomposition to Tensor Subspace 

    $"curvature" = ker(g #cvt-prod)^† ⊕ ker(g ⋅)^† ⊕ im(g ⋅)$
  $
    R =
    &quad W \
    & + 1/(n-2) ⋅ g #cvt-prod "tr-free-Ric" \ 
    & + 1/(2n(n-1)) ⋅ "scal" ⋅ g #cvt-prod g
  $
  quadratic-form
  $
    |R|^2 &= |W|^2 + 4/(n-2) |"tr-free-Ric"|^2 + 2/(n(n-1)) "scal"^2 \

    &= |W|^2 + 4/(n-2) |"Ric"|^2 - 2/(n(n-1)) "scal"^2
  $
]
#tag("curvature_low_dimension") low dimension curvature

- $n = 0,1 ==> dim("curvature") = 0$

- $n = 2 ==> dim("curvature") = 1$ span by $g #cvt-prod g$
#indent[
  - $R = 1/2 "scal" g #cvt-prod g$, only type $R_(1212) != 0$, and $g #cvt-prod g ∼ g_(11) g_(12) - g_(12)^2 = det(g)$

  - $"Ric" = 1/2 "scal" g$
]
- $n = 3 ==> dim("curvature") = 6$ 
#indent[
  - $g #cvt-prod : ⨀^2 V^⊺ -> "curvature"$ is a bijection

  - $W = 0$

  - $R$ is completely determined by $"Ric" = 1/4 (g #cvt-prod)^† R$
]
let $(∂ g_(i i'))/(∂ x^j ∂ x^j') = g_(i i', j j')$

Curvature also appears in the Taylor expansion of metric geodesic coordinates
#indent[
  $
    g_(i i') &= η_(i i') + (∂_(j j') g_(i i')) v^j v^j' + o(v^2) 
  $
  and satisfies
  $
    (∂_(j j') g_(i i')) v^j v^j' = - 1/3 R_(i j i' j') w^j w^j'
  $
  Note that this is an equality of sums $sum_(j j')$, not an equality of coefficients

  - "trace" $(g #cvt-prod)^†$ also appears in Taylor-expansion of metric volume-form $|g| = |det (g_(i j))|^(1/2)$, related to $det(𝟙 + A) = 𝟙 + tr(A) + o(A)$ and $(1 + x)^(1/2) = 1 + 1/2 x + o(x)$
    $
      |g| = 1 - 1/6 "Ric"(v,v) + o(v^2)
    $
  
  - "trace" $(g ⋅)^†$ appears again in the volume of geodesic ball (for spacetime manifold should use multi radius?)
    $
      (Vol("geodesic-ball"(r)))/(Vol("ball"(r))) = 1 - 1/(6(n+2)) "scal" r^2 + o(r^2)
    $
]
$∇_X Y - ∇_Y X = [X,Y]$

  if scale matric $g ⇝ λ g$

  - geodesic-derivative $∇$
  - curvature $[∇_i,∇_i']$
  - curvature metric-dual $λ g [∇_i,∇_i']$
  - Ricci-curvature $1/λ "Ric"$
  - #link(<sectional_curvature>)[] $1/λ K$
  - scalar-curvature $1/λ "scal"$

When representing spacetime metric with signature $(3,1)$, it is obtained by multiplying the $(1,3)$ signature by $λ = -1$