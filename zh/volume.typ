#import "../module/module.typ": *
#show: module

#tag("parallelogram") 平行体由于对称性, 可以从 $2n$ 点 convex hull 描述, 简化为, $n$ 点描述, 在选取原点后 

$t_1 v_1 + ⋯ + t_n v_n, 0 <= t_i <= 1$, 不需要 $t_1 + ⋯ + t_n = 1$

#image("../image/parallelogram.png", width: 25%)

#tag("parallelogram_simplex_correspond")
#indent[
  平行体可以分解为 $n!$ 个平移反射等价的 simplex (p. 587 of @ref-3)

  #image("../image/shear_transformation.png", width: 30%)

  一个分解的 simplex, 对应于, 选一个 $1 ,…, n$ 点的排列 $i(1) ,…, i(n)$
  $
    t_(i(1)) v_(i(1)) + ⋯ + t_(i(n)) v_(i(n)) \ 
    0 <= t_(i(n)) <= ⋯ <= t_(i(1)) <= 1
  $
  对应的 simplex 的顶点是 
  $
    0 \
    v_(i(1)) \
    v_(i(1)) + v_(i(2)) \
    ... \
    v_(i(1)) + ⋯ + v_(i(n))
  $
  仿射组合是表示是 
  $
    s_0 0 + s_1 v_(i(1)) + s_2(v_(i(1)) + v_(i(2))) + ⋯ + s_n (v_(i(1)) + ⋯ + v_(i(n))) \ 
    sum_(i=0..n) s_i = 1, 0 <= s_i <= 1
  $
  对比 $v_i$ 的系数, 平行体坐标和仿射坐标的关系
  $
    t_(i(n)) &= s_n \
    t_(i(n-1)) &= s_n + s_(n-1) \
    &... \
    t_(i(1)) &= s_n + s_(n-1) + ⋯ + s_1 \
    1 &= s_n + s_(n-1) + ⋯ + s_1 + s_0
  $
  反过来一个 simplex 也给出很多以其为 $n!$ 块 simplex 其中一块的平行体. 例如, 三角形和四边形的关系. 一般地, simplex 的顶点中选取其中一个就可以建立坐标系然后构造平行体
  
  所以 simplex 和 平行体 给出的结构强度是差不多的
]
#tag("volume_of_parallelogram") 对于 $ℝ^n$ 的体积假设
- 平移不变
- 反射不变 (无向体积)
- 集合有限分解 $⨆$ (零测度意义下的不相交) -> 体积有限求和 $sum$ 
- 如果 $v_1 ,…, v_n$ 不是线性无关, 则它们及其仿射/线性组合在低维的子空间, 从而 $n$ 阶体积定义为零
 
#tag("volume_of_simplex") is $1/n!$ of volume-of-parallelogram

#tag("shear_transformation") 平行体分解成 $n!$ 块 simplex 之后, 选取一块 simplex, 切割, 平移, 形成新平行体, 有相同体积. 称为剪切变换. e.g. $t_1 (v_1 + v_2) + t_2 v_2 + ⋯ +  t_n v_n$. 如下图所示

#image("../image/shear_transformation.png", width: 30%)

(image from p.587 of @ref-3)

如果要考虑平行体的体积在线性变换下的变化, 通常要考虑将线性变换分解为多个 "初等线性变换", 而初等变换中包含剪切变换

即使我们定义的是平行体的体积, 剪切变换说明, 这还是同时用到了 simplex 的体积的概念, 再次验证了 simplex 和平行体的紧密联系

剪切变换体积不变在代数上是 e.g. $(v_1 + v_2) ∧ v_2 ∧ ⋯ ∧ v_n = v_1 ∧ v_2 ∧ ⋯ ∧ v_n$ or $det mat(
  1, 1;
  , 1;
  ,, ⋱;
  ,,,, 1
) = 1$

边的 $ℕ,ℤ,ℚ,ℝ$ 伸缩. e.g. $forall a in ℝ, Vol(a v_1, v_2 ,…, v_n) = a Vol(v_1, v_2 ,…, v_n)$

平行体的伸缩剪切对应到 $GL(n,ℝ)$ 分解到初等线性变换, 也是 Gauss 消元法所用的, 尽管它们可以也用于 $m × n$ 矩阵

