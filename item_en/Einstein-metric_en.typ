#import "../module/module.typ": *
#show: module

cf. #raw("#link(<curvature-of-metric.typ>)[]")

#show "Δ": it => text(it, fill: rgb("#0056e1"))

#tag("Einstein-Lagrangian") := $("scal" - 2 Λ) #d Vol$. In coordinates $#d Vol = |g| #d x$

*Question* Is there a good explanation for using scalar curvature in the action?

The action contains second derivatives of $g$, so it cannot be treated with general first-order differential action theory.

Scalar curvature is not homology-scalar-curvature; the integral of the latter (proportional to $χ(M)$?) is homology invariant, so it always varies to zero, and has trivial eq.

*Prop* Variation with respect to $g$: $Δ "scal" ∼ - "Ric" + "divergence term", Δ|g| ∼ 1/2 |g| g$

So the product rule gives 

*Prop* In Einstein-Lagrangian, $Δ ("scal" |g|) ∼ |g| ("Ric" - 1/2 "scal" g) + "divergence term"$

_Proof_
#indent[  
  *Prop* The derivative of $det$ is $∂ det(A) = det A tr(A^(-1) ∂ A) = det A tr(∂ log A)$

  _Proof_ 
  #indent[
    $det(X) = det(A) det(A^(-1) X)$ and $∂ det(𝟙) = tr$. So
    
    $
      &∂ det(A^(-1) X)(A : "base", Δ X : "vector") \
      =& ∂ det (𝟙 : "base", ∂(A^(-1) X) (A : "base", Δ X : "vector") : "vector") \
      =& tr(A^(-1) Δ X)
    $
  ]
  So the variation of the volume form is
  $
    Δ|g| &=& Δ|det g|^(1/2) \
    &=& 1 / 2|det g|^(1/2) tr(g^(-1) Δ g)
  $
  Treating $"Ric"$ as a matrix, the adjoint $(g ⋅)^†$ can be written as
  $
    "scal" &=& (g ⋅)^† "Ric" \
    &=& tr(g^(-1) "Ric") 
  $
  *Prop* The differential of $A ⇝ A^(-1)$ is $- A^(-1) (∂ A) A^(-1)$. _Proof_ Using $0 = ∂ 𝟙 = ∂ (A A^(-1)) = ∂ A ⋅ A^(-1) + A ⋅ ∂(A^(-1))$

  So the variation of scalar-curvature is
  $
    Δ"scal" = tr(- g^(-1) (Δ g) g^(-1) "Ric") + tr(g^(-1) Δ "Ric")
  $
  Perform tedious calculations on the following

  - $Δ "Ric" = Δ ((g #cvt-prod)^† R)$
  - $Δ R$
  - $Δ Γ$

  This might be useful for calculations $∇ (g #cvt-prod)^† = (g #cvt-prod)^† ∇$ and $∇ (g ⋅)^† = (g ⋅)^† ∇$
  $
    tr (g^(-1) Δ "Ric") = ∇^† ∇ tr (g^(-1) Δ g) + ∇_⊙^† ∇_⊙^† Δ g
  $
  is a divergence (cf. #raw("#link(<Laplacian-of-tensor-field.typ>)[]") for $∇^†,∇_(⊙),∇_(⊙)^†$)

  - $tr(g^(-1) Δ g) = g(Δ g, g)$
  - $tr(- g^(-1) (Δ g) g^(-1) "Ric") = g(Δ g, - "Ric")$
  
  ==>

  - $Δ|g| = 1 / 2 |g| g(Δ g, g)$
  - $Δ "scal" = g(Δ g, - "Ric") + "divergence term"$

  Let the variation of the action be zero
  $
    0 = - integral #d x 
    |g| g (Δ g , "Ric" - (1/2 ⋅ "scal" - Λ) ⋅ g)
  $
]
forall $Δ g$, therefore

#tag("Einstein-equation") #tag("Einstein-metric")

$ "Ric" - (1 / 2 ⋅ "scal" - Λ) ⋅ g = 0 $

is equivalent to (by taking $(g ⋅)^†$)
$
  "Ric" &=& (2 Λ) / (n-2) ⋅ g \
  &=& 1 / n ⋅ "scal" ⋅ g
$
with $Λ = (1/2 - 1/n) "scal"$

i.e. $"Ric"$ is constant proportionally to $g$ and scalar-curvature is constant

equivalently
$
  "tr-free-Ric" &=& 0 \
  "scal" &=& (2Λ) / (n - 2)
$
i.e. trace-free Ricci-curvature is zero, and scalar-curvature is constant

Einstein-equation is a second-order nonlinear PDE for $g$

when $n = 4$, $"Ric" = Λ ⋅ g$ with $Λ = 1/4 "scal"$

When there is interaction, although $T = "Ric" - (1/2 ⋅ "scal" - Λ) ⋅ g != 0$, the divergence is still zero $∇_⊙^† T = 0$

_Proof_
#indent[
  $g$ does not need to be Einstein-metric

  δ diffeomorphism $X$ generates a first-order infinitesimal of the metric $Δ g = ∇_⊙ X$ 
  
  Because Einstein action is diffeomorphism invariant, the result of the δ diffeomorphism $X$ variation is zero
$
  0 &=& integral g(Δ g, T) #d Vol(g) \
  &=& integral g(∇_⊙ X, T) #d Vol(g) \
  &=& integral g(X, ∇_⊙^† T) #d Vol(g)
$
forall $X$, therefore $∇_⊙^† T = 0$
$
  ∇_⊙^† ("Ric" - (1 / 2 ⋅ "scal" - Λ) ⋅ g) = 0
$
This will give $ ∇_⊙^† "Ric" = ∇_⊙ "scal" $
]
*Prop* For Einstein action, the energy-momentum tensor of δ-isometry will be zero

moduli-space-of-Einstein-metric := the orbit space of the metric space acted upon by diffeomorphisms, restricted to the Einstein-metric space. isotropy-group is isometry

*Question* Even if we know all Einstein-metrics for every manifold, we still don't know which manifold to choose

*Question* The classification of manifolds with constant-sectional-curvature or simple-symmetric-space seems satisfactory

When dimension $>= 4$ there exist manifolds that do not allow constant-sectional-curvature metric but allow Einstein-metric

#tag("Schwarzschild-metric") in $ℝ^(1,3)$ := asymptotically flat static spherically symmetric, as the simplest generalization of non-relativity gravity in $ℝ^(3)$. Use spherical coordinates in space $ℝ^3$
$
  g = (1 - (2m)/r) #d t^2 - ((1 - (2m)/r)^(-1) #d r^2 + r^2 g_(𝕊^2))
$
with $"scal" = 0$ and $"Ric" = 0$. Therefore only conformal curvature 

Generalize to $ℝ^(1,n-1)$?
$
  g = (1 - (2m)/r^(n-3)) #d t^2 - ((1 - (2m)/r^(n-3))^(-1) #d r^2 + r^2 g_(𝕊^(n-2)))
$
#tag("Schwarzschild-metric-derivation") (@ref-9, ch.4)
#indent[
  Assume metric is spherically symmetric
  $
    g = f_t (r)^2 #d t^2 - (f_r (r)^2 #d r^2 + f_(𝕊^2) (r)^2 g_(𝕊^2))
  $
  Point particle gravity source i.e. outside the point particle Einstein equations with $Λ = 0$ give $f_r = (a f_t)^(-1), f_(𝕊^2) = r$

  
  Asymptotically flat i.e. approaches $ℝ^(1,3)$ metric $#d t^2 - (#d r^2 + r^2 g_(𝕊^2))$ when $r -> ∞$, gives $a = 1$, then Einstein equation gives $f_t (r)^2 = 1 - (2m)/r$
]
#tag("Schwarzschild-metric-approximate-to-Newton-gravity") 
#indent[
  To approximate non-relativity, restore some constants $G,c,x_0 = c t$. At this point Schwarzschild-metric
  $
    g = (1 - (2 G M)/(c^2 r)) c^2 #d t^2 - ((1 - (2 G M)/(c^2 r))^(-1) #d r^2 + r^2 g_(𝕊^2))
  $
  In time coordinates, for this metric, approximate from relativistic point particle action to non-relativistic 
  $
    m c |vel(x)| &=& m c^2 (
      1 - (2 G M)/(c^2 r) - 1/c^2 ((1 - (2 G M)/(c^2 r))^(-1) v_r^2  + r^2 v_(𝕊^2)^2 )
    )^(1/2) \

    &=& m c^2 (
      1 - 1/2(
        (2 G M)/(c^2 r) + 1/c^2 (v_r^2 + r^2 v_(𝕊^2)^2)
      ) + o(1/c^2)
    ) \

    &=& m c^2 - (1/2 m v^2 - (- (G M m)/r)) + o(1)
  $
  - $m c^2$ is rest energy, which will vary to $0$
  - $1/2 m v^2$ is the kinetic energy of a non-relativistic point particle
  - $- (G M m)/r$ is the non-relativistic gravitational potential energy
  - $o(1)$ disappears in the limit $lim_(c -> ∞)$
]
*Question* If the gravitational source is $T = "constant"$ or $T_(00) = "constant"$, what is the metric?

Some Einstein-metric examples
- #raw("#link(<constant-sectional-curvature-imply-Einstein-metric>)[constant sectional curvature]")
- #raw("#link(<simple-symmetric-space>)[]")

Einstein ==> harmonics. Einstein-equation satisfy eq defined by Lagrangian $|R|^2 #d Vol$