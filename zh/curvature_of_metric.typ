#import "../module/module.typ": *
#show: module

#tag("flat_metric") (@ref-2, vol)
#indent[
  flat metric := 存在坐标使得 $forall x, g(x) = η$ 标准 metric

  $𝕊^2$ 的继承自 $ℝ^3$ 的子流形 metric 不是 #link(<flat_metric>)[], 而是 #link(<quadratic_manifold_is_constant_sectional_curvature>)[constant-sectional-curvature].

  何时存在 flat metric?

  选取一个坐标 $y$, with metric $g$ 
  
  假设变换到 $x$ with metric $η$, 则

  - $g = (∂ x)/(∂ y)#none ^⊺ ⋅ η ⋅ (∂ x)/(∂ y)$

  - $g^(-1) = (∂ y)/(∂ x) ⋅ η ⋅ (∂ y)/(∂ x)#none ^⊺ $ 

  - $(∂ x)/(∂ y) ⋅ g^(-1) ⋅ (∂ x)/(∂ y)#none ^⊺ = η$

  #link(<connection_transformations>)[联络的变换] 
  $
    Γ(y) 
    = (∂ y)/(∂ x) ⋅ Γ(x) ⋅ (∂ x)/(∂ y) + (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y))
  $
  对于 flat metric $Γ(x) = 0$, 从而
  $
    Γ(y) = (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y))
  $
  等价地

  $ (∂)/(∂ y) ((∂ x)/(∂ y)) = (∂ x)/(∂ y) ⋅ Γ(y) $

  这个性质, 加上 $p$ 的初值条件, 使得可以用 PDE 恢复 flat metric, i.e. 用于证明  
  
  $ (∂)/(∂ y) ((∂ x)/(∂ y) ⋅ g^(-1) ⋅ (∂ x)/(∂ y)#none ^⊺) = 0 $

  _Proof_
  #indent[
    product-rule 展开以上的微分
    $
      &= ((∂)/(∂ y) ((∂ x)/(∂ y))) ⋅ g^(-1) ⋅ ((∂ x)/(∂ y))^⊺ \
      &quad + (∂ x)/(∂ y) ⋅ ((∂)/(∂ y) (g^(-1))) ⋅ ((∂ x)/(∂ y))^⊺ \
      &quad + (∂ x)/(∂ y) ⋅ g^(-1) ⋅ ((∂)/(∂ y) ((∂ x)/(∂ y))^⊺) 
        &quad "then use" (∂)/(∂ y) ((∂ x)/(∂ y)) = (∂ x)/(∂ y) ⋅ Γ(y) \

      &= (∂ x)/(∂ y) ⋅ (g^(-1)(Γ,) + ∂ g^(-1) + g^(-1)(,Γ)) ⋅ ((∂ x)/(∂ y))^⊺
        &quad "see" #link(<differenial_of_metric_inverse_vs_connection>)[link] \

      &= 0
    $
  ]
  关于 $(∂ x)/(∂ y)$ 的线性 PDE 
  
  $ (∂)/(∂ y) ((∂ x)/(∂ y)) = (∂ x)/(∂ y) ⋅ Γ(y) $ 
  
  是可解的 <==> 满足 #link(<linear_PDE_integrable_condition>)[]
  $
    [∇_i,∇_i'] = 0
  $
  where $∇ = ∂ + Γ$ is #link(<geodesic_derivative>)[]

  or $ [∇_v, ∇_v'] - ∇_([v,v']) = 0 $

  如果解出了 $(∂ x)/(∂ y) (y)$, 用初值条件再次积分得到 $x (y)$, 得到从坐标 $y$ 到 flat-metric 坐标 $x$ 的转换函数

  在 flat-metric 坐标 $Γ = 0$ 所以测地线 ODE 是 $acc(x) = 0$,所以 flat-metric 坐标将是测地线坐标 
]
不存在 flate metric 坐标时, 则选取 #link(<Einstein_metric>)[] 作为最小 #link(<scalar_curvature>)[纯量曲率]

现在不假设 flat metric