#tag("volume_determinant") 平行体 $v_1 ,…, v_n$ 的体积变化 $A ∈ GL(n,ℝ), Vol(A v_1 ,…, A_n v_n) = det A Vol(v_1 ,…, v_n)$

选取 $ℝ^n$ 的一个基 $e_1 ,…, e_n$, 定义其生成的平行体的体积为 $1$, 则其它平行体 $A e_1 ,…, A e_n$ 的体积是 $det A$

这是有向体积. $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$ 平行体的集合没变所以绝对体积没变, 但是 $v_1,v_2 ,…, v_n$ 和 $v_2,v_1 ,…, v_n$ 方向相反

有向体积 = 无向体积 + 计算方向因子

$v_1 ,…, v_n$ 线性相关 ==> 在低维子空间 ==> 零体积. 此时可以将 $A in GL$ 拓展到 $A in Lin$, 并且零体积在代数上对应到 $A in Lin ∖ GL <==> det(A) = 0$

将平行体 $v_1 ,…, v_n$ 对应到 $ℝ^n$ 的 $n$ 阶交错张量 $(ℝ^n)^(∧ n)$ 的可分解元素 $v_1 ∧ ⋯ ∧ v_n = det(v_1 ,…, v_n)$

$v_1 ∧ ⋯ ∧ v_n$ 是 $n$ 重张量, 其 $n$ 重线性来自平行体 $n$ 条边边长伸缩的线性

为什么体积的概念明明是正数, 但 $n$ 交错张量 $det$ 却可以是负数? 

负数来源于边长伸缩可以从只有 $+1$ 方向的 $ℝ_(> 0)$ 延拓到 $ℝ$ $-1$ 方向, 作为一种完全线性

任何线性变换都可以分解为伸缩和剪切. 剪切不会改变体积, 所以 $-1$ 效应一定都是伸缩带来的, 包括 "交换基的顺序" 这种变换 e.g. $v_1 ∧ v_2 ∧ ⋯ ∧ v_n = - v_2 ∧ v_1 ∧ ⋯ ∧ v_n$, 然而直观上这并不是显然

*Example* 二维的例子, 但容易推广到 $n$ 维的任意两个向量
- 剪切 $mat(1, 1;, 1) vec(x, y) = vec(x + y, y)$ 不改变体积
- 剪切 $mat(1; -1, 1) vec(x + y, y) = vec(x + y, -x)$
- 剪切 $mat(1, 1;, 1) vec(x + y, -x) = (y, -x)$
- $-1$ 伸缩 $(y, -x) ⇝ (y, x)$ 使得体积 $-1$

其实你完全丢弃负体积的概念, 可以说体积是正的多重交错线性, 正的行列式, 就像流形上的对密度的积分的处理那样

#tag("try_to_define_volume_of_low_dim") 把 $k$ 子空间看作流形, 例如在上面选取一个 $k$ 基建立坐标系, 它们就有自己的体积. 但是 $ℝ^n$ 有很多 $k$ 子空间. 如果我们只需要考虑一个 $k$ 子空间或者 $k$ 子流形, 那么问题就到此为止. 但是我们想要同时对所有 $k$ 子空间定义体积, 同时在每个 $k$ 子空间选择一个 $k$ 基建立坐标系来定义这个 $k$ 子空间的 $k$ 体积, 怎么样的选取才是好的?

考虑两种方法. 类似于一次型 vs 二次型. 第一种类似对 $vec(v_1,v_2)$ 定义 $v_1 + v_2$ or $|v_1 + v_2|$, 第二种类似于定义 $(v_1^2 + v_2^2)^(1/2)$ or $|v_1^2 - v_2^2|^(1/2)$. 两种体积的定义对 $k = n$ 重合

#let base-alt = $e_(i_1) ∧ ⋯ ∧ e_(i_k)$
#let index-alt = $i_1 < ⋯ < i_k$
#let coefficent-alt = $det mat(
  v _1^(i_1) , ⋯ , v _k^(i_1) ;
  ⋮,,⋮;
  v _1^(i_k) , ⋯ , v _k^(i_k)
)$

