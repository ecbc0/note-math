#import "../module/module.typ": *
#show: module

Approximation of Relativistic Scalar Field Action to Non-Relativistic Scalar Field Action

Using a massive field, extracting the rest energy phase $exp(- m c^2 1/ℏ t #i)$, using time $x_0 = c t$ and the speed of light limit $lim_(c -> ∞)$ 

(Rest energy phase extraction is not a gauge transformation. Can be generalized to $ℍ,𝕆$. Replace $#i$ with any $Im(𝕂)$ identity element) 

for #link(<Klein--Gordon-Lagrangian>)[], restore Planck constant $h$, speed of light $c$, time $x_0 = c t$
$
  integral_(ℝ) #d c t integral_(ℝ^3) #d x 1/2 ( 
    1/c^2 (∂_t ϕ^* ∂_t ϕ) 
    - ∂_x ϕ^* ⋅ ∂_x ϕ    
    + (m^2 c^2)/(h^2) ϕ^* ϕ
  )
$
use $ϕ = exp(- m c^2 1/ℏ t #i) ψ$

let $θ = m c^2 1/ℏ #i$

use $∂_t ϕ = θ e^(θ t) ψ + e^(θ t) ∂_t ψ$
$
  ∂_t ϕ^* ∂_t ϕ &= - (m^2 c^4)/(ℏ^2) ψ^* ψ \
  &quad + (m c^2)/(ℏ) #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*) \
  &quad + ∂_t ψ^* ∂_t ψ
$
the term $- (m^2 c^4)/(ℏ^2) ψ^* ψ$ multiplied by $1/c^2$ will cancel out the mass term $(m^2 c^2)/(ℏ^2) ϕ^* ϕ$

the term $(m c^2)/(ℏ) #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*)$ multiplied by $1/c^2$ will cancel out the speed of light $c$ factor

the term $∂_t ψ^* ∂_t ψ$ multiplied by $1/c^2$ will become $O(1/c^2 (∂_t ψ^* ∂_t ψ))$, vanishing in the limit $lim_(c -> ∞)$

$#d x^0 = #d c t$ might not affect it?

Multiply the entire expression by $ℏ^2/m$ to get

Non-relativistic scalar field Lagrangian, *alias* Schrodinger-Lagrangian #tag("Schrodinger-Lagrangian")
$
  integral_(ℝ) #d t integral_(ℝ^3) #d x 1/2 (
    ℏ #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*)     
    - ℏ^2/m ∂_x ψ^* ⋅ ∂_x ψ
  ) 
$
Can add a gauge field electrostatic potential term to the action, i.e., change $∂_t$ to $∂_t + #i/ℏ V$

Non-relativistic scalar field equation, *alias* Schrodinger-equation #tag("Schrodinger-equation")
$
  #i ℏ ∂_t ψ = - ℏ^2/(2 m) ∆ ψ + V ψ 
$
For either relativistic or non-relativistic scalar fields, it's possible to use a time plane wave mixed static solution $exp(- 1/ℏ E t #i) ψ(x)$ to obtain the eigenvalue equation
$
  - ℏ^2/(2 m) ∆ ψ + V ψ = E ψ 
$
One can also add static magnetic potential, $∂_x$ is changed to $(∂_x + #i/ℏ A) ψ$, with 

$(∂_x + #i/ℏ A)^† (∂_x + #i/h A) ψ = (∆ + #i/h div A + (2 #i)/ℏ A ⋅ ∂_x - 1/ℏ^2 |A|^2) ψ$

*Example* 
- $V = k r^2$ harmonic oscillator (one or more)
- $V = k 1/r$ hydrogen atom model (single particle, static, zero spin)
- $V = $ box/ball potential well/barrier
- constant electric field or constant magnetic field

Symmetry and Conserved Current

let 
$
  L(ψ,∂_t ψ,∂_x ψ) = 1/2 (
    ℏ #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*) 
    - ℏ^2/m ∂_x ψ^* ⋅ ∂_x ψ
  )
$
Similar to the case of relativistic scalar field, energy-momentum tensor #tag("energy-momentum-tensor-Schrodinger")
$
  T = T^(μ)_(ν) = cases(
    (∂ L)/(∂ (∂_(ν) ψ)) ⋅ ∂_(ν) ψ - L & " if " μ = ν ,
    (∂ L)/(∂ (∂_(μ) ψ)) ⋅ ∂_(ν) ψ & " if " μ != ν
  )
$
Time
$
  (∂ L)/(∂ (∂_t ϕ)) ⋅ ∂_(ν) ψ 
  &= 1/2 ℏ #i (ψ^* ∂_(ν) ψ - ψ ∂_(ν) ψ^*) \
  &= ℏ #i Im(ψ^* ∂_(ν) ψ) \
$
Space
$
  (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_(ν) ψ 
  &= - (ℏ^2)/(2m) (∂_(ν) ψ^*  ∂_x ψ + ∂_x ψ^* ∂_(ν) ψ) \
  &= - (ℏ^2)/(2m) Re(∂_x ψ^* ∂_(ν) ψ)
$
Energy
$
  E = integral_(ℝ^3) #d x (T^0_0) 
  = integral_(ℝ^3) #d x ((ℏ^2)/(2m) |∂_x ψ|^2)
$
Due to the zero divergence of the energy-momentum tensor, energy is conserved with respect to time $t$, $∂_t E = 0$

For non-relativistic scalar fields, the energy of the Schrodinger field is real, positive and time invariant

Rotational angular momentum is #tag("angular-momentum-Schrodinger")
$
  M^k_(i j) = [x_i,T^k_j]
$
Gauge current of the Schrodinger field

Phase change $e^(θ(x)) ϕ(x)$ and its δ change $θ ϕ$ belong to variations with fixed boundaries near the solution, so

The spatial part of the current is similar to the relativistic case, $(ℏ^2)/(2m) (ψ^* ∂_x ψ - ψ ∂_x ψ^*) = (ℏ^2)/(m) Im(ψ^* ∂_x ψ)$

The time part of the current ($θ(x) ∈ Im(ℂ)$)
$
  ℏ Im ( (- θ ψ^*) ∂_t ψ + ψ^* ∂_t (θ ψ) )= ℏ Im (ψ^* ψ ∂_t θ)
$ 
The result will be the quantity $#i ℏ ψ^* ψ$

The entire current, after dividing by $#i ℏ$, is $(ψ^* ψ, - (#i ℏ)/(2m) (ψ^* ∂_x ψ - ψ ∂_x ψ^*)$ #tag("current-gauge-Schrodinger")

The time component of the Schrodinger field gauge current is real, and the spatial component is purely imaginary

Assume $j$ is an integrable quantity in $ℝ^3$

time-invariant $∂_0 integral_(ℝ^3) #d x ( j^0 ) = 0$ by $∂^† T = 0$ #tag("conserved-spatial-integral-charge-Schrodinger")
$ 
  integral_(ℝ^3) #d x ( j^0 ) 
  &= integral_(ℝ^3) #d x (ψ^* ψ) \
  &= integral_(ℝ^3) #d x |ψ|^2 
$
The time component of the Schrodinger field current is positive and its spatial integral is time invariant

Should this quantity be "particle number density" or "probability density" or "electric charge density"?

*_Warning_* No one can currently solve atoms other than hydrogen atoms using the Schrodinger equation. What form of many-particle interaction model should be used is also not an obvious matter. No repeatable evidence or downstream applications