#import "/module/module.typ": *
#show: module

#tag("orientation-of-real-linear-space") $ℝ^n$ 方向

$A in GL(n,ℝ), det A != 0$

$ℝ ∖ 0 = ℝ_(< 0) ⊔ ℝ_(> 0)$

$GL(n,ℝ) = det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$

有两个方向. 对于 $ℝ^n$ 向量基, 交换一次顺序 $e_i <-> e_j$ 会使得方向改变, 引入 $-1$ 因子. 这和交错张量有相似之处. 方向定义为基的同向 quotient, 等价于 $GL(n,ℝ)$ 的 $det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$ 分解

#tag("orientation-of-boundary-of-simplex") 
#indent[
  simplx 有向边界. simplex ${x_0 ,…, x_n}$ 边界 ${x_0 ,…, x_n without x_i}$ 的方向是, 给边界所在的 $n-1$ 仿射子空间定义方向, 使得内部 $A$ 在 $n$ 维正方向, 外部 $A^∁$ 在 $n$ 维负方向 

  如果对边界的边界继续定义方向, 就会发现相邻方向抵消

  simplex 顶点根据 $x_0 -> x_1 -> ⋯ -> x_n$ 可以构造 $ℝ^n$ 有向基. 置换使得方向相差 $sign(μ)$

  选取 $x_0 ,…, x_n$ 为 $ℝ^n$ 正方向后, 边界的方向是 $(-1)^(i-1) x_0 ,…, x_n without x_i$

  *Example* 四面体, 右手定则, 拇指指向四面体内部得到边界方向 (图片的顶点的指标从 $1$ 而不是 $0$ 开始)

  #image("/image/orientation-of-simplex.jpg", width: 100%)
]
#tag("orientable-low-dim-polyhera") 多面体 #link(<orientation-of-boundary-of-simplex>)[可定向] 定义为, 用 simplex 构造多面体时, 能够对所有 $k$ simplex 定义兼容的方向, 使得相邻两个 $k$ simplex $A,B$ 的 $k-1$ 相接边界 simplex 的方向兼容 i.e. 方向 $O$ 对应 simplex $A$ 的内部和 simplex $B$ 的外部. 方向 $-O$ 对应 simplex $B$ 的内部和 simplex $A$ 的外部. i.e. simplex 分割有良定义内部和外部

#tag("Mobius-strip") *Example* 不可定向的 Mobius 型多面体 (image modified from wiki)

#image("../image/Moebius.svg", width: 50%)

不管怎么定义每个 $k$ simplex 的方向, 都存在一对相邻 $k$ simplex $A,B$ 的 $k-1$ 相接边界 simplex 的方向不兼容. i.e. simplex 分割没有良定义的内部和外部

从初始 $k$ simplex 开始, 不断传递地对相邻 $k$ simplex 定义兼容的方向, 绕一圈会导致相接边界 simplex 的方向不兼容. 方向 $O$ 都对应 $A,B$ 内部, 方向 $-O$ 都对应 $A,B$ 外部

#tag("simplex-chain") simplex chain

#tag("boundary-operator") 
#indent[
  边界算子 $∂$

  boundary $c_k = ∂_(k+1) c_(k+1)$

  *Example* 

  - boundary-op-not-injective

    #image("/image/boundary-op-not-injective-1.jpg", width: 70%)

    #image("/image/boundary-op-not-injective-2.jpeg", width: 80%)

  - #tag("tri-intersect-boundary")

    #image("/image/tri-intersect-boundary.jpg", width: 40%)

  cycle $∂ c = 0$

  $∂^2 = 0$ or $∂_k ∂_(k+1) = 0$

  $im ∂ ⊂ ker ∂$ or $im ∂_(k+1) ⊂ ker ∂_k$
]
#tag("simplex-homology") 
#indent[
  k-th homology $H_k (ℝ^n) = (ker ∂_k)/(im ∂_(k+1))$

  where $ker ∂_k, im ∂_(k+1)$ 在 $k$ chain 空间

  由于几何意义, 只需要 $ℤ$ 系数
]
#tag("real-linear-space-trivial-homology") 
#indent[
  $ℝ^n$ is trivial homology $forall k = 1 ,…, n, H_k (ℝ^n) = 0$ or $ker ∂_k = im ∂_(k+1)$ or in $ℝ^n$, $c$ 的边界是零 <==> $c$ 是边界

  Try to prove it by purely affine orientation & combinatorics technique, avoid Euclidean topology
]
#tag("existence-and-uniqueness-of-n-simplex-chain-with-boundary") 
#indent[
  in $ℝ^n$, uniqueness $n$ chain of $n-1$ boundary

  $ H_n = 0 ==> ker ∂_n = im ∂_(n+1) = 0 $

  so existence of boundary of nonzero $n$ chain
  $ 
    forall c in C_n, ∂ c = 0 
    &==> c in ker ∂_n = 0 \
    &==> c = 0 
  $
  and uniqueness of $n$ dim region surround by $codim = 1$ boundary
  $
    (c,c' in C_n) and (∂_n c = ∂_n c') &==> ∂_n (c-c') = 0 \
    &==> c - c' in ker ∂_n = 0 \
    &==> c=c'
  $
]
#show "δ": it => text(it, fill: rgb("#d25b00"))

