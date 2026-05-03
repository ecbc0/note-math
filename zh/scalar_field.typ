#import "../module/module.typ": *
#show: module

纯量场的作用量

动能部分 $ 1/2|grad ϕ|^2 $ 

or $ 1/2|∂ ϕ|^2 $

其中 $grad ϕ <-> ∂ ϕ$ by metric 对偶 $(∂ ϕ) (X) =  g(grad ϕ, X)$

质量部分 $- 1/2 m^2|ϕ|^2 $

#tag("Klein__Gordon_Lagrangian")
$
  integral #d x (1/2|∂ ϕ|^2 ∓ 1/2 m^2|ϕ|^2) 
$
or
$
  integral_(ℝ^(1,3)) #d x ( 1/2 (∂ ϕ^* ⋅ ∂ ϕ ∓ m^2 ϕ^* ϕ) ) 
$



let δ diffeomorphism $Δ ϕ$, let 作用量的微分是零
$
  0 = Δ S = integral_(ℝ^(1,3)) #d x Re (∂ Δ ϕ^* ⋅ ∂ ϕ ∓ m^2 Δ ϕ^* ϕ)
$
product rule $∂^† (Δ ϕ^* ∂ ϕ) = ∂ Δ ϕ^* ⋅ ∂ ϕ + Δ ϕ^* ∂^† ∂ ϕ$

在坐标中 $∂^† ∂ ϕ = g^(μ ν) ∂_(μ) ∂_(ν) ϕ$

$ℝ^(1,3)$ δ diffeomorphism of field $Δ ϕ$, 在边界是零 (边界 of $ℝ^(1,3)$ i.e. 无穷远) 使得 

$
  integral_(ℝ^(1,3)) #d x Re (∂^† (Δ ϕ^* ∂ ϕ)) 
  &= lim_(r -> ∞) integral_(ℚ^(1,3)(± r)) (Δ ϕ^* ∂ ϕ) ⋅ n \
  &= 0
$
作用量的微分
$
  0 = - integral_(ℝ^(1,3)) #d x Re Δ ϕ^* (∂^† ∂ ϕ ± m^2 ϕ)
$
for all $Δ ϕ$, 从而给出 Lagrange-equation, 此处称为 #tag("Klein__Gordon_equation")
$
  ∂^† ∂ ϕ ± m^2 ϕ = 0
$
let $∆ = div grad = ∂^† ∂ = ∂ ∂^†$

