#import "../module/module.typ": *
#show: module

cf. #link(<Klein--Gordon-Lagrangian>)[Action of scalar field]

Symmetry and conserved currents

- Spacetime translation
#indent[
  Spacetime translation does not fix the $ℝ^(1,3)$ "boundary". The variation is non-zero. Similar to the case of time translation for a point particle
  $
  (#d)/(#d s) integral_(ℝ^(1,3) + s a) #d x (f(x)) = integral_(ℝ^(1,3)) #d x (∂_x f(x) ⋅ a)
  $
  Generally, region change is given by $exp(a(x))$ #link(<vector-field-as-δ-diffeomorphism>)[by δ diffeomorphism] $a(x)$ 
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

  note that it's non positive defnite, $(ϕ,ψ) ⇝ -ψ^* ∂_t ϕ + ϕ ∂_t ψ^*$ is anti-Hermitian
]