#tag("homology-hole") 对于集合 $ℝ^n$ 减去有限个或可数个分离的线性子空间或者多面体, homology 不是零

#image("../image/homology-hole.jpeg", width: 100%)

simplex 散度算子 as 边界算子的对偶 $⟨ ∂ σ , ω ⟩ = ⟨ σ , ∂^† ω ⟩$ for $k$ simplex $σ$ & simplicial $k-1$ form $ω$ on $∂ σ$. (考虑修改边界算子的记号, 免于与微分记号冲突)

#tag("homology-divergence-operator") 在 $k = n$ 时只有一种选择 $∂^† ω = frac(integral_(∂ σ) ω,Vol(σ)) Vol$. recall $n$ form 等价于纯量函数

在 $k < n$ 时可能很难处理

对于微分子流形来说, 则变得不难处理了. 此时散度算子类似物是外微分算子 $#d$. 直觉上是某种 $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$, where $Vol$ 是流形上的 volume. $σ$ 不限制于 simplex, 而是一大类区域

*Question* 即使流形上如果尚未定义 $Vol$ 或者尚未定义 metric, 这个式子在坐标系里只用 box 的 $Vol$ (包括低一维的边界的 $Vol$) 就能得到结果是, $n$ form $#d ω$ 的定义是坐标无关的. 或者说, 外微分的定义不依赖于 volume form 或者 metric 的选取, 只依赖于流形的微分结构. 反过来, 坐标里的 volume form 也可以延拓到整个流形

#tag("exterior-differential") 
#indent[
  在坐标里利用 box 计算 $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$, 全部坐标趋于 $0$, 每个坐标轴方向都变成计算对某些东西的偏微分 $∂_i$ 
  
  结果是 $#d ω = #d (ω_(i_1  i_k) #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)) = ∂_(i) ω_(i_1  i_k) #d x^i ∧ #d x^(i_1) ∧ ⋯ ∧ #d x^(i_k)$
  
  进一步简化暂略

  *Question* simplex 中心仿射坐标下, 外微分是形式是什么?
]
#tag("Stokes-theorem") 
#indent[
  for  #link(<orientable>)[可定向] 的几乎处处解析的带边流形, Stokes 定理 $integral_(∂ M) ω = integral_(M) #d ω$ or $⟨ ∂ M , ω ⟩ = ⟨ M , #d ω ⟩$
]
也许初看起来很奇怪, 这是有效的, 先无穷小 $#d ω := lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ))$ 再积分 $integral #d ω := lim sum ⋯$, 但是一维微积分基本定理就是这样的

但是一维区间的分割, 一维区间的边界, 一维区间的边界的积分, 都太简单了, 高维没那么简单

#tag("Stokes-theorem-simple") 对于高维, 如果是弯曲的, 则很困难. 先处理直的东西 i.e. simplex or 平行体. 分割也是同类型区域, 边界抵消也很简单. 再类似于一维, 用微分中值定理近似 compact 控制即可. 这样就证明了 $ℝ^n$ simplex or 平行体的 Stokes 定理

#tag("Stokes-theorem-proof") *Question*
#indent[
  使用流形上的对 form 积分的定义所使用的近似方法 #link(<integral-on-manfold>)[]

  近似地分解为 simplex or box, 然后用 simplex 的 stokes 定理 + 内部边界抵消, 就只剩下真正的流形的边界

  再使用 $n-1$ form $ω$ 对子流形的积分 #link(<integral-on-submanfold>)[]

  大概需要 $n-1$ form 的某种 Sobolev 控制?
]
我并没有对没有边界的流形处理 Stokes 定理, 并没有定义 $∂ M := ∅ and integral_(∂ M) ω := integral_(∅) ω = 0$. 没有的边界流形 *Example* $ℝ^n$

边界算子与外微分的对应性质

homology

cohomology

#tag("coboundary-operator") 
#indent[
  coboundary $ω_k = #d _(k-1) ω_(k-1)$

  cocycle $#d ω = 0$. 直观是这一点的 form 的散度是零

  $#d^2 = 0$ or $#d _k #d _(k-1) = 0$

  $im #d ⊂ ker #d$ or $im #d _(k-1) ⊂ ker #d _k$
]
#tag("de-Rham-cohomolgy") k-th de Rham cohomology $H^k (M) = (ker #d _k)/(im #d _(k-1))$

