#import "../module/module.typ": *
#show: module

#let affine = "affine"

#tag("affine-space") 
#indent[
  有限维 $ℝ$ 向量空间 $V$ 的仿射空间是 原点选取 + 坐标/向量空间 $(a, v) in (L, V)$
  
  其中 $L$ 和 $V$ 在集合论上同构, 都同构到 $ℝ^n$
  
  用加法表示从原点 $a$ 出发的向量 $v$ 行走单位时间后的位置 $(a, v) ⇝ a + v in L$

  用减法表示两点 $a, b in L$ 之间的向量 $b - a in V$ 对应到唯一的 $v in V$ 使得 $b = a + v$

  仿射空间可以更换原点. 原点 $+ v$ 时, 坐标 $- v$

  仿射子空间等价于 原点 + 向量子空间
]
*Example* 三维中的二维子空间 ${x + y + z = 1}$ 的参数化 $(x, y, 1 - (x + y))$

#tag("affine-combination") 
#indent[
  点 $x_0, x_1 ,…, x_N$ 的仿射组合
  $
    affine(x_0 ,…, x_N) = sum_(0 .. N) t_i ⋅ x_i \
    t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 1
  $
  
  是良定义的仿射点, 或者说坐标定义不依赖于原点的选择. 设 $x_i$ 的坐标是 $v_i$, 则点 $sum_(0..N) t_i x_i$ 的坐标是 $sum_(0..N) t_i v_i$. 如果换原点 $v_i' = v_i + Δ$, 则点 $sum_(0..N) t_i x_i$ 的坐标也将跟着原点一起平移 $Δ$
  $
    sum t_i (v_i + Δ) = (sum t_i v_i) + (sum t_i) Δ = (sum t_i v_i) + Δ " by " sum t_i = 1
  $
  关于仿射组合的直觉, 最简单的例子是两点直线的比例点 #image("../image/affine-combination-1.png", width: 40%)

  可以使用嵌套的仿射组合
  
  例如, 点 $x_0, x_1, x_2$ 的线性组合 $t_0 x_0 + t_1 x_1 + t_2 x_2, sum t_i = 1$ 如果加上额外限制 $0 <= t_i <= 1$, 是三角形
  
  #image("../image/affine-combination-2.png", width: 30%)
  
  它可以认为是 $(s_0 y_0 + s_1 y_1), s_0, s_1 in ℝ, (s_0 + s_1) = 1$, 其中 
  - $y_0 = (t_0 x_0 + t_1 x_1), t_0, t_1 in ℝ, (t_0 + t_1) = 1$ 是 $x_0, x_1$ 的仿射组合, 代表三角形的由 $x_0, x_1$ 组成的边, 
  - $y_1 = x_2$
  
  嵌套标记为 $((x_0, x_1),x_2)$, 这种操作应该是结合的
  $
    (x_0, x_1, x_2) = ((x_0, x_1),x_2) = (x_0, (x_1, x_2))
  $
]
#tag("affine-coordinate") 点 $sum t_i x_i, sum t_i = 1$ 中的 $t_i$ 可以认为是基于点 $x_i$ 的一种坐标. 称为仿射坐标. *alias* 重心坐标 #tag("barycentric-coordinate")

*Example* #tag("center-of-affine-point-set") 仿射组合 $sum_(0..N) t_i x_i$ 的中点/重心的仿射坐标是 $t_i ≡ 1/(N + 1)$

#tag("affine-independent") 
#indent[
  仿射无关 := 每个 $k in 0 ,…, N$, 顶点 $x_k$ 不在 $x_0 ,…, x_N ∖ x_k$ 的仿射组合里面, 即 
  $
    forall t_i in ℝ, sum t_i = 1 \
    x_k != sum_(i = 0 .. N ∖ k) t_i x_i
  $
  这说明仿射组合的每个点 $x_k$ 都不是多余的. 直观上, $x_k$ 不在 $x_0 ,…, x_N ∖ x_k$ 展开的仿射子空间中 

  仿射相关 := 存在 $k in 0 ,…, N$, 顶点 $x_k$ 在 $x_0 ,…, x_N ∖ x_k$ 的仿射组合里面, 即 
  $
    exists t_i in ℝ, sum t_i = 1 \
    x_k = sum_(i = 0 .. N without k) t_i x_i
  $
  这说明仿射组合的点中存在一个 $x_k$ 是多余的. 直观上, $x_k$ 在 $x_0 ,…, x_N ∖ x_k$ 展开的仿射子空间中 

  仿射无关 <==> 选取其中一个点 e.g. $x_0$ 为原点后, $x_i - x_0$ 线性无关

  如果顶点 $x_0 ,…, x_N$ 仿射无关, 任何仿射组合点 $sum t_i x_i$ 都有唯一的坐标表示
  $
    sum t_i x_i = sum t'_i x_i ==> forall i, t_i = t'_i
  $
  
  特别地, 点 $x_k$ 的唯一坐标 $t_k = 1 and t_(1 ,…, N without k) = 0$

  $n$ 维仿射空间最多 $n+1$ 仿射无关的点. 从数量上相同于 $1$ 个原点 + $n$ 个向量

  如果是 $t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 0$ 而不是 $sum_(0 .. N) t_i = 1$, 虽然此时坐标 $sum t_i v_i$ 不会因换原点而改变, 但不是仿射点
]
#tag("affine-map-point-ver") *alias* #tag("simplicial-map")
 仿射映射 := 取另一个仿射空间的点 $y_1 ,…, y_n$ 作为顶点的映射到达点 $f(x_i) = y_i$, 其它非顶点的情况是 $f(sum t_i x_i) = sum t_i f(x_i)$

仿射映射 <==> 对于两个仿射空间选择原点后的两个线性空间, 线性映射 + 平移

注意, 线性映射和平移并不交换. 例子: $ℝ^2$ 的 $(1,0)$ 
- 先旋转 $90$ 度之后是 $(0,1)$, 再平移 $(1,0)$ 之后是 $(1,1)$
- 先平移 $(1,0)$ 之后是 $(2,0)$, 再旋转 $90$ 度之后是 $(2,0)$

#let convex = "convex"

#tag("convex-hull") $convex(x_0 ,…, x_N)$ := $x_0 ,…, x_N$ 的仿射组合 $affine(x_0 ,…, x_N)$ 再额外限制 $0 <= t_i <= 1$

#tag("simplex") := 由仿射无关的点构成的 convex hull

#image("../image/simplex.png", width: 70%)

#tag("extreme-point-of-convex-hull")
#indent[
  有时, 生成 convex hull 的点 $x_0 ,…, x_N$ 中, 有些点是多余的 (注意有限制 $0 <= t_i <= 1$), 可以由别的点生成. 极点 (extreme-point) 是其中无法由别的点生成的点
]
*Prop* extreme-point 已经生成原来的 convex hull, 且是最少生成

_Proof_ 在 $x_0 ,…, x_N$ 和 $sum t_i x_i$ 中不断剔除多余的点. extreme-point 属于 convex hull 且无法由别的点生成, 只能由自己生成, 所以是生成 convex hull 必须的

*Prop* 定义域在 $S = convex(x_0 ,…, x_N)$ 值域在 $ℝ$ 的仿射函数 $f$ 的最值可以在 extreme-point 处取得

