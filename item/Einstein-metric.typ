#import "/module/module.typ": *
#show: module

cf. #link(<curvature-of-metric.typ>)[]

#show "Δ": it => text(it, fill: rgb("#0056e1"))

#tag("Einstein-Lagrangian") := $("scal" - 2 Λ) #d Vol$. 在坐标中 $#d Vol = |g| #d x$

*Question* 纯量曲率用于作用量, 有什么好的解释吗?

作用量包含 $g$ 的二阶微分, 所以不能用一般的一阶微分 action 理论

scalar-curvature 不是 homology-scalar-curvature, 后者的积分 (比例于 $χ(M)$?) is homology invariant, 故总是变分到零, have trivial eq

*Prop* 对 $g$ 的变分 $Δ "scal" ∼ - "Ric" + "divergence term", Δ|g| ∼ 1/2 |g| g$

所以 product rule 给出 

*Prop* Einstein-Lagrangian 中 $Δ ("scal" |g|) ∼ |g| ("Ric" - 1/2 "scal" g) + "divergence term"$

_Proof_
#indent[  
  *Prop* $det$ 的微分是 $∂ det(A) = det A tr(A^(-1) ∂ A) = det A tr(∂ log A)$

  _Proof_ 
  #indent[
    $det(X) = det(A) det(A^(-1) X)$ and $∂ det(𝟙) = tr$. 所以
    
    $
      &∂ det(A^(-1) X)("at" A)("direct" Δ X) \
      =& ∂ det ("at" 𝟙)("direct" ∂(A^(-1) X) ("at" A)("direct" Δ X)) \
      =& tr(A^(-1) Δ X)
    $
  ]
  所以 volume form 的变分是
  $
    Δ|g| &= Δ|det g|^(1/2) \
    &= 1 / 2|det g|^(1/2) tr(g^(-1) Δ g)
  $
  将 $"Ric"$ 作为矩阵, 则 adjoint $(g ⋅)^†$ 可以写为
  $
    "scal" &= (g ⋅)^† "Ric" \
    &= tr(g^(-1) "Ric") 
  $
  *Prop* $A ⇝ A^(-1)$ 的微分是 $- A^(-1) (∂ A) A^(-1)$. _Proof_ 使用 $0 = ∂ 𝟙 = ∂ (A A^(-1)) = ∂ A ⋅ A^(-1) + A ⋅ ∂(A^(-1))$

  所以 scalar-curvature 的变分是
  $
    Δ"scal" = tr(- g^(-1) (Δ g) g^(-1) "Ric") + tr(g^(-1) Δ "Ric")
  $
  对以下进行繁琐的计算

  - $Δ "Ric" = Δ ((g #cvt-prod)^† R)$
  - $Δ R$
  - $Δ Γ$

  这可能对计算是有用的 $∇ (g #cvt-prod)^† = (g #cvt-prod)^† ∇$ and $∇ (g ⋅)^† = (g ⋅)^† ∇$
  $
    tr (g^(-1) Δ "Ric") = ∇^† ∇ tr (g^(-1) Δ g) + ∇_⊙^† ∇_⊙^† Δ g
  $
  是散度量 (cf. #link(<Laplacian-of-tensor-field.typ>)[] for $∇^†,∇_(⊙),∇_(⊙)^†$)

  - $tr(g^(-1) Δ g) = g(Δ g, g)$
  - $tr(- g^(-1) (Δ g) g^(-1) "Ric") = g(Δ g, - "Ric")$
  
  ==>

  - $Δ|g| = 1 / 2 |g| g(Δ g, g)$
  - $Δ "scal" = g(Δ g, - "Ric") + "divergence term"$

  令作用量的变分是零
  $
    0 = - integral #d x 
    |g| g (Δ g , "Ric" - (1/2 ⋅ "scal" - Λ) ⋅ g)
  $
]
forall $Δ g$, 所以

#tag("Einstein-equation") #tag("Einstein-metric")

$ "Ric" - (1 / 2 ⋅ "scal" - Λ) ⋅ g = 0 $

等价于 (by taking $(g ⋅)^†$)
$
  "Ric" &= (2 Λ) / (n-2) ⋅ g \
  &= 1 / n ⋅ "scal" ⋅ g
$
with $Λ = (1/2 - 1/n) "scal"$

i.e. $"Ric"$ 常值比例于 $g$ 且 scalar-curvature 是常数

等价地
$
  "tr-free-Ric" &= 0 \
  "scal" &= (2Λ) / (n - 2)
$
i.e. trace-free Ricci-curvature 是零, 且 scalar-curvature 是常数

Einstein-equation 是 $g$ 的二阶非线性 PDE

when $n = 4$, $"Ric" = Λ ⋅ g$ with $Λ = 1/4 "scal"$

存在相互作用时, 尽管 $T = "Ric" - (1/2 ⋅ "scal" - Λ) ⋅ g != 0$, 仍然有散度是零 $∇_⊙^† T = 0$

_Proof_
#indent[
  $g$ 不需要是 Einstein-metric

  δ diffeomorphism $X$ 会生成 metric 的一阶无穷小量 $Δ g = ∇_⊙ X$ 
  
  因为 Einstein 作用量是微分同胚不变的, 所以 δ diffeomorphism $X$ 变分的结果是零
$
  0 &= integral g(Δ g, T) #d Vol(g) \
  &= integral g(∇_⊙ X, T) #d Vol(g) \
  &= integral g(X, ∇_⊙^† T) #d Vol(g)
$
forall $X$, 所以 $∇_⊙^† T = 0$
$
  ∇_⊙^† ("Ric" - (1 / 2 ⋅ "scal" - Λ) ⋅ g) = 0
$
这将会给出 $ ∇_⊙^† "Ric" = ∇_⊙ "scal" $
]
*Prop* 对于 Einstein 作用量, δ-isometry 的能动张量将会是零

moduli-space-of-Einstein-metric := diffeomorphism 作用于 metric 空间的 orbit 空间, 限制在 Einstein-metric space. isotropy-group is isometry

*Question* 即使我们知道每个流形的所有 Einstein-metric, 也仍然不知道应该选择哪个流形

*Question* constant-sectional-curvature or simple-symmetric-space 的流形分类似乎是令人满意的

当 dimension $>= 4$ 存在流形不允许 constant-sectional-curvature metric 但允许 Einstein-metric

#tag("Schwarzschild-metric") in $ℝ^(1,3)$ := 渐进平直静态球对称, 作为 non-relativity gravity in $ℝ^(3)$ 的最简单推广. 在空间 $ℝ^3$ 使用球坐标
$
  g = (1 - (2m)/r) #d t^2 - ((1 - (2m)/r)^(-1) #d r^2 + r^2 g_(𝕊^2))
$
with $"scal" = 0$ and $"Ric" = 0$. 从而只有 conformal curvature 

推广到 $ℝ^(1,n-1)$?
$
  g = (1 - (2m)/r^(n-3)) #d t^2 - ((1 - (2m)/r^(n-3))^(-1) #d r^2 + r^2 g_(𝕊^(n-2)))
$
#tag("Schwarzschild-metric-derivation") (@ref-9, ch.4)
#indent[
  假设 metric 球对称
  $
    g = f_t (r)^2 #d t^2 - (f_r (r)^2 #d r^2 + f_(𝕊^2) (r)^2 g_(𝕊^2))
  $
  Einstein 方程 with $Λ = 0$ 给出 $f_r = (a f_t)^(-1), f_(𝕊^2) = r$
  
  渐进平坦 i.e. 逼近 $ℝ^(1,3)$ metric $#d t^2 - (#d r^2 + r^2 g_(𝕊^2))$ when $r -> ∞$, 给出 $a = 1$, 然后 Einstein 方程给出 $f_t (r)^2 = 1 - (2m)/r$
]
#tag("Schwarzschild-metric-approximate-to-Newton-gravity") 
#indent[
  为了逼近 non-relativity, 恢复一些常量 $G,c,x_0 = c t$. 此时 Schwarzschild-metric
  $
    g = (1 - (2 G M)/(c^2 r)) c^2 #d t^2 - ((1 - (2 G M)/(c^2 r))^(-1) #d r^2 + r^2 g_(𝕊^2))
  $
  在时间坐标, 对这个 metric, 从相对论点粒子作用量近似到非相对论 
  $
    m c |vel(x)| &= m c^2 (
      1 - (2 G M)/(c^2 r) - 1/c^2 ((1 - (2 G M)/(c^2 r))^(-1) v_r^2  + r^2 v_(𝕊^2)^2 )
    )^(1/2) \

    &= m c^2 (
      1 - 1/2(
        (2 G M)/(c^2 r) + 1/c^2 (v_r^2 + r^2 v_(𝕊^2)^2)
      ) + o(1/c^2)
    ) \

    &= m c^2 - (1/2 m v^2 - (- (G M m)/r)) + o(1)
  $
  - $m c^2$ 是静能量, 将会变分到 $0$
  - $1/2 m v^2$ 是非相对论点粒子的动能
  - $- (G M m)/r$ 是非相对论引力势能
  - $o(1)$ 在极限 $lim_(c -> ∞)$ 时消失
]
一些 Einstein-metric 例子
- #link(<constant-sectional-curvature-imply-Einstein-metric>)[常值截面曲率]
- #link(<simple-symmetric-space>)[]

Einstein ==> harmonics. Einstein-equation satisfy eq defined by Lagrangian $|R|^2 #d Vol$