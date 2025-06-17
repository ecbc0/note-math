#import "../module/module.typ": *
#show: module

一维可分离变量 ODE
$ 
  (#d x)/(#d t) = f(t) g(x) 
  &-->& 1/g(x) #d x = f(t) #d t \
  &-->& x = G^(-1)(F(t)) 
$ 
where $G = integral 1/g(x) #d x, F = integral f(t) #d t$, 初值未定

*Example*
- $f(t) = a, g(x) = x$. $x(t) = x(0) exp(a t)$
- $f(t) = 1, g(x) = x^2$. $x(t) = 1/(1/x(0) - t)$

#tag("exponential-of-vector-field") *Question*
#indent[
  let $U$ open in $ℝ^n$

  向量场是解析函数 $v : U -> ℝ^n$

  由向量场 $v$ 生成的 exponential-of-vector-field $(exp v) (x)$ 应该是 invariant 的

  $ ∂_(v(x)) (exp v) (x) = v(f(x)) $

  向量场的 Taylor 级数 
  $ 
    (exp v) (x) 
    &=& x + v(x) + 1/2! ∂_(v(x)) v(x) + 1/3! ∂_(v(x)) (∂_(v(x)) v(x)) + ⋯ \
    &=& x + sum_(n=0)^∞ 1/((n+1)!) (∂_(v(x)))^n v (x) 
  $
  $n+1$ polynomial like $(∂_(λ v(x)))^n λ v (x) = λ^(n+1) (∂_(v(x)))^n v (x)$
]
*Example* 

compare to the result from separable ODE in 1 dimension

- $v(x) = A(x), A in gl(d,𝕂)$
#indent[  
  compare $vel(x) = A x$, expect $(sum_(0..∞) 1/n! (A t)^n)(x)$ with $t = 1$
  
  $#d v (x) = A$, $n >= 2 ==> #d^k v (x) = 0$

  $∂_(v(x)) v(x) 
  &=& A(v(x)) \
  &=& A^2 (x)$

  $(∂_(v(x)))^2 v(x) 
  &=& #d (A^2(x))(v(x)) \
  &=& A^2(v(x)) \
  &=& A^3(x) $ 
  
  ...

  $(∂_(v(x)))^n v(x) = A^(n+1) (x)$

  $f(x) = (𝟙 + A + 1/2! A^2 + ⋯) (x) = (sum 1/n! A^n ) (x) = (exp A) (x)$

  $#d f(x) v(x) 
  &=& (exp A)(A (x)) \
  &=& A(exp(A)(x)) \
  &=& v(f(x))$

  *Example* #tag("harmonic-oscillator") 
  #indent[
    谐振子 $acc(x) = ∓ ω^2 x$ 一阶化 
    $
      mat((#d)/(#d t) ; , (#d)/(#d t)) vec(x,v) = mat(, 1 ; ∓ ω^2) vec(x,v)
    $ 
    with 三角情况
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
    双曲情况类似

    谐振子方程的特征多项式方程是 $ξ^2 ± ω^2 = 0$ or $ξ^2 = ± ω^2$. 我们对三角情况 $ξ^2 + ω^2 = 0$ pr $ξ = ± #i ω$ 感兴趣, 其原型是 $ξ^2 = - 1$ or $ξ^2 = ± #i$ 

    在谐振子 $x$ 是实数值的情况, 对于复指数形式, 为了维持在 $ℝ$, 当 $x_0,v_0 in ℝ$ 时, $e^(± #i ω t)$ 前面的系数互为复共轭 $x_0 ± (v_0)/(#i ω)$
  ]
]
- $ℝ -> ℝ$, $v(x) = x^2$
#indent[
  compare $vel(x) = x^2$, expect $1/(1/x - t)$ with $t = 1$ 

  $∂_(v(x))v(x) = v'(x) v(x) = 2 ⋅ x^3$

  $∂_(v(x))(∂_(v(x))v(x)) = (2 x^3)' v(x) = (2 ⋅ 3) ⋅ x^4$

  ...

  $(∂_(v(x)))^n v (x) = (n+1)! ⋅ x^(n+2)$

  $f(x) 
  &=& x + sum_(n=0)^∞ 1/((n+1)!) (∂_(v(x)))^n v (x) \
  &=& sum_(m=1)^∞ x^m \
  &=& 1 - 1/(1-x)$

  $#d f(x) v(x) 
  &=& (1/(1-x))^2 x^2 \
  &=& (x/(1-x))^2 \
  &=& v(f(x))$
]
*Question* 
#indent[
  $f(0,x) = x, f(1,x) = f(x)$ 中间的 $f(t,x)$ 应该对应伸缩的向量场 $t ⋅ v(x)$ 的情况

  单参数同态嵌入 $f(t,x) : ℝ ↪ "Diff"$

  $-v$ 和初值 $y = f(x)$ 给出 $f^(-1)$. $f^(-1)(t,y) = f(-t,y)$
]
$f(t,x)$ is called flow. exp 道路发射状坐标

