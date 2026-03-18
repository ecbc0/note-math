#import "../module/module.typ": *
#show: module

#let H = o-color("H", rgb("#d25b00"))
#let a = o-color("a", rgb("#d25b00"))
#let x = o-color("x", rgb("#006dea"))
#let p = o-color("p", rgb("#d25b00"))

相对论纯量场作用量近似到非相对论纯量场作用量

使用有质量场, 使用静能量相位提取 $exp(- m c^2 1/ℏ t #i)$, 使用时间 $x_0 = c t$ 和光速极限 $lim_(c -> ∞)$ 

for #link(<Klein--Gordon-Lagrangian>)[], 恢复 Planck 常数 $ℏ$, 光速 $c$, 时间 $x_0 = c t$
$
  integral_(ℝ) #d c t integral_(ℝ^3) #d x 1/2 ( 
    1/c^2 (∂_t ϕ^* ∂_t ϕ) 
    - ∂_x ϕ^* ⋅ ∂_x ϕ    
    + (m^2 c^2)/(ℏ^2) ϕ^* ϕ
  )
$
use $ϕ = exp(- m c^2 1/ℏ t #i) ψ$ 

let $θ = m c^2 1/ℏ #i$

use $∂_t ϕ = θ e^(θ t) ψ + e^(θ t) ∂_t ψ$
$
  ∂_t ϕ^* ∂_t ϕ &= - (m^2 c^4)/(ℏ^2) ψ^* ψ & "use" #i^2 = -1 \
  &quad + (m c^2)/(ℏ) #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*) \
  &quad + ∂_t ψ^* ∂_t ψ
$
term $- (m^2 c^4)/(ℏ^2) ψ^* ψ$ 乘以 $1/c^2$ 将抵消质量项 $(m^2 c^2)/(ℏ^2) ϕ^* ϕ$

term $(m c^2)/(ℏ) #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*)$ 乘以 $1/c^2$ 将抵消光速 $c$ 因子

term $∂_t ψ^* ∂_t ψ$ 乘以 $1/c^2$ 将得到 $O(1/c^2 (∂_t ψ^* ∂_t ψ))$, 在极限 $lim_(c -> ∞)$ 时消失

$#d x^0 = #d c t$ 可能不影响?

整体再乘以 $ℏ^2/m$ 得到

非相对论纯量场 Lagrangian, *alias* Schrodinger-Lagrangian #tag("Schrodinger-Lagrangian")
$
  integral_(ℝ) #d t integral_(ℝ^3) #d x 1/2 (
    ℏ #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*)     
    - ℏ^2/m ∂_x ψ^* ⋅ ∂_x ψ
  ) 
$
可以在作用量上加上规范场静电 potential 项 i.e. $∂_t$ 改为 $∂_t + #i/ℏ V$

非相对论纯量场方程, *alias* Schrodinger-equation #tag("Schrodinger-equation")
$
  #i ℏ ∂_t ψ = - ℏ^2/(2 m) ∆ ψ + V ψ 