_Proof_
#indent[
  设 $p$ 处取得最值

  $p$ 由极点生成 $p = sum t_i x_i, sum t_i = 1$

  对极点处的函数值定义它们的最值 
  $
    a &= cases(max_i (f(x_i)) " if " f(p) = max_(x in S) f(x), min_i (f(x_i)) " if " f(p) = min_(x in S) f(x)) \
    &= f(x_j)
  $

  $f$ 是仿射函数, 所以
  $
    f(p) 
    &= f(sum t_i x_i) \
    &= sum t_i f(x_i) \
    &<= sum t_i max_(i = 0 ,…, N) f(x_i) \
    "or " & >= sum t_i min_(i = 0 ,…, N) f(x_i) \
    &= a & space " by " sum t_i = 1 \
    &= f(x_j)
  $
  得到 $f(p) = a = f(x_j)$. 从而最值 $f(p)$ 可以在 extreme-point $x_j$ 上取得最值 $a = f(x_j)$
]

/// interval
#let intv = "intv"
/// open_interval
#let o_intv = "o_intv"

设有限维实仿射空间 $L$, 及其向量空间 $V$

*Def* $intv(x,y)$ := interval of $x,y in L$ := 由 $x,y$ 生成的 convex hull

*Def* $#o_intv (x,y)$ := open interval := $x,y$ 生成的 convex hull, 且额外地, $0 < t_x , t_y < 1$

*Def* #tag("convex") convex set $S$ := $forall x,y in S, intv(x,y) in S$

*Prop* convex set 的交集 convex

以下参考 @ref-34

#let core = "core"
/// linearly-accessible
#let lin_a = "lin_a"

*Def* #tag("core") 类似于拓扑内部. $x in core(S) := (x in S) and (forall v in V "with" v != 0, exists λ > 0, intv(x, x + λ v) ⊆ S)$

*Prop* #tag("finite-intersect-preserve-core") $core(S_1 ∩ S_2) = core(S_1) ∩ core(S_2)$. _Proof_ $⊆$ 显然. $⊇$ 用 $λ = min(λ_1, λ_2)$

*Def* #tag("linearly-accessible") 类似于拓扑闭包. $y in #lin_a (S) := (y in S) or (exists v in V "with" v != 0, #o_intv (y, y + v) ⊆ S)$

*Prop* $core (S) ⊆ S ⊆ #lin_a (S)$

let $S$ convex

*Prop* let $p in S, x in core(S)$. then $#o_intv (p, x) ⊆ core(S)$. 推论是 $core(core(S)) = core(S)$

_Proof_
#indent[
  let $t in (0,1)$. let $v in V "with" v != 0$
  
  我们需要证明 $(1 - t) p + t x in core(S)$
  
  需要证明存在 $λ > 0$ 使得 $intv((1 - t) p + t x, (1 - t) p + t x + λ v) ⊆ S$

  #image("../image/convex-open-interval-1.png")

  由于 $x in core(S)$, 存在 $λ_1 > 0$ 使得 $intv(x, x + λ_1 v) ⊆ S$

  $forall λ_2 in [0, λ_1], x + λ_2 v in S$

  由于 $S$ convex, $(1 - t) p + t (x + λ_2 v) in S$. 令 $λ = t λ_1$ 得到结论
]
*Prop* #tag("core-open-interval-core") let $y in #lin_a (S)$, let $x in core(S)$. then $#o_intv (x,y) ⊆ core(S)$

_Proof_
#indent[
  如果 $y in S$ 则 reduce to 上一个 prop

  #image("../image/convex-open-interval-2.png")

  由于 $y in #lin_a (S)$, 存在 $v in V$ 使得 $#o_intv (y, y + v) ⊆ S$

  由于 $x in core(S)$, 存在 $λ > 0$ 使得 $intv(x, x - λ v) ⊆ S$

  let $t in (0,1)$. 对于 $(1 - t) x + t y$, 存在 $ρ_1, ρ_2$ 使得 
  - $x - ρ_1 v in #o_intv (x, x - λ v)$
  - $x + ρ_2 v in #o_intv (y, y + v)$
  - $(1 - t) x + t y in #o_intv (x - ρ_1 v, y + ρ_2 v)$
  由于 $S$ convex, $x - ρ_1 v in S, y + ρ_2 v in S$, 所以 $(1 - t) x + t y in S$

  由于对所有 $t in (0,1)$ 成立, 所以存在稍微大一些的 $t_1$ 使得 
  - $(1 - t_1) x + t_1 y) in S$ 
  - $(1 - t) x + t y in #o_intv (x, (1 - t_1) x + t_1 y)$

  由于 $(1 - t_1) x + t_1 y in S, x in core(S)$, 根据上一个命题, $#o_intv (x, (1 - t_1) x + t_1 y) ⊆ core(S)$, 从而 $(1 - t) x + t y in core(S)$
]
*Prop* $S$ convex ==> $core(S)$ convex

_Proof_ 由前面的命题得到

*Prop* $S$ convex ==> $#lin_a (S)$ convex 

_Proof_
#indent[
  let $x,y in #lin_a (S)$. 我们要证明 $forall t in (0,1), (1 - t) x + t y in #lin_a (S)$ 

  #image("../image/convex-linearly-accessible.png")
  
  根据 linearly-accessible 定义, 存在 $v, w in V$ 使得 $#o_intv (x, x + v), #o_intv (y, y + w) in S$

  $forall λ in (0,1), (x + λ v), (y + λ w) in S$

  根据 convex, $(1 - t) (x + λ v) + t (y + λ w) in S$

  要么 $(1 - t) (x + λ v) + t (y + λ w) = (1 - t) x + t y$ 从而 $(1 - t) x + t y in S ⊆ #lin_a (S)$

  要么
  $
    (1 - t) (x + λ v) + t (y + λ w) 
    &= (1 - t) x + t y + ((1 - t) λ v + t λ w) \
    &= (1 - t) x + t y + λ ((1 - t) v + t w)
  $
  这蕴含, 存在 $(1 - t) v + t w in V$
  $
    #o_intv ((1 - t) x + t y, (1 - t) x + t y + (1 - t) v + t w) ⊆ S
  $
  从而 $(1 - t) x + t y in #lin_a (S)$
]
/// boundary
#let bd = "bd"

*Def* #tag("boundary") $bd (S) := #lin_a (S) ∖ core (S)$

仿射映射不保持边界. 简单的反例是, $ℝ^3$ 四面体映射到 $ℝ^2$ 矩形, 按照顶点对应生成仿射映射

*Prop* 设 $x in core(S), y in bd(S)$, 则 $f(t) = x + t (y - x)$ 在 $t > 1$ 时 $f(t) ∉ S$

_Proof_ 否则, 如果存在 $t > 1$ 使得 $f(t) in S$, 则 $y in #o_intv (f(0), f(t)) ⊆ core(S)$ 导出矛盾

*Prop* $S$ convex & $core(S) != ∅$ ==> $core(S) = core(#lin_a (S))$

_Proof_
#indent[
  $⊆$ 显然

  $⊇$
  #indent[
    let $x in core(#lin_a (S))$
  
    取 $y in core(S)$
    
    let $v = y - x$

    由于 $x in core(#lin_a (S))$, 存在 $λ > 0$ 使得 $intv(x, x + λ v) ⊆ #lin_a (S)$

    从而 $x + λ v in #lin_a (S)$

    $x + λ v = y + (1 + λ) v$

    $1/(1 + λ) in (0,1)$

    从而 $x in #o_intv (y, y + (1 + λ) v) ⊆ core(S)$
  ]
]

*Prop* $S$ convex & $core(S) != ∅$ ==> $#lin_a (S) = #lin_a (core(S))$

_Proof_
#indent[
  $⊇$ 显然

  $⊆$
  #indent[
    let $x in #lin_a (S)$
    
    let $y in core(S)$

    则 $#o_intv (y, x) ⊆ core(S)$

    取 $v = y - x$. 根据 $#lin_a$ 的定义, $x in #lin_a (core(S))$
  ]
]

