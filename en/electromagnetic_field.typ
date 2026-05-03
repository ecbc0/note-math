#import "../module/module.typ": *
#show: module

May migrate to principal-bundle-connection in the future?

cf. #link(<motivation_of_gauge_field>)[]

There are many possible connections
  
There are connections that cannot be local flat. For any local region, the connection field cannot be eliminated by changing the gauge.

Similar to #link(<flat_metric_iff_curvature_0>)[]

There exist local bundle coordinates or phases, where the connection is zero $A = 0$ <==> the curvature is zero $F_(i i') = [#D _i,#D _i'] = 0$ where $#D = #d + A$, in coordinates $F_(i i') = ∂_i A_i' - ∂_i' A_i + [A_i, A_i']$

When not exist flat connection coordinate, choose $L^2$ minimal curvature, $L^2$ based on metric-volume-form

*Example*
#indent[
  $#U (1)$ case. $A$ is $#u (1)$ valued, and it is commutative $[A,A'] = 0$. In this case $F = #d A$, in coordinates $F_(i j) = ∂_i A_j - ∂_j A_i$

  Transforming from local flat-connection coordinates $A' = 0$ to general coordinates gives a PDE

  $ A = #d θ $

  PDE solvable condition $0 = F = #d A$

  From the solution of the PDE $A = #d θ$, integration gives $θ$ and phase transformation $e^θ$
]
#tag("electromagnetic_field")
#indent[
  In $ℝ^(1,3)$

  There are many possible connections; select by minimizing curvature.

  Note that $Vol$ means the definition of this action requires spacetime metric

  $ integral #d Vol |F|^2 $

  eq

  $ #d^† #d A = 0 $

  In coordinates 
  $
    && sum_i ∂_i (∂_i A_j - ∂_j A_i) &= 0 \
    "or"&& sum_i ∂_i F_(i j) &= 0
  $
  In spacetime decomposition coordinates 
  $
    F = E_(i) (#d t ∧ #d x^i) - B_(i j) (#d x^i ∧ #d x^j) "with" 1 <= i < j <= 3
  $
  Of course, this decomposition method is not $SO(1,3)$ invariant

  #let A = bf("A")

  *Question* How to make $sum_i ∂_i (∂_i A_j - ∂_j A_i) = 0$ obviously imply the $div, curl$ form of the electromagnetic field $E,B$ equations? #tag("Maxwell_equation")
  $
    div B &= 0 &quad ∂_t B + curl E &= 0 \

    div E &= ρ &quad - ∂_t E + curl B &= j 
  $
  Also
  $
    E &= - (∂_t #A + grad ϕ) \
    B &= curl #A
  $
  Where $ϕ = A."time", #A = A."space"$

  Note that $curl, div$ and $ℝ^3$ exterior derivative are related to $ℝ^3$ Hodge star. $#d^† ∼ ⋆ #d ⋆$ can also be related to Hodge star. It may be related to the behavior of Hodge star in the spatial $ℝ^3 subset ℝ^(1,3)$ coordinates of spacetime decomposition. $⋆(#d x^i ∧ #d x^j) = ± #d t ∧ #d x^k$

  Note that Hodge star requires a metric

  Using the special specification #tag("Lorentz_gauge") $#d^† A =0$, the equation $#d^† #d A = 0$ becomes 
  $
    0 = (#d^† #d + #d #d^†) A = ∆ A = η^(i i') ∂_i ∂_i' A 
  $
]