#tag("curvature_of_metric") 
#indent[
  曲率 ($R$ from "Riemann")

    - $R_(i i') = [∇_i,  ∇_i']$
    - $(R_(i i'))_j^j' = [∇_i,  ∇_i']_j^j'$

  $[∇_i,∇_i']$ 是张量 (尽管 $∇$ 不是)

  name-overload: 曲率 := 曲率的 #link(<metric_dual>)[] $R := g [∇_i,∇_i'] $

  在坐标中 $R_(i i j' j') = g_(j' k) (R_(i i'))_j^k$ 
]
#tag("flat_metric_iff_curvature_0") flat-metric <==> 曲率是零

#tag("curvature_determine_metric_locally") 
#indent[
  "flat-metric <==> 曲率零" 可以推广到曲率决定局部 metric

  如果两个 metric $g,g'$ 及其曲率通过 $p,p'$ 点之间局部微分同胚联系起来, 且微分是 $p,q$ 切空间之间的 isometry, 则局部微分同胚是 $g,g'$ 的局部 isometry
]
#tag("curvature_in_geodesic_coordinate") 
#indent[
  在测地线坐标的原点 $p$, 通过计算, 通过

  - #link(<metric_connection>)[] $Γ$ 的定义和曲率 $R$ 定义
  - $Γ(p) = 0$

  有
  $ R_(i_1 i_2 j_1 j_2) = 1/2 sum_(i, j in 2!) sign(i) sign(j) ∂_(i_1 j_1) g_(i_2 j_2) $
  or
  $
    R_(i i' j j') = 1/2 (∂_(i j) g_(i' j') + ∂_(i' j') g_(i j) - ∂_(i j') g_(i' j) - ∂_(i' j) g_(i j'))
  $
]
==> 如果在测地线坐标, metric 的 Taylor 展开二阶微分也是零 $g(p + v) = η + o(v^2),$ 则曲率也是零 $R = 0$, 从而导致 flat-metric, 从而高阶微分也是零 $o(v^2) = 0$

