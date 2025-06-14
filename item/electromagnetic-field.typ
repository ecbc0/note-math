#import "../module/module.typ": *
#show: module

可能以后会迁移到 principal-bundle-connection?

cf. #link(<motivation-of-gauge-field>)[]

有很多可能的联络
  
有无法 local flat 的联络, 对任意的局部, 都无法通过改变规范消去联络场

类似于 #link(<flat-metric-iff-curvature-0>)[]

存在局部丛坐标 or 相位, 其中联络是零 $A = 0$ <==> 曲率是零 $F_(i i') = [#D _i,#D _i'] = 0$ where $#D = #d + A$, 在坐标中 $F_(i i') = ∂_i A_i' - ∂_i' A_i + [A_i, A_i']$

不存在 flat connection 坐标时, 则选取基于 metric-volume-form 的 $L^2$ 最小曲率

*Example*
#indent[
  $#U (1)$ 的情况. $A$ 是 $#u (1)$ 值, 是交换的 $[A,A'] = 0$, 此时 $F = #d A$, 在坐标中 $F_(i j) = ∂_i A_j - ∂_j A_i$

  从局部 flat-connection 坐标 $A' = 0$ 转换到一般坐标给出 PDE

  $ A = #d θ $

  PDE 可解条件 $0 = F = #d A$

  从 PDE 的解 $A = #d θ$, 积分给出 $θ$ 和相位变换 $e^θ$
]
#tag("electromagnetic-field")
#indent[
  在 $ℝ^(1,3)$

  有很多可能的联络, 用曲率最小来选择

  注意 $Vol$ 意味着这个作用量的定义需要时空 metric

  $ integral #d Vol |F|^2 $

  eq

  $ #d^† #d A = 0 $

  在坐标中 
  $
    && sum_i ∂_i (∂_i A_j - ∂_j A_i) &= 0 \
    "or"&& sum_i ∂_i F_(i j) &= 0
  $
  在时空分解坐标 
  $
    F = E_(i) (#d t ∧ #d x^i) - B_(i j) (#d x^i ∧ #d x^j) "with" 1 <= i < j <= 3
  $
  当然这种分解方式不是 $SO(1,3)$ invariant 的

  #let A = c-bf("A","#0056e1")

  *Question* 如何让 $sum_i ∂_i (∂_i A_j - ∂_j A_i) = 0$ 显然地蕴含电磁场 $E,B$ 的方程的 $div, curl$ 形式? #tag("Maxwell-equation")
  $
    div B &= 0 &quad ∂_t B + curl E &= 0 \

    div E &= ρ &quad - ∂_t E + curl B &= j 
  $
  也有
  $
    E &= - (∂_t #A + grad ϕ) \
    B &= curl #A
  $
  其中 $ϕ = A."time", #A = A."space"$

  注意, $curl, div$ 和 $ℝ^3$ 外微分和 $ℝ^3$ Hodge star 有联系. $#d^†$ 也能和 Hodge star 产生联系. 可能联系到时空分解坐标中, Hodge star 在空间 $ℝ^3 subset ℝ^(1,3)$ 的行为

  $⋆(#d x^i ∧ #d x^j) = ± #d t ∧ #d x^k$

  注意 Hodge star 需要 metric

  使用特殊的规范 #tag("Lorentz-gauge") $#d^† A =0$, 方程 $#d^† #d A = 0$ 变为 
  $
    0 = (#d^† #d + #d #d^†) A = ∆ A = η^(i i') ∂_i ∂_i' A 
  $
]
