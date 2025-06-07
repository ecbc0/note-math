#import "/module/module.typ": *
#show: module

Action of scalar field

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

$ℝ^(1,3)$ δ diffeomorphism of field $Δ ϕ$, is zero on the boundary (boundary of $ℝ^(1,3)$ i.e. infinity) such that 

$
  integral_(ℝ^(1,3)) #d x Re (∂^† (Δ ϕ^* ∂ ϕ)) 
  &= lim_(r -> ∞) integral_(ℚ^(1,3)(± r)) (Δ ϕ^* ∂ ϕ) ⋅ n \
  &= 0
$
Differential of action
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

Repeat the above steps for the general scalar field action $ integral_(ℝ^(1,3)) #d x f(ϕ,∂_x ϕ) $
$
  0 = Δ S = integral_(ℝ^(1,3)) #d x ( 
    (∂ f)/(∂ ϕ) ⋅ Δ ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ 
  )
$
In coordinates $(∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ = g^(μ ν) (∂ f)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) Δ ϕ$

product rule
$
  ∂_x^† ((∂ f)/(∂ (∂_x ϕ)) ⋅ Δ ϕ) = ( ∂_x^† (∂ f)/(∂ (∂_x ϕ)) ) ⋅ Δ ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
$
In coordinates $(∂ f)/(∂ (∂_x ϕ)) ⋅ Δ ϕ = ((∂ f)/(∂ (∂_(μ) ϕ)) ⋅ Δ ϕ)_(μ = 0 ,…, 3)$

Divergence quantity + Stokes theroem + zero boundary + forall $Δ ϕ$, collect $Δ ϕ$ term, gets the Lagrange-equation
$
  (∂ f)/(∂ ϕ) - ∂_x^† (∂ f)/(∂ (∂_x ϕ)) = 0
$
Note that the $ℝ$ value field is not compatible with $#U (1,ℂ)$ gauge

Plane wave

- Period
- Wavelength
- 4-wavenumber
- Wave speed
  - Massless ==> Wave speed = speed of light
  - Massive ==> Wave speed < speed of light. And wave speed is not $SO(1,3)$ invariant

*Question* #tag("motivation-of-plane-wave-solution")
#indent[
  Motivation for plane waves? Inspired by the appearance of $exp$ in the solution of constant coefficient linear ODEs, especially the harmonic oscillator eq $(#d^2 x)/(#d t^2) ± ω^2 x = 0$, similar to the first-order form of #link(<harmonic-oscillator>)[harmonic oscillator] $mat((#d)/(#d t) ; , (#d)/(#d t)) vec(x,v) = mat(, 1 ; ∓ ω^2) vec(x,v)$, for the KG equation
  $
    mat(∂ ; , ∂^†) vec(ϕ,ψ) = mat(, -𝟙 ; ∓m^2) vec(ϕ,ψ)
  $
  Perform #link(<invariant-of-vector-field>)[$exp$ ization] or #link(<integral-curve>)[integral curve]

  Trigonometric case
  $
    exp x mat(, -𝟙 ; ∓m^2) = mat(
      cos p x , p/(|p|^2) sin p x 𝟙 ; 
      - p sin p x 𝟙 , cos p x
    )
  $
  where $|p|^2 = m^2$, $p/(|p|^2)$ represents quadratic form inversion, and acts on $ψ$ with the inner product

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
  The hyperbolic case is similar
]