#tag("vector-field-as-δ-diffeomorphism") 在 $𝟙$ 附近, 向量场是微分同胚群的坐标 $v ⇝ exp v$, 类似于 #raw("#link(<geodesic-coordinate>)[]")

ODE

$ (#d)/(#d t) (exp t v) (x) = v((exp t v) (x)) $

#link("https://en.wikipedia.org/wiki/Cauchy-Kovalevskaya_theorem")[wiki:Cauchy-Kovalevskaya_theorem], 收敛半径估计使用了特殊上界控制方法, 类似 #raw("#link(<inverse-analytic>)[]") 中所作的

$F(x,γ) = (c x)/(x-γ)$, $(#d)/(#d t) γ = F(x,γ)$ ==> $γ(t,x) = x - (x^2 - 2 c t x)^(1/2)$

#tag("integral-curve") ODE 解的 Picard 迭代 (#link("https://en.wikipedia.org/wiki/Picard–Lindelöf_theorem")[wiki]) 表示 or 积分曲线 e.g.
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 f(t_n, ⋯ f(t_1, x(0)) ⋯ )
$
如果是线性 ODE 则 (*alias* Dyson 级数)
$
  x(t) = sum_(n = 0 .. ∞) integral_(0)^(t) #d t_(n) integral_(0)^(t_n) #d t_(n-1) ⋯ integral_(0)^(t_0) #d t_1 A(t_n) ⋯ A(t_1) x(0)
$
线性 ODE. 常系数 ODE 的解可以写出 by 转为一阶微分方程组 + Jordan normal form

#tag("Lie-bracket") Lie bracket
#indent[
  作为 #raw("#link(<conjugate-action>)[]") of $"Diff"$ 的生成元

  $"Diff"$ 的共轭作用 $g,f ⇝ f g f^(-1)$ 

  微分 := $"ad"(v)(w) = [v,w]$
  
  注意 $g,f ⇝ g f g^(-1)$ 是不同的映射, 如果考虑 $g,f$ 的顺序的话

  $[v,w](x) = ∂_(v(x)) w(x) - ∂_(w(x)) v(x)$

  $[v,w] = [w,v]$

  for $GL,gl$, $[A,B] ∼ A B - B A$
]
#let L = c-diff($L$)
#tag("Lie-derivative") Lie derivative *alias* drag derivative
#indent[
  let $v$ 生成单参数微分同胚 $t ⇝ f_t in "Diff"$
  
  let $w_t = #d f_(t)^(-1) (f_t (x) : "base", w(f_t (x)) : "vector")$

  $#L _v (w) := lim_(t -> 0) 1/t (w_t - w_0) $

  $#L _v (w) = [v,w]$
  
  Jacobi identity $#L _([v,w]) = [#L _v,#L _w]$ or $[v_1,[v_2,w_3]] + [v_3,[v_1,v_2]] + [v_2,[v_3,v_1]] = 0$

  可以对 tensor field 也定义 Lie derivative ...
]
#tag("linear-PDE-integrable-condition") 相关于二阶导数的对称性. 这个条件使得一阶线性 PDE 的解可以来自接连的 ODE 积分曲线, 且结果不依赖于道路的选取