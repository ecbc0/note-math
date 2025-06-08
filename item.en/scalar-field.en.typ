#import "/module/module.typ": *
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

#show "Δ": it => text(it, fill: rgb("#0056e1"))

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
  Perform #link(<invariant-of-vector-field>)[$exp$ transformation] or #link(<integral-curve>)[integral curve]

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
Symmetry and conserved currents
- Spacetime translation
#indent[
  Spacetime translation does not fix the $ℝ^(1,3)$ "boundary". The variation is non-zero. Similar to the case of time translation for a point particle
  $
  (#d)/(#d s) integral_(ℝ^(1,3) + s a) #d x (f(x)) = integral_(ℝ^(1,3)) #d x (∂_x f(x) ⋅ a)
  $
  Generally, region change is given by $exp(a(x))$ through δ diffeomorphism $a(x)$ 
  $
    (#d)/(#d s) limits(integral)_(exp(s a(x)) U) #d x (f(x)) 
    
    = integral_(U) #d x (∂_x f(x) ⋅ a(x))
  $
  Using the change of variable formula
  $
    integral_(ℝ^(1,3) + s a) #d x (f(x)) = integral_(ℝ^(1,3)) #d x (f(x + s a))
  $
  Swap differentiation and integration 
  $
    (#d)/(#d s) integral_(ℝ^(1,3)) #d x (f(x + s a)) = integral_(ℝ^(1,3)) #d x (#d)/(#d s) f(x + s a)
  $
  Apply it to 
  $
    f(x) &= L(ϕ(x),∂ ϕ(x)) 
  $
  Consider the derivative of the action for a variation that is a translation in the $ν in ℝ^(1,3)$ direction. let $Δ ϕ = ∂_(ν) ϕ$, first order derivative $Δ S =$
  $
    integral_(ℝ^(1,3)) #d x (∂_(ν) L)
    
    &= integral_(ℝ^(1,3)) #d x (
      (∂ L)/(∂ ϕ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
    )
  $
  use product rule
  $
    ∂_x^† ((∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ) 
    = ( ∂_x^† (∂ L)/(∂ (∂_x ϕ)) ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
  $
  use Lagrange-equation
  $
    (∂ L)/(∂ ϕ) - ∂_x^† (∂ L)/(∂ (∂_x ϕ)) = 0
  $
  use divergence + zero boundary, to get
  $
    integral_(ℝ^(1,3)) #d x (∂_(ν) L)
    
    &= integral_(ℝ^(1,3)) #d x (
      ∂_x^† ((∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ)
    )
  $
  #tag("energy-momentum-tensor-KG")
  $
    T = T^(μ)_(ν) = cases(
      (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ & " if " μ != ν,
      (∂ L)/(∂ (∂_(ν) ϕ)) ⋅ ∂_(ν) ϕ - L & " if " μ = ν
    )
  $
  get
  $
    0 = integral_(ℝ^(1,3)) #d x 
      ( ∂^† T ⋅ ∂_(ν) ϕ)   
  $
  for all $∂_(ν) ϕ$ as coordinate-frame, so $∂^† T = ∂_(μ) T^(μ)_(ν) = 0$

  for $L(ϕ, ∂_x ϕ) = 1/2 (∂ ϕ^* ⋅ ∂ ϕ - m^2 ϕ^* ϕ)$ calculate
  $
    (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ = Re ( ∂^(μ) ϕ^* ∂_(ν) ϕ ) 
  $
  or $(∂ L)/(∂ (∂_x ϕ)) = Re(∂_x ϕ^* ⋅)$

  It can be seen that this EM tensor, after the index is lowered, $T_(μ ν) = Re(∂_μ ϕ^* ∂_(ν) ϕ)$ is symmetric, so $T_(μ ν) = T_(ν μ)$

  In addition, the KG action $L$ is a real value, so its EM tensor is a real value

  Assume that the EM tensor of $ℝ^(1,3)$ can be integrated over $ℝ^3$. Use the notation $(x_0,x) ∈ ℝ^(1,3)$. energy 
  $
    E = integral_(ℝ^3) #d x (T_0^0) = integral_(ℝ^3) #d x 1/2 (|∂_0 ϕ|^2 + |∂_x ϕ|^2 + m^2 |ϕ|^2)
  $
  General potential $m^2 |ϕ|^2$ => $V(|ϕ|^2)$

  The energy of a relativistic scalar field is real and positive

  #tag("conserved-spatial-integral-energy-KG") 
  #indent[  
    Fixing the $ℝ^(1,3)$ coordinates, assume $T^0_μ$ is a quantity integrable over $ℝ^3$
    $
      ∂_0 integral_(ℝ^3) #d x (T_μ^0)
      &= integral_(ℝ^3) #d x (∂_0 T_μ^0) \
      &= - integral_(ℝ^3) #d x (∂_1 T_μ^1 + ∂_2 T_μ^2 + ∂_3 T_μ^3) 
        " by " ∂^† T_μ = 0 \
      &= - lim_(r -> ∞) integral_(𝔹^3(r)) #d x (div T_μ^x) \
      &= - lim_(r -> ∞) integral_(𝕊^2(r)) #d Vol (T_μ^x ⋅ x/(|x|))
    $
    As long as we assume that the flux density $r -> ∞ ==> T_μ^x ⋅ x/(|x|) -> 0$, then we have time invariance of $integral_(ℝ^3) #d x (T_μ^0)$

    - $T^0_0 = 1/2 (|∂_0 ϕ|^2 + |∂_x ϕ|^2 + m^2 |ϕ|^2)$. Field energy conservation $∂_0 E = 0$

    - $T^0_x = Re(∂_0 ϕ^* ∂_x ϕ)$. Field momentum (?) conservation
  ]
  Other $T$ components, e.g. $integral_(ℝ^(1,3)) #d x (T_μ^1)$, are invariant along the $x_1$ direction. Use $∂_1$, the integral of $ℝ^(1,2)$ and its $div$. The limit of region approximation $lim_(r -> ∞)$ is for hyperbolic geodesic spheres (multi-radius)

  *Example* For plane wave expansion 
  $
    ϕ(x) = limits(integral)_(ℍ𝕪^3 \ 𝕊(Im ℂ)) #d p #d #i
    (a(p,#i) e^(p x #i))
  $ 
  Energy is (*Question*)
  $
    E = limits(integral)_(ℍ𝕪^3 \ 𝕊(Im ℂ)) #d p #d #i
    (p_0^2 abs(a(p,#i))^2)
  $
]
- Rotation and boost
#indent[
  For fields, whether spatial rotation or boost, even if the Lagrangian is invariant, the action still changes

  Now use the notation $(x_0,x),(∂_0,∂_x) ∈ ℝ^(1,3)$ 

  - Spatial rotation of $i,j$. If $(x_i,x_j) = r (cos t, sin t)$, then $(#d)/(#d t) = r (- sin t, cos t) = (- x_j, x_i)$, so the tangent vector is $- x_j ∂_i + x_i ∂_j$

    Let $n ∈ so(3) ≃ ℝ^3$ be the spatial rotation axis, then the tangent vector will be $n ⋅ (x × ∂)$

  - Boost of $0,i$. If $(x_0,x_i) = r (cosh t, sinh t)$, then $(#d)/(#d t) = r (sinh t, cosh t) = (x_i, x_0)$, so the tangent vector is $x_i ∂_0 + x_0 ∂_i$

    Let $n ∈ ℝ^3$ be the spatial boost axis, then the tangent vector will be $n ⋅ (x_0 ∂ - x ∂_0)$ (The $ℝ^(1,3)$ spacetime metric has negative definite space)

  Now use the notation $x,∂_x ∈ ℝ^(1,3)$. The tangent vectors for rotation and boost are collectively denoted as $[x,∂_x]$, acting as δ spacetime rotation $so(1,3)$ on the field $ϕ$, as a δ diffeomorphism 
  $
    integral_(ℝ^(1,3)) #d x ( [x,∂] L ) 
    
    = integral_(ℝ^(1,3)) #d x (
      (∂ L)/(∂ ϕ) ⋅ [x,∂_x] ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x [x,∂_x] ϕ
    )
  $
  Using the KG equation, rearranging terms, we get the zero-divergence conserved current

  #tag("angular-momentum-KG") let $T$ be the energy-momentum tensor of the KG field. The angular momentum of the field
  $
    M = [x,T]
  $
  or
  $
    M^(λ)_(μ ν) = [x_(μ),T_(ν)^(λ)] 
  $
]
- Current of KG field under gauge field
#indent[
  let $ϕ(x)$ be the solution of KG eq. The phase change $e^(θ(x)) ϕ(x)$ and its δ change $θ ϕ$ belong to variations near the solution with fixed boundaries, so
  $
    0 &= integral_(ℝ^(1,3)) #d x 1/2 (
        ∂(- θ ϕ^*) ⋅ ∂ ϕ +  ∂ ϕ^* ⋅ ∂(θ ϕ)
    ) \
    
    &= integral_(ℝ^(1,3)) #d x 1/2 (
      - ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) ⋅ ∂ θ
  $ 
  Using product rule + divergence + Stokes' theorem + zero boundary 
  $
    0 = integral_(ℝ^(1,3)) #d x (1/2 ∂^† (
      - ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) θ
    )
  $
  for all $Im(ℂ)$ valued function $θ(x)$, therefore
  $
    forall x ∈ ℝ^(1,3), ∂^† (- ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) = 0
  $
  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^*$ is called the 4-current of the KG field #tag("current-gauge-KG")

  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^* = - Im(ϕ^* ∂ ϕ)$ 

  Fixing the $ℝ^(1,3)$ coordinates, and considering the 4-current components as quantities integrable over $ℝ^3$, then the zero component, i.e., charge conservation, holds #tag("conserved-spatial-integral-charge-KG")
  
  $ 0 = ∂_t integral_(ℝ^3) #d x (- ϕ^* ∂_t ϕ + ϕ ∂_t ϕ^*) = ∂_t Q $
]