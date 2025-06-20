#import "../module/module.typ": *
#show: module

相对论纯量场作用量近似到非相对论纯量场作用量

使用有质量场, 使用静能量相位提取 $exp(- m c^2 1/ℏ t #i)$, 使用时间 $x_0 = c t$ 和光速极限 $lim_(c -> ∞)$ 

for #link(<Klein--Gordon-Lagrangian>)[], 恢复 Planck 常数 $h$, 光速 $c$, 时间 $x_0 = c t$
$
  integral_(ℝ) #d c t integral_(ℝ^3) #d x 1/2 ( 
    1/c^2 (∂_t ϕ^* ∂_t ϕ) 
    - ∂_x ϕ^* ⋅ ∂_x ϕ    
    + (m^2 c^2)/(h^2) ϕ^* ϕ
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

$(∂_x + #i/ℏ A)^† (∂_x + #i/h A) ψ = (∆ + #i/h div A + (2 #i)/ℏ A ⋅ ∂_x - 1/ℏ^2 |A|^2) ψ$

#tag("Schrodinger-eq-potential-example") *Example* 
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

#let H = text("H", fill: rgb("#d25b00"))
#let a = text("a", fill: rgb("#d25b00"))
#let x = text("x", fill: rgb("#006dea"))
#let p = text("p", fill: rgb("#d25b00"))

#tag("motivation-of-quantization")
#indent[
  大部分对量子化的处理都会假设

  - $ℂ$ 场的线性 unitary 演化

  - 可能非自由场, 所以无法用平面波

  如果考虑 KG 场的非相对论近似极限, 则会自动得到这些假设

  然后静态规范场的时间分量作为电势, 谐振子 potential $k r^2$ 和氢原子 potential $k 1/r$ 都来自简单的电荷密度

  于是动机问题变成

  - 为什么用 $ℂ$ KG 场

  - 为什么以及如何对应到点粒子

  - 为什么规范场的 potential 会在场的粒子化时变成粒子的 potential

  经典对应是指, 点粒子 Lagrange-equation 的期望值版本 (#link("https://en.wikipedia.org/wiki/Ehrenfest_theorem")[wiki:Ehrenfest_theorem]), e.g. $m (#d^2)/(#d t^2) ⟨ #x ⟩_(ψ_t) = ⟨ - (#d V)/(#d x) ⟩_(ψ_t)$ 

  期望的速度中也出现了新的算子 $m (#d)/(#d t) ⟨ #x ⟩_(ψ_t) = 1/(#i ℏ) ⟨ [#x,#H] ⟩_(ψ_t) = ⟨ - #i h (∂)/(∂ x) ⟩_(ψ_t) =: ⟨ #p ⟩_(ψ_t)$
  
  其中非交换性 $[#x,#H] = #i ℏ #p$ or $⟨ [#x,#H] ⟩_(ψ) = #i ℏ ⟨ #p ⟩_(ψ)$ 被很小的 Planck 常量 $ℏ$ 所控制

  Schrodinger eq 是 $ℂ$ KG eq 的非相对论极限, Newton 方程是相对论点粒子的非相对论极限. 所以, 是否可以证明, KG eq 也有点粒子极限. 此时 "期望" 的定义是否要用 $#U (1)$ 的 KG 的电荷量密度 $- ϕ^* ∂_t ϕ + ϕ ∂_t ϕ^*$. 但是非正定使得更加远离经典粒子的含义 

  如何让点粒子的 Lagrange-equation 的期望值版本对应到场的 Lagrange-equation?

  另一些 Schrodinger 波函数对应到点粒子的迹象

  - Feynman 路径积分使用点粒子 Lagrangian 权重的路径统计来计算 Schrodinger eq 的 propagator. *Question* 证明它满足 Ehrenfest theorem 从而满足 Schrodinger eq
]
对于谐振子 $k r^2$ 和氢原子 $k 1/r$, 如果假设波函数的相位是 $e^(- #i E t)$ 的振荡, 振幅是静态的 $ψ(x)$, 则 $e^(- #i E t) ψ(x)$ 满足 Schrodinger or Dirac eq <==> $ψ(x)$ 满足 Hermitian 算子的特征方程 $#H ψ = E ψ$, 并且 $E$ 是离散的, for 椭圆型谐振子和氢原子的束缚态