注意: 有可能在 $L$ 里 $core(L)(S) = ∅$ 但在 $L$ 的一个仿射子空间 $F$ 里面 $core(F)(S) != ∅$

*Prop* $S$ convex & $core(S) != ∅$ ==> $#lin_a (#lin_a (S)) = #lin_a (S)$

_Proof_
#indent[
  $
    #lin_a (#lin_a (S)) 
    &= #lin_a (core (#lin_a (S))) \
    &= #lin_a (core (S)) \
    &= #lin_a (S)
  $
]

*Prop* #tag("finite-intersect-preserve-convex-closed") $#lin_a (S_1) = S_1, #lin_a (S_2) = S_2 ==> #lin_a (S_1 ∩ S_2) = S_1 ∩ S_2$

_Proof_ 易知 $#lin_a (S_1 ∩ S_2) ⊆ #lin_a (S_1) ∩ #lin_a (S_2)$

*Def* convex open $core(S) = S$, convex closed $#lin_a (S) = S$

可以对一般集合定义 convex hull 

*Def* $convex(S) := { sum t_i x_i, i in ℕ, t_i >= 0, sum t_i = 1, x_i in S }$

_Proof_ (of convex)
#indent[
  let $sum t_i x_i, sum s_j y_j in convex(S)$

  let $λ_1, λ_2 >= 0, λ_1 + λ_2 = 1$. 考虑
  $
    λ_1 (sum t_i x_i) + λ_2 (sum s_j y_j) 
  $
  系数求和
  $
    λ_1 sum_i t_i + λ_2 sum_j s_j = λ_1 + λ_2 = 1
  $
]
如果 $S$ convex 则 $convex(S) = S$. 特别地, 对一般的 $S$, 有 $convex(convex(S)) = convex(S)$

*Def* $dim S$ := 包含 $S$ 的仿射子空间的最小维数

*Prop* #tag("full-dim-iff-core-nonempty") $dim S = n <==> core(S) != ∅$

_Proof_ core nonempty <==> 可以展开 $n$ 个线性无关方向

*Prop* $convex(S) = { sum t_i x_i, 0 <= i <= dim(S) + 1, t_i >= 0, sum t_i = 1, x_i in S }$

_Proof_ 点数 $> dim(S) + 1$ 时, 仿射相关, 有多余的点

*Prop* #tag("convex-of-union") 设 $A, B$ convex 则 $convex(A ∪ B) = {(1 - λ) a + λ b : a in A, b in B, λ in [0,1]}$

_Proof_ 
#indent[
  用分块求和技术. 对于 $1 = sum_(i) (sum_(j(i)) t_(i, j(i)))$, 考虑 
  $
    sum_i sum_(j(i)) t_(i, j(i)) x_(i, j(i)) 
    = sum_i (sum_(j(i)) t_(i, j(i))) ⋅ (sum_(j(i)) frac(t_(i, j(i)),sum_(j(i)) t_(i, j(i))) x_(i, j(i)))
  $
  其中
  $
    sum_(j(i)) frac(t_(i, j(i)),sum_(j(i)) t_(i, j(i))) = 1
  $  
]
*Prop* 设 $A_1,A_2$ convex 且 $A_1 ∩ A_2 = ∅$. 则存在 $B_1,B_2$ convex 且 $(B_1 ∩ B_2 = ∅) and (B_1 ∪ B_2 = L)$ (即 $∁$ 集合互补) 且 $A_1 ⊆ B_1, A_2 ⊆ B_2$

_Proof_
#indent[
  分别包含 $A_1,A_2$ 且不相交的 convex set pair 可以定义偏序 $(S_1,S_2) < (S'_1,S'_2) := (S_1 ⊆ S'_1) and (S_2 ⊆ S'_2)$
  
  根据 #link(<maximal-linear-order-exists>)[], 取一个极大线序链, 分别对 pair 的分量取并集, 得到的东西记为 $(C,D)$

  容易证明 $C ∩ D = ∅$. 还需要证明 $C ∪ D = L$

  假设 $p in L ∖ (C ∪ D)$

  #image("/image/convex-separate-1.png", width: 80%)

  显然 $C ⊊ convex(C ∪ p)$, 根据 $(C,D)$ 的偏序极大性, $convex(C ∪ p) ∩ D != ∅$
  
  取 $d_1 in convex(C ∪ p) ∩ D$. 由于 $C ∩ D = ∅$, 故 $d_1 ∉ C$. 根据 #link(<convex-of-union>)[], $convex(C ∪ p) = {λ C + (1 - λ) p : λ in [0,1]}$, 于是存在 $c in C$ 使得 $d_1 in intv(c,p)$

  同理, 取 $c_1 in C ∩ convex(D ∪ p)$, $c_1 ∉ D$, 存在 $d in D$ 使得 $c_1 in intv(d,p)$

  $c,d,p$ 是不同的三点, 形成三角形. 在三角形内容易证明 $intv(c,c_1) ∩ intv(d,d_1) != ∅$. 但是 $intv(c,c_1) ⊆ C, intv(d,d_1) ⊆ D$, 这使得 $C ∩ D != ∅$, 导出矛盾
]

设 $C,D$ convex 且是集合互补. 设 $H = #lin_a (C) ∩ #lin_a (D)$

*Prop* $H = bd(C) = bd(D)$

_Proof_ 
#indent[
  let $x in #lin_a (C) ∩ #lin_a (D)$
  
  由于 $C,D$ 不相交, $x in core(C)$ 矛盾于 $x in #lin_a (D)$, $x in core(D)$ 矛盾于 $x in #lin_a (C)$
  
  所以 $x ∉ core(C)$ and $x ∉ core(D)$
  
  所以 $x in bd(C)$ and $x in bd(D)$

  于是 $H ⊆ bd(C), H ⊆ bd(D)$

  由于 $C,D$ 互补, $x in bd(C) <==> x in bd(D)$, 从而 $bd(C) = bd(D)$

  $bd(C) ⊆ #lin_a (C), bd(D) ⊆ #lin_a (D)$

  于是 $bd(C) = bd(D) ⊆ #lin_a (C) ∩ #lin_a (D) = H$
]

*Prop* $L = core(C) ⊔ H ⊔ core(D)$

*Prop* $x in C, y in D ==> intv(x,y) ∩ H != ∅$

_Proof_ 如果 $x in H$ or $y in H$ 则显然. 假设 $x in core(C), y in core(D)$. 定义 $z(t) = (1 - t) x + t y$. 取 ${t in [0,1] : z(t) in C}$ 的上确界 $t_0 in (0,1)$ 即可得到 $z(t_0) in H$

*Prop* 如果 $core(C) ⊔ core(D) != ∅$, 则 $H$ 是超平面

_Proof_
#indent[
  - $H$ 是平直的

    取 $x,y in H$. 我们要证明 $forall(t in ℝ), z(t) = (1 - t) x + t y in H$

    假设存在 $t > 1$ 使得 $z(t) ∉ H$. 假设 $z(t) in core(C)$. 由于 $x in #lin_a (C)$, 根据 #link(<core-open-interval-core>)[], $y in #o_intv (x,z) ⊆ core(C)$, 与 $y in bd(C)$ 矛盾 

  - $codim(H) = 1$
  
    取 $ϕ in H$ 作为原点. 取 $p in core(C)$. 假设 $x in D$, 则 $intv(p,x) ∩ H != ∅$, 存在 $v_1 in H$ 和 $α < 0$ 使得 $x = v_1 + α p$. 如果 $x in C$, 则用 $-p$ 代替 $p$

    #image("../image/convex-separate-2.png", width: 80%)
]

