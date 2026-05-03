#import "../module/module.typ": *
#show: module

#stack( dir: ltr,
  image("../image/stereographic_projection_1.jpeg", width: 40%),
  image("../image/stereographic_projection_2.jpeg", width: 50%)
)
Using quadratic form inversion $|x| x/(|x|) ⇝ 1/(|x|) x/(|x|)$. A type of conformal transformation

$𝕊^(n-1)$ Stereographic projection coordinates of the North and South poles. $map(𝕊^(n-1), ℝ^(n-1), x, ξ)$. $N "or" S = p = (∓ 1, 0)$, collinear $(p - x)/(p - (0,ξ)) = λ$, the solution give the map
$
  map(𝕊^(n-1), ℝ^(n-1), (x_1 ,…, x_n), (x_2 ,…, x_n)/(1 ± x_1))
$
$|ξ|^2 = (|x_2 ,…, x_n|^2)/((1 ± x_1)^2) = (1 - x_1^2)/((1 ± x_1)^2)$

$1 + |ξ|^2 = 2 (± x_1)/((1 ± x_1)^2) $
$
  map(ℝ^(n-1), 𝕊^(n-1), ξ, (± (1 - |ξ|^2), ξ)/(1 + |ξ|^2))
$
transition-function is quadratic form inversion
$ map(ℝ^(n-1), ℝ^(n-1), ξ, (1 ± x_1)/(1 ∓ x_1) ξ = ξ/(|ξ|^2)) $