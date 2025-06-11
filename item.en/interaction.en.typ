#import "/module/module.typ": *
#show: module

Spinor fields, scalar fields, gauge fields, gravitational fields (Einstein-metric), or other fields are coupled in the following ways:
- Action summation
- gauge-connection
- metric-volume-form
- metric-connection
$
  integral_(M) #d Vol(g) ( "spin" + "scalar" + "gauge" + "gravity" )
$
Varying with respect to 4 sets of variables gives 4 equations
$
  "spin" \
  "scalar" \
  "gauge" \
  "gravity" \
$
We can set some fields to zero or fix certain fields to obtain partial coupling (for gravity, $Γ = 0$ ==> flat-metric)

#let A = c-bf("A","#0056e1")

Coupling of relativistic point particles and gauge fields in $ℝ^(1,3)$. Action:

$
  &quad integral #d τ (m c|vel(x)| + e/c ⋅ A(x) ⋅ vel(x) ) \
  &= integral #d t (m c^2 (1 - (v/c)^2)^(1/2) + e (ϕ - #A ⋅ v))
$
- *Question* 
#indent[  
  The following is not obvious: Why does the interaction between point particles and electromagnetic fields also have a hidden $#U (1)$ gauge symmetry?

  The gauge transformation $e^(θ)$ used in field interactions leads to a transformation of the connection $A = A' + #d θ$. For the action of point particles and electromagnetic fields, $#d θ$ is a divergence quantity $#d θ(x) ⋅ vel(x) = (#d)/(#d tau) θ(x(τ))$, with zero boundary conditions, resulting in zero variation.

  Although what is invariant are the equations and not the action, this is different from, for example, the case of scalar fields where the action is also invariant, and the invariance of the equations is obtained through the definition of covariant derivatives.
]