1. $ℝ^n$ 的一个基 $e_1 ,…, e_n$ 给出一个交错张量空间的基 $#base-alt, 1 <= #index-alt <= n$ 
#indent[
  用它来定义体积: 对每个 $1 <= k <= n$, 体积 $Vol_(n,k)$ 是 $ℝ^n$ 的 一个 $k$ form, 满足 $Vol_(n,k) (#base-alt) = 1$, forall $#index-alt$

  对于一般平行体 $v_1 ∧ ⋯ ∧ v_k = (v_1^(i_1) e_(i_1)) ∧ ⋯ ∧ (v_k^(i_k) e_(i_k)) = sum_(#index-alt) #coefficent-alt #base-alt$ 体积就是 
  $
    Vol(v_1 ∧ ⋯ ∧ v_k) &:= sum_(#index-alt) #coefficent-alt \
    "or " &:= abs(sum_(#index-alt) #coefficent-alt)
  $
  在这种体积定义下, 非零可分解交错张量的体积可能是零. 考虑 $ℝ^2$ 的情况, $A = mat(1,0;-1,1) in GL(2,ℝ)$ 使得 $A e_1 = mat(1,0;-1,1) vec(1,0) = vec(1,-1)$. $A e_1$ 是 $ℝ^2$ 的一个 $1$ 阶可分解交错张量. $Vol_(2,1)(A e_1) = Vol_(2,1)(e_1 - e_2) = 1 - 1 = 0$
  
  在这种体积定义下, 如上例 $A in GL(2,ℝ)$ 所示, $ℝ^n$ 的 $n$ 阶的剪切变换保持体积的性质在 $ℝ^n$ 的 $k < n$ 阶体积中不成立

  *Question* 选取了一个特殊的基 $e_1 ,…, e_n$, 所以怎么样的其它基有相同的结果? or 保持所有阶一次型体积不变的线性子群是什么? 
  
  $SL(n,ℝ)$ 并不保持 $k < n$ 维体积. e.g. $mat(1/2;,2)$ or $mat(-1;,-1)$ 不保持 $e_1$ 子空间的 $1$ 维体积

  保持所有阶体积的 $A = mat(
    a^1_1, ⋯, a^1_n;
    ⋮,,⋮;
    a^n_1, ⋯, a^n_n
  ) in GL(n,ℝ)$ 满足, for $k = 1 ,…, n$ for $#index-alt$, $Vol_(n,k)(A e_(i_1) ∧ ⋯ ∧ A e_(i_k)) = 1$, or $sum_(j_1 < ⋯ < j_k) det mat(
    a^(j_1)_(i_1), ⋯, a^(j_i)_(i_k);
    ⋮,,⋮;
    a^(j_k)_(i_1), ⋯, a^(j_k)_(i_k)
  ) = 1$

  *Example* $Vol_(n,1)(A e_i) = a^1_i + ⋯ + a^n_i$ ($A in GL(n,ℝ)$ 矩阵的 $i$ th 列的元素相加). $n-1$ 和 $1$ 的情况类似, i.e. $Vol_(n,1)$ 的 $a^i_j$ 对应到 $Vol_(n,n-1)$ 的 $a^i_j$ 的余子式 
  
  余子式是 $A$ 去掉 $i$ th 行, j th 列的矩阵的行列式, 或者是 $det$ 作为 $n$ 交错张量的 $1,n-1$ 交错张量分解表示中所用到的. 余子式可以推广到 $det$ 的 $k,n-k$ 交错张量分解表示 or 行列式的 Laplace expansion

  *Example* $Vol_(2,1)(A e_i) = a^1_i + a^2_i$
  
  $ℝ^2$ 的保持所有体积的 $A = mat(
    a^1_1, a^1_2;
    a^2_1, a^2_2
  )$ 满足
  $
    a^1_1 a^2_2 - a^2_1 a^1_2 &= 1 space && (2^"nd" "order volume") \
    a^1_1 + a^2_1 &= 1 && (1^"st" "order volume") \
    a^1_2 + a^2_2 &= 1
  $
  这个方程组的解的一种坐标表示
  $
    x &in ℝ \
    a^1_1 &= 1 - x \
    a^2_1 &= x \
    a^1_2 &= -x \
    a^2_2 &= 1 + x \
    A &= mat(1-x,-x;x,1+x) = mat(1;,1) + mat(-x,-x;x,x)
  $
  是 $gl(2,ℝ)$ 的经过 $𝟙 = mat(1;,1)$ 的一条仿射直线. $SO(2)$ or $SO(1,1)$ 不是其子集
]
2. 选取一个非退化二次型
#indent[
  #link(<tensor_induced_quadratic_form>)[导出] 交错空间的二次型 $⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2  = det ⟨ v_i , v_j ⟩$
  
  无向体积定义为绝对值开根号 $|det ⟨ v_i , v_j ⟩|^(1/2)$ or $abs(det mat(
    ⟨ v_1 , v_1 ⟩, ⋯, ⟨ v_1 , v_n ⟩;
    ⋮,,⋮;
    ⟨ v_n , v_1 ⟩, ⋯, ⟨ v_n , v_n ⟩
    ))^(1/2)$
    
  选取一个规范正交基 $e_1 ,…, e_n$ 
  
  $v_1 ∧ ⋯ ∧ v_k = sum_(#index-alt) det mat(
    v_1^(i_1) , ⋯ , v_k^(i_1) ;
    ⋮,,⋮;
    v_1^(i_k) , ⋯ , v_k^(i_k)
  ) e_(i_1) ∧ ⋯ ∧ e_(i_k)$
  
  二次型
  $
    ⟨ v_1 ∧ ⋯ ∧ v_k ⟩^2 &= sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2 \
    Vol_(n,k)(v_1 ∧ ⋯ ∧ v_k) &:= abs(sum_(#index-alt) (det mat(
      v_1^(i_1) , ⋯ , v_k^(i_1) ;
      ⋮,,⋮;
      v_1^(i_k) , ⋯ , v_k^(i_k)
    ))^2 ⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2)^(1/2)
  $
  $⟨ v_1 ∧ ⋯ ∧ v_n ⟩^2 = 0$ <==> 体积零
  
  在非 Euclidean 情况, light-like 会造成影响

  不同 signature 会对 $k < n$ 阶的相同集合给出不同体积定义
]
#tag("convex_hull_decomposition") convex hull 以这种方式分解到 simplex
- simplex 的顶点属于 convex hull 的顶点
- simplex 内部不相交
- simplex 的并集是 convex hull

分解方式非唯一

*Example* 

$ℝ^2$ 的 $4$ 个点

#image("../image/convex_hull_decomposition_1.png", width: 40%)

$ℝ^2$ 的 $5$ 个点

#image("../image/convex_hull_decomposition_3.png", width: 50%)

*Prop* convex hull 分解为 simplex

_Proof_
#indent[
  根据上图, 直观上可以这样证明

  对维数归纳. 取一个顶点 $x_i$
  
  将边界面分类为
  - 包含 $x_i$ 
  - 不包含 $x_i$

  $H$ 可以分解为由 $x_i$ 和不包含 $x_i$ 的边界面 $F_i$ 形成的锥

  每个 $F_i$ 是低一维的 convex hull, 可以分解为 $n - 1$ 维 simplex

  这些 simplex 和 $x_i$ 组成 $n$ 维 simplex

  convex hull 分解为这些 simplex
]
convex hull 的交集是 convex hull

