#import "../module/module.typ": *
#show: module

Action of a scalar field

Kinetic energy part $ 1/2|grad ϕ|^2 $ 

or $ 1/2|∂ ϕ|^2 $

where $grad ϕ <-> ∂ ϕ$ by metric duality $(∂ ϕ) (X) =  g(grad ϕ, X)$

Mass part $- 1/2 m^2|ϕ|^2 $

#tag("Klein--Gordon-Lagrangian")
$
  integral #d x (1/2|∂ ϕ|^2 ∓ 1/2 m^2|ϕ|^2) 
$
or
$
  integral_(ℝ^(1,3)) #d x ( 1/2 (∂ ϕ^* ⋅ ∂ ϕ ∓ m^2 ϕ^* ϕ) ) 
$



let δ diffeomorphism $Δ ϕ$, let the differential of the action be zero
$
  0 = Δ S = integral_(ℝ^(1,3)) #d x Re (∂ Δ ϕ^* ⋅ ∂ ϕ ∓ m^2 Δ ϕ^* ϕ)
$
product rule $∂^† (Δ ϕ^* ∂ ϕ) = ∂ Δ ϕ^* ⋅ ∂ ϕ + Δ ϕ^* ∂^† ∂ ϕ$

In coordinates $∂^† ∂ ϕ = g^(μ ν) ∂_(μ) ∂_(ν) ϕ$

$ℝ^(1,3)$ δ diffeomorphism of field $Δ ϕ$, is zero at the boundary (boundary of $ℝ^(1,3)$ i.e. infinity) such that 

$
  integral_(ℝ^(1,3)) #d x Re (∂^† (Δ ϕ^* ∂ ϕ)) 
  &= lim_(r -> ∞) integral_(ℚ^(1,3)(± r)) (Δ ϕ^* ∂ ϕ) ⋅ n \
  &= 0
$
Differential of the action
$
  0 = - integral_(ℝ^(1,3)) #d x Re Δ ϕ^* (∂^† ∂ ϕ ± m^2 ϕ)
$
for all $Δ ϕ$, thus giving the Lagrange-equation, here called #tag("Klein--Gordon-equation")
$
  ∂^† ∂ ϕ ± m^2 ϕ = 0
$
let $∆ = div grad = ∂^† ∂ = ∂ ∂^†$

