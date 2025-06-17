#import "../module/module.typ": *
#show: module

#tag("affine-combination") 
#indent[
  仿射组合
  $
    sum_(0 .. N) t_i ⋅ x_i \
    t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 1
  $
  #show "Δ": it => text(it)

  是良定义的仿射点, 或者说坐标定义不依赖于原点的选择. 设 $x_i$ 的坐标是 $v_i$. 换原点 $v_i' = v_i + Δ$
  $
    sum t_i (v_i + Δ) = (sum t_i v_i) + (sum t_i) Δ = (sum t_i v_i) + Δ
  $
  关于直觉, 最简单的例子是两点直线的比例点 #html.elem("img", attrs: (src: "../image/affine-combination-1.jpeg", width: "30%"))

  可以逐次迭代 or 分解 e.g. 三角形 $t_1 x_1 + t_2 x_2 + t_3 x_3 <--> s_1 (t_1 x_1 + t_2 x_2) + s_2 x_3$. 且分解操作可交换. 且可以分解为多个 $>= 1$ 阶的

  #html.elem("img", attrs: (src: "../image/affine-combination-2.jpeg", width: "30%"))
]
#tag("affine-coordinate") $t_i$ 可以认为是基于点 $x_i$ 的一种坐标. 仿射坐标. *alias* 重心坐标 #tag("barycentric-coordinate")

#tag("affine-independent") 
#indent[
  仿射无关 := $x_k$ 不能表示为 $sum_(i = 0 .. N without k) t_i x_i$

  仿射无关将对应到选取其中一个点 e.g. $x_0$ 为原点后的 $x_i - x_0$ 的线性无关

  如果是仿射无关, 则顶点对应 $t_k = 1 and t_(1 ,…, N without k) = 0$

  $n$ 维仿射空间最多 $n+1$ 仿射无关的点

  对于 $n$ 维仿射空间 $V$ 的 $n+1$ 仿射无关点的坐标, $t_0 ,…, t_n$ 一一对应 $V$ 的仿射点

  如果是 $t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 0$, 虽然此时坐标 $sum t_i v_i$ 不会因换原点而改变, 但不是仿射点
]
#tag("affine-map-point-ver") *alias* #tag("simplicial-map")
 设 $y_1 ,…, y_n$ 是另一个仿射空间的点. 仿射映射由 $f(x_i) = y_i$ 决定, 其它点的情况可以由它们通过仿射同态生成得到
$
  sum t_i x_i ⇝ sum t_i y_i
$
#tag("center-of-affine-point-set") $sum_(0 .. N) t_i = 1$ 的中心点是 $t_1 = ⋯ = t_n = 1/N$ 

#tag("convex-hull") := 额外 $0 <= t_i <= 1$

#tag("simplex") := 由仿射无关的点构成的 convex hull

#html.elem("img", attrs: (src: "../image/simplex.jpeg", width: "70%"))

#tag("parallelogram") 平行体由于对称性, 可以从 $2n$ 点 convex hull 描述简化为 $n$ 点描述, 在选取原点后 

$ t_1 v_1 + ⋯ + t_n v_n, 0 <= t_i <= 1 $

#html.elem("img", attrs: (src: "../image/parallelogram.jpeg", width: "25%"))

#tag("parallelogram-simplex-correspond")
#indent[
  平行体可以 $⨆$ 分解为 $n!$ 个平移反射等价的 simplex

  #html.elem("img", attrs: (src: "../image/shear-transformation.jpg", width: "30%"))

  $v_1 ,…, v_n$ 点的 $n$ 排列
  $
    t_(i(1)) v_(i(1)) + ⋯ + t_(i(n)) v_(i(n)) \ 
    0 <= t_(i(n)) <= ⋯ <= t_(i(1)) <= 1
  $
  对应 simplex 
  $
    s_0 0 + s_1 v_(i(1)) + (s_2 v_(i(1)) + v_(i(2))) + ⋯ + s_n (v_(i(1)) + ⋯ + v_(i(n))) \ 
    sum_(i=0..n) s_i = 1, 0 <= s_i <= 1
  $
  with
  $
    v_(i(n)) &=&s_n \
    v_(i(n-1)) &=&s_n + s_(n-1)\
    &⋮ \
    v_(i(1)) &=&s_n + s_(n-1) + ⋯ + s_1
  $
  反过来一个 simplex 也给出很多以其为 $n!$ 块 simplex 其中一块的平行体
  
  这两种东西给出的结构强度是差不多的
]
#tag("volume-of-parallelogram") 对于 $ℝ^n$ 的体积假设
- 平移不变
- 反射不变 (无向体积)
- 有限 $⨆$ -> 体积有限 $sum$ 
- 如果 $v_1 ,…, v_n$ 不是线性无关, 则在低维的子空间, 从而 $n$ 阶体积定义为零
 