$
对相对论或非相对论纯量场, 都可以, 使用时间平面波混合静态解 $exp(- 1/ℏ E t #i) ψ(x)$, 得到特征值方程
$
  - ℏ^2/(2 m) ∆ ψ + V ψ = E ψ 
$
也可以加上静态磁势, $∂_x$ 改为 $(∂_x + #i/ℏ A) ψ$, with 

$(∂_x + #i/ℏ A)^† (∂_x + #i/ℏ A) ψ = (∆ + #i/ℏ div A + (2 #i)/ℏ A ⋅ ∂_x - 1/ℏ^2 |A|^2) ψ$

*Eaxmple* #tag("Schrodinger-eq-potential-example") 
- $V = k r^2$ 

  谐振子 (一个或多个) 代表 $ℝ^n$ 或球区域内常值电荷密度的电势. $div grad r^2 = "const"$. 异电荷对应椭圆型, 同电荷对应双曲型

- $V = k 1/r$

  $ℝ^3$ 氢原子模型 (单粒子, 静态, 静电, 零自旋) 代表由点电荷或球对称电荷球生成的球对称的电势
  
  用对称性 + Gauss 定理
  
  或者用微分方程, 球对称 $f(x) = f(|x|) = f(r)$ + 电荷集中在一点或球区域, 则在外部 $∆ f(r) = 0$ ==> $2 1/r (#d f)/(#d r) + (#d^2 f)/(#d r^2) = 0$ ==> $f(r) = k 1/r$

  #link("https://en.wikipedia.org/wiki/Hydrogen-like_atom")[wiki:Hydrogen-like_atom]

  *_Warning_* Schrodinger 方程 or Dirac 方程在氢原子之外的原子分子暂无解析解. 我也不了解现有的多粒子模型及其数值计算的效果如何

- $V = $ 箱/球 势 井/壁 (box/ball potential well/barrier)

- 常值电场或常值磁场

关于非相对论近似极限

- 静能量相位提取 $exp(- m c^2 1/ℏ t #i)$ 不是规范变换
- $ℂ$ 可推广到 $ℍ,𝕆$? $#i$ 换成任何 $Im(𝕂)$ 单位元. $ℝ$ 不行? 或者 $ℝ$ 是用于双曲系质量 KG 而不是椭圆系质量 KG, 一维 $ℝ$ 中无法解方程 $x^2 = -1$)
- 这种非相对论近似极限的方式是坐标依赖的. 在弯曲流形上, 由于可能需要多个坐标覆盖整个流形, 非相对论近似极限的的定义问题会更困难 

对称性与守恒流

let 
$
  L(ψ,∂_t ψ,∂_x ψ) = 1/2 (
    ℏ #i (ψ^* ∂_t ψ - ψ ∂_t ψ^*) 
    - ℏ^2/m ∂_x ψ^* ⋅ ∂_x ψ
  )
$
类似于相对论纯量场的情况, energy-momentum tensor #tag("energy-momentum-tensor-Schrodinger")
$
  T = T^(μ)_(ν) = cases(
    (∂ L)/(∂ (∂_(ν) ψ)) ⋅ ∂_(ν) ψ - L & " if " μ = ν ,
    (∂ L)/(∂ (∂_(μ) ψ)) ⋅ ∂_(ν) ψ & " if " μ != ν
  )
$
时间
$
  (∂ L)/(∂ (∂_t ϕ)) ⋅ ∂_(ν) ψ 
  &= 1/2 ℏ #i (ψ^* ∂_(ν) ψ - ψ ∂_(ν) ψ^*) \
  &= ℏ #i Im(ψ^* ∂_(ν) ψ) \
$
空间
$
  (∂ L)/(∂ (∂_x ϕ)) ⋅ ∂_(ν) ψ 
  &= - (ℏ^2)/(2m) (∂_(ν) ψ^*  ∂_x ψ + ∂_x ψ^* ∂_(ν) ψ) \
  &= - (ℏ^2)/(2m) Re(∂_x ψ^* ∂_(ν) ψ)
$
能量
$
  E = integral_(ℝ^3) #d x (T^0_0) 
  = integral_(ℝ^3) #d x ((ℏ^2)/(2m) |∂_x ψ|^2)
$
用 product rule $∂_x^† (ψ^* ∂_x ψ) = ∂_x ψ^* ∂_x ψ + ψ^* ∂^†_x ∂_x ψ$ + 散度量 + 边界是零, 转为 
$
  integral_(ℝ^3) #d x (- (ℏ^2)/(2m) ψ^* ∆ ψ) = ⟨ #H ⟩_(ψ)
$
如果有静电 potential $V(x)$, 则将仍然是 $⟨ #H ⟩_(ψ)$, 但可能会变成非正定

由于能动张量散度零, 能量对时间 $t$ 守恒 $∂_t E = 0$

非相对论纯量场, Schrodinger 场的能量是实数且是正的且 time invariant

旋转角动量是 #tag("angular-momentum-Schrodinger")
$
  M^k_(i j) = [x_i,T^k_j]
$
Schrodinger 场的规范电流

相位改变 $e^(θ(x)) ϕ(x)$ 及其 δ 改变 $θ ϕ$ 属于解附近的边界固定的变分, 所以

电流空间部分类似相对论的情况, $(ℏ^2)/(2m) (ψ^* ∂_x ψ - ψ ∂_x ψ^*) = (ℏ^2)/(m) Im(ψ^* ∂_x ψ)$

电流时间部分 ($θ(x) ∈ Im(ℂ)$)
$
  ℏ Im ( (- θ ψ^*) ∂_t ψ + ψ^* ∂_t (θ ψ) )= ℏ Im (ψ^* ψ ∂_t θ)
$ 
结果将会是量 $#i ℏ ψ^* ψ$

整个电流, 除以 $#i ℏ$ 之后, 是 $(ψ^* ψ, - (#i ℏ)/(2m) (ψ^* ∂_x ψ - ψ ∂_x ψ^*)$ #tag("current-gauge-Schrodinger")

Schrodinger 场规范电流的时间分量是实数, 空间分量是纯虚数

认为 $j$ 是可 $ℝ^3$ 积分的量

对时间 $t$ 不变 $∂_0 integral_(ℝ^3) #d x ( j^0 ) = 0$ by $∂^† T = 0$ #tag("conserved-spatial-integral-charge-Schrodinger")
$ 
  integral_(ℝ^3) #d x ( j^0 ) 
  &= integral_(ℝ^3) #d x (ψ^* ψ) \
  &= integral_(ℝ^3) #d x |ψ|^2 
$
Schrodinger 场电流的时间分量是正的且空间积分 time invariant

这个量应该是 "粒子数密度" or "概率密度" or "电荷密度"?

#tag("motivation-of-quantization")
#indent[
  大部分对量子化的处理都会假设

  - $ℂ$ 场的线性 unitary 演化

  - 可能非自由场, 所以无法用平面波

  如果考虑 KG 场的非相对论近似极限, 则会自动得到这些假设

  然后静态规范场的时间分量作为电势, 谐振子 potential $k r^2$ (均匀电荷) (可能不应该用这种解释) 和氢原子 potential $k 1/r$ (点电荷) 都来自简单的电荷密度

  于是动机问题变成

  - 为什么用 $ℂ$ KG 场

  - 为什么以及如何对应到点粒子

  - 为什么规范场的 potential 会在场的粒子化时变成粒子的 potential

  经典对应是指, 点粒子 Lagrange-equation 的期望值版本 (@ref-15, p.116) (#link("https://en.wikipedia.org/wiki/Ehrenfest_theorem")[wiki:Ehrenfest_theorem]), e.g. $m (#d^2)/(#d t^2) ⟨ #x ⟩_(ψ_t) = ⟨ - (#d V)/(#d x) ⟩_(ψ_t)$ 

  期望的速度中也出现了新的算子 $m (#d)/(#d t) ⟨ #x ⟩_(ψ_t) = 1/(#i ℏ) ⟨ [#x,#H] ⟩_(ψ_t) = ⟨ - #i ℏ (∂)/(∂ x) ⟩_(ψ_t) =: ⟨ #p ⟩_(ψ_t)$
  
  其中非交换性 $[#x,#H] = #i ℏ #p$ or $⟨ [#x,#H] ⟩_(ψ) = #i ℏ ⟨ #p ⟩_(ψ)$ 被很小的 Planck 常量 $ℏ$ 所控制

  注意经典能量和量子能量的不同, 类似平均值和方差的不同. 例如, $⟨ #p ⟩^2 != ⟨ #p^2 ⟩$. 可以考虑标准差 $Δ #p = (⟨ #p^2 ⟩ - ⟨ #p ⟩^2)^(1/2)$. 有不确定性原理 $1/2 ℏ = 1/2 |#i [#x,#p]| <= Δ #x ⋅ Δ #p$. 取得等式 <==> #link(<harmonic-oscillator-ground-state>)[]

  Schrodinger eq 是 $ℂ$ KG eq 的非相对论极限, Newton 方程是相对论点粒子的非相对论极限. 所以, 是否可以证明, KG eq 也有点粒子极限. 此时 "期望" 的定义是否要用 $#U (1)$ 的 KG 的电荷量密度 $- ϕ^* ∂_t ϕ + ϕ ∂_t ϕ^*$. 但是 KG eq 的电荷是非正定的, 使得更加远离经典粒子的含义. 然而 KG eq 的能量是正定的 (即使有电磁 potential). Dirac eq 则电荷正定但能量不正定

  如何让点粒子的 Lagrange-equation 的期望值版本对应到场的 Lagrange-equation?

  另一些 Schrodinger 波函数对应到点粒子的迹象

  - Feynman 路径积分使用点粒子 Lagrangian 权重的路径统计来计算 Schrodinger eq 的 propagator. *Question* 证明它满足 Ehrenfest theorem 从而满足 Schrodinger eq
]
#tag("quamtum-operator-motivation") 
#indent[
  Schrodinger wave function 在 Galileo 变换下的行为的推导, 简要地说, 是假设非相对论时空的换坐标 $(t',x') = (t + Δ t, R x + v t + Δ x)$ 之余, 还假设波函数改变相位 $ψ(t,x) ⇝ e^(#i/ℏ f(t',x')) ψ(t',x')$, 结果将会是 (@ref-16)
  
  $
    f(t',x') &= - m v ⋅ x' + 1/2 m v^2 t' \
    &= - m v (R x + v t + Δ x) + 1/2 m v^2 (t + Δ t)
  $

  *Question* 简化计算以及相位变换使用的更好的动机解释? 也许能联系到 KG eq 近似到 Schrodinger eq 时的静态能量相位的使用. 总之, Schrodinger eq 和电磁场都不是纯 Galileo 变换不变的
  
  Galileo boost $x + v t, v in ℝ^3_"boost"$ 给出波函数 $ψ$ 的变换 $e^(- #i/ℏ (m v x + 1/2 m v^2 t)) ψ(t,x + v t)$, 此 action 的 δ action 是算子 $#i/ℏ (t #p - m #x)$

  时间平移 $t + a, a in ℝ_"time"$ -> δ action $∂_t = - #i/ℏ #H$, Hamiltonian

  空间平移 $x + a, a in ℝ^3_"space"$ -> δ action $∂_x = #i/ℏ #p $, 动量算子

  旋转 $R x, R in SO(3)$ -> δ action $#i/h (#x × #p)$, 角动量算子

  相位 $e^(#i ℏ θ) ψ, e^(#i ℏ θ) in #U (1)$ -> δ action $#i ℏ 𝟙$

  对于 $ℝ^1$ 空间的 QM, boost 和空间平移的 Lie bracket $[#i/ℏ (t #p - m #x), #i/ℏ #p] = m/ℏ^2 [#x,#p] = m #i/ℏ 𝟙$, 或等价地 $[#x,#p] = #i ℏ 𝟙$
]
#tag("motivation-of-eigenstate") 
#indent[
  对于以下的讨论, 为什么它是有限维二次型的无限维推广? 因为 Lagrangian 的来源是有限维二次型 (然后积分)

  模仿有限维的情况, (@ref-3, p.143--144. @ref-23, p.218--222) 在一个 (正定) 二次型空间用一个正交基对另一个二次型进行对角化 
  
  用微分来寻找 Hermitian 算子 $#H$ 的极值 or 一阶稳定值

  on ${|ψ|^2 = 1}$, let $Δ ψ in ψ^⟂$ ($Re ⟨ Δ ψ , ψ ⟩ = 0$ 的意义上的正交)
  
  有限维标准二次型上的另一个二次型 $x^⊺ H x$, 对应到无限维则是, 波函数在某种 $L^2$ or Hilbert 空间, 作为一种二次型空间. 能量 $⟨ ψ mid(|) #H mid(|) ψ ⟩$ 是另一个二次型
  
  其一阶微分 $Re ⟨ Δ ψ mid(|) #H mid(|) ψ ⟩ = 0$ forall $Δ ψ in ψ^⟂$ ==> $#H ψ in ψ^(⟂ ⟂) = span{ψ}$ ==> exists $E in ℝ, #H ψ = E ψ$

  不同特征值的态正交
  $
    ⟨ ψ' mid(|) #H mid(|) ψ ⟩ = E ⟨ ψ' , ψ ⟩ = E^' ⟨ ψ' , ψ ⟩ 
    &==> (E - E') ⟨ ψ' , ψ ⟩ = 0 \
    &==> ⟨ ψ' , ψ ⟩ = 0
  $
  存在有限维标准二次型的一个正交基 $e_1 ,…, e_n$, $x = x_1 e_1 + ⋯ + x_n e_n$, 使得 $H$ 是接近标准二次型的形式, 即对角化 $x^⊺ H x = λ_1 x_1^2 + ⋯ + λ_n x_n^2$. 可以将 $H$ 写为 $mat(λ_1 ; , ⋱ ; ,, λ_n)$ 或者 $sum_(k = 1 .. n) λ_k ket(e_k) bra(e_k)$. 对应到无限维则是, 存在 Hilbert 空间的正交基使得能量 $⟨ ψ mid(|) #H mid(|) ψ ⟩$ 被对角化. 但 Hilbert 空间的情况, 可能会, 可数加法形式的能量期望的对角化 
  $
    ψ &= sum_(k in ℕ) a_k ψ_k \ 
    ⟨ ψ mid(|) #H mid(|) ψ ⟩ &= sum_(k in ℕ) λ_k |a_k|^2 \
    #H &= sum_(k in ℕ) λ_k ket(ψ_k) bra(ψ_k)
  $  
  但也有时可数加法还不够, 而是需要积分形式, 且正交基不是波函数所在的 $L^2$, 即使波函数的正交基展开的系数可能是对特征值所在空间的 $L^2$. (*Question* 特征值空间的 $L^2$ 结构的具体构造方法是什么?) 例子是静电氢原子模型中存在非束缚态部分

  Schrodinger eq 演化保持特征值空间
  
  能量是二次型, 其二阶微分的多项式 $⟨ Δ ψ mid(|) #H mid(|) Δ ψ ⟩$
  
  将空间分为 $E$ 特征空间 $V_E$ 和它的正交补 $V_E^(⟂)$. 在 $V_E^⟂$ 方向上, 二阶微分是正定 or 负定的, 能量会升高或降低. 根据 Lagrangian 变分理论, Schrodinger eq 的能量是时间守恒量 $⟨ #H ⟩_(ψ_t) ≡ ⟨ #H ⟩_(ψ_0) = E$
  
  $V_E, V_E^⟂$ 是极限分离的, 除非在 $0$. $⟨ ψ , ψ ⟩ = 1 ==> ψ != 0$, 所以演化将封闭在 $E$ 特征空间 $ψ_t in V_E$

  特征值空间的 Schrodinger eq 演化的具体解. $#i ℏ ∂_t ψ (t,x) = #H ψ (t,x) = E ψ (t,x)$ 对每个空间点 $x$ 都是 $ℝ -> ℂ$ 的常系数线性 ODE, 解 $ψ (t,x) = e^(- #i/ℏ E t) ψ (0,x)$ i.e. 除了复指数按时间进行 $#U (1)$ 振荡的相位因子 $e^(- #i/ℏ E t)$, 本质上是静态
]