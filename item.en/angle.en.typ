#import "/module/module.typ": *
#show: module

Euclidean $ℝ^2$'s direction space is $𝕊 = 𝕊^1$

Rotation is the part of $ℝ^2$'s (direction-preserving) #link(<isometry>)[] that preserves the direction space $𝕊$

The isometry of $ℝ^2$ is $SO(2) ⋊ ℝ^2$ (it can be proven that $ℝ^2$ isometry implies #link(<affine>)[affine])

Rotation is $SO(2)$

The element of $SO(2)$ $mat(a,-b;b,a)$ with $a^2 + b^2 = 1$. Set-theoretically equivalent to $𝕊$

Also compatible in multiplication $mat(a,-b;b,a) vec(1,0) = vec(a,b) ≃ mat(a,-b;b,a) = mat(a,-b;b,a) mat(1;,1)$

The multiplication of elements in $SO(2)$ is equivalent to the multiplication of elements of length $1$ in $ℂ$. recall $ℂ$ is #link(<normed-algebra>)[] $|a b| = |a| |b|$

*Question* #tag("angle") 
#indent[
  Probably not the perfect motivation

  Restricting the $ℝ^2$ metric to $𝕊$ yields #link(<metric-manifold>)[]
  
  Intuitively, in Euclidean $ℝ^2$, we can "rotate", and the composition of rotations corresponds to the addition of "angles"
  
  The latter should be the $exp : ℝ -> "Isom" 𝕊$ of $𝕊$'s #link(<Killing-field>)[] as a one-parameter homomorphism to $𝕊$'s isometry

  Calculate $exp$ with #link(<geodesic>)[geodesic]. Calculate geodesic with, for example, #link(<stereographic-projection>)[stereographic projection coordinates]. For the geodesic starting at $vec(1,0)$, the result is denoted as #tag(<trigonometric-function>) trigonometric function $vec(cos(t),sin(t))$. The power series expansion of $vec(cos(t),sin(t))$ at $t = 0$ can be calculated using #link(<inverse-analytic>)[inverse function theorem]
  $
    cos(t) &= sum frac((-1)^n,(2n)!) t^(2n) \
    sin(t) &= sum frac((-1)^n,(2n+1)!) t^(2n+1)
  $
  Homomorphism is reflected in, according to power series
  $
    mat(cos(s+t),-sin(s+t);sin(s+t),cos(s+t)) 
    = mat(cos(s),-sin(s);sin(s),cos(s)) mat(cos(t),-sin(t);sin(t),cos(t))
  $
  Or using #tag("Euler-formula") $exp #i t = cos t + #i sin t ≃ mat(cos(t),-sin(t);sin(t),cos(t))$, then using $ℂ$ #link(<exponential>)[exponential function] and complex number multiplication $exp #i (s+t) = exp #i s ⋅ exp #i t$
]
Thus $ℝ ↠ SO(2) ≃ 𝕊 ≃ #U (1,ℂ)$

Hyperbolic angle is the same $ℝ <-> SO(1,1) ≃ ℍ𝕪 ≃ #U (1,ℂ_"split")$