#tag("volume-of-simplex") is $1/n!$ of volume-of-parallelogram

#tag("shear-transformation") 平行体分解成 simplex 之后, 切割与平移, 形成新的同体积平行体. 称为剪切变换. e.g. $t_1 (v_1 + v_2) + t_2 v_2 + ⋯ +  t_n v_n$

#html.elem("img", attrs: (src: "../image/shear-transformation.jpg", width: "30%"))

(image from p.587 of @ref-3)

剪切变换体积不变在代数上是 e.g. $(v_1 + v_2) ∧ v_2 ∧ ⋯ ∧ v_n = v_1 ∧ v_2 ∧ ⋯ ∧ v_n$ or $det mat(
  1, 1;
  , 1;
  ,, ⋱;
  ,,,, 1
) = 1$

边的 $ℕ,ℤ,ℚ,ℝ$ 伸缩. e.g. $forall a in ℝ, Vol(a v_1, v_2 ,…, v_n) = a Vol(v_1, v_2 ,…, v_n)$

平行体的伸缩剪切对应到 $GL(n,ℝ)$ 分解到初等线性变换, 也是 Gauss 消元法所用的 (尽管它们可以用于 $m × n$ 矩阵)

#tag("volume-determinant") 平行体 $v_1 ,…, v_n$ 的体积变化 $A ∈ GL(n,ℝ), Vol(A v_1 ,…, A_n v_n) = det A Vol(v_1 ,…, v_n)$

选取 $ℝ^n$ 的一个基 $e_1 ,…, e_n$, 以其生成的平行体体积为 $1$, 其它平行体 $A e_1 ,…, A e_n$ 的体积是 $det A$

这是有向体积. $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$ 平行体的集合没变所以绝对体积没变, 但是 $v_1,v_2 ,…, v_n$ 和 $v_2,v_1 ,…, v_n$ 方向相反

有向体积 = 无向体积 + 计算方向因子

$v_1 ,…, v_n$ 线性相关 ==> 在低维子空间 ==> 零体积. 此时可以将 $A in GL$ 拓展到 $A in Lin$, 并且零体积在代数上对应到 $A ∉ GL <==> det(A) = 0$

对于 $ℝ^n$ 的 $k$ 阶平行体和 simplex

将平行体对应到 $ℝ^n$ 的 $k$ 阶交错张量 $(ℝ^n)^(∧ k)$ 的可分解元素 $v_1 ∧ ⋯ ∧ v_k$

#tag("try-to-define-volume-of-low-dim") 如何定义低维体积? 考虑两种方法. 类似于一次型 vs 二次型. 第一种类似对 $vec(v_1,v_2)$ 定义 $v_1 + v_2$ or $|v_1 + v_2|$, 第二种类似于定义 $(v_1^2 + v_2^2)^(1/2)$ or $|v_1^2 - v_2^2|^(1/2)$

#let base-alt = $e_(i_1) ∧ ⋯ ∧ e_(i_k)$
#let index-alt = $i_1 < ⋯ < i_k$
#let coefficent-alt = $det mat(
  v _1^(i_1) , ⋯ , v _k^(i_1) ;
  ⋮,,⋮;
  v _1^(i_k) , ⋯ , v _k^(i_k)
)$

