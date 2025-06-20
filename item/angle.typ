#import "../module/module.typ": *
#show: module

Euclidean $ℝ^2$ 的方向空间是 $𝕊 = 𝕊^1$

旋转是 $ℝ^2$ 的保持方向空间 $𝕊$ 的 (保持方向) #raw("#link(<isometry>)[]") 的部分

$ℝ^2$ 的 isometry 是 $SO(2) ⋊ ℝ^2$ (可以证明 $ℝ^2$ isometry 蕴含 #raw("#link(<affine>)[仿射]"))

旋转是 $SO(2)$

$SO(2)$ 的元素 $mat(a,-b;b,a)$ with $a^2 + b^2 = 1$. 集合论上等价于 $𝕊$

乘法上也是兼容的 $mat(a,-b;b,a) vec(1,0) = vec(a,b) ≃ mat(a,-b;b,a) = mat(a,-b;b,a) mat(1;,1)$

*Question* #tag("angle") 
#indent[
  可能不是完美的动机

  将 $ℝ^2$ metric 限制在 $𝕊$ 得到 #raw("#link(<metric-manifold>)[]")
  
  直觉上, 在 Euclidean $ℝ^2$, 我们可以 "旋转", 并且旋转的复合对应 "角度" 的相加
  
  后者应该是 $𝕊$ 的 #raw("#link(<Killing-field>)[]") 的 $exp : ℝ -> "Isom" 𝕊$ 作为单参数同态到 $𝕊$ 的 isometry

  用 #raw("#link(<geodesic>)[测地线]") 计算 $exp$. 用例如 #raw("#link(<stereographic-projection>)[球极投影坐标]") 计算测地线. 对于 $vec(1,0)$ 为起点的测地线, 结果记为 #tag("trigonometric-function") 三角函数 $vec(cos(t),sin(t))$. 用 #raw("#link(<inverse-analytic>)[反函数定理]") 可以计算 $vec(cos(t),sin(t))$ 的在 $t = 0$ 的幂级数展开
  $
    cos(t) &=& sum frac((-1)^n,(2n)!) t^(2n) \
    sin(t) &=& sum frac((-1)^n,(2n+1)!) t^(2n+1)
  $
  同态体现在, 根据幂级数
  $
    mat(cos(s+t),-sin(s+t);sin(s+t),cos(s+t)) 
    = mat(cos(s),-sin(s);sin(s),cos(s)) mat(cos(t),-sin(t);sin(t),cos(t))
  $
]
于是 $ℝ ↠ SO(2) ≃ 𝕊 ≃ #U (1,ℂ)$

双曲角度同理 $ℝ <-> SO(1,1) ≃ ℍ𝕪 ≃ #U (1,ℂ_"split")$

#tag("complex-numbler-geometric-meaning")
#indent[
  现在, $𝕊$ 上有乘法, 表现为角度相加

  $ℝ^2$ 可以分解为距离 $ℝ_(>= 0)$ 和方向 $𝕊$, $z = |z| e^(#i t)$

  $ℝ^2$ 乘法定义为 $ℝ_(>= 0)$ 距离相乘和 $𝕊$ 的方向相乘或者角度相加 $z w = |z| |w| e^(#i t) e^(#i s) = |z| |w| e^(#i (t + s))$

  $𝕊$ 的乘法逆表示为角度的加法逆 $(e^(#i t))^(-1) = e^(- #i t)$

  $ℝ^2$ 的乘法逆是 $ℝ_(> 0)$ 距离的逆且 $𝕊$ 的方向的逆 $(|z| e^(#i t))^(-1) = |z|^(-1) (e^(#i t))^(-1) = |z|^(-1) e^(- #i t)$

  分配律 $z (z' + z'') = z z' + z z''$ 
  - $ℝ_(>= 0)$ 距离乘法的分配律就是 $ℝ^2$ 的, 意义是先向量加法再伸缩等于先伸缩再向量加法
  - $𝕊$ 方向乘法的分配律的意义是, 旋转是线性映射, 先向量加法再旋转等于先旋转再向量加法
  不同于 $GL(n,ℝ)$ 和 $ℝ^n$, 由于 $SO(2) ≃ 𝕊$ 以及 $ℝ^2 ∖ 0 ≃ ℝ_(> 0) × 𝕊$, 导致可以说 $ℝ^2$ 自己能够乘法

  代数 $(ℝ^2,+,⋅)$ or $(ℂ,+,⋅)$, 称为复数

  $SO(2)$ 就是 $ℂ$ 的长度 $1$ 元素的乘法, 也是保持 $ℂ$ 的长度的乘法

  $SO(2) ≃ #U (1,ℂ)$

  $± #i := vec(0,± 1) = vec(cos(± π/2) , sin(± π/2)) ≃ mat(, -(± 1); ± 1)$

  $#i^(-1) = - #i$ or $- #i^2 = 1$ or $#i^2 = -1$

  $vec(cos(t) , sin(t))^(-1) = vec(cos(-t) , sin(-t)) = vec(cos(t) , - sin(t))$

  复共轭就是距离不变但方向逆 $(|z| e^(#i t))^* = |z| e^(- #i t)$ or $(x + #i y)^* = x - #i y$
]
#tag("Euler-formula") $ℂ$ #link(<exponential>)[指数函数] $exp #i t = cos t + #i sin t$

类似地, 双曲和 split complex $ℂ_"split"$