#tag("symmetry_of_curvature")  
#indent[
  - $R_(i(12) j(12)) =$
  #indent[
    - $- R_(i(#emph("21")) j(12))$
    - $- R_(i(12) j(#emph("21"))$
    - $R_(#emph($j$) (12) #emph($i$) (12))$
  ]
  - $sum_("cyclic" (123)) R_(i(123) j) = 0$

  or

  - $R_(i i' j j') =$
  #indent[
    - $- R_(i' i j j')$
    - $- R_(i i' j' j)$
    - $R_(j j' i i')$
  ]
  - $R_(i i' i'' j) + R_(i' i'' i j) + R_(i'' i i' j) = 0$

  ==> $R in ⨀^2 (⋀^2 V^⊺)$
]
_Proof_ 在测地线坐标, 用 $Γ$ or $g$ 表示的曲率 $R$ 的定义

#tag("algebraic_curvature_tensor") 代数曲率张量定义为满足上述对称性 (@ref-6, lect 8) 

#tag("curvature_product")  
#indent[
  模仿 #link(<curvature_in_geodesic_coordinate>)[曲率在测地线坐标的定义], 对于二阶对称张量 $T, S ∈ ⨀^2 V^⊺$ 定义 curvature-product
  $
    (T #cvt-prod S)_(i_1 i_2 j_1 j_2) 
    
    = sum_(i, j in 2!) sign(i) sign(j) T_(i_1 j_1) S_(i_2 j_2)
  $
  or
  $
    (T #cvt-prod S)_(i i' j j') 
    
    = T_(i j) S_(i' j') + T_(i' j') S_(i j) - T_(i j') S_(i' j) - T_(i' j) S_(i j')
  $
  $T #cvt-prod S$ 满足 #link(<symmetry_of_curvature>)[], 从而 $T #cvt-prod S in "curvature"$, or $#cvt-prod : (⨀^2 V^⊺)^2 -> "curvature"$

  在测地线坐标的原点, 曲率是 (formally) 
  
  $ R = 1/2 (∂^2 #cvt-prod g) $ 
]
*Def* $f(R_i(1234)) := sum_("cyclic" (123)) R_(i(123) i(4))$

- $f$ 将 $T ∈ ⨀^2 (⋀^2 V^⊺)$ 映射到自身且 $f^2 = f$, i.e. #link("https://en.wikipedia.org/wiki/Projection_(linear_algebra)")[wiki:Projection\_(linear_algebra)], so $⨀^2 (⋀^2 V^⊺) = ker f ⊕ im f$

- $ker f = "curvature"$

- 对于交错张量 $T,S ∈ ⋀^2 V^⊺$, $f(T ⊙ S) = T ∧ S$, so $im(f) = ⋀^4 V^⊺$

#tag("dimension_of_algebraic_curvature") 使用 $("domain")/("kernel") ≃ "image"$, 有代数曲率张量空间的维数 

$
  dim("curvature") 
  &= dim(⨀^2 (⋀^2 V^⊺)) - dim(⋀^4 V^⊺) \
  &= 1/12 n^2 (n^2 - 1)
$ 

where $n = dim V$ 

metric 是一种张量 $g ∈ ⨀^2 V^⊺$

映射 $g #cvt-prod : ⨀^2 V^⊺ -> "curvature"$ 

#tag("adjoint_of_curvature_product") $(g #cvt-prod)^† : "curvature" -> ⨀^2 V^⊺$ :=
#indent[
  对于 $T ∈ ⨀^2 V^⊺$ 和 $S ∈ "curvature"$ 和 $"curvature",⨀^2 V^⊺$ 的 #link(<tensor_induced_metric>)[]
  $
    g(g #cvt-prod T, S) = g(T, (g #cvt-prod)^† S)
  $
  对每个 $S ∈ "curvature"$, 线性函数

  $ (T ⇝ g(g #cvt-prod T, S)) ∈ (⨀^2 V^⊺)^⊺ $ 

  有 $⨀^2 V^⊺$ 空间的 metric-adjoint :=

  $ (g #cvt-prod)^† (S) ∈ ⨀^2 V^⊺ $ 

  线性函数 $T ⇝ g(g #cvt-prod T, S)$ 可以用 $⨀^2 V^⊺$ 空间的 metric 表示 

  $ T ⇝ g(T, (g #cvt-prod)^† S) $

  在坐标中 $((g #cvt-prod)^† S)_(i j) = 4 g^(i' j') S_(i i' j j')$
]

$g #cvt-prod$ 是单射, $(g #cvt-prod)^†$ 是满射. _Proof_ 使用复合映射的前置逆和后置逆, 构造方式参考 #link(<curvature_decomposition>)[] 的计算

$dim(im(g #cvt-prod)^†) = dim(im(g #cvt-prod)) = dim ⨀^2 V^⊺$

metric-adjoint $(g #cvt-prod)^†$ ==> $ker(g #cvt-prod)^† ⟂ im(g #cvt-prod) ⊆ "curvature"$

线性映射 $(g #cvt-prod)^†$ ==> $dim ker(g #cvt-prod)^† + dim im(g #cvt-prod)^† = "curvature"$

==> $ker(g #cvt-prod)^† ⟂ im(g #cvt-prod) = "curvature"$

映射 $g ⋅ : ℝ -> ⨀^2 V^⊺$

metric-adjoint $(g ⋅)^† : ⨀^2 V^⊺ -> ℝ$ :=

for $r ∈ ℝ$ and $T ∈ ⨀^2 V^⊺$
$
  g(g ⋅ r, T) = g(r, (g ⋅)^† T) = r ⋅ ((g ⋅)^† T)
$
$g(g ⋅ r, T) = r ⋅ g(g,T) $ so $(g ⋅)^† T = g(g,T)$

在坐标中 $g(g , T) = g^(i j) T_(i j)$

$g ⋅$ 是单射, $(g ⋅)^†$ 是满射

$dim(im(g ⋅)^†) = dim(im(g ⋅))$

$ker(g ⋅)^† ⟂ im(g ⋅) = ⨀^2 V^⊺ = im(g #cvt-prod)^†$

#tag("curvature_decomposition_space") 
$
  "curvature" = ker(g #cvt-prod)^† ⟂ ker(g ⋅)^† ⟂ im(g ⋅) 
$ 
正交分解为子张量空间, 且不可再这样分解 i.e. irreducible

#tag("curvature_decomposition") forall $T ∈ "curvature"$, exists $S ∈ ⨀^2 V^⊺$, 正交分解 $T = U + g #cvt-prod S ∈ ker(g #cvt-prod)^† ⊕ im(g #cvt-prod)$

_Proof_ if it's true then 
#indent[
  $1/4 (g #cvt-prod)^† T &= (g #cvt-prod)^† (g #cvt-prod) S \
  &= (n-2) S + g ⋅ g(g,S)$ 

  $1/4 (g ⋅)^† (g #cvt-prod)^† T &= (n-2) ⋅ g(g,S) + g(g,g) ⋅ g(g,S) \
  &= 2(n-1) ⋅ g(g,S)$

  $S = 1/(4(n-2)) ((g #cvt-prod)^† T - 1/(2(n-1)) g ⋅ (g ⋅)^† (g #cvt-prod)^† T)$

  - #tag("Ricci_curvature") $"Ric" := 1/4 (g #cvt-prod)^† R$ 

    在坐标中 $"Ric"(i j) = g^(i' j') R_(i i' j j')$

  - #tag("scalar_curvature") $"scal" := 1/4 (g ⋅)^† (g #cvt-prod)^† R$ 

    在坐标中 $"scal" = g^(i j) g^(i' j') R_(i i' j j')$

  - #tag("conformal_curvature") $W := R - g #cvt-prod 1/(n-2) ("Ric" - 1/(2(n-1)) ⋅ g ⋅ "scal") ∈ ker(g #cvt-prod)^†$ (named so because if it vanish then the metric conformally flat when $n >= 4$) ($W$ from "Weyl")

  类似地, 正交分解 $⨀^2 V^⊺ = ker(g ⋅)^† ⊕ im(g ⋅)$ 是 $(S - 1/n ⋅ g ⋅ (g ⋅)^† S) + 1/n ⋅ g ⋅ (g ⋅)^† S$

  trace-free Ricci-curvature $"tr-free-Ric" := "Ric" - 1/n ⋅ g ⋅ "scal" ∈ ker(g ⋅)^†$

  曲率正交子张量空间分解 

    $"curvature" = ker(g #cvt-prod)^† ⊕ ker(g ⋅)^† ⊕ im(g ⋅)$
  $
    R =
    &quad W \
    & + 1/(n-2) ⋅ g #cvt-prod "tr-free-Ric" \ 
    & + 1/(2n(n-1)) ⋅ "scal" ⋅ g #cvt-prod g
  $
  quadratic-form
  $
    |R|^2 &= |W|^2 + 4/(n-2) |"tr-free-Ric"|^2 + 2/(n(n-1)) "scal"^2 \

    &= |W|^2 + 4/(n-2) |"Ric"|^2 - 2/(n(n-1)) "scal"^2
  $
]
#tag("curvature_low_dimension") low dimension curvature

- $n = 0,1 ==> dim("curvature") = 0$

- $n = 2 ==> dim("curvature") = 1$ span by $g #cvt-prod g$
#indent[
  - $R = 1/2 "scal" g #cvt-prod g$, only type $R_(1212) != 0$, and $g #cvt-prod g ∼ g_(11) g_(12) - g_(12)^2 = det(g)$

  - $"Ric" = 1/2 "scal" g$
]
- $n = 3 ==> dim("curvature") = 6$ 
#indent[
  - $g #cvt-prod : ⨀^2 V^⊺ -> "curvature"$ 是双射

  - $W = 0$

  - $R$ 完全决定于 $"Ric" = 1/4 (g #cvt-prod)^† R$
]
let $(∂ g_(i i'))/(∂ x^j ∂ x^j') = g_(i i', j j')$

metric 测地线坐标展开也有曲率的出现
#indent[
  $
    g_(i i') &= η_(i i') + (∂_(j j') g_(i i')) v^j v^j' + o(v^2) 
  $
  且满足
  $
    (∂_(j j') g_(i i')) v^j v^j' = - 1/3 R_(i j i' j') w^j w^j'
  $
  注意这是求和 $sum_(j j')$ 的等式, 而不是系数的等式

  - "trace" $(g #cvt-prod)^†$ 也出现在 Taylor-expansion of metric volume-form $|g| = |det (g_(i j))|^(1/2)$, 相关于 $det(𝟙 + A) = 𝟙 + tr(A) + o(A)$ and $(1 + x)^(1/2) = 1 + 1/2 x + o(x)$
    $
      |g| = 1 - 1/6 "Ric"(v,v) + o(v^2)
    $
  
  - "trace" $(g ⋅)^†$ 再次出现在 volume of geodesic ball (for spacetime manifold 应该用 multi radius?)
    $
      (Vol("geodesic-ball"(r)))/(Vol("ball"(r))) = 1 - 1/(6(n+2)) "scal" r^2 + o(r^2)
    $
]
$∇_X Y - ∇_Y X = [X,Y]$

  if scale matric $g ⇝ λ g$

  - geodesic-derivative $∇$
  - curvature $[∇_i,∇_i']$
  - curvature metric-dual $λ g [∇_i,∇_i']$
  - Ricci-curvature $1/λ "Ric"$
  - #link(<sectional_curvature>)[] $1/λ K$
  - scalar-curvature $1/λ "scal"$

用 signature $(3,1)$ 来表示时空 metric 时, 就是对 $(1,3)$ signature 乘以 $λ = -1$