1. $ℝ^n$ 的一个基给出一个交错张量空间的基 $#base-alt, #index-alt$ 
#indent[
  用它来定义体积: 对每个 $k$, 一个特殊的交错 $k$ 重线性函数 or $ℝ^n$ 的 $k$ form $Vol_(n,k)$, 定义为 $Vol_(n,k) (#base-alt) = 1$, forall $#index-alt$

  所以对于一般平行体 $v_1 ∧ ⋯ ∧ v_k = (v_1^(i_1) e_(i_1)) ∧ ⋯ ∧ (v_k^(i_k) e_(i_k)) = sum_(#index-alt) #coefficent-alt #base-alt$ 体积就是 
  $
    Vol(v_1 ∧ ⋯ ∧ v_k) &:=&sum_(#index-alt) #coefficent-alt \
    "or " &:=&abs(sum_(#index-alt) #coefficent-alt)
  $
  非零可分解交错张量的体积可能是零, $A = mat(1,0;-1,1) in GL(2,ℝ)$ 使得 $Vol(2,1)(A e_1) = 1 - 1 = 0$. $n$ 阶的剪切变换在 $k$ 阶不成立

  *Question* 选取了特殊的基, 所以怎么样的其它基有相同的结果? or 保持体积不变的线性子群是什么? 
  
  $SL(n,ℝ)$ 并不保持 $k < n$ 维体积. e.g. $mat(1/2;,2)$ or $mat(-1;,-1)$ 不保持 $1$ 维体积

  保持所有阶体积的 $A = mat(
    a^1_1, ⋯, a^1_n;
    ⋮,,⋮;
    a^n_1, ⋯, a^n_n
  ) in GL(n,ℝ)$ 满足, for $k = 1 ,…, n$ for $#index-alt$, $Vol_(n,k)(A e_(i_1) ∧ ⋯ ∧ A e_(i_k)) = 1$, or $sum_(j_1 < ⋯ < j_k) det mat(
    a^(j_1)_(i_1), ⋯, a^(j_i)_(i_k);
    ⋮,,⋮;
    a^(j_k)_(i_1), ⋯, a^(j_k)_(i_k)
  ) = 1$

  *Example* $Vol_(n,1)(A e_i) = a^1_i + ⋯ + a^n_i$ ($i$ th 列的元素相加). $n-1$ 和 $1$ 的情况类似, i.e. $a^i_j$ 对应到其余子式 
  
  (余子式是 $det$ 的 $1,n-1$ 交错张量分解表示所用到的, 可以推广到 $det$ 的 $k,n-k$ 交错张量分解表示 or Laplace expansion)

  *Example* $Vol_(2,1)(A e_i) = a^1_i + a^2_i$
  
  $ℝ^2$ 的保持所有体积的 $A = mat(
    a^1_1, a^1_2;
    a^2_1, a^2_2
  )$ 满足
  $
    a^1_1 a^2_2 - a^2_1 a^1_2 &=&1 \
    a^1_1 + a^2_1 &=&1 \
    a^1_2 + a^2_2 &=&1
  $
  解的一种坐标表示
  $
    x &in&ℝ \
    a^1_1 &=&1 - x \
    a^2_1 &=&x \
    a^1_2 &=&-x \
    a^2_2 &=&1 + x \
    A &=&mat(1-x,-x;x,1+x)
  $
  是 $gl(2,ℝ)$ 的经过 $𝟙 = mat(1;,1)$ 的一条仿射直线. $SO(2)$ or $SO(1,1)$ 不是其子集
]
2. 选取一个非退化二次型
#indent[
  #raw("#link(<tensor-induced-quadratic-form>)[导出]") 交错空间的二次型 $⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2  = det ⟨ v_i , v_j ⟩$. 无向体积 $|det ⟨ v_i , v_j ⟩|^(1/2)$ or $abs(det mat(
    ⟨ v_1 , v_1 ⟩, ⋯, ⟨ v_1 , v_n ⟩;
    ⋮,,⋮;
    ⟨ v_n , v_1 ⟩, ⋯, ⟨ v_n , v_n ⟩
    ))^(1/2)$. 根据规范正交基及其系数 $v_1 ∧ ⋯ ∧ v_k = sum_(#index-alt) det mat(
    v_1^(i_1) , ⋯ , v_k^(i_1) ;
    ⋮,,⋮;
    v_1^(i_k) , ⋯ , v_k^(i_k)
  ) e_(i_1) ∧ ⋯ ∧ e_(i_k)$, 写成标准二次型
  $
    ⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2 &=&sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2 \
    Vol_(n,k)(v_1 ∧ ⋯ ∧ v_k) &:=&abs(sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2)^(1/2)
  $
  $⟨ v_1 ∧ ⋯ ∧ v_n ⟩^2 = 0$ <==> 体积零
  
  在非 Euclidean 情况, light-like 会造成影响

  不同 signature 的体积定义会对 $k < n$ 阶的相同集合不同
]
两种体积的定义对 $k = n$ 重合

