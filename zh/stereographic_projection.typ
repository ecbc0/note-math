#import "../module/module.typ": *
#show: module

#stack( dir: ltr,
  image("../image/stereographic_projection_1.jpeg", width: 40%),
  image("../image/stereographic_projection_2.jpeg", width: 50%)
)
使用二次型反演 $|x| x/(|x|) ⇝ 1/(|x|) x/(|x|)$. 共形变换的一种

$𝕊^(n-1)$ 南北极球极投影坐标. $map(𝕊^(n-1), ℝ^(n-1), x, ξ)$. $N "or" S = p = (∓ 1, 0)$, 共线 $(p - x)/(p - (0,ξ)) = λ$, 解给出映射
$
  map(𝕊^(n-1), ℝ^(n-1), (x_1 ,…, x_n), (x_2 ,…, x_n)/(1 ± x_1))
$
$|ξ|^2 = (|x_2 ,…, x_n|^2)/((1 ± x_1)^2) = (1 - x_1^2)/((1 ± x_1)^2)$

$1 + |ξ|^2 = 2 (± x_1)/((1 ± x_1)^2) $
$
  map(ℝ^(n-1), 𝕊^(n-1), ξ, (± (1 - |ξ|^2), ξ)/(1 + |ξ|^2))
$
transition-function 是二次型反演
$ map(ℝ^(n-1), ℝ^(n-1), ξ, (1 ± x_1)/(1 ∓ x_1) ξ = ξ/(|ξ|^2)) $