*Example* #image("../image/simplex_intersection.png", width: 60%)

simplex 的减集可能不是 convex hull. 但仍然可以分解到 simplex 

*Example* #image("../image/simplex_substraction.png", width: 20%)

#tag("polyhedra") 多面体 := n simplex 有限并 with. 可数推广 -> 可数多面体

#image("../image/polyhedra.png", width: 30%)

#tag("Lebesgue_measurable") 
#indent[
  #image("../image/measure_approximation.png", width: 30%)
  Lebesgue 可测集 $A$. simplex 的有限并 $P$ 逼近, #link(<symmetric_set_minus>)[对称差] $A Δ P$ 用可数 simplex 覆盖作为测度估计误差

  具体来说, 对集合 $A$ 定义外测度为 $m^*(A) = inf_(ℕ-"polyhedra" C ⊇ A) Vol(C)$ 如果 $m^*(A)$ 有限. 多面体的外测度有限, 且在 Euclidean 距离下, 根据 compact 性质, 可以证明满足次可加性 (subaddtive), 于是多面体的外测度就是自身的体积 (Euclidean 之外的 signature 的空间中的几何中, 应该不是所有的多面体都被用来定义体积)

  在外测度有限的集合中, 用对称差的外测度作为距离 $d(A, B) = m^*(A Δ B)$, 形成距离空间 (@ref-12). (不需要距离零蕴含相等.) 多面体形成距离子空间. 多面体的体积是其上的实值函数, 可以证明是连续的, 通过 $|Vol(A) - Vol(B)| <= Vol(A Δ B)$, 证明的本质是利用 $|Vol(A ∖ B) - Vol(B ∖ A)| <= Vol(A ∖ B) + Vol(B ∖ A)$

  于是, 可测集定义为外测度距离空间中, 多面体集族的闭包. 可测集的测度定义为多面体体积函数作为连续函数在其闭包上的延拓

  积分的定义也将会用类似的方法

  不可测集就是, 外测度有限, 但是不在多面体闭包中的集合. 存在不可测集 (用选择公理定义的 Vitali 集)
]

