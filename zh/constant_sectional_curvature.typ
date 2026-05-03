#import "../module/module.typ": *
#show: module

#tag("sectional_curvature") 
#indent[
  根据 #link(<symmetry_of_curvature>)[], $"curvature" subset ⨀^2 ⋀^2 V^⊺$
  
  截面曲率是二次型 (可能退化) 限制在 $⋀^2 V^⊺$ 方向空间 i.e. 限制在单位长度
  $
    K(X ∧ Y) = (R(X ∧ Y, X ∧ Y))/(|X ∧ Y|^2)
  $
]
curvature 可以恢复自 sectional-curvature. _Proof_ 不需要非退化, 对称双线性可以恢复自二次型 quadratic-form

*Prop* $1/2 ⋅ (g #cvt-prod g) (X ∧ Y, X ∧ Y) = |X ∧ Y|^2$ 

#tag("constant_sectional_curvature") $K(X ∧ Y) = "const"$ <==>
$
  (R = 1/(2n(n-1)) ⋅ "scal" ⋅ g #cvt-prod g) 
  and ("scal" = "const")
$
i.e. 曲率只有纯量部分且纯量曲率是常值

_Proof_ 
#indent[  
  constant-sectional-curvature <==> $R(X ∧ Y, X ∧ Y) = λ |X ∧ Y|^2 = λ ⋅ 1/2 ⋅ (g #cvt-prod g) (X ∧ Y, X ∧ Y)$ 
  
  <==> $R - λ ⋅ 1/2 ⋅ g #cvt-prod g$ 是零二次型 
  
  <==> $R = λ ⋅ 1/2 ⋅ g #cvt-prod g$

  $"curvature"$ 正交分解给出 $R = 1/(2n(n-1)) ⋅ "scal" ⋅ g #cvt-prod g$ with $"scal" = "constant"$
]
#tag("constant_sectional_curvature_imply_Einstein_metric") 

_Proof_ trace-free Ricci-curvature = 0

#tag("constant_sectional_curvature_low_dimension") 

  - $dim = 2$ ==> constant-sectional-curvature = Einstein-metric = constant-scalar-curvature

  - $dim = 3$ ==> constant-sectional-curvature = Einstein-metric _Proof_ 三维 $W = 0$ + (Einstein <==> $"tr-free-Ric" = 0$)

#tag("quadratic_manifold") :=
#indent[
  $ ℚ^(p,q)(± 1) = {x in ℝ^(p,q) : ⟨ x ⟩^2 = ± 1} $ 

  where $⟨ x ⟩^2 = sum_(sign) sign sum_(i_sign) x_(i_sign)^2 = x_1^2 + ⋯ + x_p^2 - (x_(p+1)^2 + ⋯ + x_(p+q)^2)$
]
#tag("quadratic_manifold_is_constant_sectional_curvature") 二次型流形 $ℚ^(p,q)(± a^2)$ 有 constant-sectional-curvature $R = 1/(± 2 a^2) g #cvt-prod g$

_Proof_ 
#indent[
  使用子流形技术. 子流形 $ℚ(p,q)(± a^2)$ 上的点 $x$ 在 $ℝ^(p,q)$ 有切空间与法空间
  
  $x in ℚ(p,q)(± a^2)$ 点的子流形测地线坐标 + 法空间作为流形 $ℝ^(p,q)$ 坐标
  
  $ℝ^(p,q)$ 在此坐标在 $x$ 点的 coordinate-frame $∂_i$ orthonormal

  拆开 tangent, normal, $Γ = Γ^⊤ + Γ^⟂$

  曲率的 metric-dual $g [∇_i,∇_i'] = g[∂_i + Γ_i, ∂_i' + Γ_i'] $

  ==> $R^⊤_(i j i' j') = R_(i j i' j') + g(Γ^⟂_(i j),Γ^⟂_(i' j')) - g(Γ^⟂_(i j'),Γ^⟂_(i' j))$

  $ℝ^(p,q)$ 的曲率是零 $R_(i j i' j') = 0$

  ==> $R^⊤_(i j i' j') = g(Γ^⟂_(i j),Γ^⟂_(i' j')) - g(Γ^⟂_(i j'),Γ^⟂_(i' j))$
  
  二次型流形 co-dimension 1, 法空间 dimension 1, 法向场 $Γ^⟂_(i j) = λ n$ with 单位法向场 $n$
  $
    g(Γ^⟂_(i j), n) &= g(Γ_(i j), n)
      &quad "by" Γ_(i j)^(⊤) ⟂ n ==> g(Γ_(i j), n) = 0 \
    &= g(∇_(∂_i) ∂_j, n) \
    &= ∂_i (g(∂_j, n)) - g(∂_j, ∇_(∂_i) n) \
    &= - g(∂_j, ∇_(∂_i) n) 
      &quad "by" ∂_j perp n ==> g(n, ∂_j) = 0
  $   
  所以 $Γ^⟂_(i j) = - g(∇_(∂_i) n,∂_j) n$
  
  在 $ℝ^(p,q)$ 普通坐标在 $x$ 点 $n = (grad |x|^2)/(|grad |x|^2|) = 1/a x^i ∂_i$ 且 $∇_(∂_i) n = ∂_i n = 1/a ∂_i $
  
  ==> $Γ^⟂_(i j) = - g(∇_(∂_i) n,∂_j) n = -1/a g(∂_i, ∂_j) n$

  ==>
  $
  R^⊤_(i j i' j') &= 1/a^2 g(n,n) (g_(i j) g_(i' j') - g_(i j') g_(i' j)) \
  &= 1/(± 2a^2) (g #cvt-prod g)_(i j i' j')
  $
  宇宙常数 $Λ = ± ((n-1)(n-2))/(2 a^2)$
]
二次型流形中的 Lorentz 流形 $ℚ^(1,n)(- a^2), ℚ^(2,n-1)(a^2)$ 有 "静态坐标", i.e. 在静态坐标中 metric 将是静态形式

- $ℚ^(1,n)(- a^2)$ 静态坐标 := 
#indent[
  分解到半径 $r$ + 双曲线 $ℚ^(1,1)(- a^2 + r^2)$ + 球面 $ℚ^(0,n-1)(- r^2)$
  
  坐标 $(t,r,𝕊^(n-2))$ with
  $
    r^2 &= x_3^2 + ⋯ + x_(n+1)^2 \
    x_1 &= (a^2 - r^2)^(1/2) sinh(1/a t) \
    x_2 &= (a^2 - r^2)^(1/2) cosh(1/a t) \
    x_i &= r x_i/r 
  $
  metric 将是
  $
    g = (1 - (r^2)/(a^2)) #d t^2 - ((1 - (r^2)/(a^2))^(-1) #d r^2 + r^2 g_(𝕊^(n-2)))
  $
]
- $ℚ^(2,n-1)(a^2)$ 静态坐标 := 
#indent[
  分解到半径 $r$ + 球面 $ℚ^(2,0)(a^2 + r^2)$ + 球面 $ℚ^(0,n-2)(- r^2)$
  
  坐标 $(t,r,𝕊^(n-2))$ with
  $
    r^2 &= x_3^2 + ⋯ + x_(n+1)^2 \ 
    x_1 &= (a^2 + r^2)^(1/2) cos(1/a t) \
    x_2 &= (a^2 + r^2)^(1/2) sin(1/a t) \
    x_i &= r x_i/r
  $
  metric 将是
  $
    g = (1 + r^2/a^2) #d t^2 - ((1 + r^2/a^2)^(-1) #d r^2 + r^2 g_(𝕊^(n-2)))
  $
]
$ℚ^(2,n-1)(a^2)$ 的时间轴的行为存在 $𝕊^1$ like. 而且存在 closed time-like geodesicm, 从而不 causal

"单叶双曲面" $ℚ^(1,n)(- a^2)$ 的时间轴的行为是 $ℝ$ like, 空间存在 $𝕊^(n-1)$ like. 存在 closed space-like geodesic

$ℚ^(1,n)(- a^2)$ 可以 "时间切片" 化为 $ℝ × 𝕊^(n-1)$. $sinh$ 是 $ℝ$ 的微分同胚
$
  x_1 &= a sinh(1/a t) \
  x_i &= a cosh(1/a t) x_i/(a cosh(1/a t))
$
metric
$
  g = #d t^2 - a^2 cosh^2 (1/ a t) g_(𝕊^n)
$

$ℚ^(2,n-1)(a^2)$ "可视化" 的例子: $ℝ^3$ 中的 $ℚ^(2,1)(1)$ or $x_1^2 + x_2^2 - x_3^2 = 1$, 单叶双曲面

虽然 $ℚ^(2,1)(1)$ 类时测地线总是闭合的, 表现为椭圆, 但类时非测地线可以无限长度, 例如可以不断逼近类光测地线

类光测地线表现为 "抛物线" ...