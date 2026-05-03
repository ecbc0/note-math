#import "../module/module.typ": *
#show: module

cf. #link(<Klein__Gordon_Lagrangian>)[纯量场的作用量]

对称性与守恒流

- 时空平移
#indent[
  时空平移不固定 $ℝ^(1,3)$ "边界". 变分非零. 类似于点粒子的时间的平移的情况. let $U subset ℝ^(1,3)$ 
  $
    (#d)/(#d s) integral_(U + s a) #d x (f(x)) = integral_(U) #d x (∂_x f(x) ⋅ a)
  $
  一般地, 区域改变通过 $exp(a(x))$ #link(<vector_field_as_δ_diffeomorphism>)[通过 δ diffeomorphism] $a(x)$ 给出 
  $
    (#d)/(#d s) limits(integral)_(exp(s a(x)) U) #d x (f(x)) 
    
    = integral_(U) #d x (∂_x f(x) ⋅ a(x))
  $
  另一方面, 使用变量替换公式
  $
    integral_(U + s a) #d x (f(x)) = integral_(U) #d x (f(x + s a))
  $
  交换微分和积分 
  $
    (#d)/(#d s) integral_(U) #d x (f(x + s a)) = integral_(U) #d x (#d)/(#d s) f(x + s a)
  $
  将其应用于 
  $
    f(x) &= L(ϕ(x),∂ ϕ(x)) 
  $
  考虑 $a = e_ν in ℝ^(1,3)$ 平移的变分的作用量的微分. let $Δ ϕ = lim_(tau -> 0) 1/τ (ϕ(x + τ e_ν) - ϕ(x)) = ∂_(ν) ϕ$. 一阶微分 $Δ S =$
  $
    (#d)/(#d s) integral_(U + s a) #d x (L) &= integral_(U) #d x (#d)/(#d s) f(x + s a) \
    
    integral_(U) #d x (∂_ν L) 
    
    &= integral_(U) #d x (
      (∂ L)/(∂ ϕ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
    )
  $
  use product rule
  $
    ∂_x^† ((∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ) 
    = ( ∂_x^† (∂ L)/(∂ (∂_x ϕ)) ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
  $
  收集的 $Δ ϕ$ 项是零 by Lagrange-equation
  $
    (∂ L)/(∂ ϕ) - ∂_x^† (∂ L)/(∂ (∂_x ϕ)) = 0
  $
  得到
  $
    integral_(U) #d x (∂_(ν) L)
    
    &= integral_(U) #d x (
      ∂_x^† ((∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ)
    )
  $
  for all 区域 $U subset ℝ^(1,3)$ ==> 被积项也相等

  #tag("energy_momentum_tensor_KG")
  $
    T = T^(μ)_(ν) = cases(
      (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ & " if " μ != ν,
      (∂ L)/(∂ (∂_(ν) ϕ)) ⋅ ∂_(ν) ϕ - L & " if " μ = ν
    )
  $
  散度零 $∂^† T = ∂_(μ) T^(μ)_(ν) = 0$

  for $L(ϕ, ∂_x ϕ) = 1/2 (∂ ϕ^* ⋅ ∂ ϕ - m^2 ϕ^* ϕ)$ 计算
  $
    (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ = Re ( ∂^(μ) ϕ^* ∂_(ν) ϕ ) 
  $
  or $(∂ L)/(∂ (∂_x ϕ)) = Re(∂_x ϕ^* ⋅)$

  可以看到这个 EM tensor 在指标下降后 $T_(μ ν) = Re(∂_μ ϕ^* ∂_(ν) ϕ)$ 是 symmetric 的 $T_(μ ν) = T_(ν μ)$

  再加上 KG 作用量 $L$ 是实数值, 从而其 EM tenosr 是实数值

  假设 $ℝ^(1,3)$ 的 EM tensor 可对 $ℝ^3$ 积分. 使用记号 $(x_0,x) ∈ ℝ^(1,3)$. energy 
  $
    E = integral_(ℝ^3) #d x (T_0^0) = integral_(ℝ^3) #d x 1/2 (|∂_0 ϕ|^2 + |∂_x ϕ|^2 + m^2 |ϕ|^2)
  $
  一般 potential $m^2 |ϕ|^2$ => $V(|ϕ|^2)$

  relativity scalar field 的能量是实数且是正的

  #tag("conserved_spatial_integral_energy_KG") 
  #indent[  
    固定 $ℝ^(1,3)$ 坐标, 认为 $T^0_μ$ 是可 $ℝ^3$ 积分的量
    $
      ∂_0 integral_(ℝ^3) #d x (T_μ^0)
      &= integral_(ℝ^3) #d x (∂_0 T_μ^0) \
      &= - integral_(ℝ^3) #d x (∂_1 T_μ^1 + ∂_2 T_μ^2 + ∂_3 T_μ^3) 
        " by " ∂^† T_μ = 0 \
      &= - lim_(r -> ∞) integral_(𝔹^3(r)) #d x (div T_μ^x) \
      &= - lim_(r -> ∞) integral_(𝕊^2(r)) #d Vol (T_μ^x ⋅ x/(|x|))
    $
    只要假设通量密度 $r -> ∞ ==> T_μ^x ⋅ x/(|x|) -> 0$ 就有 time invariant of $integral_(ℝ^3) #d x (T_μ^0)$

    - $T^0_0 = 1/2 (|∂_0 ϕ|^2 + |∂_x ϕ|^2 + m^2 |ϕ|^2)$. 场的能量守恒 $∂_0 E = 0$

    - $T^0_x = Re(∂_0 ϕ^* ∂_x ϕ)$. 场的动量 (?) 守恒
  ]
  其它 $T$ 分量 e.g. $integral_(ℝ^(1,3)) #d x (T_μ^1)$, 是沿 $x_1$ 方向 invariant. 使用 $∂_1$, $ℝ^(1,2)$ 的积分及其 $div$. 区域逼近的极限 $lim_(r -> ∞)$ 是对双曲测地线球 (多半径)

  *Example* 对于平面波展开 
  $
    ϕ(x) = limits(integral)_(ℍ𝕪^3 \ 𝕊(Im ℂ)) #d p #d #i
    (a(p,#i) e^(p x #i))
  $ 
  能量是 (*Question*)
  $
    E = limits(integral)_(ℍ𝕪^3 \ 𝕊(Im ℂ)) #d p #d #i
    (p_0^2 abs(a(p,#i))^2)
  $
]
- 旋转和 boost
#indent[
  对于场, 无论是空间旋转还是 boost, 即使 Lagrangian 不变, 作用量还是改变

  现在用记号 $(x_0,x),(∂_0,∂_x) ∈ ℝ^(1,3)$ 

  - $i,j$ 的空间旋转. $(x_i,x_j) = r (cos t, sin t)$ 则 $(#d)/(#d t) = r (- sin t, cos t) = (- x_j, x_i)$ 所以切向量是 $- x_j ∂_i + x_i ∂_j$

    设 $n ∈ so(3) ≃ ℝ^3$ 是空间旋转轴, 则切向量将是 $n ⋅ (x × ∂)$

  - $0,i$ 的 boost. $(x_0,x_i) = r (cosh t, sinh t)$ 则 $(#d)/(#d t) = r (sinh t, cosh t) = (x_i, x_0)$ 所以切向量是 $x_i ∂_0 + x_0 ∂_i$

    设 $n ∈ ℝ^3$ 是空间 boost 轴, 则切向量将是 $n ⋅ (x_0 ∂ - x ∂_0)$ ($ℝ^(1,3)$ 时空 metric 有负定空间)

  现在用记号 $x,∂_x ∈ ℝ^(1,3)$. 旋转和 boost 的切向量合起来记为 $[x,∂_x]$, 作为 δ 时空旋转 $so(1,3)$ 作用在场 $ϕ$, 作为 δ diffeomorphism 
  $
    integral_(U) #d x ( [x,∂] L ) 
    
    = integral_(U) #d x (
      (∂ L)/(∂ ϕ) ⋅ [x,∂_x] ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x [x,∂_x] ϕ
    )
  $
  利用 KG 方程, 移项, 得到散度零守恒流

  #tag("angular_momentum_KG") let $T$ 是 KG 场的能动张量. 场的角动量
  $
    M = [x,T]
  $
  or
  $
    M^(λ)_(μ ν) = [x_(μ),T_(ν)^(λ)] 
  $
]
- 规范场下 KG 场的电流
#indent[
  let $ϕ(x)$ 是 KG eq 的解. 相位改变 $e^(θ(x)) ϕ(x)$ 及其 δ 改变 $θ ϕ$ 属于解附近的边界固定的变分, 所以
  $
    0 &= integral_(ℝ^(1,3)) #d x 1/2 (
        ∂(- θ ϕ^*) ⋅ ∂ ϕ +  ∂ ϕ^* ⋅ ∂(θ ϕ)
    ) \
    
    &= integral_(ℝ^(1,3)) #d x 1/2 (
      - ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) ⋅ ∂ θ
  $ 
  使用 product rule + 散度量 + Stokes 定理 + 边界零 
  $
    0 = integral_(ℝ^(1,3)) #d x (1/2 ∂^† (
      - ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) θ
    )
  $
  for all $Im(ℂ)$ 值函数 $θ(x)$, 所以
  $
    forall x ∈ ℝ^(1,3), ∂^† (- ϕ^* ∂ ϕ + ϕ ∂ ϕ^*) = 0
  $
  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^*$ 被称为 KG 场的 4-电流 #tag("current_gauge_KG")

  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^* = - Im(ϕ^* ∂ ϕ)$ 

  固定 $ℝ^(1,3)$ 坐标, 认为 4 电流分量是可 $ℝ^3$ 积分的量, 则有零分量即电荷守恒 #tag("conserved_spatial_integral_charge_KG")
  
  $ 0 = ∂_t integral_(ℝ^3) #d x (- ϕ^* ∂_t ϕ + ϕ ∂_t ϕ^*) = ∂_t Q $

  注意非正定性, $(ϕ,ψ) ⇝ -ψ^* ∂_t ϕ + ϕ ∂_t ψ^*$ 是 anti-Hermitian 的
]