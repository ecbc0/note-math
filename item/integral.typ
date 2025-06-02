#import "/module/module.typ": *
#show: module

#tag("integral-piecewise-constant-function") 
#indent[
  constant function $f_i$ support on simplex $σ_i$ + $f = sum f_i σ_i$ 可数无限组合 + $integral_(σ) f = sum f_i (σ_i) Vol(σ_i)$ 绝对收敛
]
#tag("integral-simplicial-function") 
#indent[
  或者用连续分段仿射线性 or simplicial function e.g. for simplex with 顶点 $x_0 ,…, x_n$, $f(sum t_i x_i) = t_i f(x_i)$. 积分定义为根据顶点的值的平均 i.e. 仿射中心映射的结果 $f((x_0 + ⋯ + x_n)/(n+1)) Vol("simp"(x_1 ,…, x_n))$
]
根据 simplex 交集和减集的分解, 分段常值函数的有限加减仍然是分段常值函数

定义积分距离 $‖f - g‖_1 = integral |f - g|$. 或者用 $2$ norm $‖f - g‖_2 = (integral |f - g|^2)^(1/2)$ 

#tag("Lebesgue-integrable") 
#indent[
  $ϕ ∈ L^1 $ := $forall ε > 0$ 存在分段常值 $f,g$ 使得 $|ϕ - f| <= |g|$ 且 $‖g‖ = integral |g| < ε$

  对 $L^2$ 同理

  在分段常值空间, 类似于可测集的定义, 对于积分距离, 三角不等式, 极限唯一
]
#tag("Lebesgue-integral") 
#indent[
使得可以定义 $f -> ϕ$ 和 $integral ϕ = lim_(f -> ϕ) integral f$

$ϕ ∈ L^1(ℝ^d,ℝ^d') <==> |ϕ| ∈ L^1(ℝ^d,ℝ)$

$ϕ ∈ L^2(ℝ^d,ℝ^d') <==> |ϕ| ∈ L^2(ℝ^d,ℝ) <==> |ϕ|^2 in L^1(ℝ^d,ℝ)$
]
*Example* 但是需要注意, 虽然积分距离 Cauchy 网总是积分收敛, 存在积分距离 Cauchy 网不逐点收敛到极限函数
#indent[
  二等分行走序列是积分距离 Cauchy 的, 测度趋于 $0$
  $ 
    f_1 &= 𝟙_([0,1/2]) \
    f_2 &= 𝟙_([1/2,1]) \
    f_3 &= 𝟙_([0,1/4]) \
    &⋯ \
    f_(2 + ⋯ + 2^k + p) &= 𝟙_([(p-1)/2^k, p/2^k])
  $ 
  它不遵循逐点收敛的定义

  $ forall x in [0,1] , forall N in ℕ , exists i,j > N \ f_i (x) = 0, f_j (x) = 1 $

  虽然概念直觉上它收敛到空集
]
#tag("integrable-exist-subnet-almost-everywhere-pointwise-convergence") 
#indent[
  但是所有 $L^1,L^2$ 积分距离 Cauchy 网中存在子网几乎处处逐点收敛到目标可积函数. 这来自, 在存在测度任意小的集合 $A$ 使得在 $A^∁$ 上绝对一致收敛. cf. p.129--130 of @ref-5 
]
$𝟙_A in L^1, L^2$ 定义出来的可测集是 Lebesgue 可测集, 可能不连通