*Prop* #tag("hyperplane-separation") 超平面分离定理. 设 $A,B$ convex 且 $(core(A), B != ∅) and (core(A) ∩ B = ∅)$, 则存在超平面 $H$ 分离 $A,B$

注意: 分离是 $A ⊆ H_+, B ⊆ H_-$, 而不是严格分离 $A ⊊ H_+, B ⊊ H_-$

*Prop* $H$ 分离 $#lin_a (A), #lin_a (B)$

*Def* #tag("support-hyperplane") 支撑超平面, $S$ 在超平面 $H$ 的一边且 $bd(S) ∩ H != ∅$

*Prop* 如果 $S ⊆ H_-$ and $x in S ∩ H$ 则 $x in bd(S)$ (即 $S ∩ H ⊆ bd(S)$) _Proof_ 不可能是 $x in core(S)$, 且 $(S ∖ core(S)) ⊆ (#lin_a (S) ∖ core(S)) = bd(S)$

*Prop* let $x in bd(S)$, let $core(S) != ∅$, 则存在支撑超平面 $H$ 且 $x in H$

_Proof_ 对 ${x}, core(S)$ 用超平面分离定理, 因为 $bd(S) ∩ core(S) = ∅$. 于是 $x in H_+, S ⊆ H_-$. 取 $y in core(S)$, 于是 $#o_intv (x, y) ⊆ core(S) ⊆ H_-$, 通过反证可得 $x in H_-$, 于是 $x in H_+ ∩ H_- = H$

*Prop* $H_+ ∩ core(S) = ∅$. _Proof_ 反证法, 取 $x in H_+ ∩ core(S)$, 利用 $core$ 的定义和分离超平面的定义, 导出矛盾

*Prop* 仿射子空间 $A$ 且 $A ∩ bd(S) != ∅$ 且 $A ∩ core(S) = ∅$, let $core(S) != ∅$. 则存在 $x$ 的支撑超平面 $H$ 且 $A ⊆ H$

_Proof_ 设 $A ⊆ H_+, S ⊆ H_-$. 设 $x in A ∩ bd(S)$. $x in H$. 如果 $not (A ⊆ H)$, 取 $y in A ∖ H$. 则 $affine(x, y)$ 展开 $H$ 的一维补空间. 但是有以下矛盾
- $affine(x,y) ⊆ A$
- $H$ 的一维补空间不会 $⊆ H_+$

以下参考 @ref-35

/// order of boundary
#let ord = "ord"

*Def* #tag("order-of-boundary") $x in bd(S)$ 的所有支撑超平面的交集 $F = ⋂ { H "support at" x }$ 是一个仿射子空间, order $ord(x) := dim F$ 定义为其维数

*Def* #tag("vertex") 顶点 := order $0$ 边界点

*Prop* #tag("bd-convex-hull-core") let $x,y in bd(S)$. if $exists t in (0,1), (1 - t) x + t y in core(S)$, then $#o_intv (x, y) ⊆ core(S)$

*Prop* #tag("bd-convex-hull-bd") let $x,y in bd(S)$. if $exists t in (0,1), (1 - t) x + t y in bd(S)$, then $#o_intv (x, y) ⊆ bd(S)$

_Proof_ $#lin_a (S)$ convex and $x, y in #lin_a (S)$ so $#o_intv (x, y) ⊆ #lin_a (S)$. if not $#o_intv (x, y) ⊆ bd(S)$ then $exists t_0 in (0,1), (1 - t_0) x + t_0 y in core(S)$, hence $#o_intv (x,y) ⊆ core(S)$, contradict to $(1 - t) x + t y in bd(S)$

上面的两个命题可以推广到 $x_0 ,…, x_N in bd(S)$ (假设 $x_0 ,…, x_N$ 已经是 $convex(x_0 ,…, x_N)$ 的极点)

*Prop* #tag("support-hyperplane-at-core-of-convex-bd-subset") 设 $B ⊆ bd(S)$ convex, 设 $B$ 张开仿射子空间 $A$, 则任何包含 $x in core(B)$ ($A$ 里的 core) 的支撑超平面 $H$ 都有 $B ⊆ H$, 从而 $A ⊆ H$

_Proof_
#indent[    
  设 $y in B$. 如果 $y ∉ H$, 则 $y in core(H_-)$, 从而 $x - y$ 张开 $H$ 的补空间, 从而 
  $
    y + (1 + ε) (x - y) ∉ H_-
  $
  但是 $y + (1 + ε) (x - y) in A$ 在 $x in core(B)$ 附近, 从而 $ε$ 足够小时
  $
    y + (1 + ε) (x - y) in B ⊆ H_-
  $
  $y ∉ H_-$ 与 $y in H_-$ 矛盾 
]
*Prop* $ord(x) >= dim B$

$ord(x) > dim B$ 是可能的. 考虑 $ℝ^3$ 立方 $S = [0,1]^3$. 考虑 $x_0 = (0, 0, 0), x_1 = (1, 1, 0) in bd(S)$. 考虑 $x = 1/2 (x_0 + x_1) = (1/2, 1/2, 0)$. 则 $ord(x) = 2 > 1 = dim(B)$

*Prop* 如果存在 $H$ 使得 $B ⊆ H ∩ S$ (这种性质称为 $B$ 是暴露面) 则 $ord(x) <= dim(A)$ 从而 $ord(x) = dim(A)$

*Prop* 向量空间超平面与线性函数的对偶. 向量空间超平面 $H$ <==> 存在线性函数 $f : V -> ℝ$ 使得 $H = f^(-1)(0) = ker f$ 

由于 $λ != 0 => (f(v) = 0 <==> λ f (v) = 0)$, $V$ 的对偶空间 $V^⊺ = Lin(V,ℝ)$ 中的 $dim = 1$ 子空间 ${ λ f }$ 对应 $V$ 的 $codim = 1$ 子空间 $H = ker λ f$

*Prop* 向量子空间与线性函数子空间的对偶. $V$ 的 $k$ 维向量子空间 $F$ <==> $V^⊺$ 的 $n-k$ 维向量子空间 $F^⟂ := { f in V^⊺ : F ⊆ ker(f) }$. 直接的联系方式是 $F = ⋂_(f in F^⟂) ker(f)$ 

_Proof_ 选取 $V$ 的一个基 $e_1 ,…, e_n$. 则 $F$ 的基 $e_1 ,…, e_k$ 对应 $F^⟂ = span(e_(k+1)^⊺ ,…, e_n^⊺)$

*Prop* $F^(⟂ ⟂) ≃ F$. _Proof_ $e_i^(⟂ ⟂) ≃ e_i$

*Prop* 超平面 $H_0 ,…, H_N$ 对应的线性函数 $f_0 ,…, f_N$ 在 $V^⊺$ 中展开 $n-k$ 维子空间 <==> $⋂_(i = 0..N) H_i$ 是 $V$ 的 $k$ 维子空间

*Prop* $x$ is vertex <==> 存在超平面 $H_1 ,…, H_n$, 对应的线性函数 $f_1 ,…, f_n$ 线性无关, 是 $V^⊺$ 的基, $x = H_1 ∩ ⋯ ∩ H_n$

*Prop* $f ∉ F^⟂$, 则 $dim(f + F^⟂) = dim(F^⟂) + 1$, 从而 $dim(ker(f) ∩ F) = dim(⋂_(g in (f + F^⟂)) ker(g)) = dim(F) - 1$

