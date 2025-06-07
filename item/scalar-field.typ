#import "/module/module.typ": *
#show: module

纯量场的作用量

动能部分 $ 1/2|grad ϕ|^2 $ 

or $ 1/2|∂ ϕ|^2 $

其中 $grad ϕ <-> ∂ ϕ$ by metric 对偶 $(∂ ϕ) (X) =  g(grad ϕ, X)$

质量部分 $- 1/2 m^2|ϕ|^2 $

#tag("Klein--Gordon-Lagrangian")
$
  integral #d x (1/2|∂ ϕ|^2 ∓ 1/2 m^2|ϕ|^2) 
$
or
$
  integral_(ℝ^(1,3)) #d x ( 1/2 (∂ ϕ^* ⋅ ∂ ϕ ∓ m^2 ϕ^* ϕ) ) 
$

#show "Δ": it => text(it, fill: rgb("#0056e1"))

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
for all $Δ ϕ$, 从而给出 Lagrange-equation, 此处称为 #tag("Klein--Gordon-equation")
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

对一般 scalar field action $ integral_(ℝ^(1,3)) #d x f(ϕ,∂_x ϕ) $ 重复上述步骤
$
  0 = Δ S = integral_(ℝ^(1,3)) #d x ( 
    (∂ f)/(∂ ϕ) ⋅ Δ ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ 
  )
$
在坐标中 $(∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ = g^(μ ν) (∂ f)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) Δ ϕ$

product rule
$
  ∂_x^† ((∂ f)/(∂ (∂_x ϕ)) ⋅ Δ ϕ) = ( ∂_x^† (∂ f)/(∂ (∂_x ϕ)) ) ⋅ Δ ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x Δ ϕ
$
在坐标中 $(∂ f)/(∂ (∂_x ϕ)) ⋅ Δ ϕ = ((∂ f)/(∂ (∂_(μ) ϕ)) ⋅ Δ ϕ)_(μ = 0 ,…, 3)$

散度量 + Stokes 定理 + 边界零 + forall $Δ ϕ$, 收集 $Δ ϕ$, 项得到 Lagrange-equation
$
  (∂ f)/(∂ ϕ) - ∂_x^† (∂ f)/(∂ (∂_x ϕ)) = 0
$
注意 $ℝ$ 值场不兼容于 $#U (1,ℂ)$ gauge

平面波

- 周期
- 波长
- 4-波数
- 波速
  - 无质量 ==> 波速 = 光速
  - 有质量 ==> 波速 < 光速. 且波速不是 $SO(1,3)$ invariant

