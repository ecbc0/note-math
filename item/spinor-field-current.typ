#import "/module/module.typ": *
#show: module

cf. #link(<massless-spinor-Lagrangian>)[旋量场的作用量]

- spinor-current-translation-of-spacetime 
#indent[
  massless spinor Lagrangian
  $ 
    L(ϕ,∂_x ϕ) 
    &= ϕ^† #spin-d^⬨ ϕ \ 
    &= ϕ^† σ^μ ∂_ μ ^⬨ ϕ 
  $ 
  massive spinor Lagrangian
  $ 
    L(vec(ϕ,ψ),∂_x vec(ϕ,ψ)) 
    
    &= vec(ϕ,ψ)^† mat(#i #spin-d^⬨ , - m 𝟙 ; - m 𝟙 , #i #spin-d) vec(ϕ,ψ) \

    &= #i ⋅ (ϕ^† σ^μ ∂_ μ ^⬨ ϕ + ψ^† σ^μ ∂_ μ ψ) - m ((ϕ^† ψ + ψ^† ϕ))   
  $
  由于旋量场作用量起作用的只有 $Re$ 部分, 所以也可以使用 $Re$ 型理论

  类似于 #link(<energy-momentum-tensor-KG>)[scalar field 的情况], 尝试计算 energy-momentum-tensor

  spinor eq 的解 $#spin-d^⬨ ϕ = 0$ or $mat(#i #spin-d^⬨ , - m 𝟙 ; - m 𝟙 , #i #spin-d) vec(ϕ,ψ) = 0$ 使得 $L(ϕ,∂_x ϕ) = 0$
  $
    T^ μ _ ν = (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ
  $
  $L(ϕ,∂_x ϕ) = ϕ^† #i #spin-d^⬨ ϕ$ ==> #tag("energy-momentum-tensor-massless-spinor") 
  $
    T = ϕ^† (σ #i ∂^⬨) ϕ 
  $ 
  or 分量形式
  $
    T^(μ)_(ν) = ϕ^† (σ^μ #i ∂_ν^⬨) ϕ
  $
  对于 massive, 质量项对 $∂_ μ$ 的微分是零 + 仍然有解的作用量是零 $L = 0$, 使得能动张量不受质量项影响

  #tag("energy-momentum-tensor-massive-spinor")
  $
    T = vec(ϕ,ψ)^† mat( σ #i ∂^⬨;, σ #i ∂) vec(ϕ,ψ)
  $
  or 分量形式
  $
    T^(μ)_(ν) = vec(ϕ,ψ)^† mat(#i σ^μ ∂_ ν ^⬨;, #i σ^μ ∂_ ν) vec(ϕ,ψ)
  $
  都是散度零的量 $∂^† T = ∂_ μ T^ μ _ ν = 0$
]
- spinor-energy
#indent[
  固定 $ℝ^(1,3)$ 坐标, 认为 $T^0_(μ) = ϕ^† #i ∂_(μ)^(⬨) ϕ$ 是可 $ℝ^3$ 积分的量. 定义 energy for massless-spinor
  $
    E = integral_(ℝ^3) #d x (T^0_0) &= integral_(ℝ^3) #d x (ϕ^† #i ∂_0 ϕ) 
  $
  类似于 #link(<conserved-spatial-integral-energy-KG>)[纯量场的情况], time invariant $∂_0 E = 0$ by $∂^† T = ∂_(μ) T^(μ)_(ν) = 0$

  *Example* 平面波, 类似于纯量场的情况

  massive-spinor energy
  $
    E = integral_(ℝ^3) #d x (T^0_0) 
    
    &= integral_(ℝ^3) #d x vec(ϕ,ψ)^† #i ∂_0 vec(ϕ,ψ)
  $
]
- spinor-current-rotation-boost-of-spacetime
#indent[
  用微分的 product rule, 分开两部分

  - domain 微分部分仍然是类似 #link(<angular-momentum-KG>)[scalar field 的情况]
  #indent[
    $
      M = [x,T]
    $
    or
    $
      M = ϕ^† [x , σ #i ∂^⬨] ϕ
    $
    or
    $
      M^(λ)_(μ ν) = ϕ^† [x_(μ), σ^(λ) #i ∂_(ν)^(⬨)] ϕ
    $
  ]
  - codomain 微分部分
  #indent[
    Lorentz-Lie-algebra $so(1,3)$ 给出的 δ diffeomorphism 是 $1/4 [σ_(μ),σ_(ν)]_(⬨) ϕ(x)$. (cf. #link(<square-root-of-Lorentz-Lie-algebra>)[])
    $
      0 = integral_(U) #d x ((1/4 [σ_(μ),σ_(ν)]_(⬨) ϕ)^† #i #spin-d^⬨ ϕ + ϕ^† (σ^λ #i ∂^⬨_λ) (1/4 [σ_(μ),σ_(ν)]_(⬨) ϕ)) 
    $
    $#spin-d^⬨ ϕ = 0$ + product rule + $σ^(λ) ∂_λ^⬨ = σ^(λ ⬨) ∂_λ$ 得到 
    $
      0 = integral_(U) #d x (
        ∂_λ (
          #i ϕ^† σ^(λ ⬨) 1/4 [σ_(μ),σ_(ν)]_(⬨) ϕ
        )
      )
    $ 
    forall $U subset ℝ^(1,3)$ ==> 被积项是零 ==> 散度零量 $∂^† S = ∂_(λ) S^(λ)_(μ ν) = 0$
    $
      S^(λ)_(μ ν) := #i ϕ^† (σ^⬨ 1/4 [σ,σ]_(⬨)) ϕ
    $
    or
    $
      S = #i ϕ^† (σ^⬨ 1/4 [σ,σ]_(⬨)) ϕ
    $
  ]
  - #tag("spinor-angular-momentum") 
  #indent[
  domain codomain 的角动量合起来, spinor-angular-momentum is
  $
    J = M + S = #i ϕ^† σ^⬨ ([x,∂] + 1/4 [σ,σ]_(⬨)) ϕ
  $
  or
  $
    J^(λ)_(μ ν) = #i ϕ^† σ^(λ ⬨) ([x_(μ),∂_(ν)] + 1/4 [σ_(μ),σ_(ν)]_(⬨)) ϕ
  $
  ]
  massive-spinor 的情况类似. 应该可以通过计算证明角动量不受质量项影响
  $
    J &= L + S = #i ⋅ vec(ϕ,ψ)^† mat(
      σ^⬨ ([x,∂] + 1/4 [σ,σ]_(⬨));
      , σ ([x,∂] + 1/4 [σ,σ]_(⬨))
    ) vec(ϕ,ψ)
  $
]
- current-gauge-spinor
#indent[
  let $ϕ(x)$ 是 spinor eq 的解. 相位改变 $e^(θ(x)) ϕ(x)$ 及其 δ 改变 $θ ϕ$ 属于解附近的边界固定变分, 所以
  $
    0 &= integral_(ℝ^(1,3)) #d x (- θ ϕ^† #i #spin-d^⬨ ϕ + ϕ^† #i #spin-d^⬨ (θ ϕ)) \
    
    &= integral_(ℝ^(1,3)) #d x ((#i ϕ^† σ^⬨ ϕ) ⋅ ∂ θ)
  $
  使用 product rule + 散度零量 + 边界零
  $
    0 = integral_(ℝ^(1,3)) #d x (∂^† (#i ϕ^† σ^⬨ ϕ) ⋅ θ)
  $
  for all $Im(ℂ)$ value function $θ(x)$, so
  $
    forall x ∈ ℝ^(1,3), ∂^† (#i ϕ^† σ^⬨ ϕ) = ∂_μ (#i ϕ^† σ^(μ ⬨) ϕ)(x) = 0
  $
  #tag("current-gauge-spinor") $j = #i ϕ^† σ^⬨ ϕ, ∂^† j = 0$ 被称为 4 电流 of massless-spinor

  类似地, massive-spinor 的情况, 4 电流是 $#i ⋅ vec(ϕ,ψ)^† mat(σ^⬨;,σ) vec(ϕ,ψ)$
]
#tag("conserved-spatial-integral-charge-spinor") 固定 $ℝ^(1,3)$ 坐标, 认为 $j$ 是可 $ℝ^3$ 积分的量

time invariant $∂_0 integral_(ℝ^3) #d x ( j^0 ) = 0$ by $∂^† T = 0$
$
  integral_(ℝ^3) #d x (j^0) 
  &= integral_(ℝ^3) #d x (#i ϕ^† σ^0 ϕ) \
  &= integral_(ℝ^3) #d x (#i ϕ^† ϕ) \
  &= integral_(ℝ^3) #d x |ϕ|^2 #i 
$
实际上可以选取一个时空分解坐标 $ℝ^(1,3)$ 将 spinor eq 写成电荷量 unitary 演化的形式 $#i ∂_0 ϕ = - #i σ^(i ⬨) ∂_i ϕ = #i σ^i ∂_i ϕ$ 其中 $- #i σ^(i ⬨) ∂_i$ 对于 $ℂ^2$ 二次型 + $ℝ^3$ 积分 self-adjoint

(丢弃 $#i$ 之后) 电荷量 *alias* 概率密度 or 粒子数密度

massive-spinor 的情况是
$
  &integral_(ℝ^3) #d x (#i ⋅ vec(ϕ,ψ)^† mat(σ^(0 ⬨);,σ^0) vec(ϕ,ψ)) \
    =& integral_(ℝ^3) #d x (|ϕ|^2 + |ψ|^2) #i
$
类似 massless 的情况, 可以将 spinor eq 写成电荷量 unitary 演化的形式
$
  #i ∂_0 vec(ϕ,ψ) = (mat(#i σ^i ∂_i ;, - #i σ^i ∂_i) + m mat(,𝟙;𝟙)) vec(ϕ,ψ)
$

conserved-current on mainfold ...