*Prop* $F_1 ⊆ F_2 ==> F_2^⟂ ⊆ F_1^⟂$

_Proof_ 设 $f in F_2^⟂$, 则 $F_1 ⊆ F_2 ⊆ ker(f)$ 从而 $f in F_1^⟂$

*Prop* $F_1 ⊆ F_2 <==> F_2^⟂ ⊆ F_1^⟂$

*Def* 子空间的加法 $V + W := { v + w, v in V, w in W }$

*Prop* 子空间交集的维数 $dim(V ∩ W) = dim(V) + dim(W) - dim(V + W)$

_Proof_ 
#indent[
  $
    V ∩ W ↪^(i) V ⊕ W ↠^(s) V + W
  $
  其中 
  $
    i: map(V ∩ W, V ⊕ W, x, (x_V, x_W))
  $
  是两个嵌入单射的复合 $V ∩ W ↪ V ↪ V ⊕ W$. $W$ 同理
  $
    s: map(V ⊕ W, V + W, (v,w), v - w)
  $
  是满射

  $i,s$ 满足 exact seqence 性质, $i$ 单射, $s$ 满射, $im(i) = ker(s)$

  根据线性代数
  $
    im(s) ≃ frac(V ⊕ W, ker(s))
  $
  从而 
  $
    dim(V ∩ W) 
    &= dim(im(i)) \
    &= dim(ker(s)) \
    &= dim(V ⊕ W) - dim(im(s)) \
    &= dim(V) + dim(W) - dim(V + W)
  $
]
*Prop* 仿射超平面 $H = { x in L : f(x) = a }$ 的两边是 $H_- = { f(x) <= a }, H_+ = { f(x) >= a }$

*Prop* (同理 $H_+$)
- $core (H_-) = { f(x) < a }$
- $#lin_a (H_-) = H_-$
- $bd (H_-) = H$

以下处理两种多面体描述的等价
- 有限点的 convex hull $convex(x_0 ,…, x_N)$
- 有界的超平面包围 $H_(0 -) ∩ ⋯ ∩ H_(M -)$
假设 $x_0 ,…, x_N$ 已经是极点. 假设 $x_0 ,…, x_N$ 已经展开 $ℝ^n$, 否则, 在它们展开的维数更低的仿射子空间里讨论

*Prop* 对每个不包含原点的超平面 $H$, 存在唯一的 $f in Lin(V, ℝ) = V^⊺$ 使得 $H = {a in V : f(a) = 1}$ 

_Proof_ 向量空间超平面对应 $V^⊺$ 中 $f$ 展开的一维空间

等价的方程是 $λ f(a) = λ$, 其中 $λ != 0$

#tag("pole") 在一个坐标系中, $f(a) = 1$ 可以表示为 $f_1 a_1 + ⋯ + f_n a_n = 1$, 对应 $H^† = (f_1 ,…, f_n) in ℝ^n ≃ V$

#tag("polar-hyperplane") 反之, 在一个坐标系中, $(f_1 ,…, f_n) != 0$ 可以给出超平面 $(f_1 ,…, f_n)^† = H = {a in V : f_1 a_1 + ⋯ + f_n a_n = 1}$

$
  (f_1 ,…, f_n)^(† †) &= (f_1 ,…, f_n) \
  H^(† †) &= H
$

有以下一一对应
- $V ∖ 0$
- 不包含原点的仿射超平面

*Prop* $a in H ==> H^† in a^†$

_Proof_

#indent[
  $a = (a_1 ,…, a_n)$

  $H^† = (h_1 ,…, h_n)$

  $a in H ==> h(a) = 1 ==> h_1 a_1 + ⋯ + h_n a_n = 1$

  $a^† = {b in V : a_1 b_1 + ⋯ + a_n b_n = 1}$

  $H^† in a^†$
]

#tag("polar-dual") let $A ⊆ V$. $A^* := {a' in V : forall(a in A), a ⋅ a' <= 1} = ⋂_(a in A) a^†_-$

*Prop* $A ⊆ A^(**)$

_Proof_
#indent[
  $A^(**) = {a'' in V : forall(a' in A^*), a' ⋅ a'' <= 1}$

  $A^*$ 的定义告诉我们, for $a in A$
  $
    forall(a' in A^*), a' ⋅ a <= 1
  $
  从而 $a in A^(**)$
]

*Prop* 如果对每个 $b ∉ A$ 存在超平面 $H$ 有半严格分离 $b in core(H_+), A ⊆ H_-$, 则 $A^(**) ⊆ A$ 从而 $A^(**) = A$

_Proof_
#indent[
  我们证明如果 $b ∉ A ==> b ∉ A^(**)$

  $b in core(H_+) = { h ⋅ x > 1 }$ 

  $A ⊆ H_- ==> forall(a in A), h ⋅ a <= 1$

  但是 $A^(**)$ 的定义是 
  $
    A^(**) &= {a'' in V : forall(a' in A^*), a' ⋅ a'' <= 1} \
    &= {a'' in V : forall(a' in V) "if" (forall(a in A), a ⋅ a' <= 1) "then" a' ⋅ a'' <= 1}
  $ 
  让 $a'$ 对应 $h$. 在 "if" 分支 $forall(a in A), a ⋅ h <= 1$
  
  让 $a''$ 对应 $b$. 在 "then" 分支 $h ⋅ b > 1$

  $exists(h in V)$
  - $forall(a in A), a ⋅ h <= 1$
  - $not (h ⋅ b <= 1)$

  从而 $b ∉ A^(**)$
]
*Prop* 如果
- $S$ convex 
- $core(S) != ∅$
- $#lin_a (S) = S$ (convex closed)
则对每个 $y ∉ S$ 都有超平面半严格分离 $y, S$

_Proof_
#indent[  
  取 $x in core(S)$
  
  考虑 $f(t) = x + t (y - x)$
  
  对于 $T = {t in [0,1] : f(t) in S}$ 

  - 由 core 的定义, 存在 $δ > 0$ 使得 $[0, δ] ⊆ T$
  - $1 ∉ T$
  $T$ 有上确界 $r in (0,1]$

  $f(r) in #lin_a (S)$. 由于 $#lin_a (S) = S$ (convex closed), 有 $f(r) in S$, 从而 $r != 1$, 从而 $r < 1$
  
  $forall(ε in (r, 1]), f(r + ε) ∉ S$
  
  存在超平面 $H$ 分离 convex set $S$ 和 convex set $C = {f(t) : t in [r + ϵ, 1]}$

  线段 $C$ 可以线性延伸到 $S$ 内部, 所以不会有 $C ⊆ H$, 而是 $C$ 在 $H$ 的补空间方向
  
  从而 $H$ 半严格分离 $S$ 和 $f(1) = y$
]

*Prop* 如果 $A = convex(S)$ 则 $A^* = S^*$

_Proof_
#indent[
  $S ⊆ A ==> A^* ⊆ S^*$

  let $x' in S^*$
  $
    forall(a in A) \
      a = sum t_i x_i, sum t_i = 1, 0 <= t_i <= 1, x_i in S \
      a ⋅ x' = sum t_i (x_i ⋅ x) \
      x_i ⋅ x <= 1 \
      t_i >= 0 \
      a ⋅ x' <= sum t_i = 1      
  $
  so $x' in A^*$
]

*Prop* $S = convex(x_0 ,…, x_n)$ 满足
- $S$ convex 
- $core(S) != ∅$
- $#lin_a (S) = S$ (convex closed)

