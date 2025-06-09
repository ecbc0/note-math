#import "/module/module.typ": *
#show: module

#tag("action-point-particle-relativity") 作用量 $ integral #d l (m c) = integral #d τ (m c|vel(x)|)  $ 结果是测地线

使用时空 $ℝ^(1,3)$ 的 metric volume form $#d Vol = |det g|^(1/2) #d x$ 限制在一维路径, 得到长度 $#d l$, 使用的是二次型的平方根, 而不是单纯的二次型 

对于路径, 在 "时间坐标" $x^0(t) = c t$, let $v = (#d)/(#d t) x."space"$. 作用量

$ #d l = m c^2 (1 - (v/c)^2)^(1/2) #d t $

#tag("equation-point-particle-relativity") let $L(x,v) = m c^2 (1 - (v/c)^2)^(1/2)$. 类似 #link(<point-particle-Lagrange-equation>)[非相对论的情况], 作用量的方程 
$ 
  (∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ v) 
  
  <==> (#d)/(#d t) (m c^2 v)/((1 - (v/c)^2)^(1/2)) = 0 
$
相对论作用量 "近似" 到非相对论作用量 
$
  m c^2 (1 - (v/c)^2)^(1/2) = m c^2 - 1/2 m v^2 + O(v/c)^2
$
然后常值 $m c^2$ 将会变分到零 $0$

对称与守恒量

$ℝ^(1,3)$ 时空的对称群是 isometry $SO(1,3) ⋊ ℝ^(1,3)$ *alias* Poincare 群

- 平移
#indent[
  使用时间坐标. 类似于非相对论的情况, #link(<energy-point-particle-non-relativity>)[能量] 和 #link(<momentum-point-particle-non-relativity>)[动量] 的相对论版本是 #tag("energy-momentum-point-particle-relativity")
  $
    E &= (∂ f)/(∂ v) ⋅ v - f 
    &quad quad p &= (∂ f)/(∂ v) \

    E  &= (m c^2)/((1 - (v/c)^2)^(1/2)) 
    & p &= (m v)/((1 - (v/c)^2)^(1/2)) 
  $
  记为 4-动量 
  $
    m c vel(x) = (m (c,v))/((1 - (v/c)^2)^(1/2)) = vec(E/c,p) 
  $
]
相对论 Lagrangian $|vel(x)|$ 在 $SO(1,3)$ 下 invariant, 但 boost 仍然改变路径的时间和空间的端点 i.e. 改变作用量 $integral #d τ (m c|vel(x)|)$

- 旋转
#indent[
  类似于非相对论的情况, #link(<rotation-momentum-point-particle-non-relativity>)[momentum-point-particle-non-relativity] 的相对论版本是 #tag("rotation-momentum-point-particle-relativity")
  $
    x × p = (x × m v)/((1 - (v/c)^2)^(1/2))
  $
]
- boost
#indent[
  boost by #link(<hyperbolic-angle>)[双曲角度]
  $
    exph θ #i-split = mat(
      cosh θ, sinh θ; 
      sinh θ, cosh θ
    )
  $
  所以 δ boost by 双曲角度, 是
  $
    θ #i-split = mat(
      ,θ;
      θ
    )
  $
  在 $ℝ^(1,3)$ 的一个坐标中, let 空间向量 $n ∈ ℝ^3$, $|n| = θ$, 对应 δ boost, 定义双曲 cross product $n × vec(c t,x) = vec(c t + n ⋅ x, x + c t n)$

  类似于能量的情况, boost 也改变作用量
  
  boost 动量的计算结果中会出现 4-动量从而出现能量 $E$
  
  #tag("boost-momentum-point-particle-relativity")
  $
    vec(E/c,p) ⋅ (n × vec(c t,x)) 
    
    &= n ⋅ vec(E t - p ⋅ x, c t p - 1/c E x) \

    "spatial-part" &= n ⋅ vec(c t p - 1/c E x) 
  $
  注意 $(1,3)$ 时空 metric 有负定的空间 metric

  空间 $ℝ^3$ 向量
  $
    c t p - 1/c E x = (m c (t v - x))/((1 - (v/c)^2)^(1/2))
  $
  也是称为 boost 动量

  由于使用了 $ℝ^(1,3)$ 坐标对时间和空间的分离, 尽管旋转动量和 boost 动量是 $SO(1,3)$ invariant 的, 但表示方式 $x × p$ 和 boost 动量 $E x - t p$ 不是 invariant 的

  结合起来, 可以写为角动量 $L_(μ ν) = [x_μ, p_ν]$
]
粒子系统

potential $U(|x|),sum_(i < i') U(x_i - x_i'),sum_(i < i') U(|x_i - x_i'|)$

potential $A(x) (vel(x)) = A_0 (x) vel(x)^0 + ⋯ + A_3 (x) vel(x)^3$

point particle in Lorentz-manifold 
#indent[
  对于作用量 $integral #d l$ 和守恒量, 需要用 metric-connection 和 δ-isometry
]