#tag("convex-hull-decomposition") convex hull 最优分解到 simplex, 方式非唯一. 麻烦的组合问题

*Example* 

$ℝ^2$ 的 $4$ 个点

#html.elem("img", attrs: (src: "../image/convex-hull-decomposition-1.jpg", width: "40%"))

$ℝ^2$ 的 $5$ 个点. 先选取 $2$ simplex, 即选取 $3$ 个顶点

#html.elem("img", attrs: (src: "../image/convex-hull-decomposition-2.jpg", width: "80%"))

找出哪些 simplex 组合是 convex hull 的分解

#html.elem("img", attrs: (src: "../image/convex-hull-decomposition-3.jpg", width: "50%"))

convex hull 的交集是 convex hull

*Example* #html.elem("img", attrs: (src: "../image/simplex-intersection.jpg", width: "60%"))

simplex 的减集可能不是 convex hull. 但仍然可以分解到 simplex 

*Example* #html.elem("img", attrs: (src: "../image/simplex-substraction.jpg", width: "20%"))

#tag("polyhedra") 多面体 :=
#indent[
  #html.elem("img", attrs: (src: "../image/polyhedra.jpeg", width: "40%"))
  n simplex 有限并 with

  - 内部不相交
  - 两个 n simplex 之间传递连通
  - 传递边界是 n-1 simplex

  传递边界的维数是为了让多面体有最好的连通性
]
#tag("low-dim-polyhedra") 低维子多面体. 作为一种类似子流形的设置? i.e. $ℝ^k$ 维里 $k-1$ 边界的相邻的 simplex 只有两个 -> 分段嵌入到 $ℝ^n$. 若不然, 考虑例子三接边界 #html.elem("img", attrs: (src: "../image/tri-intersect-boundary.jpg", width: "40%"))

可数推广 -> 可数多面体

#tag("polyhedra-measurable") 
#indent[
  #html.elem("img", attrs: (src: "../image/measure-approximation.jpeg", width: "30%"))
  多面体可测集 $A$. 用可数多面体 $P$ 逼近, #raw("#link(<symmetric-set-minus>)[对称差]") $A Δ P$ 用可数 simplex 覆盖作为测度估计误差

  集合 $A,B$ 定义距离 (@ref-12)

  $ d(A,B) := inf_("polyhedra" C \ A Δ B ⊂ C) Vol(C) $

  可测集 $A$ := $inf_("polyhedra" P) d(A,P) = 0$

  集合 $A$ 到 "原点" $∅$ 的距离 $A Δ ∅ = A$ and $d(A) : = d(A,∅) = inf_("polyhedra" C \ A ⊂ C) Vol(C)$ 

  $d(A Δ B) = d(A,B)$

  如果 $A ⊂ A'$ 则 $d(A) <= d(A')$

  $d(A ∪ A') <= d(A) + d(A')$ _Proof_ by $(A ⊂ P) and (A' subset P') ==> (A ∪ A') subset (P ∪ P')$

  注意, 这种可测集有好的连通性. 在一维中只有区间, 排除了 Smith–Volterra–Cantor 集等. 多面体可测集的并集等操作也受到限制
]
#tag("Lebesgue-measurable") 如果不使用传递连通, 则得到一般可测集的定义. alias: Lebesgue 可测集. 存在不可测集

