#import "/module/module.typ": *
#show: module

minimal structure to define manifold, 一族同维数坐标卡覆盖 $M$, 用 Euclidean or Minkowski or 二次型解析的转换函数

*Example* Euclidean 解析流形, 球面 $𝕊^n$ 的多种坐标
- 函数图坐标, 函数方程 $|x|^2 = 1$ and 隐函数定理. e.g. $y = sqrt(1-x^2)$ for $𝕊^1 subset ℝ^2$
- #link(<stereographic-projection>)[球极投影] 
- 极坐标. 从 $𝕊^1$ 的三角函数开始, 归纳地构造新的纬度
- 测地线坐标

#tag("orientable") 可定向 := 存在坐标覆盖, 每个 transition function 微分 $#d f in SO$

*Example* #link(<Mobius-strip>)[] 不可定向