_Proof_ 
#indent[
  - $core(S) != ∅$
  #indent[
    $x = 1/(N+1) (x_0 + ⋯ + x_N) in core(S)$

    对 $v in V$, 设 $x + v = sum (1/(N+1) + c_i) x_i$, with $v = sum c_i x_i$, with $sum c_i = 0$

    于是 $x + λ v = sum (1/(N+1) + λ c_i) x_i$

    取 $λ$ 足够小即可使得 $1/(N+1) + λ c_i > 0$
  ]

  - $#lin_a (S) = S$ (convex closed)
  #indent[
    $y in #lin_a (S)$ ==> 存在 $v in V$ 使得 $#o_intv (y, y + v) ⊆ S$, 也即, 对每个 $λ in (0,1)$ 都有 $f(λ) = y + λ v in S$

    $convex(x_0 ,…, x_N)$ 由 $x_0 ,…, x_N$ 中从 $N$ 个取 $n+1$ 个形成的 simplex 的并集组成 $S = ⋃_(k = 1..m) Δ_k$

    每个 simplex $Δ_k$ 的顶点是仿射无关的, 线段 $f(λ)$ 在其中有唯一的仿射坐标 $t(k,j,λ) = a(k,j) + b(k,j) λ$

    $f(λ) in S ⊆ ⋃_(k = 1..m) Δ_k$

    $f(λ) in Δ_k <==> forall(j = 0..n), t(k,j) >= 0$

    对于 $k$, 这 $n + 1$ 个不等式解集在 $ℝ$ 上形成闭区间 $I_k$ 

    $f(λ) in Δ_k <==> λ in I_k$

    于是 $(0,1) ⊆ S ⊆ ⋃_(k = 1..m) Δ_k$ 

    $⋃_(k = 1..m) I_k$ 是 $ℝ$ 的闭区间, 于是 $(0,1)$ 的闭包 $[0,1]$ 也属于 $⋃_(k = 1..m) I_k$, 从而 $0$ 的属于某个 $I_k$

    $0 in I_k$ 也意味着 $t(k,j,0) >= 0$ 从而 $y = f(0) in Δ_k ⊆ ⋃_(k = 1..m) Δ_k = S$

    从而 $y in S$, 从而 $#lin_a (S) = S$ (convex closed)
  ] 
]

*Prop* $A ⊆ B ==> B^* ⊆ A^*$

_Proof_
#indent[
  if $b' in b^*$, then $forall(b in B), b ⋅ b' <= 1$

  $A ⊆ B ==> forall(a in A), a in B$, then $a ⋅ b' <= 1$

  so $b' in A^*$
]

*Prop* $A^(***) = A$

_Proof_
$
  A^* ⊆ (A^*)^(**) \
  A ⊆ A^(**) ==> (A^(**))^* ⊆ A^*
$

*Prop* $S = H_- = {x in V : f(x) <= 1}$ 满足
- $S$ convex 
- $core(S) != ∅$
- $#lin_a (S) = S$ (convex closed)

_Proof_
- $t_i >= 0 ==> f(sum t_i x_i) = sum t_i f(x_i) <= sum t_i = 1$
- $f(0) = 0 <= 1$. $f(0 + λ v) = λ f(v)$, 取 $λ$ 足够小
- let $y in #lin_a (S)$. \
  $forall(λ in (0, ε)), f(y + λ v) = f(y) + λ f(v) in S$ \ 
  即 $f(y) + λ f(v) <= 1$ \
  这是关于 $λ$ 的 $ℝ$ 值连续函数, 令 $λ -> 0$ 得到 $f(y) <= 1$ 从而 $y in S$

let $A$ convex, $core(A) != ∅$, $#lin_a (A) = A$

*Prop* 设 $b in bd(A)$. 则 $b^†$ 是 $A^*$ 的支撑超平面, support 的点包括 $H^†$, 它是 $A$ 的 support 在 $b$ 的支撑超平面 $H$ 的 polar-dual $H^†$

_Proof_
#indent[
  $#lin_a (A) = A ==> bd(A) ⊆ A ==> b in A$

  $A^* = ⋂_(a in A) a^†_- ==> A^* ⊆ b^†_-$

  $b in H ==> H^† in b^†$

  $A ⊆ H_- ==> forall(a in A), H^† ⋅ a <= 1$

  根据 $A^*$ 的定义, $H^† in A^*$

  于是 $b^†$ 是 $A^*$ 支撑超平面, support at $H^†$, 且 $H^† in bd(A^*)$
]

*Prop* 这是所有可能的 $A^*$ 的支撑超平面

_Proof_ 
#indent[
  设 $H$ 是 $A^*$ 的支撑超平面, support at $b in bd(A^*)$ 
  
  于是 $b^†$ 是 $A^(**) = A$ 的支撑超平面 support at $H^† in bd(A)$ 

  于是 $H^(††) = H$ 是 $A^*$ 的支撑超平面, support at $b^(††) = b$
]

*Def* 有限点 convex hull 生成的多面体叫做 V 多面体 (Vertex). 有界超平面包围生成的多面体叫做 H 多面体 (Hyperplane)

*Prop* H 多面体 $S$ 满足 
- convex
- $#lin_a (S) = S$ (convex closed)
_Proof_ 每个 $H_(i -)$ 满足以上两个条件, 有限交集也满足以上两个条件

类似于 V 多面体的极点, H 多面体也有极超平面. 对于 $⋂_(i = 0..N) H_(i -)$ 如果 $H_(i_1 -) ∩ ⋯ ∩ H_(i_m -) ⊆ H_(i_0 -)$ 则 $H_(i_0 -)$ 是多余的, 可去除.

#tag("extreme-hyperplane") *Def* 极超平面 := 无法包含其它超平面包围区域

*Prop* 极超平面已经生成原来的 H 多面体, 且是最少生成

_Proof_ 类似极点, 不断剔除多余的超平面

设 H 多面体 $S$ 有 $core(S) != ∅$. 假设 $H_(i -)$ 已经都是极超平面

#let facet = "facet"

*Def* #tag("facet") $facet(S, i) := H_i ∩ S$

*Prop* facet 是 $n-1$ 维的 H 多面体

_Proof_
#indent[
  $i != j$ ==> $H_i ∩ H_j = ∅$ 或者是 $n-2$ 维仿射子空间. 所以容易看出 $H_i ∩ S$ 也是 $H$ 多面体

  我们证明 $facet(S,i)$ 在 $H_i$ 中有非空 core

  define $S_i := ⋂_(j != i) H_(j -)$

  $H_i ∩ S_i = H_i ∩ S$, 证明是使用 $V = core(H_(i +)) ⊔ H_i ⊔ core(H_(i -)) = core(H_(i +)) ⊔ H_(i -)$

  由于极超平面, $not (H_(i -) ⊆ S_i)$

  于是存在 $x in S_i ∖ H_(i -)$

  取 $y in core(S)$, 有 $y in core(S_i)$

  于是 $#o_intv (x,y) ⊆ core(S_i)$

  $x in core(H_(i +)) , a in core(H_(i -)) ==> #o_intv (x,y) ∩ H_i != ∅$

  $1$ 维 $#o_intv (x,y)$ 和 $n-1$ 维 $H_i$ 相交于一点 $z$

  $z in #o_intv (x,y) ==> z in core(S_i)$

  $S_i$ 是 $n$ 维的, 于是 $z in core(S_i)$ 可以对 $n$ 维所有方向发射, 特别地, 对 $H_i$ 的所有方向发射, 从而 $z in core(H_i)$, 从而 $z in core(H_i ∩ S_i) = core(H_i ∩ S)$ 从而 $H_i ∩ S$ 是 $n-1$ 维的
]

*Prop* $bd(S) = ⋃_(i = 0..N) facet(S,i)$ (从而 H 多面体的 facet 都是支撑超平面)

