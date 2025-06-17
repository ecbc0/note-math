#import "../module/module.typ": *
#show: module

cf. #link(<massless-spinor-Lagrangian>)[Action of spinor field]

- spinor-current-translation-of-spacetime 
#indent[
  massless spinor Lagrangian
  $ 
    L(ϕ,∂_x ϕ) 
    &= ϕ^† #spin-d^◊ ϕ \ 
    &= ϕ^† σ^μ ∂_ μ ^◊ ϕ 
  $ 
  massive spinor Lagrangian
  $ 
    L(vec(ϕ,ψ),∂_x vec(ϕ,ψ)) 
    
    &= vec(ϕ,ψ)^† mat(#i #spin-d^◊ , - m 𝟙 ; - m 𝟙 , #i #spin-d) vec(ϕ,ψ) \

    &= #i ⋅ (ϕ^† σ^μ ∂_ μ ^◊ ϕ + ψ^† σ^μ ∂_ μ ψ) - m ((ϕ^† ψ + ψ^† ϕ))   
  $
  Since only the $Re$ part of the spinor field action plays a role, a $Re$ type theory can also be used.

  Similar to #link(<energy-momentum-tensor-KG>)[the case of scalar field], try to calculate the energy-momentum-tensor

  The solution of the spinor eq $#spin-d^◊ ϕ = 0$ or $mat(#i #spin-d^◊ , - m 𝟙 ; - m 𝟙 , #i #spin-d) vec(ϕ,ψ) = 0$ makes $L(ϕ,∂_x ϕ) = 0$
  $
    T^ μ _ ν = (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ
  $
  $L(ϕ,∂_x ϕ) = ϕ^† #i #spin-d^◊ ϕ$ ==> #tag("energy-momentum-tensor-massless-spinor") 
  $
    T = ϕ^† (σ #i ∂^◊) ϕ 
  $ 
  or component form
  $
    T^(μ)_(ν) = ϕ^† (σ^μ #i ∂_ν^◊) ϕ
  $
  For massive, the derivative of the mass term with respect to $∂_ μ$ is zero + the action with solution is still zero $L = 0$, so that the energy-momentum tensor is not affected by the mass term.

  #tag("energy-momentum-tensor-massive-spinor")
  $
    T = vec(ϕ,ψ)^† mat( σ #i ∂^◊;, σ #i ∂) vec(ϕ,ψ)
  $
  or component form
  $
    T^(μ)_(ν) = vec(ϕ,ψ)^† mat(#i σ^μ ∂_ ν ^◊;, #i σ^μ ∂_ ν) vec(ϕ,ψ)
  $
  All are quantities with zero divergence $∂^† T = ∂_ μ T^ μ _ ν = 0$
]
- spinor-energy
#indent[
  Fix $ℝ^(1,3)$ coordinates and consider $T^0_(μ) = ϕ^† #i ∂_(μ)^(◊) ϕ$ to be an integrable quantity in $ℝ^3$. Define energy for massless-spinor
  $
    E = integral_(ℝ^3) #d x (T^0_0) &= integral_(ℝ^3) #d x (ϕ^† #i ∂_0 ϕ) 
  $
  Similar to #link(<conserved-spatial-integral-energy-KG>)[the case of scalar field], time invariant $∂_0 E = 0$ by $∂^† T = ∂_(μ) T^(μ)_(ν) = 0$

  *Example* Plane wave, similar to the case of scalar field

  massive-spinor energy
  $
    E = integral_(ℝ^3) #d x (T^0_0) 
    
    &= integral_(ℝ^3) #d x vec(ϕ,ψ)^† #i ∂_0 vec(ϕ,ψ)
  $
]
- spinor-current-rotation-boost-of-spacetime
#indent[
  Using the product rule of differentiation, separate into two parts

  - The domain differentiation part is still similar to #link(<angular-momentum-KG>)[the case of scalar field]
  #indent[
    $
      M = [x,T]
    $
    or
    $
      M = ϕ^† [x , σ #i ∂^◊] ϕ
    $
    or
    $
      M^(λ)_(μ ν) = ϕ^† [x_(μ), σ^(λ) #i ∂_(ν)^(◊)] ϕ
    $
  ]
  - The codomain differentiation part
  #indent[
    The δ diffeomorphism given by the Lorentz-Lie-algebra $so(1,3)$ is $1/4 [σ_(μ),σ_(ν)]_(◊) ϕ(x)$. (cf. #link(<square-root-of-Lorentz-Lie-algebra>)[])
    $
      0 = integral_(U) #d x ((1/4 [σ_(μ),σ_(ν)]_(◊) ϕ)^† #i #spin-d^◊ ϕ + ϕ^† (σ^λ #i ∂^◊_λ) (1/4 [σ_(μ),σ_(ν)]_(◊) ϕ)) 
    $
    $#spin-d^◊ ϕ = 0$ + product rule + $σ^(λ) ∂_λ^◊ = σ^(λ ◊) ∂_λ$ gives 
    $
      0 = integral_(U) #d x (
        ∂_λ (
          #i ϕ^† σ^(λ ◊) 1/4 [σ_(μ),σ_(ν)]_(◊) ϕ
        )
      )
    $ 
    forall $U subset ℝ^(1,3)$ ==> integrand is zero ==> divergence-free quantity $∂^† S = ∂_(λ) S^(λ)_(μ ν) = 0$
    $
      S^(λ)_(μ ν) := #i ϕ^† (σ^◊ 1/4 [σ,σ]_(◊)) ϕ
    $
    or
    $
      S = #i ϕ^† (σ^◊ 1/4 [σ,σ]_(◊)) ϕ
    $
  ]
  - #tag("spinor-angular-momentum") 
  #indent[
  The angular momentum of domain and codomain combined, spinor-angular-momentum is
  $
    J = M + S = #i ϕ^† σ^◊ ([x,∂] + 1/4 [σ,σ]_(◊)) ϕ
  $
  or
  $
    J^(λ)_(μ ν) = #i ϕ^† σ^(λ ◊) ([x_(μ),∂_(ν)] + 1/4 [σ_(μ),σ_(ν)]_(◊)) ϕ
  $
  ]
  The case of massive-spinor is similar. It should be possible to prove by calculation that angular momentum is not affected by the mass term.
  $
    J &= L + S = #i ⋅ vec(ϕ,ψ)^† mat(
      σ^◊ ([x,∂] + 1/4 [σ,σ]_(◊));
      , σ ([x,∂] + 1/4 [σ,σ]_(◊))
    ) vec(ϕ,ψ)
  $
]
- current-gauge-spinor
#indent[
  let $ϕ(x)$ be a solution to the spinor eq. Phase change $e^(θ(x)) ϕ(x)$ and its δ change $θ ϕ$ belong to boundary fixed variations near the solution, so
  $
    0 &= integral_(ℝ^(1,3)) #d x (- θ ϕ^† #i #spin-d^◊ ϕ + ϕ^† #i #spin-d^◊ (θ ϕ)) \
    
    &= integral_(ℝ^(1,3)) #d x ((#i ϕ^† σ^◊ ϕ) ⋅ ∂ θ)
  $
  Using product rule + divergence-free quantity + boundary zero
  $
    0 = integral_(ℝ^(1,3)) #d x (∂^† (#i ϕ^† σ^◊ ϕ) ⋅ θ)
  $
  for all $Im(ℂ)$ value function $θ(x)$, so
  $
    forall x ∈ ℝ^(1,3), ∂^† (#i ϕ^† σ^◊ ϕ) = ∂_μ (#i ϕ^† σ^(μ ◊) ϕ)(x) = 0
  $
  #tag("current-gauge-spinor") $j = #i ϕ^† σ^◊ ϕ, ∂^† j = 0$ is called the 4-current of massless-spinor

  Similarly, for massive-spinor, the 4-current is $#i ⋅ vec(ϕ,ψ)^† mat(σ^◊;,σ) vec(ϕ,ψ)$
]
#tag("conserved-spatial-integral-charge-spinor") Fixing $ℝ^(1,3)$ coordinates, consider $j$ as a quantity integrable over $ℝ^3$

time invariant $∂_0 integral_(ℝ^3) #d x ( j^0 ) = 0$ by $∂^† T = 0$
$
  integral_(ℝ^3) #d x (j^0) 
  &= integral_(ℝ^3) #d x (#i ϕ^† σ^0 ϕ) \
  &= integral_(ℝ^3) #d x (#i ϕ^† ϕ) \
  &= integral_(ℝ^3) #d x |ϕ|^2 #i 
$
In fact, one can choose a spacetime decomposition coordinate $ℝ^(1,3)$ and write the spinor eq in the form of unitary evolution of charge $#i ∂_0 ϕ = - #i σ^(i ◊) ∂_i ϕ = #i σ^i ∂_i ϕ$ where $- #i σ^(i ◊) ∂_i$ is self-adjoint for $ℂ^2$ quadratic form + $ℝ^3$ integral

(After dropping $#i$) charge *alias* probability density or particle number density or electric charge density

The case of massive-spinor is
$
  &integral_(ℝ^3) #d x (#i ⋅ vec(ϕ,ψ)^† mat(σ^(0 ◊);,σ^0) vec(ϕ,ψ)) \
    =& integral_(ℝ^3) #d x (|ϕ|^2 + |ψ|^2) #i
$
Similar to the massless case, the spinor eq can be written in the form of charge unitary evolution.
$
  #i ∂_0 vec(ϕ,ψ) = (mat(#i σ^i ∂_i ;, - #i σ^i ∂_i) + m mat(,𝟙;𝟙)) vec(ϕ,ψ)
$

conserved-current on mainfold ...