- massless $ ∆ ϕ = 0 $
- massive $ (∆ ± m^2) ϕ = 0 $ 
- mass term => $- 1/2 V(|ϕ|^2)$ 
  $ (∆ + V') ϕ = 0 $ 

作用量使用了二次型 $|grad ϕ|^2$ 和 metric volume form $#d Vol$

in $ℂ$, $|grad ϕ|^2 = (grad ϕ)^† grad ϕ$

对一般 scalar field action $ integral_(ℝ^(1,3)) #d x space L(ϕ,∂_x ϕ) $ 重复上述步骤
$
  0 = Δ S = integral_(ℝ^(1,3)) #d x ( 
    (∂ L)/(∂ ϕ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ 
  )
$
在坐标中 $(∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ = g^(μ ν) (∂ L)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) Δ ϕ$

product rule
$
  ∂_x^† ((∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ) = ( ∂_x^† (∂ L)/(∂ (∂_x ϕ)) ) ⋅ Δ ϕ + (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
$
在坐标中 $(∂ L)/(∂ (∂_x ϕ)) ⋅ Δ ϕ = ((∂ L)/(∂ (∂_(μ) ϕ)) ⋅ Δ ϕ)_(μ = 0 ,…, 3)$

散度量 + Stokes 定理 + 边界零 + forall $Δ ϕ$, 收集 $Δ ϕ$, 项得到 Lagrange-equation
$
  (∂ L)/(∂ ϕ) - ∂_x^† (∂ L)/(∂ (∂_x ϕ)) = 0
$
注意 $ℝ$ 值场不兼容于 $#U (1,ℂ)$ gauge

平面波

- 周期
- 波长
- 4-波数
- 波速
  - 无质量 ==> 波速 = 光速
  - 有质量 ==> 波速 < 光速. 且波速不是 $SO(1,3)$ invariant

*Question* #tag("motivation_of_plane_wave_solution")
#indent[
  平面波的动机? 启发自常系数线性 ODE 的解的 $exp$ 的出现, 特别是谐振子 eq $(#d^2 x)/(#d t^2) ± ω^2 x = 0$, 类似 #link(<harmonic_oscillator>)[谐振子] 的一阶化 $mat((#d)/(#d t) ; , (#d)/(#d t)) vec(x,v) = mat(, 1 ; ∓ ω^2) vec(x,v)$, 对 KG 方程
  $
    mat(∂ ; , ∂^†) vec(ϕ,ψ) = mat(, -𝟙 ; ∓m^2) vec(ϕ,ψ)
  $
  进行 #link(<exponential_of_vector_field>)[$exp$ 化] 或者 #link(<integral_curve>)[积分曲线]

  三角情况
  $
    exp x mat(, -𝟙 ; ∓m^2) = mat(
      cos p x , p/(|p|^2) sin p x 𝟙 ; 
      - p sin p x 𝟙 , cos p x
    )
  $
  where $|p|^2 = m^2$, $p/(|p|^2)$ 代表二次型反演, 并且以内积作用在 $ψ$

  从而
  $
    ϕ_p (x) = ϕ(0) cos p x + (p ⋅ ψ(0))/(m^2) sin p x
  $ 
  或者写为复指数的形式 
  $
    ϕ(x) 
    &= 1/2 (ϕ(0) - #i (p ⋅ ψ(0))/(m^2)) e^(#i p x) + 1/2 (ϕ(0) + #i (p ⋅ ψ(0))/(m^2)) e^(- #i p x) \
    &=: a (p, #i) e^(#i p x) + a (p, - #i) e^(- #i p x)
  $
  双曲情况类似
]

#tag("linear_superposition_of_KG_eq")
#indent[
  平面波线性叠加也满足 scalar field eq

  - $m != 0$
  #indent[
    在双曲面 ${p^2 = ± m^2} = ℚ(1,3)(± m^2)$ 上积分叠加
    
    metric & volume form 来自 $ℝ^(1,3)$ 的限制
    
    在 $+ m^2$ 的情况可以在三维类空双叶双曲面的一叶 $ℍ𝕪^3 = {p^2 = m^2, p_0 > 0}$ 上进行, 因为另一叶可以通过收集系数 $a(p,#i) + a(-p,-#i)$ 得到等价于单叶
    
    $
      ϕ(x) = limits(integral)_(ℍ𝕪^3 \ 𝕊(Im ℂ)) #d p #d #i
      (a(p,#i) e^(p x #i))
    $

    ${± #i} = 𝕊(Im ℂ) = 𝕊^0$. 对于 $ℍ,𝕆$ 平面波大概需要考虑所有单位虚数元, 从而需要对 $𝕊(Im ℍ) = 𝕊^2, 𝕊(Im 𝕆) = 𝕊^6$ 积分?

    

    对 $ℝ$ 值场, $a(p,-#i) = a(p,#i)^*$, 并写为 $a(p)^*$

    给 $a(p,#i)$ 加上平方可积条件 ($p^2 = m^2$ 上的积分), 且为了让 $ϕ$ 的一些导数也平方可积 (Sobolev) e.g. $∂_(μ) ϕ$, 通常会给 $a(p,#i)$ 再加上一些 "多项式乘法" 平方可积条件 e.g. $p_(μ) #i a(p,#i)$
    
    在简单的 "投影到 $ℝ^3$ 坐标" 上 (不是 $SO(1,3)$ invariant 的), 用记号 $(p_0,p) ∈ ℝ^(1,3)$
    $ 
      ϕ(x_0, x) = integral_(ℝ^3) #d p 
      1/(sqrt(2 p_0)) 
      (
        a(p,#i) e^(p_0 x_0 #i) e^(- p x #i) 
        + a(p,-#i) e^(- p_0 x_0 #i) e^(p x #i)
      )
    $
    with $p_0 = p_0 (p) = sqrt(m^2 + p^2) > 0, a(p,#i) = a(p_0,p,#i)$

    $p^2 = - m^2$ 并不能简单地 "投影" 到 $ℝ^(1,2)$, 本来就不是双射
  ]
  - $m = 0$
  #indent[
    无法直接用子流形 metric volume form 因为 metric 是零. 是否能用 $m -> 0$ 的极限? 用 $p_0 (m),p(m),a(m)$ 的某种极限?
  ]
]
#tag("unitary_representation_KG_field") 
#indent[
  对于 $L^2$ 叠加自由场, 有 $L^2$ 内积, 且 $SO(1,3) ⋊ ℝ^(1,3)$ invariant. 保持二次型蕴含保持内积
  
  平移 $x -> x + a$ 使得 $|a(p) exp(p a #i)|^2 = |a(p)|^2$
  
  旋转 $(p -> Λ p) in SO(1,3)$ 是 $ℚ^(1,3)(± m^2)$ 的 isometry, 不改变积分
  $
    integral_(ℚ^(1,3)(± m^2)) #d Vol |a(Λ p)|^2 
    = integral_(ℚ^(1,3)(± m^2)) #d Vol |a(p)|^2 
  $ 

  这被称为 Poincare 群 $SO(1,3) ⋊ ℝ^(1,3)$ 的 unitary representation, spin 0 part, $± m^2 ∈ ℝ$
]
#tag("try_to_define_plane_wave_in_metric_manifold") 
#indent[
  $mat(∂ ; , ∂^†) vec(ϕ,ψ) = mat(, -𝟙 ; ∓m^2) vec(ϕ,ψ)$ 的 $exp$ 化在流形上可以被推广吗? 注意这是无坐标的写法. 如果用坐标, 不是常系数 PDE. 无论是否常系数, 都可以尝试 exp 化
  
  可以在对称空间 $ℚ^(1,4)(-1),ℚ^(2,3)(1)$ 上被推广吗? 
  
  (δ) isometry 保持 $L^2$ 叠加吗?
]
为构造粒子型波包, 先寻找静态解, 然后 boost

$ℝ^(1,1)$ 时空, $ℝ$ 值纯量场 with potential $V(ϕ) = ϕ^4$ or $sin ϕ$ 给出了可能的多粒子波包模型? (Soliton type)

*Question* 无穷的困难
#indent[
  自由场 $ket(p \, ± #i) = exp(± p x #i)$ 不可积, 所以不能代入到 Lagrangian 然后积分

  一种可能不算那么令人满意的做法是, 只考虑差值的可积. 考虑 $ket(p)$ 周围的 $ϕ$ with $L(ϕ,∂ ϕ) - L(ket(p \, ± #i), ∂ ket(p \, ± #i))$ 可积, 且作用量在 $ket(p)$ 的微分是零

  另一种方法, 先在有限区域积分, 然后取极限到无限区域
]