#tag("Lebesgue-measure")
#indent[
  集合对称差满足
  
  $B Δ B' subset (A Δ B) ∪ (A Δ B')$ 

  对应三角不等式 $d(B,B') <= d(A,B) + d(A,B')$

  _Proof_ $B ∖ B' ⊂ (B ∖ A) ∪ (A ∖ B')$ 

    #html.elem("img", attrs: (src: "../image/measure-triangle-inequality-1.jpeg", width: "40%"))
    #html.elem("img", attrs: (src: "../image/measure-triangle-inequality-2.jpeg", width: "50%"))
  
  by
  $
    x in B ∖ B' 
    &<==>&x in B and x in.not B' \
    &<==>&(x in B and x in.not B') and (x in.not A or x in A) \
    &<==>&(x in B and x in.not B' and x in.not A) or (x in B and x in.not B' and x in A) \
    &==>&(x in B and x in.not A) or (x in A and x in.not B') \
    &<==>&x in (B ∖ A) ∪ (A ∖ B') 
  $
  另一边类似

  三角不等式
  $
    d(B,B') &=&d(B Δ B') \
    &<=&d((A Δ B) ∪ (A Δ B')) \
    &<=&d(A,B) + d(A,B')
  $

  对多面体 $P,P'$ with 有限体积 and $d(A,P),d(A,P') < ε$

  唯一极限
  $
    |Vol(P) - Vol(P')| = Vol(P Δ P') = d(P,P') <= d(A,P) + d(A,P') < 2 ε
  $
  如果使用逼近 $A$ 的多面体的 #raw("#link(<net>)[网]"), 则有 #raw("#link(<hom-limit>)[极限同态]") $Vol(A) := lim_(d(A,P) -> 0) Vol(P)$ 
  
  得到有限测度的定义. 无限测度的定义来自有限测度的可数逼近, 或 $sum_(n=1..∞) ε_n < ε$ 技术
]
#tag("try-to-define-low-dim-measure") 尝试定义 $ℝ^n$ 的 $k < n$ 维可测集. 由于 $k$ 区域的 codimension $≠ 0$, 所以显然不能用集合差和 simplex 覆盖作为测度估计误差来逼近一般的 "$k$ 维集合" 

#tag("pathologic-example-measure-of-boundary") 
#indent[
  用 Euclidean metric 结构可以定义一些低维可测集, 但还是有病态例子 (暂时忽略细节, 自行 wiki) 

  - 油漆悖论. 测度有限但边界的测度无限. 使用了无界区域
  - Koch 雪花. 测度有限但边界的测度不可定义 or 无限. 使用了处处不可微的边界

  逼近 $n$ 体积但是边界体积不逼近的例子

  - Schwarz 灯笼
  - 无限楼梯逼近三角形斜边 $sqrt(2) = 2$ or 圆 ($π = 4$) or 只要大幅法向振荡, $sqrt(2) = π = ∞$
]
#tag("measure-theoretic-boundary")
#indent[
  测度论边界. 维数 --- 某种上确界 $d < n$ --- 可能不是自然数而是实数

  对多面体可测集, 直觉上, 边界 = 可测集的零测集 quotient 中的最大减最小 $⋃ [A] ∖ ⋂ [A]$

  对一般可测集, 直觉上, 边界 = 

  $ {x in ℝ^n : not lim_("simp" -> x) frac(Vol(A ∩ "simp"),Vol("simp")) = 0,1} $

  where $"simp" -> 0$ 指相对于任何一个 $x$ 为中心的 simplex 的整体伸缩到零

  or 边界 = 不是内部或外部. 内部 = 极限 $1$, 外部 = 极限 $0$
]
Lebesgue differentiation theorem 说, 边界的测度是零

- 矩形的边的区间分割给出矩形 product 式分割
- simplex 中心连接到 $n$ 个点有 $binom(n+1,n) = n$ 种方式, 将一个 simplex 分割到 $n$ 个 sub simplex
- 或者用边界所有低维 simplex 的中点

#html.elem("img", attrs: (src: "../image/measure-subdivision.jpeg", width: "100%"))