我们定义的是绝对可积. 其它的积分操作, 例如 $integral_(-∞)^(∞)  e^(- #i x^2) $, 是基于绝对可积的特殊的极限操作, 和问题的环境有关

线性换坐标 $A in GL$ 给出积分变量替换公式 $det A$

#tag("integral-on-form") 如果认为是对 $n$ form 积分, i.e. form 作用在单位平行体上的值的积分, 则积分是 $GL$ invariant 的

几乎处处解析

#tag("integral-change-of-variable-formula") 
#indent[
  积分的微分同胚的变量替换公式 $integral_(ℝ^n) f = integral_(ℝ^n) (f ∘ ϕ) |det #d ϕ|$ or $integral_(ℝ^n) #d y space f(y) = integral_(ℝ^n) #d x space (f ∘ ϕ)(x) |det #d ϕ (x)|$
  
  将换坐标映射的微分 $#d f$ at 每个 simplex 中心 as 仿射映射作用于定义域 simplex 得到值域 simplex 用于近似, 对有界区域对 #link(<mean-value-theorem-analytic>)[微分中值定理] (高阶) 近似进行 compact 一致控制, 然后取分割极限 (@ref-12, p.92--99)
  
  然后无界区域是来自有界区域的可数逼近, $sum_(i = 1 .. ∞) ε_i < ε$ 技术

  如果认为是对 $n$ form 积分, 则积分变量替换等价于 $n$ form 积分 (cf. #link(<integral-on-form>)[]) is 微分同胚 invariant
]
#tag("integral-on-manfold") *Question* 
#indent[
  根据变量替换公式, 流形上的坐标里的对 $n$ form 的积分 invariant (cf. #link(<integral-on-form>)[])

  但是如果想要对定义在整个 #link(<orientable>)[可定向] 流形上的 $n$ form 进行积分, 应该怎么做?

  一种做法是, 类似 #link(<integral-change-of-variable-formula>)[变量替换公式] 的证明, 坐标内, 线性近似 + compact 一致控制 + 分割极限, 然后可数覆盖逼近整个流形

  为了定义积分, 需要某种可数化假设. 最简单的假设是流形可以被可数的坐标卡覆盖. 就让我们用这个假设

  现在的问题是, 坐标卡交集的地方的积分是重复的, 需要去除重复

  我并不打算使用可测集对交集和减集封闭, 也不打算使用弯曲 simplex (box) 型区域分割 *alias* 三角剖分, 它甚至更难证明
  
  而是在 simplex (box) 近似的水平上, 对交集和减集封闭 (多面体分解到 simplex (box) 之后)

  e.g. transition map 的微分 $#d f$ at 每个 simplex (box) 中心 as #link(<affine-map-point-ver>)[仿射映射] (线性映射) 来将坐标区域 $B$ 的 simplex (box) 映射到坐标区域 $A$ 的 simplex (box). 然后 simplex (box) 的交集和减集可以再分解到 simplex (box) 
  
  对这种近似取极限, 要求 $L^1$ or $L^2$ 式绝对收敛, 就得到流形上的积分

  证明结果不依赖于坐标系统和线性近似逼近方式的选取
]
用 (不固定坐标轴的) 矩形和 simplex 定义的测度和积分都是等价的, 因为矩形和 simplex 可以相互可数逼近

#tag("Fubini-theorem") 

$ integral_X #d x integral_X' #d x' f(x,x') = integral_(X × X') #d (x,x') f(x,x') = integral_X' #d x' integral_X #d x f(x,x') $

因为矩形区域的分段常值是可 product 分解的, 再用绝对收敛的上界控制

Fubini theorem 2 ... (@ref-5)

Fubini 定理可以用于证明函数图形下方的体积计算就是对底部体积对高度函数积分

area coarea 公式

#tag("try-to-define-low-dim-integral") 
#indent[
  尝试对 $k < n$ 维的 simplex or 平行体和 $k$ form 定义积分
  
  form 作用于 simplex or 平行体就定义为 form 作用在 simplex 所在的 $k$ 方向的单位体积平行体 (如果存在)

  simplicial map 型 $k$ form := 设 $x_0 ,…, x_k$ simplex 是顶点, 则 $ω(sum t_i x_i) = sum t_i ω(x_i)$
  
  如果 $k$ chain 的一个顶点在相邻的 $k$ simplex 中 with 不同 $k$ 方向, 则这个顶点上的 $k$ form 有不同的作用值. or $k$ chain 并不对 $k$ 方向连续. 这不同于 $n$ 阶的情况, 余维数零所以 $n$ chain 都是相同的方向

  良好的逼近应该需要让 $k$ 方向有良好的正则性, 但是没有额外结构的话似乎很难定义这种概念 (即使是 Grassmann 流形?)

  微分子流形结构可以简单消去这种 $k$ 方向不连续

  不同的 $n$ 维 $k$ form 可能在一个 $k$ 方向有相同的作用值, 但是这层冗余可以消去 by 考虑作用在所有 $k$ 方向

  类似 $n$ 阶的情况, $k$ chain 上的 simplicial map form 定义积分 $integral_(σ) ω = sum ω("center of" σ_i) Vol(σ_i)$
]
#tag("integral-on-submanfold") 
#indent[
  让 $n$ 维流形的 $k$ form 限制于 $k$ #link(<orientable>)[可定向] 子流形的切空间 (cf. #link(<integral-on-manfold>)[])

  $M$ 的 $n$ form 等价于纯量函数, 但是 $M$ 的 $n-1$ form $ω$ 应怎么积分控制? 尝试 $sup(S "orientable" n-1 "submanifold")(integral_(S) |ω - ω'|)$?

  如无必要, 暂时不引入额外的 metric 来定义 $integral_M (⟨ ω ⟩^2)^(1/2)$ or $(integral_M ⟨ ω ⟩^2)^(1/2)$ 
]