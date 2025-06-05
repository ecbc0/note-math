#import "/module/module.typ": *
#show: module

Relativistic scalar field action approximates to non-relativistic scalar field action

Using massive field, using static energy phase extraction $exp(- m c^2 1/ℏ t #i)$, using time $x_0 = c t$ and the speed of light limit $lim_(c -> ∞)$ 

(Static energy phase extraction is not a gauge transformation. Can be generalized to $ℍ,𝕆$. $#i$ replaced by any $Im(𝕂)$ unit) 

for #link(<Klein--Gordon-Lagrangian>)[], recover Planck constant $h$, speed of light $c$, time $x_0 = c t$
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
term $- (m^2 c^4)/(ℏ^2) ψ^* ψ$ multiplied by $1/c^2$ will cancel the mass term $(m^2 c^2)/(ℏ^2) ϕ^* ϕ$

term $(m c^2)/(ℏ) #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*)$ multiplied by $1/c^2$ will cancel the speed of light $c$ factor

term $∂_t ψ^* ∂_t ψ$ multiplied by $1/c^2$ will result in $O(1/c^2 (∂_t ψ^* ∂_t ψ))$, which disappears at the limit $lim_(c -> ∞)$

$#d x^0 = #d c t$ may not affect?

Multiply the whole thing by $ℏ^2/m$ to get

Non-relativistic scalar field Lagrangian, *alias* Schrodinger-Lagrangian #tag("Schrodinger-Lagrangian")
$
  integral_(ℝ) #d t integral_(ℝ^3) #d x 1/2 (
    ℏ #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*)     
    - ℏ^2/m ∂_x ψ^* ⋅ ∂_x ψ
  ) 
$
Can add a gauge field electrostatic potential term to the action i.e. $∂_t$ changed to $∂_t + #i/ℏ V$

Non-relativistic scalar field equation, *alias* Schrodinger-equation #tag("Schrodinger-equation")
$
  #i ℏ ∂_t ψ = - ℏ^2/(2 m) ∆ ψ + V ψ 
$
For relativistic or non-relativistic scalar fields, both are OK, using time plane wave mixed static solution $exp(- 1/ℏ E t #i) ψ(x)$, to obtain the eigenvalue equation
$
  - ℏ^2/(2 m) ∆ ψ + V ψ = E ψ 
$
You can also add a static magnetic potential, change $∂_x$ to $(∂_x + #i/ℏ A) ψ$, with 

$(∂_x + #i/ℏ A)^† (∂_x + #i/h A) ψ = (∆ + #i/h div A + (2 #i)/ℏ A ⋅ ∂_x - 1/ℏ^2 |A|^2) ψ$

*Example* 
- $V = k r^2$ harmonic oscillator (one or more)
- $V = k 1/r$ hydrogen atom model (single particle, static, zero spin)
- $V = $ box/ball potential well/barrier
- Constant electric field or constant magnetic field

Symmetry and conserved current

let 
$
  f(ψ,∂_t ψ,∂_x ψ) = 1/2 (
    ℏ #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*) 
    - ℏ^2/m ∂_x ψ^* ⋅ ∂_x ψ
  )
$
Similar to the case of relativistic scalar fields, energy-momentum tensor #tag("energy-momentum-tensor-Schrodinger")
$
  T = T^(μ)_(ν) = cases(
    (∂ f)/(∂ (∂_(ν) ψ)) ⋅ ∂_(ν) ψ - f & " if " μ = ν ,
    (∂ f)/(∂ (∂_(μ) ψ)) ⋅ ∂_(ν) ψ & " if " μ != ν
  )
$
Time
$
  (∂ f)/(∂ (∂_t ϕ)) ⋅ ∂_(ν) ψ 
  &= 1/2 ℏ #i (ψ^* ∂_(ν) ψ - ψ ∂_(ν) ψ^*) \
  &= ℏ #i Im(ψ^* ∂_(ν) ψ) \
$
Space
$
  (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_(ν) ψ 
  &= - (ℏ^2)/(2m) (∂_(ν) ψ^*  ∂_x ψ + ∂_x ψ^* ∂_(ν) ψ) \
  &= - (ℏ^2)/(2m) Re(∂_x ψ^* ∂_(ν) ψ)
$
Energy
$
  E = integral_(ℝ^3) #d x (T^0_0) 
  = integral_(ℝ^3) #d x ((ℏ^2)/(2m) |∂_x ψ|^2)
$
Since the divergence of the energy-momentum tensor is zero, the energy is conserved with respect to time $t$, $∂_t E = 0$

Non-relativistic scalar field, the energy of the Schrodinger field is real and positive and time invariant

The rotational angular momentum is #tag("angular-momentum-Schrodinger")
$
  L^k_(i j) = [x_i,T^k_j]
$
Gauge current of the Schrodinger field

The phase change $e^(θ(x)) ϕ(x)$ and its δ change $θ ϕ$ belong to the variation near the solution with fixed boundaries, so

The spatial part of the current is similar to the relativistic case, $(ℏ^2)/(2m) (ψ^* ∂_x ψ - ψ ∂_x ψ^*) = (ℏ^2)/(m) Im(ψ^* ∂_x ψ)$

Current time component ($θ(x) ∈ Im(ℂ)$)
$
  ℏ Im ( (- θ ψ^*) ∂_t ψ + ψ^* ∂_t (θ ψ) )= ℏ Im (ψ^* ψ ∂_t θ)
$ 
The result will be the quantity $#i ℏ ψ^* ψ$

The entire current, divided by $#i ℏ$, is $(ψ^* ψ, - (#i ℏ)/(2m) (ψ^* ∂_x ψ - ψ ∂_x ψ^*)$ #tag("current-gauge-Schrodinger")

The time component of the Schrodinger field gauge current is real, and the space component is purely imaginary

Assume $j$ is a quantity integrable on $ℝ^3$

Time invariant with respect to time $t$, $∂_0 integral_(ℝ^3) #d x ( j^0 ) = 0$ by $∂^† T = 0$ #tag("conserved-spatial-integral-charge-Schrodinger")
$ 
  integral_(ℝ^3) #d x ( j^0 ) 
  &= integral_(ℝ^3) #d x (ψ^* ψ) \
  &= integral_(ℝ^3) #d x |ψ|^2 
$
The time component of the Schrodinger field current is positive and the space integral is time invariant

Should this quantity be "particle number density" or "probability density"?

*_Warning_* Currently no one can solve for atoms other than hydrogen using the Schrodinger equation. What form of multi-particle interaction model should be used is also not obvious. Non-reproducible evidence or downstream applications