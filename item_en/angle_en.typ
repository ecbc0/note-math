#import "../module/module.typ": *
#show: module

Euclidean $ℝ^2$'s direction space is $𝕊 = 𝕊^1$

Rotation is the part of $ℝ^2$'s (direction-preserving) #raw("#link(<isometry>)[]") that preserves the direction space $𝕊$

The isometry of $ℝ^2$ is $SO(2) ⋊ ℝ^2$ (it can be proven that $ℝ^2$ isometry implies #raw("#link(<affine>)[affine]"))

Rotation is $SO(2)$

The element of $SO(2)$ $mat(a,-b;b,a)$ with $a^2 + b^2 = 1$. Set-theoretically equivalent to $𝕊$

Also compatible in multiplication $mat(a,-b;b,a) vec(1,0) = vec(a,b) ≃ mat(a,-b;b,a) = mat(a,-b;b,a) mat(1;,1)$

*Question* #tag("angle") 
#indent[
  Probably not the perfect motivation

  Restricting the $ℝ^2$ metric to $𝕊$ yields #raw("#link(<metric-manifold>)[]")
  
  Intuitively, in Euclidean $ℝ^2$, we can "rotate", and the composition of rotations corresponds to the addition of "angles"
  
  The latter should be the $exp : ℝ -> "Isom" 𝕊$ of $𝕊$'s #raw("#link(<Killing-field>)[]") as a one-parameter homomorphism to $𝕊$'s isometry

  Calculate $exp$ with #raw("#link(<geodesic>)[geodesic]"). Calculate geodesic with, for example, raw("#link(<stereographic-projection>)[stereographic projection coordinates]"). For the geodesic starting at $vec(1,0)$, the result is denoted as #tag("trigonometric-function") trigonometric function $vec(cos(t),sin(t))$. The power series expansion of $vec(cos(t),sin(t))$ at $t = 0$ can be calculated using #raw("#link(<inverse-analytic>)[inverse function theorem]")
  $
    cos(t) &=& sum frac((-1)^n,(2n)!) t^(2n) \
    sin(t) &=& sum frac((-1)^n,(2n+1)!) t^(2n+1)
  $
  Homomorphism is reflected in, according to power series
  $
    mat(cos(s+t),-sin(s+t);sin(s+t),cos(s+t)) 
    = mat(cos(s),-sin(s);sin(s),cos(s)) mat(cos(t),-sin(t);sin(t),cos(t))
  $
]
Thus $ℝ ↠ SO(2) ≃ 𝕊 ≃ #U (1,ℂ)$

Hyperbolic angle is the same $ℝ <-> SO(1,1) ≃ ℍ𝕪 ≃ #U (1,ℂ_"split")$


#tag("complex-numbler-geometric-meaning")
#indent[
  Now, there is multiplication on $𝕊$, expressed as the addition of angles

  $ℝ^2$ can be decomposed into distance $ℝ_(>= 0)$ and direction $𝕊$, $z = |z| e^(#i t)$

  Multiplication in $ℝ^2$ is defined as the multiplication of distances in $ℝ_(>= 0)$ and the multiplication of directions in $𝕊$ or the addition of angles $z w = |z| |w| e^(#i t) e^(#i s) = |z| |w| e^(#i (t + s))$

  The multiplicative inverse of $𝕊$ is represented as the additive inverse of the angle $(e^(#i t))^(-1) = e^(- #i t)$

  The multiplicative inverse of $ℝ^2$ is the inverse of the distance in $ℝ_(> 0)$ and the inverse of the direction in $𝕊$ $(|z| e^(#i t))^(-1) = |z|^(-1) (e^(#i t))^(-1) = |z|^(-1) e^(- #i t)$

  Distributive law $z (z' + z'') = z z' + z z''$ 
  - The distributive law for distance multiplication in $ℝ_(>= 0)$ is that of $ℝ^2$, meaning that scaling after vector addition is equal to vector addition after scaling
  - The meaning of the distributive law for direction multiplication in $𝕊$ is that rotation is a linear map, and rotating after vector addition is equal to vector addition after rotation
  Unlike $GL(n,ℝ)$ and $ℝ^n$, because $SO(2) ≃ 𝕊$ and $ℝ^2 ∖ 0 ≃ ℝ_(> 0) × 𝕊$, it can be said that $ℝ^2$ itself is capable of multiplication

  Algebra $(ℝ^2,+,⋅)$ or $(ℂ,+,⋅)$, called complex numbers

  $SO(2)$ is the multiplication of elements of length $1$ in $ℂ$, and also the multiplication that preserves the length of $ℂ$

  $SO(2) ≃ #U (1,ℂ)$

  $± #i := vec(0,± 1) = vec(cos(± π/2) , sin(± π/2)) ≃ mat(, -(± 1); ± 1)$

  $#i^(-1) = - #i$ or $- #i^2 = 1$ or $#i^2 = -1$

  $vec(cos(t) , sin(t))^(-1) = vec(cos(-t) , sin(-t)) = vec(cos(t) , - sin(t))$

  Complex conjugation means that the distance remains unchanged but the direction is reversed $(|z| e^(#i t))^* = |z| e^(- #i t)$ or $(x + #i y)^* = x - #i y$
]
#tag("Euler-formula") $ℂ$ #link(<exponential>)[exponential function] $exp #i t = cos t + #i sin t$

Similarly, hyperbolic and split complex $ℂ_"split"$