*Question* #tag("motivation-of-plane-wave-solution")
#indent[
  平面波的动机? 启发自常系数线性 ODE 的解的 $exp$ 的出现, 特别是谐振子 eq $(#d^2 x)/(#d t^2) ± ω^2 x = 0$, 类似 #link(<harmonic-oscillator>)[谐振子] 的一阶化 $mat((#d)/(#d t) ; , (#d)/(#d t)) vec(x,v) = mat(, 1 ; ∓ ω^2) vec(x,v)$, 对 KG 方程
  $
    mat(∂ ; , ∂^†) vec(ϕ,ψ) = mat(, -𝟙 ; ∓m^2) vec(ϕ,ψ)
  $
  进行 #link(<invariant-of-vector-field>)[$exp$ 化] 或者 #link(<integral-curve>)[积分曲线]

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

#tag("linear-superposition-of-KG-eq")
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
#tag("unitary-representation-KG-field") 
#indent[
  对于 $L^2$ 叠加自由场场, 有 $L^2$ 内积, 且 $SO(1,3) ⋊ ℝ^(1,3)$ invariant. 保持二次型蕴含保持内积
  
  平移 $x -> x + a$ 使得 $|a(p) exp(p a #i)|^2 = |a(p)|^2$
  
  旋转 $(p -> Λ p) in SO(1,3)$ 是 $ℚ^(1,3)(± m^2)$ 的 isometry, 不改变积分
  $
    integral_(ℚ^(1,3)(± m^2)) #d Vol |a(Λ p)|^2 
    = integral_(ℚ^(1,3)(± m^2)) #d Vol |a(p)|^2 
  $ 

  这被称为 Poincare 群 $SO(1,3) ⋊ ℝ^(1,3)$ 的 unitary representation, spin 0 part, $± m^2 ∈ ℝ$
]
#tag("try-to-define-plane-wave-in-metric-manifold") 
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

  一种可能不算那么令人满意的做法是, 只考虑差值的可积. 考虑 $ket(p)$ 周围的 $ϕ$ with $L(ϕ) - L(ket(p \, ± #i))$ 可积, 且作用量在 $ket(p)$ 的微分是零

  另一种方法, 先在有限区域积分, 然后取极限到无限区域
]
对称性与守恒流
- 时空平移
#indent[
  时空平移不固定 $ℝ^(1,3)$ "边界". 变分非零. 类似于点粒子的时间的平移的情况
  $
  (#d)/(#d s) integral_(ℝ^(1,3) + s a) #d x (f(x)) = integral_(ℝ^(1,3)) #d x (∂_x f(x) ⋅ a)
  $
  一般地, 区域改变通过 $exp(a(x))$ 通过 δ diffeomorphism $a(x)$ 给出 
  $
    (#d)/(#d s) limits(integral)_(exp(s a(x)) U) #d x (f(x)) 
    
    = integral_(U) #d x (∂_x f(x) ⋅ a(x))
  $
  使用变量替换公式
  $
    integral_(ℝ^(1,3) + s a) #d x (f(x)) = integral_(ℝ^(1,3)) #d x (f(x + s a))
  $
  交换微分和积分 
  $
    (#d)/(#d s) integral_(ℝ^(1,3)) #d x (f(x + s a)) = integral_(ℝ^(1,3)) #d x (#d)/(#d s) f(x + s a)
  $
  将其应用于 
  $
    f(x) &= f(ϕ(x),∂ ϕ(x)) 
  $
  考虑 $ν in ℝ^(1,3)$ 方向平移的变分的作用量的微分. let $Δ ϕ = ∂_(ν) ϕ$, 一阶微分 $Δ S =$
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
  use 散度 + 边界零, 得到
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
  得到
  $
    0 = integral_(ℝ^(1,3)) #d x 
      ( ∂^† T ⋅ ∂_(ν) ϕ)   
  $
  for all $∂_(ν) ϕ$ as coordinate-frame, so $∂^† T = ∂_(μ) T^(μ)_(ν) = 0$

  由于 $f$ 是实数值, EM tenosr 也是

  for $f(ϕ, ∂_x ϕ) = 1/2 (∂ ϕ^* ⋅ ∂ ϕ - m^2 ϕ^* ϕ)$ 计算
  $
    (∂ f)/(∂ (∂_(μ) ϕ)) ⋅ ∂_(ν) ϕ = Re ( ∂^(μ) ϕ^* ∂_(ν) ϕ ) 
  $
  or $(∂ f)/(∂ (∂_x ϕ)) = Re(∂_x ϕ^* ⋅)$

  可以看到这个 EM tensor 在指标下降后 $T_(μ ν) = Re(∂_μ ϕ^* ∂_(ν) ϕ)$ 是 symmetric 的 $T_(μ ν) = T_(ν μ)$

  假设 $ℝ^(1,3)$ 的 EM tensor 可对 $ℝ^3$ 积分. 使用记号 $(x_0,x) ∈ ℝ^(1,3)$. energy 
  $
    E = integral_(ℝ^3) #d x (T_0^0) = integral_(ℝ^3) #d x 1/2 (|∂_0 ϕ|^2 + |∂_x ϕ|^2 + m^2 |ϕ|^2)
  $
  一般 potential $m^2 |ϕ|^2$ => $V(|ϕ|^2)$

  relativity scalar field 的能量是实数且是正的

  #tag("conserved-spatial-integral-energy-KG") 
  #indent[  
    固定 $ℝ^(1,3)$ 坐标, 认为 $T$ 是可 $ℝ^3$ 积分的量
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

  现在用记号 $x,∂_x ∈ ℝ^(1,3)$. 旋转和 boost 的切向量合起来记为 $[x,∂_x]$, 作为 δ 时空旋转 $so(1,3)$ 作用在场 $ϕ$, 作为 δ diffeomorphism (for 场的值域)
  $
    integral_(ℝ^(1,3)) #d x ( [x,∂] f ) 
    
    = integral_(ℝ^(1,3)) #d x (
      (∂ f)/(∂ ϕ) ⋅ [x,∂_x] ϕ + (∂ f)/(∂ (∂_x ϕ)) ⋅ ∂_x [x,∂_x] ϕ
    )
  $
  利用 KG 方程, 移项, 得到散度零守恒流

  #tag("angular-momentum-KG") let $T$ 是 KG 场的能动张量. 场的角动量
  $
    L = [x,T]
  $
  or
  $
    L^(λ)_(μ ν) = [x_(μ),T_(ν)^(λ)] 
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
  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^*$ 被称为 KG 场的 4-电流 #tag("current-gauge-KG")

  $- ϕ^* ∂ ϕ + ϕ ∂ ϕ^* = - Im(ϕ^* ∂ ϕ)$ 

  固定 $ℝ^(1,3)$ 坐标, 认为 4 电流分量是可 $ℝ^3$ 积分的量, 则有零分量即电荷守恒 #tag("conserved-spatial-integral-charge-KG")
  
  $ 0 = ∂_t integral_(ℝ^3) #d x (- ϕ^* ∂_t ϕ + ϕ ∂_t ϕ^*) = ∂_t Q $
]