#tag("linear-superposition-of-KG-eq")
#indent[
  Linear superposition of plane waves also satisfies the scalar field eq

  - $m != 0$
  #indent[
    Integrate and superpose on hyperbolic hypersurface ${p^2 = ± m^2} = ℚ(1,3)(± m^2)$
    
    metric & volume form from restriction of $ℝ^(1,3)$
    
    In the $+ m^2$ case, it can be performed on one sheet of the three-dimensional spacelike hyperboloid $ℍ𝕪^3 = {p^2 = m^2, p_0 > 0}$, because the other sheet can be obtained by collecting the coefficients $a(p,#i) + a(-p,-#i)$ to be equivalent to a single sheet
    
    $
      ϕ(x) = limits(integral)_(ℍ𝕪^3 \ 𝕊(Im ℂ)) #d p #d #i
      (a(p,#i) e^(p x #i))
    $

    ${± #i} = 𝕊(Im ℂ) = 𝕊^0$. For $ℍ,𝕆$ plane waves, it may be necessary to consider all unit imaginary elements, so do we need to integrate over $𝕊(Im ℍ) = 𝕊^2, 𝕊(Im 𝕆) = 𝕊^6$?

    

    For $ℝ$ valued fields, $a(p,-#i) = a(p,#i)^*$, and written as $a(p)^*$

    Add a square-integrable condition to $a(p,#i)$ (integral on $p^2 = m^2$), and in order to make some derivatives of $ϕ$ also square-integrable (Sobolev) e.g. $∂_(μ) ϕ$, usually add some "polynomial multiplication" square-integrable conditions to $a(p,#i)$ e.g. $p_(μ) #i a(p,#i)$
    
    On a simple "projection to $ℝ^3$ coordinates" (not $SO(1,3)$ invariant), use the notation $(p_0,p) ∈ ℝ^(1,3)$
    $ 
      ϕ(x_0, x) = integral_(ℝ^3) #d p 
      1/(sqrt(2 p_0)) 
      (
        a(p,#i) e^(p_0 x_0 #i) e^(- p x #i) 
        + a(p,-#i) e^(- p_0 x_0 #i) e^(p x #i)
      )
    $
    with $p_0 = p_0 (p) = sqrt(m^2 + p^2) > 0, a(p,#i) = a(p_0,p,#i)$

    $p^2 = - m^2$ cannot be simply "projected" to $ℝ^(1,2)$, it is not a bijection to begin with
  ]
  - $m = 0$
  #indent[
    Cannot directly use submanifold metric volume form since metric vanish. Can we use the limit of $m -> 0$? Use some limit of $p_0 (m),p(m),a(m)$?
  ]
]
#tag("unitary-representation-KG-field") 
#indent[
  For $L^2$ superposition of free fields, there is an $L^2$ inner product, and $SO(1,3) ⋊ ℝ^(1,3)$ invariant. Preserving the quadratic form implies preserving the inner product
  
  Translation $x -> x + a$ makes $|a(p) exp(p a #i)|^2 = |a(p)|^2$
  
  Rotation $(p -> Λ p) in SO(1,3)$ is an isometry of $ℚ^(1,3)(± m^2)$, does not change the integral
  $
    integral_(ℚ^(1,3)(± m^2)) #d Vol |a(Λ p)|^2 
    = integral_(ℚ^(1,3)(± m^2)) #d Vol |a(p)|^2 
  $ 

  This is called the unitary representation of the Poincare group $SO(1,3) ⋊ ℝ^(1,3)$, spin 0 part, $± m^2 ∈ ℝ$
]
#tag("try-to-define-plane-wave-in-metric-manifold") 
#indent[
  Can the $exp$ form of $mat(∂ ; , ∂^†) vec(ϕ,ψ) = mat(, -𝟙 ; ∓m^2) vec(ϕ,ψ)$ be generalized on manifolds? Note that this is written in coordinate-free form. If use coordinate, it will not be constant coefficient PDE. whether or not it's constant coefficient, we can try to exp it
  
  Can it be generalized on symmetric spaces $ℚ^(1,4)(-1),ℚ^(2,3)(1)$? 
  
  Does (δ) isometry preserve $L^2$ superposition?
]
To construct particle-like wave packets, first find static solutions, then boost

Does $ℝ^(1,1)$ spacetime, $ℝ$ valued scalar field with potential $V(ϕ) = ϕ^4$ or $sin ϕ$ give a possible multi-particle wave packet model? (Soliton type)

*Question* the difficulty of infinite
#indent[
  The free field $ket(p \, ± #i) = exp(± p x #i)$ is not integrable, so it cannot be substituted into the Lagrangian and then integrated

  One possibly less satisfactory approach is to only consider the integrability of the difference. Consider $ϕ$ around $ket(p)$ with $L(ϕ) - L(ket(p \, ± #i))$ integrable, and the derivative of the action at $ket(p)$ is zero

  Another method is to first integrate over a finite region, and then take the limit to an infinite region
]
Symmetry and conserved currents
- Spacetime translation
#indent[
  Spacetime translation does not fix the "boundary" of $ℝ^(1,3)$. The variation is non-zero. Similar to the case of time translation of a point particle
  $
  (#d)/(#d s) integral_(ℝ^(1,3) + s a) #d x (f(x)) = integral_(ℝ^(1,3)) #d x (∂_x f(x) ⋅ a)
  $
  Generally, a region change is given by $exp(a(x))$ through a δ diffeomorphism $a(x)$ 
  $
    (#d)/(#d s) limits(integral)_(exp(s a(x)) U) #d x (f(x)) 
    
    = integral_(U) #d x (∂_x f(x) ⋅ a(x))
  $
  Use the change of variable formula
  $
    integral_(ℝ^(1,3) + s a) #d x (f(x)) = integral_(ℝ^(1,3)) #d x (f(x + s a))
  $
  Interchange differentiation and integration 
  $
    (#d)/(#d s) integral_(ℝ^(1,3)) #d x (f(x + s a)) = integral_(ℝ^(1,3)) #d x (#d)/(#d s) f(x + s a)
  $
  Apply it to 
  $
    f(x) &= f(ϕ(x),∂ ϕ(x)) 
  $
  Consider the derivative of the variation of the action translated in the $ν in ℝ^(1,3)$ direction. let $Δ ϕ = ∂_(ν) ϕ$, the first-order derivative $Δ S =$
  $
    integral_(ℝ^(1,3)) #d x (∂_(ν) f)
    
    &= integral_(ℝ^(1,3)) #d x (
      (∂ f)/(∂ ϕ) ⋅ Δ ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
    )
  $
  use product rule
  $
    ∂_x^† ((∂ f)/(∂ (∂_x ϕ)) ⋅ Δ ϕ) 
    = ( ∂_x^† (∂ f)/(∂ (∂_x ϕ)) ) ⋅ Δ ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
  $
  use Lagrange-equation
  $
    (∂ f)/(∂ ϕ) - ∂_x^† (∂ f)/(∂ (∂_x ϕ)) = 0
  $
  use divergence-free + zero boundary, to get
  $
    integral_(ℝ^(1,3)) #d x (∂_(ν) f)
    
    &= integral_(ℝ^(1,3)) #d x (
      ∂_x^† ((∂ f)/(∂ (∂_x ϕ)) ⋅ Δ ϕ)
    )
  $
  #tag("energy-momentum-tensor-KG")
  $
    T = T^(μ)_(ν) = cases(
      (∂ f)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ & " if " μ != ν,
      (∂ f)/(∂ (∂_(ν) ϕ)) ⋅ ∂_(ν) ϕ - f & " if " μ = ν
    )
  $
  Get
  $
    0 = integral_(ℝ^(1,3)) #d x 
      ( ∂^† T ⋅ ∂_(ν) ϕ)   
  $
  for all $∂_(ν) ϕ$ as coordinate-frame, so $∂^† T = ∂_(μ) T^(μ)_(ν) = 0$

  Since $f$ is a real value, so is the EM tenosr

  for $f(ϕ, ∂_x ϕ) = 1/2 (∂ ϕ^* ⋅ ∂ ϕ - m^2 ϕ^* ϕ)$ calculation
  $
    (∂ f)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ = Re ( ∂^(μ) ϕ^* ∂_(ν) ϕ ) 
  $
  or $(∂ f)/(∂ (∂_x ϕ)) = Re(∂_x ϕ^* ⋅)$

  It can be seen that this EM tensor is symmetric after the index is lowered $T_(μ ν) = Re(∂_μ ϕ^* ∂_(ν) ϕ)$, $T_(μ ν) = T_(ν μ)$

  Assume that the EM tensor of $ℝ^(1,3)$ can be integrated over $ℝ^3$. Use the notation $(x_0,x) ∈ ℝ^(1,3)$. energy 
  $
    E = integral_(ℝ^3) #d x (T_0^0) = integral_(ℝ^3) #d x 1/2 (|∂_0 ϕ|^2 + |∂_x ϕ|^2 + m^2 |ϕ|^2)
  $
  General potential $m^2 |ϕ|^2$ => $V(|ϕ|^2)$

  The energy of the relativity scalar field is a real number and positive

  #tag("conserved-spatial-integral-energy-KG") 
  #indent[  
    Fix the $ℝ^(1,3)$ coordinates, and consider $T$ as a quantity integrable over $ℝ^3$
    $
      ∂_0 integral_(ℝ^3) #d x (T_μ^0)
      &= integral_(ℝ^3) #d x (∂_0 T_μ^0) \
      &= - integral_(ℝ^3) #d x (∂_1 T_μ^1 + ∂_2 T_μ^2 + ∂_3 T_μ^3) 
        " by " ∂^† T_μ = 0 \
      &= - lim_(r -> ∞) integral_(𝔹^3(r)) #d x (div T_μ^x) \
      &= - lim_(r -> ∞) integral_(𝕊^2(r)) #d Vol (T_μ^x ⋅ x/(|x|))
    $
    As long as we assume the flux density $r -> ∞ ==> T_μ^x ⋅ x/(|x|) -> 0$, there is time invariant of $integral_(ℝ^3) #d x (T_μ^0)$

    - $T^0_0 = 1/2 (|∂_0 ϕ|^2 + |∂_x ϕ|^2 + m^2 |ϕ|^2)$. Energy conservation of the field $∂_0 E = 0$

    - $T^0_x = Re(∂_0 ϕ^* ∂_x ϕ)$. Momentum (?) conservation of the field
  ]
  Other $T$ components e.g. $integral_(ℝ^(1,3)) #d x (T_μ^1)$, are invariant along the $x_1$ direction. Use $∂_1$, the integral of $ℝ^(1,2)$ and its $div$. The limit of region approximation $lim_(r -> ∞)$ is for hyperbolic geodesic spheres (multi-radius)

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
  For a field, whether it's a spatial rotation or a boost, even if the Lagrangian remains unchanged, the action still changes

  Now use the notation $(x_0,x),(∂_0,∂_x) ∈ ℝ^(1,3)$ 

  - Spatial rotation of $i,j$. $(x_i,x_j) = r (cos t, sin t)$, then $(#d)/(#d t) = r (- sin t, cos t) = (- x_j, x_i)$, so the tangent vector is $- x_j ∂_i + x_i ∂_j$

    Let $n ∈ so(3) ≃ ℝ^3$ be the spatial rotation axis, then the tangent vector will be $n ⋅ (x × ∂)$

  - Boost of $0,i$. $(x_0,x_i) = r (cosh t, sinh t)$, then $(#d)/(#d t) = r (sinh t, cosh t) = (x_i, x_0)$, so the tangent vector is $x_i ∂_0 + x_0 ∂_i$

    Let $n ∈ ℝ^3$ be the spatial boost axis, then the tangent vector will be $n ⋅ (x_0 ∂ - x ∂_0)$ (the metric of $ℝ^(1,3)$ spacetime has a negative definite space)

  Now use the notation $x,∂_x ∈ ℝ^(1,3)$. The combination of the tangent vectors of rotation and boost is denoted as $[x,∂_x]$, acting on the field $ϕ$ as a δ spacetime rotation $so(1,3)$, as a δ diffeomorphism (for the range of the field)
  $
    integral_(ℝ^(1,3)) #d x ( [x,∂] f ) 
    
    = integral_(ℝ^(1,3)) #d x (
      (∂ f)/(∂ ϕ) ⋅ [x,∂_x] ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x [x,∂_x] ϕ
    )
  $
  Using the KG equation, move terms, and get a divergence-free conserved current

  #tag("angular-momentum-KG") let $T$ be the energy-momentum tensor of the KG field. Angular momentum of the field
  $
    L = [x,T]
  $
  or
  $
    L^(λ)_(μ ν) = [x_(μ),T_(ν)^(λ)] 
  $
]
- Current of the KG field under gauge field
#indent[
  let $ϕ(x)$ be a solution of the KG eq. The phase change $e^(θ(x)) ϕ(x)$ and its δ change $θ ϕ$ belong to the variation with fixed boundaries near the solution, so
  $
    0 &= integral_(ℝ^(1,3)) #d x 1/2 (
        ∂(- θ ϕ^*) ⋅ ∂ ϕ +  ∂ ϕ^* ⋅ ∂(θ ϕ)
    ) \
    
    &= integral_(ℝ^(1,3)) #d x 1/2 (
      - ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) ⋅ ∂ θ
  $ 
  Use product rule + divergence + Stokes theroem + zero boundary 
  $
    0 = integral_(ℝ^(1,3)) #d x (1/2 ∂^† (
      - ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) θ
    )
  $
  for all $Im(ℂ)$ valued functions $θ(x)$, so
  $
    forall x ∈ ℝ^(1,3), ∂^† (- ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) = 0
  $
  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^*$ is called the 4-current of the KG field #tag("current-gauge-KG")

  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^* = - Im(ϕ^* ∂ ϕ)$ 

  Fix $ℝ^(1,3)$ coordinates, consider the 4-current component to be a $ℝ^3$ integrable quantity, then the zero component is charge conservation #tag("conserved-spatial-integral-charge-KG")
  
  $ 0 = ∂_t integral_(ℝ^3) #d x (- ϕ^* ∂_t ϕ + ϕ ∂_t ϕ^*) = ∂_t Q $
]