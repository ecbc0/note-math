#import "/module/module.typ": *
#show: module

#let vel(x) = math.dot($#x$) // velocity
#let acc(x) = math.dot.double($#x$) // acceleration

非相对论时空 $ℝ × ℝ^3$ 

#tag("action-point-particle-non-relativity") 路径 $t ⇝ x(t)$ 的作用量 

$ integral #d t (1/2 m vel(x)^2 - U(x)) $

let $X(t)$ 是时变向量场 or 时变 δ diffeomorphism, 或者 $(1,X(t,x_(1 .. 3)))$ 是非相对论时空 $ℝ × ℝ^3$ 的特殊类型的向量场

let $X(t)$ _在边界是零_ --- 固定路径的终点

let 作用量的微分是零 

$ 0 = ∂ S ⋅ X(t) = integral #d t ((∂)/(∂ vel(x)) (1/2 m vel(x)^2) ⋅ vel(X) - (∂ U)/(∂ x) (x) ⋅ X) $

where $(∂)/(∂ vel(x)) (1/2 m vel(x)^2) = m vel(x)$

use product rule
$
  (#d)/(#d t) ((m vel(x)) ⋅ X) 
  
  = m acc(x) ⋅ X 
    + m vel(x) ⋅ vel(X)
$
and $X(t)$ 在边界是零, 使得

$ integral #d t ((#d)/(#d t) (m vel(x)) ⋅ X) = 0 $

所以作用量的微分是
$
  0 = - integral #d t ((m acc(x) + (#d U)/(#d x)) X)
$
对所有 δ diffeomorphism $X(t)$ 成立, 从而给出 Lagrange-equation (*alias* Euler--Lagrange-equation), 对于非相对论点粒子, #tag("Newton-equation") 

$ m acc(x) + (∂ U)/(∂ x) = 0 $

作用量的动量部分 $integral #d t (1/2 m vel(x)^2)$ 没有用 $ℝ^3$ 的 volume-form, 而是用 $ℝ^3$ 的二次型 $|vel(x)|^2$ 和时间 $ℝ$ 的 volume-form $#d t$

Lagrangian 可以写为函数 $L(x,vel(x)) = 1/2 m vel(x)^2 - U(x)$ (切丛上的函数)

一般点粒子作用量的 Lagrange-equation
#indent[
  对一般的 $L$, 重复上述过程. 作用量
  $
    integral #d t (L(x,vel(x)))
  $
  作用量的微分
  $
    integral #d t ((∂ L)/(∂ x) ⋅ X + (∂ L)/(∂ vel(x)) ⋅ vel(X))
  $
  use 
  $ 
    (#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X) 
    
    = ((#d)/(#d t) (∂ L)/(∂ vel(x))) ⋅ X + (∂ L)/(∂ vel(x)) ⋅ vel(X) 
  $
  在边界是零 + 对所有 δ diffeomorphism $X$, 积分是零 ==> #tag("point-particle-Lagrange-equation")
  $
    (∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ vel(x)) = 0
  $
]
Euclidean 型 metric-manifold
#indent[
  推广到 Euclidean 型 metric-manifold

  需要 #link(<metric-connection>)[]

  尽管没有使用 metric volume form, 由于作用量的动能部分的形式, 仍然联系到 metric 测地线 
]
对称与守恒量 

处理非相对论时空 $ℝ × ℝ^3$ 的对称性 *alias* Galileo 群, 生成自 $ℝ × ℝ^3$ 的平移, 旋转, 非相对论 boost

let $t ⇝ x(t)$ 是作用量方程的解

注意, 对 $x(t)$ 的沿对称的变分可能会使得它不再是方程的解, i.e. 对称的 δ diffeomorphism 可能不在边界是零 i.e. 会改变路径端点, 所以相关的对作用量的微分 at 解 $x(t)$, 可能不是零

- 时间平移
#indent[  
  在非相对论, 保持时间 $ℝ$ 的测度和方向的映射是时间平移 $t ⇝ t + a$

  δ 积分区域的变分 #tag("calculation-1-action-point-particle-non-relativity")
  $ 
    (#d)/(#d s) integral_(t_0 + s a)^(t_1 + s a) #d t (L(t))

    &= (L(t_1) - L(t_0)) ⋅ a \

    &= integral_(t_0)^(t_1) #d t ((#d)/(#d t) L(t) ⋅ a)
  $ 
  第一个等式可以来自微积分基本定理 + 复合函数微分

  一般地, 改变区域 $I$ 通过 $exp(a(t))$ #link(<vector-field-as-δ-diffeomorphism>)[通过 δ diffeomorphism] $a(t)$ 给出
  $
    (#d)/(#d s) limits(integral)_(exp(s a(t)) I) #d t (f(t)) 
    
    = integral_(I) #d t ((#d)/(#d t) f(t) ⋅ a(t))
  $
  另一边, use #link(<integral-change-of-variable-formula>)[变量替换公式] 
  $ 
    integral_(t_0 + s a)^(t_1 + s a) #d t (L(t)) = integral_(t_0)^(t_1) #d t (L(t + s a)) 
  $
  将其应用到
  $ 
    L(t) &= L(x(t),vel(x)(t))  
  $
  然后使用微分积分的交换
  $ 
    (#d)/(#d s) integral_(t_0)^(t_1) #d t 
    = integral_(t_0)^(t_1) #d t (#d)/(#d s) 
  $
  复合函数微分 $(#d)/(#d s) L(x(t + s a),vel(x)(t + s a)) = (∂ L)/(∂ x) vel(x) a + (#d L)/(#d vel(x)) acc(x) a$
  
  是作用量对 (改变端点的) δ differentiation $(#d)/(#d s)(0) x(t + s a) = a vel(x)(t) = X(t)$ 在解 $x(t)$ 处的变分 #tag("calculation--action-point-particle-non-relativity")
  $
    (#d)/(#d s) integral_(t_0 + s a)^(t_1 + s a) #d t (L(t))
    &= integral #d t ((∂ L)/(∂ x) ⋅ X + (∂ L)/(∂ vel(x)) ⋅ vel(X)) \
    &= integral #d t (((∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ vel(x))) ⋅ X + (#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X)) \
    &quad "by product-rule of" (#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X) \
    &= integral #d t ((#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X)) \
    &quad "Lagrange-equation" (∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ vel(x)) = 0
  $
  recall #link(<calculation-1-action-point-particle-non-relativity>)[]
  $ 
    (#d)/(#d s) integral_(t_0 + s a)^(t_1 + s a) #d t (L(t))

    &= L(t)|_(t_0)^(t_1) ⋅ a \

    &= integral_(t_0)^(t_1) #d t ((#d)/(#d t) L(t) ⋅ a)
  $
  use $X = a vel(x)$, 将上一项与下一项合并
  $ 
    integral_(t_0)^(t_1) #d t (#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X) 
    
    = ((∂ L)/(∂ vel(x)) ⋅ vel(x) ⋅ a) |_(t_0)^(t_1)
  $
  得到
  $
    ((∂ L)/(∂ vel(x)) ⋅ vel(x) - L) |_(t_0)^(t_1) ⋅ a = 0
  $
  量
  $
    E = (∂ L)/(∂ vel(x)) ⋅ vel(x) - L
  $
  称为作用量 $L$ 的能量, 是沿时间 $t$ 不变的, forall $a ∈ ℝ$, i.e. 守恒. 对所有 $t_0 < t_1$ 成立也蕴含 $(#d)/(#d t) E = 0$

  对于 $L = 1/2 m vel(x)(t)^2 - U(x(t))$ 能量是
  #tag("energy-point-particle-non-relativity") 
  $
    E &= m vel(x)^2 - (1/2 m vel(x)^2 - U) \
    &= 1/2 m vel(x)^2 + U 
  $
  Homogeneity of Time ==> Conservation of Energy
]
- 空间平移
#indent[
  作用量的动能部分
  
  $ integral #d t (1/2 m vel(x)^2) $

  尽管空间平移 δ diffeomorphism 不在边界是零或者会改变路径端点, 时间端点没有变, 且空间平移不改变动能. with $x + s a$, $(#d)/(#d t)(x + s a) = vel(x)$
  $ 
    &quad (#d)/(#d s)(s = 0) integral_(t_0)^(t_1) #d t (1/2 m ((#d)/(#d t)(x + s a))^2) \
    
    &= (#d)/(#d s) integral_(t_0)^(t_1) #d t (1/2 m vel(x)^2) \
    
    &= 0
  $
  所以类似 #link(<calculation-2-action-point-particle-non-relativity>)[能量的情况], with δ diffeomorphism $(#d)/(#d s) (x + s a) = a = X(t)$
  $
    0 = integral_(t_0)^(t_1) #d t ((#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X)) = (∂ L)/(∂ vel(x)) |_(t_0)^(t_1) ⋅ a
  $
  #tag("momentum-point-particle-non-relativity") 作用量 $integral #d t (1/2 m vel(x)^2)$ 的动量 
  
  $ m vel(x) ⋅ a $ 

  沿时间 $t$ 不变, forall $a ∈ ℝ^3$, i.e. 守恒

  更一般地, let 作用量 $integral #d t (L(x,vel(x)))$ with $(∂ L)/(∂ a) = 0$ 使得这个方向的端点不影响作用量, 则动量 $ (∂ L)/(∂ vel(x)) ⋅ a $ 守恒

  Homogeneity of Space ==> Translation Invariance of $L$ ==> Conservation of Total Linear Momentum

  Lagrangian

  $ L(x,vel(x)) = 1/2 sum m_i vel(x)_i^2 - sum_(i < i') U(|x_i - x_i'|) $

  $(∂ L)/(∂ a) = 0$ forall $a ∈ ℝ^3$ (by $(x_i + a) - (x_i' + a) = x_i - x_i'$) 所以动量 $ sum m vel(x)_i ⋅ a $ 守恒 
]
- 空间的旋转
#indent[
  选择一个原点. Lagrangian

  $ L(x,vel(x)) = 1/2 sum m vel(x)^2 - U(|x|) $

  $so(3)$ 表示为绕轴 $n$ 的旋转, cross product $n × x$ 是 δ 旋转
  
  绕轴旋转 ==> $(n × x) perp n$
  
  in $ℂ$, $e^(θ #i) z = z + θ #i z + o(z)$ with $θ #i ∈ Im(ℂ) = #u (1) = so(2)$, $z perp #i z$ and magnitude $|θ #i| = |n|$
  
  长度对方向不变 $(∂|x|)/(∂ x) ⋅ (n × x) = 0$

  类似动量的情况, Lagrangian 对旋转 invariant, δ diffeomorphism (tangent vector field) 是 $n × x$, 因此

  #tag("rotation-momentum-point-particle-non-relativity") 旋转动量 rotation-momentum *alias* 角动量 angular-momentum 
  
  $ m vel(x) ⋅ (n × x) = n ⋅ (x × m vel(x)) $ 
  
  是沿时间 $t$ 不变的, forall $n ∈ so(3)$

  量
  $
    x × m vel(x)
  $
  也是称为旋转动量

  更一般地 $L(x,vel(x))$ with $n ⋅ (x × ∂) f = 0$ 使得 Lagrangian 对绕 $n$ 旋转 invariant, 则绕 $n$ 旋转动量是
  $
    x × (∂ L)/(∂ vel(x))
  $
  Isotropy of Space ==> Rotational Invariance of $L$ ==> Conservation of Total Angular Momentum

  $a ⋅ (b × c)$ = #link(<volume-of-parallelogram>)[平行体有向体积] span by $a,b,c$ in Euclidean $ℝ^3$

  旋转动量 $x × m vel(x)$ 是对时间的常值, 所以 $span(x × vel(x))^⟂$ 是常值 2d 平面. 由于 $(x × vel(x)) perp x,vel(x)$, $span(x,vel(x)) ⊂ span(x × vel(x))^⟂$, $x(t)$ 在常值二维平面 $span(x × vel(x))^⟂$

  对于点粒子系统的 Lagrangian

  $ L(x,vel(x)) = 1/2 sum m_i vel(x)_i^2 - sum_(i < i') U(|x_i - x_i'|) $

  总旋转动量

  $ n ⋅ sum (x_i × m vel(x)_i) $

  是沿时间 $t$ 不变的
]
- 非相对论 boost
#indent[
  非相对论 boost $x ⇝ x + t ⋅ v$ 
  
  作用量 $integral 1/2 m vel(x)^2 #d t$ 的守恒量是

  $ m(t ⋅ vel(x) - x) ⋅ v $

  forall $v ∈ ℝ^3$
]
- 作用量 $1/2 m vel(x)^2$ 拥有非相对论时空 $ℝ × ℝ^3$ 的所有 δ 对称的守恒量, 10 dimensional

- 作用量 $1/2 m vel(x)^2 - U(x)$ 有守恒的能量

- 作用量 $sum 1/2 m_i vel(x)_i^2 - sum_(i < i') U(x_i - x_i')$ 有守恒的能量, 动量

- 作用量 $1/2 m vel(x)^2 - U(|x|)$ 有守恒的能量, 旋转动量

- 作用量 $sum 1/2 m_i vel(x)_i^2 - sum_(i < i') U(|x_i - x_i'|)$ 有守恒的能量, 动量, 旋转动量, 7 dimension

非相对论 potential $(V,A) ∈ ℝ × ℝ^3$

- 刚体
#indent[
  由 $SO(3)$ (or $SO(2)$) 参数化, 所以可以认为是 Euclidean 型流形 $SO(3)$ 上的非相对论粒子. 但 metric 的使用 or 动能的使用不是 $so(3)$ 的 #link(<Killing-form>)[], 因为 of $so(3)$, 因为对于不是均匀质量分布的球的物体, 在不同方向的旋转有不同的惯性. 转动惯量 moment of inertia i.e. metric $g$ 可能需要额外计算
]