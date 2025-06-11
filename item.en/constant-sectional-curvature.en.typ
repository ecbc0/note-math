#import "/module/module.typ": *
#show: module

#tag("sectional-curvature") 
#indent[
  According to #link(<symmetry-of-curvature>)[], $"curvature" subset ⨀^2 ⋀^2 V^⊺$
  
  Sectional curvature is a quadratic form (possibly degenerate) restricted to the direction space $⋀^2 V^⊺$ i.e. restricted to unit length
  $
    K(X ∧ Y) = (R(X ∧ Y, X ∧ Y))/(|X ∧ Y|^2)
  $
]
Curvature can be recovered from sectional-curvature. _Proof_ does not require non-degeneracy, symmetric bilinear forms can be recovered from quadratic forms

*Prop* $1/2 ⋅ (g #cvt-prod g) (X ∧ Y, X ∧ Y) = |X ∧ Y|^2$ 

#tag("constant-sectional-curvature") $K(X ∧ Y) = "const"$ <==>
$
  (R = 1/(2n(n-1)) ⋅ "scal" ⋅ g #cvt-prod g) 
  and ("scal" = "const")
$
i.e. the curvature only has a scalar part and the scalar curvature is constant

_Proof_ 
#indent[  
  constant-sectional-curvature <==> $R(X ∧ Y, X ∧ Y) = λ |X ∧ Y|^2 = λ ⋅ 1/2 ⋅ (g #cvt-prod g) (X ∧ Y, X ∧ Y)$ 
  
  <==> $R - λ ⋅ 1/2 ⋅ g #cvt-prod g$ is a zero quadratic form 
  
  <==> $R = λ ⋅ 1/2 ⋅ g #cvt-prod g$

  The orthogonal decomposition of $"curvature"$ gives $R = 1/(2n(n-1)) ⋅ "scal" ⋅ g #cvt-prod g$ with $"scal" = "constant"$
]
#tag("constant-sectional-curvature-imply-Einstein-metric") 

_Proof_ trace-free Ricci-curvature = 0

#tag("constant-sectional-curvature-low-dimension") 

  - $dim = 2$ ==> constant-sectional-curvature = Einstein-metric = constant-scalar-curvature

  - $dim = 3$ ==> constant-sectional-curvature = Einstein-metric _Proof_ 3D $W = 0$ + (Einstein <==> $"tr-free-Ric" = 0$)

#tag("quadratic-manifold") :=
#indent[
  $ ℚ^(p,q)(± 1) = {x in ℝ^(p,q) : ⟨ x ⟩^2 = ± 1} $ 

  where $⟨ x ⟩^2 = sum_(sign) sign sum_(i_sign) x_(i_sign)^2 = x_1^2 + ⋯ + x_p^2 - (x_(p+1)^2 + ⋯ + x_(p+q)^2)$
]
#tag("quadratic-manifold-is-constant-sectional-curvature") Quadratic manifold $ℚ^(p,q)(± a^2)$ has constant-sectional-curvature $R = 1/(± 2 a^2) g #cvt-prod g$

_Proof_ 
#indent[
  Using submanifold techniques. A point $x$ on the submanifold $ℚ(p,q)(± a^2)$ has tangent space and normal space in $ℝ^(p,q)$
  
  Submanifold geodesic coordinates for the point $x in ℚ(p,q)(± a^2)$ + normal space as coordinates for the manifold $ℝ^(p,q)$
  
  The coordinate-frame $∂_i$ of $ℝ^(p,q)$ at point $x$ in these coordinates is orthonormal

  Separate tangent, normal, $Γ = Γ^⊤ + Γ^⟂$

  The metric-dual of curvature $g [∇_i,∇_i'] = g[∂_i + Γ_i, ∂_i' + Γ_i'] $

  ==> $R^⊤_(i j i' j') = R_(i j i' j') + g(Γ^⟂_(i j),Γ^⟂_(i' j')) - g(Γ^⟂_(i j'),Γ^⟂_(i' j))$

  The curvature of $ℝ^(p,q)$ is zero $R_(i j i' j') = 0$

  ==> $R^⊤_(i j i' j') = g(Γ^⟂_(i j),Γ^⟂_(i' j')) - g(Γ^⟂_(i j'),Γ^⟂_(i' j))$
  
  Quadratic manifold co-dimension 1, normal space dimension 1, normal field $Γ^⟂_(i j) = λ n$ with unit normal field $n$
  $
    g(Γ^⟂_(i j), n) &= g(Γ_(i j), n)
      & "by" Γ_(i j)^(⊤) ⟂ n ==> g(Γ_(i j), n) = 0 \
    &= g(∇_(∂_i) ∂_j, n) \
    &= ∂_i (g(∂_j, n)) - g(∂_j, ∇_(∂_i) n) \
    &= - g(∂_j, ∇_(∂_i) n) 
      &quad "by" ∂_j perp n ==> g(n, ∂_j) = 0
  $   
  So $Γ^⟂_(i j) = - g(∇_(∂_i) n,∂_j) n$
  
  In $ℝ^(p,q)$ ordinary coordinates at point $x$, $n = (grad |x|^2)/(|grad |x|^2|) = 1/a x^i ∂_i$ and $∇_(∂_i) n = ∂_i n = 1/a ∂_i $
  
  ==> $Γ^⟂_(i j) = - g(∇_(∂_i) n,∂_j) n = -1/a g(∂_i, ∂_j) n$

  ==>
  $
  R^⊤_(i j i' j') &= 1/a^2 g(n,n) (g_(i j) g_(i' j') - g_(i j') g_(i' j)) \
  &= 1/(± 2a^2) (g #cvt-prod g)_(i j i' j')
  $
  Cosmological constant $Λ = ± ((n-1)(n-2))/(2 a^2)$
]
Lorentz manifolds $ℚ^(1,n)(- a^2), ℚ^(2,n-1)(a^2)$ in quadratic manifolds have "static coordinates", i.e. the metric will be in static form in static coordinates

- $ℚ^(1,n)(- a^2)$ static coordinates := 
#indent[
  Decomposition into radius $r$ + hyperbola $ℚ^(1,1)(- a^2 + r^2)$ + sphere $ℚ^(0,n-1)(- r^2)$
  
  Coordinates $(t,r,𝕊^(n-2))$ with
  $
    r^2 &= x_3^2 + ⋯ + x_(n+1)^2 \
    x_1 &= (a^2 - r^2)^(1/2) sinh(1/a t) \
    x_2 &= (a^2 - r^2)^(1/2) cosh(1/a t) \
    x_i &= r x_i/r 
  $
  metric will be
  $
    g = (1 - (r^2)/(a^2)) #d t^2 - ((1 - (r^2)/(a^2))^(-1) #d r^2 + r^2 g_(𝕊^(n-2)))
  $
]
- $ℚ^(2,n-1)(a^2)$ static coordinates := 
#indent[
  Decomposition into radius $r$ + sphere $ℚ^(2,0)(a^2 + r^2)$ + sphere $ℚ^(0,n-2)(- r^2)$
  
  Coordinates $(t,r,𝕊^(n-2))$ with
  $
    r^2 &= x_3^2 + ⋯ + x_(n+1)^2 \ 
    x_1 &= (a^2 + r^2)^(1/2) cos(1/a t) \
    x_2 &= (a^2 + r^2)^(1/2) sin(1/a t) \
    x_i &= r x_i/r
  $
  metric will be
  $
    g = (1 + r^2/a^2) #d t^2 - ((1 + r^2/a^2)^(-1) #d r^2 + r^2 g_(𝕊^(n-2)))
  $
]
The behavior of the time axis of $ℚ^(2,n-1)(a^2)$ is $𝕊^1$ like. And there exists closed time-like geodesicm, hence not causal

The time axis behavior of the "single-sheeted hyperboloid" $ℚ^(1,n)(- a^2)$ is $ℝ$ like, and the space existence is $𝕊^(n-1)$ like. There exists closed space-like geodesic

$ℚ^(1,n)(- a^2)$ can be "time-sliced" into $ℝ × 𝕊^(n-1)$. $sinh$ is a diffeomorphism of $ℝ$
$
  x_1 &= a sinh(1/a t) \
  x_i &= a cosh(1/a t) x_i/(a cosh(1/a t))
$
metric
$
  g = #d t^2 - a^2 cosh^2 (1/ a t) g_(𝕊^n)
$

Example of "visualization" of $ℚ^(2,n-1)(a^2)$: $ℚ^(2,1)(1)$ in $ℝ^3$ or $x_1^2 + x_2^2 - x_3^2 = 1$, single-sheeted hyperboloid

Although time-like geodesics of $ℚ^(2,1)(1)$ are always closed, appearing as ellipses, time-like non-geodesics can have infinite length, for example, they can continuously approach light-like geodesics

Light-like geodesics appear as "parabolas" ...