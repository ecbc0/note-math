#import "../module/module.typ": *
#show: module

相对论纯量场作用量近似到非相对论纯量场作用量

使用有质量场, 使用静能量相位提取 $exp(- m c^2 1/ℏ t #i)$, 使用时间 $x_0 = c t$ 和光速极限 $lim_(c -> ∞)$ 

(静能量相位提取不是规范变换. 可推广到 $ℍ,𝕆$? $#i$ 换成任何 $Im(𝕂)$ 单位元. $ℝ$ 不行? 或者 $ℝ$ 是用于双曲系质量而不是椭圆系质量, 一维 $ℝ$ 中无法解方程 $x^2 = -1$) 

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

*Example* 
- $V = k r^2$ 谐振子 (一个或多个)
- $V = k 1/r$ 氢原子模型 (单粒子, 静态, 零自旋)
- $V = $ 箱/球 势 井/壁 (box/ball potential well/barrier)
- 常值电场或常值磁场

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

*_Warning_* 现在没人能用 Schrodinger 方程解出氢原子之外的原子. 应该用什么形式的多粒子相互作用模型, 也不是明显的事情. 无可重复证据 or 下游应用