in $ℝ^n$, cohomology trivial $forall k = 1 ,…, n, H^k = 0$

#tag("cohomology-hole") 带 "洞" 的 form. *Example* in $ℝ^2$, $#d 1/r$ or $(-x_2)/(|x|^2) #d x_1 + (x_1)/(|x|^2) #d x^2$ 在 $x = 0$ 是奇点. 在非 $ℝ^n$ 的流形, 可能即使函数没有奇点, form 和 Stokes 定理也能将流形的洞表现出来. *Example* $𝕊^1$ or $𝕊^1 × 𝕊^1$

metric 流形的情况

对 $k$ form $ω$ 的积分相当于对 $⟨ ω , Vol_k ⟩ Vol_k$ 的积分

#tag("Hodge-star") 
#indent[
  Hodge star 算子 as form 的正交补对偶

  $⋆ : (⋀^k ℝ^n)^⊺ -> (⋀^(n-k) ℝ^n)^⊺$ 

  $⋆ ω$ with $ω ∧ ⋆ ω = ⟨ ω , ω ⟩ Vol_n$ ==> $ω ∧ ⋆ η = ⟨ ω , η ⟩ Vol_n$

  $⋆^2 = 𝟙$ ==> $⟨ ω , η ⟩ = ⟨ ⋆ ω , ⋆ η ⟩$

  $⋆ Vol_k = Vol_(n-k)$
]
#tag("flux") 
#indent[
  对 $k$ form $ω$ 积分 -> 对 $⟨ ω , Vol_k ⟩ Vol_k$ 积分 -> 对 $⟨ ⋆ ω, ⋆ Vol_(n-k) ⟩ Vol_k$ 积分, 解释为通过 $Vol_k$ 的正交补 $⋆ Vol_k = Vol_(n-k)$ 的量 $⟨ ⋆ ω , Vol_(n-k) ⟩$ 对 $Vol_k$ 积分, i.e. 通量

  用内积对偶 $⟨ ⋆ ω , ⟩, ⟨ Vol_(n-1) , ⟩ in ⋀^(n-k) ℝ^n$ 代表通量 $n-k$ 交错张量, 内积代表量 $⟨ ⋆ ω , ⟩$ 在通量方向 $⟨ Vol_(n-1) , ⟩$ 上的正交投影
]
*Example* in Euclidean $ℝ^3$, $⋀^1 ℝ^3 ≃ ⋀^2 ℝ^3 ≃ ℝ^3$.

- $0$ form
#indent[
  $#d ω in (⋀^1 ℝ^3)^⊺ <--> ⟨ ⋆ #d ω , ⟩ = grad ω in ⋀^2 ℝ^3$

  坐标 $ grad f = vec(∂_1 f, ∂_2 f, ∂_3 f) $

  Stokes 定理 #tag("gradient")
  $
    ω(x_1) - ω(x_0) 
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_l ⟨ grad ω , #d l ⟩
  $
]
- $1$ form
#indent[  
  $#d ω in ⋀^2 ℝ^3 <--> ⟨ ⋆ #d ω , ⟩ = curl ⟨ω,⟩ in ⋀^1 ℝ^3$

  坐标 $ curl vec(v_1,v_2,v_3) = vec(∂_2 v_3 - ∂_3 v_2, ∂_3 v_1 - ∂_1 v_3, ∂_1 v_2 - ∂_2 v_1) $

  $⟨ω,⟩ in ⋀^1 ℝ^3$

  Stokes 定理 #tag("curl")
  $
    integral_(∂ S) ⟨ ⟨ω,⟩ , #d l ⟩ 
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_S ⟨ curl ⟨ω,⟩ , #d S ⟩
  $
  where $n = ⋆ Vol_2 = Vol_1$
]
- $2$ form
#indent[  
  $#d ω in ⋀^3 ℝ^3 <--> ⟨ ⋆ #d ω , ⟩ = div ⟨ω,⟩ in ⋀^0 ℝ^3$

  坐标 $ div vec(v_1,v_2,v_3) = ∂_1 v_1 + ∂_2 v_2 + ∂_3 v_3 $

  $⟨ω,⟩ in ⋀^2 ℝ^3$

  Stokes 定理 #tag("divergence")
  $
    integral_(∂ V) ⟨ ⟨ω,⟩ , #d S ⟩
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_V ⟨ div ⟨ω,⟩ , #d V ⟩ 
  $
]
in Minkowski $ℝ^(1,3)$, $⋀^2 ℝ^(1,3) ≃ ⋀^(4-2) ℝ^(1,3)$