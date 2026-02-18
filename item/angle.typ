#import "../module/module.typ": *
#show: module

Euclidean $ℝ^2$ 的方向空间是 ${(x, y) in ℝ^2 : x^2 + y^2 = 1} = 𝕊^1$

$ℝ^2$ 的方向空间 $𝕊^1$ 上也可以定义任意两点 $p, q in 𝕊^1$ 之间的 "距离": 从 $ℝ^2$ 的 "metric" 限制在 $𝕊^1$ 上, 可以得到 $𝕊^1$ 的 metric, 然后用 $𝕊^1$ 的 metric 可以定义 $𝕊^1$ 上的距离, 作为连接两点多最短测地线的距离

保持 $ℝ^2$ 的 metric 的映射叫做 $ℝ^2$ 的 isometry. 可以证明 $ℝ^2$ 的 isometry 是仿射映射. $ℝ^2$ 的 (保持定向的) isometry 是 $SO(2) ⋊ ℝ^2$. isometry 中固定原点的部分是 $SO(2)$, 它也保持 $ℝ^2$ 方向空间 $𝕊^1$ 且保持 $𝕊^1$ 上的 metric 从而保持 $𝕊^1$ 上的距离

$SO(2)$ 称为旋转

$SO(2)$ 的元素 ${mat(a,-b;b,a) : a^2 + b^2 = 1}$. 集合论上等价于 ${(a, b) : a^2 + b^2 = 1} = 𝕊^1$
$
  mat(a,-b;b,a) <--> (a, b)
$

$SO(2)$ 作用在 $SO(2)$ 和作用在 $𝕊^1$ 是兼容的 
$
  mat(a,-b;b,a) vec(1,0) &= vec(a,b) && " for" vec(1, 0) in 𝕊^1 \

  mat(a,-b;b,a) mat(1;,1) &= mat(a,-b;b,a) && " for" mat(1;,1) in SO(2)
$
这样, 我们可以定义 $z, z' in 𝕊^1$ 上的乘法为对应的 $SO(2)$ 的乘法
$
  z ⋅ z' = (a, b) ⋅ (a', b') &≃ mat(a,-b;b,a) mat(a',-b';b',a') \
  &= ⋯ \
  &≃ (a a' - b b', a' b + a b')
$
同时因为 $SO(2)$ 是线性映射而得到有分配律
$
  z ⋅ (z' + z'') = z ⋅ z' + z ⋅ z''
$
#tag("complex-numbler-geometric-meaning") 这等同于单位复数的乘法. 由于旋转 $SO(2)$ 和纯量乘法 $ℝ$ 是交换的, 单位复数上的乘法可以轻松延拓到复数 $ℂ$ 上的乘法

#tag("angle") 角度
#indent[
  可能不是完美的动机
  
  直觉上, 在 Euclidean $ℝ^2$, 我们可以 "旋转", 并且旋转的复合对应 "角度" 的相加
  
  角度应该是 $𝕊^1$ 上的距离, 连接两点多最短测地线的距离.

  我们定义的旋转是保持 $𝕊^1$ 距离的群, 还没直接解释直观意义上的旋转.

  直观上可以知道, $𝕊^1$ 上可以连续地给每一点都定义一个 "切空间正方向"
  
  对于 $(a, b) in 𝕊^1$, 切空间正方向是 $(-b, a) in ⊤ 𝕊^1$

  可以猜测, 直观上的旋转就是 $𝕊^1$ 上每一点沿正方向移动 $θ$ 距离/弧度/角度

  问题是, 如何理解保持 $𝕊^1$ 距离 (和定向) 的 $SO(2)$ 就等价于这种直观上的旋转?
  
  至少从结果上, 我知道
  - 正方向切场 $X = (-b, a)$ 是一种无穷小 isometry (被称为 Killing field), 是 isometry group 的 Lie algebra. 而每点沿正方向移动 $θ$ 距离 (沿测地线), 就是从无穷小 isometry 生成 isometry 的方式, 即 Lie algebra 的 $exp$ 
  - 由于测地线是沿向量场的积分曲线的一种, 所以移动距离的加法同态于群作用的乘法
    $
      exp((θ_1 + θ_2) X) = exp(θ_1 X) ⋅ exp(θ_2 X)
    $
    这也会给出交换性
    $
      exp(θ_1 X) ⋅ exp(θ_2 X) = exp(θ_2 X) ⋅ exp(θ_1 X)
    $
   
  对于 $vec(1,0) in 𝕊^1$ 为起点的测地线坐标, 结果记为 #tag("trigonometric-function") 三角函数 $vec(cos(θ),sin(θ))$. 
  
  根据 $SO(2)$ 乘法和 $𝕊^1$ 乘法的对应, 我们知道 $mat(cos(θ), -sin(θ); sin(θ), cos(θ)) vec(1, 0) = vec(cos(θ), sin(θ))$

  因此 $mat(cos(θ), -sin(θ); sin(θ), cos(θ))$ 也是对 $𝕊^1$ 其它点旋转 $θ$ 的作用
  
  根据同态
  $
    mat(cos(s+t),-sin(s+t);sin(s+t),cos(s+t)) 
    = mat(cos(s),-sin(s);sin(s),cos(s)) mat(cos(t),-sin(t);sin(t),cos(t))
  $

  根据 $exp$ 的幂级数表示, 根据 $vec(1, 0)$ 处的正方向单位切向量是 $vec(0, 1)$ 对应到 $mat(,-1;1)$

  $
    mat(cos(θ), -sin(θ); sin(θ), cos(θ)) = sum_(n = 0..∞) 1/n! mat(,-1;1)^n θ^n
  $
  
  可以得到
  $
    cos(θ) &= sum frac((-1)^n,(2n)!) θ^(2n) \
    sin(θ) &= sum frac((-1)^n,(2n+1)!) θ^(2n+1)
  $
]
用复数来表示的话 $mat(,-1;1) ≃ #i$
$
  mat(cos(θ), -sin(θ); sin(θ), cos(θ)) ≃ sum_(n = 0..∞) 1/n! (#i θ)^n = e^(#i θ) = cos t + #i sin t
$
且有 $SO(2) ≃ #U (1, ℂ)$

$± #i := vec(0,± 1) = vec(cos(± π/2) , sin(± π/2)) ≃ mat(, -(± 1); ± 1)$

$#i^(-1) = - #i$ or $- #i^2 = 1$ or $#i^2 = -1$

复共轭就是距离不变但方向逆 $(|z| e^(#i t))^* = |z| e^(- #i t)$ or $(x + #i y)^* = x - #i y$

类似地, $ℝ^(1,1)$ 双曲和 split complex $ℂ_"split"$

- $exp(Im(ℂ))$ give $#U (1,ℂ) ≃ 𝕊^1 ≃ SO(2)$

- $exp(Im(ℂ_"split"))$ give $#U (1,ℂ_"split") ≃ ℍ𝕪^1 ≃ SO(1,1)$

*Question* 推广到四元数 $ℍ$ 和八元数 $𝕆$ 及其 split 版本

反过来, 如果我们承认角度可加 (同态) 这种概念, 那么就会提供动机之于: $ℝ^2$ 的 Euclidean norm 是 $sqrt(x_1^2 + x_2^2)$ 而不是别的 norm. (norm 定义为 $|λ x| = |λ| |x|$.)