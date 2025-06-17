#import "../module/module.typ": *
#show: module

Euclidean $ℝ^2$ 的方向空间是 $𝕊 = 𝕊^1$

旋转是 $ℝ^2$ 的保持方向空间 $𝕊$ 的 (保持方向) #raw("#link(<isometry>)[]") 的部分

$ℝ^2$ 的 isometry 是 $SO(2) ⋊ ℝ^2$ (可以证明 $ℝ^2$ isometry 蕴含 #raw("#link(<affine>)[仿射]"))

旋转是 $SO(2)$

$SO(2)$ 的元素 $mat(a,-b;b,a)$ with $a^2 + b^2 = 1$. 集合论上等价于 $𝕊$

乘法上也是兼容的 $mat(a,-b;b,a) vec(1,0) = vec(a,b) ≃ mat(a,-b;b,a) = mat(a,-b;b,a) mat(1;,1)$

$SO(2)$ 的元素的乘法等价于 $ℂ$ 的长度 $1$ 元素的乘法. recall $ℂ$ 是 #raw("#link(<normed-algebra>)[]") $|a b| = |a| |b|$

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
  或者使用 #tag("Euler-formula") $exp #i t = cos t + #i sin t ≃ mat(cos(t),-sin(t);sin(t),cos(t))$, 然后用 $ℂ$ #raw("#link(<exponential>)[指数函数]") 和复数乘法 $exp #i (s+t) = exp #i s ⋅ exp #i t$
]
于是 $ℝ ↠ SO(2) ≃ 𝕊 ≃ #U (1,ℂ)$

双曲角度同理 $ℝ <-> SO(1,1) ≃ ℍ𝕪 ≃ #U (1,ℂ_"split")$