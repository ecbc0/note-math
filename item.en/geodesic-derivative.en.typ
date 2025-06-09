#import "/module/module.typ": *
#show: module

The problem of defining the derivative of a vector field $Y$ in the direction $X$
#indent[
  For a vector field $Y$ near $p$, in the $X$ direction, try to calculate the derivative in coordinates $(∂ Y)/(∂ X) = lim_(t -> 0) 1/t (Y(p + t X) - Y(p))$

  However, the #link(<difference-polynomial>)[difference] operation is not linearly compatible with coordinate changes of general diffeomorphisms.

  But in a metric-manifold, there are special coordinates --- #link(<geodesic-coordinate>)[geodesic coordinates]. The transformation method for different geodesic coordinates at $p$ is $SO$, which is linear.
]
#tag("geodesic-derivative") Geodesic derivative *alias* #tag("Levi-Civita-derivative") Levi-Civita derivative :=
#indent[
  In geodesic coordinates at point $p$, the derivative at point $p$, $∇_X Y := (∂ Y)/(∂ X)$

  It is also possible to take the derivative of a #link(<tensor>)[] field $∇_X T$. According to the scalar multiplication associated with the tensor structure, calculations can be performed using the #link(<Leibniz-law>)[product-rule] *Example* $∇_X (Y ⊗ Z) = (∇_X Y) ⊗ Z + Y ⊗ (∇_X Z)$
]
*Prop* $∇ g = 0$. _Proof_ In geodesic coordinates $∂ g (p) = 0$

*Prop* $∇ Vol = 0$ or $∇ (|det g|^(1/2) #d x^1 ∧ ⋯ ∧ #d x^n) = 0$

*Prop* The covariant derivative is compatible with the metric-dual e.g. $∇ g v = g ∇ v$ since $∇ g = 0$

Other coordinates may be needed to compute geodesic coordinates, and thus other coordinates may also be needed to express the geodesic derivative.

#tag("geodesic-derivative-in-general-coordinate")
#indent[
  Compute geodesic coordinates $y$ using general coordinates $x$, then in coordinates $y$, the geodesic derivative is
  $
    ∇_X Y (x)
    
    &= (∂ x)/(∂ y) (y) ⋅ (∂ Y)/(∂ X) (y) \

    &= (∂)/(∂ X) ((∂ x)/(∂ y) ⋅ Y) - (∂)/(∂ X)((∂ x)/(∂ y)) ⋅ Y &quad "by product-rule"
  $
  Using #link(<connection-transformation>)[connection transformation] 
  $
    0 &= Γ(y) \
    &= (∂ y)/(∂ x) ⋅ Γ(x) ⋅ (∂ x)/(∂ y) + (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y))
  $
  ==> $(∂)/(∂ y) ((∂ x)/(∂ y)) = - Γ(x) ⋅ (#d x)/(#d y)$

  Use $(∂)/(∂ X)((∂ x)/(∂ y)) = (∂)/(∂ y) (X) ((∂ x)/(∂ y))$. Substitute into the calculation of $∇_X Y (y)$
  $
    ∇_X Y (y) = (∂)/(∂ X) ((∂ x)/(∂ y) ⋅ Y) + X^⊺ ⋅ Γ(x) ⋅ (∂ x)/(∂ y) ⋅ Y
  $
  The $p$ tangent space linearly transforms $∇_X Y (y)$ to $∇_X Y (x)$ by $(∂ x)/(∂ y) (y)$, but keeps in coordinate $x$, but keep $X,Y$ in coordinate $y$
  $
    &∇_X Y (x) \
    &=(∂)/(∂ ((∂ x)/(∂ y) (y) ⋅ X(y))) ((∂ x)/(∂ y) (y) ⋅ Y(y)) + ((∂ x)/(∂ y) (y) ⋅ X(y))^⊺ ⋅ Γ(x) ⋅ (∂ x)/(∂ y) (y) ⋅ Y(y) \
    &= (∂)/(∂ (X(x))) Y(x) + X(x)^⊺ ⋅ Γ(x) ⋅ Y(x)
  $
  Or written as, in general coordinates, geodesic derivative
  $
    ∇ = ∂ + Γ
  $
  For coordinate-frame
  $
    ∇_((∂)/(∂ x^i)) (∂)/(∂ x^i') = Γ_(i i')^j (∂)/(∂ x^j)
  $
  Is there a more intuitive explanation, rather than directly using the transformation of connection? 
  
  If we only consider linear compatibility, then there are many #link(<principal-bundle-connection>)[linear connections], and the one that coincides with the geodesic-derivative is the metric-connection
]
#tag("geodesic-derivative-of-co-vector") *Prop* For co-vector field 
$ 
  ∇ = ∂ - Gamma 
$
_Proof_ 
#indent[
  *Question* Similar to the case of vector fields. Use the transformation $α(x) = α(y) ⋅ (∂ x)/(∂ y)$ and the product-rule $(∂)/(∂ X) (α ⋅ (∂ x)/(∂ y) ⋅ Y) = (∂ α)/(∂ X) ⋅ ((∂ x)/(∂ y) ⋅ Y) + α ⋅ (∂)/(∂ X) ((∂ x)/(∂ y) ⋅ Y)$

  For co-vector coordinate-frame
  $
    ∇_((∂)/(∂ x^i)) #d x^i' = - Γ^i'_(i j) #d x^j
  $
]

#tag("parallel-transport-metric-connection") 
#indent[
  Parallel transport as "zero rate of change along the curve" $∇_(vel(x)) X = 0$ or $(∂ + Γ)_vel(x) X = 0$ where $X = X(x(t))$

  $∇_(vel(x)) X = 0$ is an ODE

  According to calculation (?), covariant derivative can be recovered from parallel transport + difference quotient
]
#tag("orthonormal-frame") 
#indent[
  Parallel transport of metric-connection preserves the metric
  
  Can be used to construct orthonormal frames
  
  It can be proven that a manifold metric uniquely corresponds to an $SO$ principal-bundle structure on the manifold
  
  But are there more specific and operational calculation results? Regarding calculating orthonormal frames using parallel transport in geodesic coordinates 
  
  A canonical orthonormal frame may be used for simplified calculations of spinors on curved manifolds, e.g. Pauli-matrix $σ^(0,1,2,3)$
]