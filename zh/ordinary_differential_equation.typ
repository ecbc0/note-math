#import "../module/module.typ": *
#show: module

一维可分离变量 ODE
$ 
  (#d x)/(#d t) = f(t) g(x) 
  &--> 1/g(x) #d x = f(t) #d t \
  &--> x = G^(-1)(F(t)) 
$ 
where $G = integral 1/g(x) #d x, F = integral f(t) #d t$, 初值未定

*Example*
- $f(t) = a, g(x) = x, (#d x)/(#d t) = a x$. $x(t) = x(0) exp(a t)$

- $f(t) = 1, g(x) = x^2, (#d x)/(#d t) = x^2$. $x(t) = 1/(1/x(0) - t)$

#tag("exponential_of_vector_field") *Question*
#indent[
  let $U$ open in $ℝ^n$

  向量场是解析函数 $v : U -> ℝ^n$

  如果你知道矩阵李群, 那么你应该知道李代数可以通过 $exp$ 映射到李群 
  $
    exp: map(g, G, X, sum_(n =  0)^∞ X^n/n!)
  $
  这对于对于解析函数也成立, 在解析拓扑收敛意义上, $exp v$ 应该生成局部解析同胚. $exp v$ 在 $x$ 处的值应该是
  $ 
    (exp v) (x)
    &= (sum_(n=0)^∞ v^n/(n!)) (x) \  
    &= x + v(x) + 1/2! v(x)^2 + ⋯ 
  $
  $n$ polynomial like $(λ v(x))^n = λ^(n) (v(x)^n)$

  或者加上 $t$ 
  $ 
    (exp t v) (x) 
    &= x + t v(x) + t^2/2! v(x)^2 + ⋯ 
  $
  使得对应到 ODE $∂_t (exp t v) (x) = v((exp t v) (x))$. 我们知道 ODE 理论也可以通过向量场给出局部微分同胚
]
*Example* 

将纯向量场的结果对比到 ODE 积分曲线的结果, 会发现结果相同. 以常系数线性或一维分离 ODE 的情况为例

- $v(x) = A(x) equiv A in gl(d,𝕂)$
#indent[  
  compare $vel(x) = A x$, expect $(sum_(0..∞) 1/n! (A t)^n)(x)$ with $t = 1$
  
  $f(t,x) = (𝟙 + t A + t^2/2! A^2 + ⋯) (x) = (sum t^n/n! A^n ) (x) = (exp t A) (x)$

  *Example* #tag("harmonic_oscillator") 
  #indent[
    谐振子 $acc(x) = ∓ ω^2 x$ 一阶化 
    $
      mat((#d)/(#d t) ; , (#d)/(#d t)) vec(x,v) = mat(, 1 ; ∓ ω^2) vec(x,v)
    $ 
    三角情况取 $- ω^2$
    $
      exp t mat(, 1 ; - ω^2) = mat(
        cos ω t , 1/ω sin ω t ;
        - ω sin ω t , cos ω t
      )
    $ 
    从而 
    $
      x(t) = x_0 cos ω t + v_0/ω sin ω t
    $ 
    或者写为复指数的形式 
    $
      x(t) = 1/2 (x_0 - #i v_0/ω) e^(#i ω t) + 1/2 (x_0 + #i v_0/ω) e^(- #i ω t) =: a (ω, #i) e^(#i ω t) + a (ω, -#i) e^(- #i ω t)
    $
    双曲情况取 $+ ω^2$, 类似

    谐振子方程的特征多项式方程是 $ξ^2 ± ω^2 = 0$ or $ξ^2 = ± ω^2$. 我们对三角情况 $ξ^2 + ω^2 = 0$ or $ξ = ± #i ω$ 感兴趣, 其原型是 $ξ^2 = - 1$ or $ξ^2 = ± #i$. 这给出了复数的一种动机

    在谐振子 $x$ 是实数值函的情况, 在解的复指数表示中, 为了让结果维持在 $ℝ$, 当 $x_0,v_0 in ℝ$ 时, $e^(± #i ω t)$ 前面的系数应该互为复共轭 $x_0 ± (v_0)/(#i ω)$
  ]
]
- $ℝ -> ℝ$, $v(x) = x^2$
#indent[
  compare $vel(x) = x^2$, expect $1/(1/x - t)$ with $t = 1$ 

  $v(x)^2 = v'(x) v(x) = 2 ⋅ x^3$

  $v(x)^3 = (2 x^3)' v(x) = (2 ⋅ 3) ⋅ x^4$

  ...

  $v(x)^n = n! ⋅ x^(n+1)$

  $v(x)^n / n! = x^(n+1)$

  $(exp v)(x) 
  &= sum_(m=1)^∞ x^m \
  &= 1/(1-x) - 1$

  或者

  $(t^n v(x)^n) / n! = t^n x^(n+1)$

  $(exp t v)(x)
  &= 1/t sum_(m=1)^∞ (t x)^m \
  &= 1/t (1/(1 - t x) - 1) \
  &= 1/t ((t x)/(1 - t x)) \
  &= 1/(1/x - t)$
]
#tag("vector_field_as_δ_diffeomorphism") 在局部解析同胚 $𝟙$ 附近, 向量场 $v$ 是局部解析同胚群的坐标 $v ⇝ exp v$. 这类似于 #link(<geodesic_coordinate>)[]

ODE, 也是单参数同态嵌入 $(exp t v)(x) : ℝ ↪ "Loc_diff"$

$ (#d)/(#d t) (exp t v) (x) = v((exp t v) (x)) $

通常记 $x(t) = (exp t v)(x_0), x(0) = x_0$

证明技术见 #link("https://en.wikipedia.org/wiki/Cauchy-Kovalevskaya_theorem")[wiki:Cauchy-Kovalevskaya_theorem], 其中, 幂级数的收敛半径估计使用了特殊上界控制方法, 类似 #link(<inverse_analytic>)[] 中所作的. 或者, 在解析函数空间的拓扑中, 用复合和反演算子的连续性, 用逆函数定理

$F(x_0, x) = (c x_0)/(x_0 - x)$, $(#d x)/(#d t) = F(x_0, x)$ ==> $x(t, x_0) = x_0 - (x_0^2 - 2 c t x_0)^(1/2)$

#tag("integral_curve") ODE 解的 Picard 迭代 (#link("https://en.wikipedia.org/wiki/Picard–Lindelöf_theorem")[wiki]) 表示 or 积分曲线 e.g.
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 v( ⋯ v(x(0)) ⋯ )
$
时变向量场 ODE 是 $ℝ × ℝ^n$ 上的一种特殊的向量场 $(1, v(x))$

如果是时变线性 ODE 则 (*alias* Dyson 级数)
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 A(t_n) ⋯ A(t_1) x(0)
$
常系数 ODE $((#d^n)/(#d t^n) + a_(n-1) (#d^(n-1))/(#d t^(n-1)) + ⋯ + a_0) x = 0$ 的解可以写为解析形式, by 将 ODE 转为关于 $y = (x, (#d)/(#d t) x ,…, (#d^n)/(#d t^n) x)$ 的一阶常系数线性 ODE $(#d)/(#d t) y = A y$, 然后将矩阵 $A$ 写为 Jordan normal form

#tag("Lie_bracket") Lie bracket
#indent[
  $"Diff"$ 的 #link(<conjugate_action>)[共轭作用] $(f,g) ⇝ f g f^(-1)$ 

  假设 $v, w$ 生成 $f, g$. 一阶微分是 $(v, w) ⇝ w$, 而混合 $v, w$ 的二阶微分是 $(v, w) ⇝ "ad"(v)(w) = [v,w]$, 也可以理解为先 $w$ 后 $v$, 这样中途会得到一个 "李群的线性表示" $"Ad"$
  
  注意, 交换 $g,f$ 的顺序后, $(g,f) ⇝ g f g^(-1)$ 是不同的映射

  $[v,w](x) = v(x) w(x) - w(x) v(x)$

  $[v,w] = -[w,v]$

  for $GL,gl$, $[A,B] ∼ A B - B A$
]
#let L = $L$
#tag("Lie_derivative") Lie derivative *alias* drag derivative
#indent[
  let $v$ 通过 $t v$ 生成单参数微分同胚 $t ⇝ exp(t v) = f_t in "Diff"$
  
  let $w_t = #d f_(t)^(-1) (f_t (x) : "base", w(f_t (x)) : "vector")$

  $#L _v (w) := lim_(t -> 0) 1/t (w_t - w_0) $

  $#L _v (w) = [v,w]$
  
  Jacobi identity $#L _([v,w]) = [#L _v,#L _w]$ or $[v_1,[v_2,w_3]] + [v_3,[v_1,v_2]] + [v_2,[v_3,v_1]] = 0$

  可以对 tensor field 也定义 Lie derivative ...
]
#tag("first_order_PDE_integrable_condition") *alias* #tag("Frobenius_theorem") 将一阶 ODE 积分曲线推广到一阶 PDE 系统积分曲面, 此时需要向量场们 $v_1 ,…, v_n$ 展开的线性空间形成 Lie subalgebra, 或者用更一般的对合/可积子丛的概念. PDE 的解可以来自沿坐标方向的接连的 ODE 积分曲线, 且结果不依赖于道路的选取. 在一阶线性 PDE 系统的情况下, 可积条件变成坐标下二阶偏导数的对称性 