- massless $ ∆ ϕ = 0 $
- massive $ (∆ ± m^2) ϕ = 0 $ 
- mass term => $- 1/2 V(|ϕ|^2)$ 
  $ (∆ + V') ϕ = 0 $ 

The action uses the quadratic form $|grad ϕ|^2$ and the metric volume form $#d Vol$

in $ℂ$, $|grad ϕ|^2 = (grad ϕ)^† grad ϕ$

Repeat the above steps for a general scalar field action $ integral_(ℝ^(1,3)) #d x space L(ϕ,∂_x ϕ) $
$
  0 = Δ S = integral_(ℝ^(1,3)) #d x ( 
    (∂ L)/(∂ ϕ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ 
  )
$
In coordinates $(∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ = g^(μ ν) (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) Δ ϕ$

product rule
$
  ∂_x^† ((∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ) = ( ∂_x^† (∂ L)/(∂ (∂_x ϕ)) ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
$
In coordinates $(∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ = ((∂ L)/(∂ (∂_(μ) ϕ)) ⋅ Δ ϕ)_(μ = 0 ,…, 3)$

Divergence + Stokes' theorem + zero boundary + forall $Δ ϕ$, collecting $Δ ϕ$, terms gives the Lagrange-equation
$
  (∂ L)/(∂ ϕ) - ∂_x^† (∂ L)/(∂ (∂_x ϕ)) = 0
$
Note that $ℝ$ valued fields are not compatible with $#U (1,ℂ)$ gauge

Plane wave

- Period
- Wavelength
- 4-Wave number
- Wave speed
  - Massless ==> Wave speed = Speed of light
  - With mass ==> wave speed < speed of light. And wave speed is not $SO(1,3)$ invariant

*Question* #tag("motivation-of-plane-wave-solution")
#indent[
  Motivation for plane waves? Inspired by the appearance of $exp$ in the solutions of linear ODEs with constant coefficients, especially the harmonic oscillator eq $(#d^2 x)/(#d t^2) ± ω^2 x = 0$, similar to the first-order linearization of #link(<harmonic-oscillator>)[harmonic oscillator] $mat((#d)/(#d t) ; , (#d)/(#d t)) vec(x,v) = mat(, 1 ; ∓ ω^2) vec(x,v)$, for the KG equation
  $
    mat(∂ ; , ∂^†) vec(ϕ,ψ) = mat(, -𝟙 ; ∓m^2) vec(ϕ,ψ)
  $
  Perform #link(<exponential-of-vector-field>)[$exp$ transformation] or #link(<integral-curve>)[integral curve]

  Trigonometric case
  $
    exp x mat(, -𝟙 ; ∓m^2) = mat(
      cos p x , p/(|p|^2) sin p x 𝟙 ; 
      - p sin p x 𝟙 , cos p x
    )
  $
  where $|p|^2 = m^2$, $p/(|p|^2)$ represents quadratic form inversion, and acts on $ψ$ via inner product

  Thus
  $
    ϕ_p (x) = ϕ(0) cos p x + (p ⋅ ψ(0))/(m^2) sin p x
  $ 
  Or written in the form of a complex exponential 
  $
    ϕ(x) 
    &= 1/2 (ϕ(0) - #i (p ⋅ ψ(0))/(m^2)) e^(#i p x) + 1/2 (ϕ(0) + #i (p ⋅ ψ(0))/(m^2)) e^(- #i p x) \
    &=: a (p, #i) e^(#i p x) + a (p, - #i) e^(- #i p x)
  $
  Hyperbolic case is similar
]

#tag("linear-superposition-of-KG-eq")
#indent[
  Linear superposition of plane waves also satisfies scalar field eq

  - $m != 0$
  #indent[
    Integrate superposition on the hyperboloid ${p^2 = ± m^2} = ℚ(1,3)(± m^2)$
    
    metric & volume form come from the restriction of $ℝ^(1,3)$
    
    In the case of $+ m^2$, it can be done on one sheet of the three-dimensional spacelike two-sheet hyperboloid $ℍ𝕪^3 = {p^2 = m^2, p_0 > 0}$, because the other sheet can be obtained by collecting coefficients $a(p,#i) + a(-p,-#i)$, which is equivalent to a single sheet
    
    $
      ϕ(x) = limits(integral)_(ℍ𝕪^3 \ 𝕊(Im ℂ)) #d p #d #i
      (a(p,#i) e^(p x #i))
    $

    ${± #i} = 𝕊(Im ℂ) = 𝕊^0$. For $ℍ,𝕆$, plane waves probably need to consider all unit imaginary numbers, so do we need to integrate over $𝕊(Im ℍ) = 𝕊^2, 𝕊(Im 𝕆) = 𝕊^6$?

    

    For $ℝ$ value fields, $a(p,-#i) = a(p,#i)^*$, and written as $a(p)^*$

    Add square-integrable condition to $a(p,#i)$ (integral on $p^2 = m^2$), and in order to make some derivatives of $ϕ$ also square-integrable (Sobolev) e.g. $∂_(μ) ϕ$, usually some "polynomial multiplication" square-integrable conditions are added to $a(p,#i)$ e.g. $p_(μ) #i a(p,#i)$
    
    On simple "projection to $ℝ^3$ coordinates" (not $SO(1,3)$ invariant), using notation $(p_0,p) ∈ ℝ^(1,3)$
    $ 
      ϕ(x_0, x) = integral_(ℝ^3) #d p 
      1/(sqrt(2 p_0)) 
      (
        a(p,#i) e^(p_0 x_0 #i) e^(- p x #i) 
        + a(p,-#i) e^(- p_0 x_0 #i) e^(p x #i)
      )
    $
    with $p_0 = p_0 (p) = sqrt(m^2 + p^2) > 0, a(p,#i) = a(p_0,p,#i)$

    $p^2 = - m^2$ cannot be simply "projected" to $ℝ^(1,2)$, it's not a bijection in the first place
  ]
  - $m = 0$
  #indent[
    Cannot directly use submanifold metric volume form because the metric is zero. Can we use the limit $m -> 0$? Use some limit of $p_0 (m),p(m),a(m)$?
  ]
]
#tag("unitary-representation-KG-field") 
#indent[
  For $L^2$ superposition of free fields, there is an $L^2$ inner product, and it is $SO(1,3) ⋊ ℝ^(1,3)$ invariant. Preserving quadratic form implies preserving inner product
  
  Translation $x -> x + a$ makes $|a(p) exp(p a #i)|^2 = |a(p)|^2$
  
  Rotation $(p -> Λ p) in SO(1,3)$ is an isometry of $ℚ^(1,3)(± m^2)$, which does not change the integral
  $
    integral_(ℚ^(1,3)(± m^2)) #d Vol |a(Λ p)|^2 
    = integral_(ℚ^(1,3)(± m^2)) #d Vol |a(p)|^2 
  $ 

  This is called the unitary representation of the Poincare group $SO(1,3) ⋊ ℝ^(1,3)$, spin 0 part, $± m^2 ∈ ℝ$
]
#tag("try-to-define-plane-wave-in-metric-manifold") 
#indent[
  Can the $exp$ of $mat(∂ ; , ∂^†) vec(ϕ,ψ) = mat(, -𝟙 ; ∓m^2) vec(ϕ,ψ)$ be generalized on a manifold? Note that this is a coordinate-free notation. If coordinates are used, it's not a constant coefficient PDE. Whether it's constant coefficient or not, one can try to exponentiate it.
  
  Can it be generalized to symmetric spaces $ℚ^(1,4)(-1),ℚ^(2,3)(1)$? 
  
  Does (δ) isometry preserve $L^2$ superposition?
]
To construct particle-like wave packets, first find static solutions, then boost

Does $ℝ^(1,1)$ spacetime, $ℝ$ valued scalar field with potential $V(ϕ) = ϕ^4$ or $sin ϕ$ provide possible multiparticle wave packet models? (Soliton type)

*Question* Infinite difficulties
#indent[
  Free field $ket(p \, ± #i) = exp(± p x #i)$ is not integrable, so it cannot be substituted into the Lagrangian and then integrated

  One possibly less satisfying approach is to only consider the integrability of the difference. Consider $ϕ$ around $ket(p)$ with $L(ϕ,∂ ϕ) - L(ket(p \, ± #i), ∂ ket(p \, ± #i))$ being integrable, and the derivative of the action at $ket(p)$ is zero

  Another method is to first integrate in a finite region, and then take the limit to an infinite region
]