#tag("Lebesgue_measure")
#indent[
  集合对称差满足
  
  $B Δ B' subset (A Δ B) ∪ (A Δ B')$ 

  对应三角不等式 $d(B,B') <= d(A,B) + d(A,B')$

  _Proof_ $B ∖ B' ⊆ (B ∖ A) ∪ (A ∖ B')$ 

  #stack( dir: ltr,
    image("../image/measure_triangle_inequality_1.png", width: 40%),
    image("../image/measure_triangle_inequality_2.jpeg", width: 50%)
  )
  by
  $
    x in B ∖ B' 
    &<==>x in B and x in.not B' \
    &<==> (x in B and x in.not B') and (x in.not A or x in A) \
    &<==> (x in B and x in.not B' and x in.not A) or (x in B and x in.not B' and x in A) \
    &==> (x in B and x in.not A) or (x in A and x in.not B') \
    &<==> x in (B ∖ A) ∪ (A ∖ B') 
  $
  另一边类似

  三角不等式
  $
    d(B,B') &= d(B Δ B') \
    &<= d((A Δ B) ∪ (A Δ B')) \
    &<= d(A,B) + d(A,B')
  $
]
#tag("try_to_define_low_dim_measure") 尝试定义 $ℝ^n$ 的 $k < n$ 维可测集. 由于 $k$ 区域的 codimension $≠ 0$, 所以显然不能用集合差和 simplex 覆盖作为测度估计误差来逼近一般的 "$k$ 维集合" 

#tag("pathologic_example_measure_of_boundary") 
#indent[
  用 Euclidean metric 结构可以定义一些低维可测集, 但还是有病态例子 (暂时忽略细节, 自行 wiki) 

  - 油漆悖论. 测度有限但边界的测度无限. 使用了无界区域
  - Koch 雪花. 测度有限但边界的测度不可定义 or 无限. 使用了处处不可微的边界

  逼近 $n$ 体积但是边界体积不逼近的例子

  - Schwarz 灯笼
  - 无限楼梯逼近三角形斜边 $sqrt(2) = 2$ or 圆 ($π = 4$) or 只要大幅法向振荡, $sqrt(2) = π = ∞$
]
#tag("measure_theoretic_boundary")
#indent[
  测度论边界. 维数 --- 某种上确界 $d < n$ --- 可能不是自然数而是实数

  对一般可测集, 直觉上, 边界 = 

  $ {x in ℝ^n : not lim_("ball" -> x) frac(Vol(A ∩ "ball"),Vol("ball")) = 0,1} $

  where $"ball" -> 0$ 指相对于任何一个 $x$ 为中心的 ball 的整体伸缩到零

  or 边界 = 不是内部或外部. 内部 = 极限 $1$, 外部 = 极限 $0$
]
Lebesgue differentiation theorem 说, 边界的测度是零

- 矩形/平行体的边的区间分割给出矩形 product 式分割
- 重心分割 (注意对边界也分割了)

#image("../image/measure_subdivision.png", width: 80%)