_Proof_
#indent[
  $
    bd(S) 
    &= S ∖ core(S) \
    &= S ∖ core(⋂_(j = 0..N) H_(j -)) \
    &= S ∖ (⋂_(j = 0..N) core(H_(j -))) \
    &= S ∩ (⋂_(j = 0..N) core(H_(j -)))^∁ \
    &= S ∩ (⋃_(j = 0..N) core(H_(j -))^∁) \
    &= ⋃_(j = 0..N) (S ∩ core(H_(j -))^∁) 
  $
  考虑

  - $S =  ⋂_(i = 0..N) H_(i -) = (⋂_(i = 0..N ∖ j) H_(i -)) ∩ H_(j -) = S_j ∩ H_(j -)$

  - $core(H_(j -))^∁ = H_(j +)$

  - $H_(j -) ∩ H_(j +) = H_j$

  于是
  $
    ⋃_(j = 0..N) (S ∩ core(H_(j -))^∁) 
    &= ⋃_(j = 0..N) (S_j ∩ H_j)  \
    &= ⋃_(j = 0..N) (S ∩ H_j) \ 
    &= ⋃_(j = 0..N) facet(S,j)
  $
  即 $bd(S) = ⋃_(j = 0..N) facet(S,j)$
]

*Def* 递归地定义 $S$ 的 $k$ face 为 $S$ 的 $k+1$ face 的 facet

*Prop* 递归地, $k$ face 都来自某些 facet ($n-1$ face) 的交集

*Def* Two $k$-faces are adjacent if their intersection is a $(k − 1)$-face

*Prop* 设 $x in bd(S)$. 则 $x$ 的所有支撑超平面的交集等于包含 $x$ 的所有 facet 的交集. _Proof_ facet 展开极超平面, 所以如果支撑超平面不是 facet 展开, 则是多余的

*Def* #tag("extreme-point") 一般 convex set $S$ 的极点定义为 $x in bd(S)$ 且 $S ∖ x$ convex

*Prop* $x in #lin_a (S)$ 且 $S ∖ x$ convex ==> $x in bd(S)$. _Proof_ $x in core(S)$ ==> $S ∖ x$ 不是 convex

*Prop* $x in bd(S)$ 是极点 <==> $forall(a, b in S), x ∉ #o_intv (a,b)$

*Prop* $x in bd(S)$ 是极点 <==> $forall(a, b in bd(S)), x ∉ #o_intv (a,b)$

*Prop* 顶点 ==> 极点 (一般 convex set $S$)

_Proof_
#indent[
  我们证明 $x in bd(S)$ 非极点 ==> 非顶点
  
  非极点 ==> 存在 $y_1, y_2$ 使得 $x in #o_intv (y_1, y_2)$
  
  根据 #link(<core-open-interval-core>)[], $y_1, y_2 in bd(S)$
  
  根据 #link(<bd-convex-hull-bd>)[], $intv(y_1, y_2) ⊆ bd(S)$
  
  根据 #link(<support-hyperplane-at-core-of-convex-bd-subset>)[], $ord(x) >= 1$, 从而 $x$ 不是顶点
]

*Prop* 对于 H 多面体 $S$, 如果 $ord(x) = k$, 则 $x$ 在某个 $k$ face 的 core

_Proof_ 
#indent[
  根据 #link(<support-hyperplane-at-core-of-convex-bd-subset>)[], 如果 $k < n-1$, 则 $x$ 不会在 $n-1$ face 的 core, 所以在 $n-1$ face 的 facet
  
  递归地, 直到 $x$ 在 $k + 1$ face 的 facet, 然后 $x$ 可能在
  -  $k$ face 的 core, 或者 
  -  $k$ face 的 facet
  但后者递归地给出 $ord(x) < k$
]

*Prop* $k$ face 数量有限. 特别地, $0$ face, 即, 顶点的数量有限

*Prop* 对于 H 多面体, 顶点就是极点

_Proof_
#indent[
  我们证明 $x in bd(S)$ 极点 ==> 顶点. 如果不是顶点, 则 $x$ 在 $k >= 1$ 的 convex 的 face 的 core 里, 而 face 都在 $bd(S)$ 上, 且 $bd(S) ⊆ S$, 于是 $x$ 不是极点
]

一般情况下, 极点无法蕴含顶点. 考虑 $ℝ^2$ 抛物线 $y = x^2$. 在 $O = (0,0)$ 处的支撑超平面只有 $y = 0$, 所以 $ord(O) = 1$, 但是 $O$ 是极点

*Prop* 对于 V 多面体 $S = convex(x_0 ,…, x_N)$ 有 $S^* = ⋂_(i = 0..N) (x_i^†)_- = {x_0 ,…, x_N}^*$

_Proof_
#indent[
  ${x_0 ,…, x_N} ⊆ convex(x_0 ,…, x_N) = S$ 所以 $S^* = ⋂_(a in S) a_-^† ⊆ ⋂_(i = 0..N) (x_i^†)_-$
  $
    S^* 
    &= ⋂_(a in S) a_-^† \
    &= {a' in V : forall(a in S), a ⋅ a' <= 1} \
    &= {a' in V : (sum t_i x_i) ⋅ a' <= 1 "with" sum t_i = 1, t_i >= 0}
  $
  假设 $a' in ⋂_(i = 0..N) (x_i^†)_-$, 则 $And_(i = 0.. N) x_i ⋅ a' <= 1$, 从而 
  $
    (sum t_i x_i) ⋅ a' 
    &= sum t_i (x_i ⋅ a') \
    &<= sum t_i = 1
  $
  从而 $a' in S^*$. 于是 $⋂_(a in S \ a != 0) a_-^† ⊇ ⋂_(i = 0..N) (x_i^†)_-$
]
我们已经假设过 $S = convex(x_0 ,…, x_N)$ 是 $n$ 维区域, 但如果是 $< n$ 维区域, 则 $S^*$ 可能不是有界的

*Def* #tag("bounded") 有界 := 每个直线与 $S$ 交集是有界区间

*Prop* 交集有界区间的端点在 $bd(S)$

*Prop* 如果有界且 $#lin_a (S) = S$ (convex closed) 则直线与 $S$ 交集是有界闭区间

以下假设 $S$ 有界且 convex closed

*Prop* $S = convex(bd(S))$

_Proof_ 取 $x in S$, 取包含 $x$ 的直线, 与 $S$ 相交得到闭区间, 且端点在 $bd(S)$

*Prop* $L$ 的仿射子空间 $F$ 是 convex closed 的. _Proof_ 维数 $>= n-1$ 已经证明了. 维数 $k < n-1$ 的是 $n-k$ 个 convex closed 的交集, 从而根据 #link(<finite-intersect-preserve-convex-closed>)[], $F$ 也是 convex closed

#let extreme = "extreme"

*Prop* 如果存在 $L$ 的仿射子空间 $F$ 使得 $A ⊆ F$ 则 $L$ 和 $F$ 里的 $#lin_a (A)$ 都是相同的, 从而 $#lin_a (A) ⊆ F$ 

_Proof_ 显然 $F$ 里的 $#lin_a (A)$ 蕴含 $L$ 里的 $#lin_a (A)$. 反之, 设 $x$ 属于 $L$ 的 $#lin_a (A)$, 则存在 $y in A ⊆ F$ 使得 $#o_intv (x,y) ⊆ F$, 从而由于 $F$ 是 convex closed 的, $x in F$, 从而 $x$ 属于 $F$ 里的 $#lin_a (A)$

