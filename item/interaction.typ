#import "../module/module.typ": *
#show: module

旋量场, 纯量场, 规范场, 引力场 (Einstein-metric), 或者其它场, 通过以下方式耦合
- 作用量相加
- gauge-connection
- metric-volume-form
- metric-connection
$
  integral_(M) #d Vol(g) ( "spin" + "scalar" + "gauge" + "gravity" )
$
对 4 组变量变分得到 4 个方程
$
  "spin" \
  "scalar" \
  "gauge" \
  "gravity" \
$
可以让一些场是零或者固定某些场来得到部分耦合 (引力的情况 $Γ = 0$ ==> flat-metric)

#let A = c-bf("A","#0056e1")

$ℝ^(1,3)$ 相对论点粒子和规范场的耦合. 作用量

$
  &quad integral #d τ (m c|vel(x)| + e/c ⋅ A(x) ⋅ vel(x) ) \
  &= integral #d t (m c^2 (1 - (v/c)^2)^(1/2) + e (ϕ - #A ⋅ v))
$
- *Question* 
#indent[  
  以下并不明显: 为什么点粒子和电磁场相互作用也有隐藏的 $#U (1)$ 规范对称性?

  场相互作用中使用的规范变换 $e^(θ)$ 会导致联络的变换 $A = A' + #d θ$. 对于点粒子和电磁场的作用量, $#d θ$ 是散度量 $#d θ(x) ⋅ vel(x) = (#d)/(#d tau) θ(x(τ))$, 用边界是零, 得到变分是零

  尽管 invariant 的是方程而不是作用量, 这不同于例如纯量场的情况是作用量也 invariant, 而方程的 invariant 通过协变导数的定义
]