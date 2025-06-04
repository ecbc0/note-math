#import "/module/module.typ": *
#show: module

*Example* Euclidean 解析流形, 球面 $𝕊^n$ 的多种坐标
- 函数图坐标, 函数方程 $|x|^2 = 1$ and 隐函数定理. e.g. $y = sqrt(1-x^2)$ for $𝕊^1 subset ℝ^2$
- #link(<stereographic-projection>)[球极投影] 
- 极坐标. 从 $𝕊^1$ 的三角函数开始, 归纳地构造新的纬度
- 测地线坐标

*Example* $ℝ^3$ 的参数曲线曲面. 解析函数 $f : ℝ^2 -> ℝ^3$, $#d f != 0$ ==> 局部参数是局部解析同胚

#tag("manifold") := minimal structure to define manifold, 一族同维数坐标卡覆盖 $M$, 用 Euclidean or Minkowski or 二次型解析的转换函数

#tag("orientable") 可定向 := 在切丛中可以解析地定义 #link(<orientation>)[]

等价于 $"Diff"$ 的 $det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$ 分解

等价于存在坐标覆盖, 每个 transition function 微分 $#d f in SO$

*Example* #link(<Mobius-strip>)[] 不可定向

带边流形如果内部可定向, 则边界也可定向. 直觉上, 边界的局部有相同的内部 + 内部可定向 ==> 边界的局部有相同方向 ==> 边界方向被决定了