*Prop* 如果 $A ⊆ F$ 则 $A$ 在 $L$ 和 $F$ 里 convex 都是相同的 

*Prop* $L$ 和 $F$ 里的 $extreme(A)$ 都是相同的, 从而 $extreme(A) ⊆ F$

*Prop* 设 $H$ 是支撑超平面, 则 $extreme(S ∩ H) = extreme(S) ∩ H$

_Proof_
#indent[
  $⊆$:
  #indent[
    let $x in extreme(S ∩ H)$. 由于 $S,H$ convex closed 所以 $S ∩ H$ 也是, 从而 $extreme(S ∩ H) ⊆ S ∩ H$

    从而 $x in #lin_a (S)$ 且 $x in H$

    需证明 $x in extreme(S)$

    let $y_1,y_2 in S ⊆ H_-$
    
    如果 $y_1 ∉ H$ 则 $y_1 in core(H_-)$ 
    
    则 $#o_intv (y_1,y_2) ⊆ core(H_-)$ 
    
    从而 $#o_intv (y_1,y_2) ∩ H = ∅$ 
    
    从而 $x ∉ #o_intv (y_1,y_2)$

    $y_2 ∉ H$ 的情况同理

    如果 $y_1,y_2 in H$, 则 $y_1,y_2 in S ∩ H$ 从而由于 $x in extreme(S ∩ H)$, 有 $x ∉ #o_intv (y_1,y_2)$

    于是 $x in extreme(S)$
  ]
  $⊇$:
  #indent[
    let $x in extreme(S) ∩ H$

    由于 $S,H$ convex closed 所以 $S ∩ H$ 也是 
    
    所以 $extreme(S) ⊆ S$ 从而 $x in S ∩ H$ 从而 $x in #lin_a (S ∩ H)$

    需要证明 $x in extreme(S ∩ H)$

    let $y_1,y_2 in S ∩ H$. 由于 $y_1,y_2 in S$ 以及 $x in extreme(S)$, 有 $x ∉ #o_intv (y_1,y_2)$

    从而 $x in extreme(S ∩ H)$
  ]
]
*Prop* 存在极点, 即, $extreme(S) != ∅$, 且 $S = convex(extreme(S))$

_Proof_
#indent[
  对维数归纳. 一维是有界闭区间, 极点是端点

  我们已经证明过 $S = convex(bd(S))$ 和 $convex ∘ convex = convex$, 所以只需证明 $bd(S) ⊆ convex(extreme(S))$

  设 $x in bd(S)$. 取 $x$ 的支撑超平面 $H$

  $S$ convex closed 且有界, 从而 $S ∩ H$ 在 $H$ 中 convex closed 且有界. 且 $x in S ∩ H$

  $dim H = n-1$, 根据归纳, $S ∩ H = convex(extreme(S ∩ H))$

  然而
  $
    convex(extreme(S ∩ H)) 
    &= convex(extreme(S) ∩ H) \
    &⊆ convex(extreme(S)) ∩ H \
    &⊆ convex(extreme(S))
  $
  从而 $x in convex(extreme(S))$, 从而 $bd(S) ⊆ convex(extreme(S))$
]
*Prop* 有界 H 多面体 ==> V 多面体

_Proof_ 
#indent[
  顶点有限 ==> 极点有限, $extreme(S) = {x_0 ,…, x_N}$
  
  有界 ==> 极点生成 $S$, 即 $S = convex(extreme(S)) = convex(x_0 ,…, x_N)$
]

*Prop* $n$ 维有界 H 多面体 ==> $n$ 维 V 多面体

*Prop* 设 $S$ 是 V 多面体, 则 $S$ 有界

_Proof_
#indent[
  let $y in S$
  
  let $y = sum t_i x_i, sum t_i = 1, 0 <= t_i <= 1$

  let $y + λ v = sum (t_i + λ c_i) x_i, sum c_i = 0$

  由于 $y + λ v in S <==> 0 <= (t_i + λ c_i) <= 1$, 故 $λ$ 有上下界, 以及上下确界
]

*Prop* 在 $>= 2$ 维的空间中, 如果 $I$ 是不经过原点的
+ 线段
+ 射线
+ 直线
则 polar-dual $I^*$ 是
+ 两个不经过原点超平面包围
+ 一个不经过原点的超平面和一个经过原点的超平面包围
+ 退化到 $< n$ 维
_Proof_
#indent[
  + 设 $I = convex(x_0, x_1)$. 则 $I^* = {y: x_0 ⋅ y <= 1} ∩ {y: x_1 ⋅ y <= 1}$
  + 设 $I = {x_0 + t v : t >= 0}$
  
    $y in I^* <==> forall(t >= 0), (x_0 + t v) ⋅ y <= 1$

    展开得到 $x_0 ⋅ y + t (v ⋅ y) <= 1$ 

    为了让这个不等式对所有 $t -> ∞$ 成立, 需要满足 $v ⋅ y <= 0$. 且当 $t = 0$ 时, 需要满足 $x_0 ⋅ y <= 1$

    $x_0 ⋅ y <= 1$ 是不经过原点的超平面包围. $v ⋅ y <= 0$ 是经过原点的超平面包围
  + 设 $I = {x_0 + t v : t in ℝ}$

    为了让对所有 $t in ℝ$ 成立 $x_0 ⋅ y + t (v ⋅ y) <= 1$, 需要 $v ⋅ y = 0$, 这是一个经过原点的 $n-1$ 维超平面
]

*Prop* 设 $S$ 是 $n$ 维 V 多面体, 以 $core(S)$ 的某点为原点建立坐标系, 则
+ polar-dual $S^*$ 有界, 从而 $S^*$ 是有界 H 多面体
+ $core(S^*)$ 包含原点, 从而根据 #link(<full-dim-iff-core-nonempty>)[], $S^*$ 是 $n$ 维的

_Proof_
#indent[
  + $I = {y + λ v in S^*}$, 则 $I ⊆ S^*$, 从而 $S ⊆ I^*$. 
  
    $I$ 是线段 or 射线 or 直线, 但是 $core(S)$ 包含原点, 所以 $S ⊆ I^*$ 使得 $I^*$ 只可能是两个不经过原点超平面包围, 从而 $I$ 是线段
    
  + $S^* = ⋂_(i = 0..N) (x_i^†)_-$ 且 $core(x_i^†)_-$ 都包含原点
]

*Prop* $n$ 维 V 多面体 ==> $n$ 维有界 H 多面体

_Proof_ $S$ 是 $n$ 维 V 多面体 ==> 以 $core(S)$ 的某点作为原点建立坐标系, $S^*$ 是 $n$ 维有界 H 多面体且 $core(S^*)$ 包含原点 ==> $S^*$ 是 $n$ 维 V 多面体 ==> $S = (S^*)^(*)$ 是 $n$ 维有界 H 多面体

*Prop* $n$ 维 V 多面体 <==> $n$ 维有界 H 多面体

*Prop* 设 $S$ 是有界多面体, 设 $f : L -> L'$ 是仿射函数, 则 $f(S)$ 是有界多面体. _Proof_ 用 V 多面体

和 $V$ 多面体的情况类似, $ℝ$ 值仿射函数的最值可以在极点取到, 根据 $convex(extreme(S)) = {sum_(i = 0..m) t_i y_i : m in ℕ, sum t_i = 1, t_i >= 0, y_i in extreme(S)}$

更一般地, 连续的 convex 函数 ($forall(t in [0,1]), f((1 - t) a + t b) <= (1 - t) f(a) + t f(b)$) 的最大值或者连续的 concave 函数 ($-f$ 是 convex 函数) 的最小值可以在极点取到 