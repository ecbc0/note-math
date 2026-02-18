#import "../module/module.typ": *
#show: module

The direction space of Euclidean $ℝ^2$ is ${(x, y) in ℝ^2 : x^2 + y^2 = 1} = 𝕊^1$

On the direction space $𝕊^1$ of $ℝ^2$, one can also define the "distance" between any two points $p, q in 𝕊^1$: by restricting the "metric" of $ℝ^2$ to $𝕊^1$, we obtain the metric of $𝕊^1$, and then using the metric of $𝕊^1$, we can define the distance on $𝕊^1$ as the length of the shortest geodesic connecting the two points

Maps that preserve the metric of $ℝ^2$ are called isometries of $ℝ^2$. It can be proven that isometries of $ℝ^2$ are affine maps. The (orientation-preserving) isometries of $ℝ^2$ are $SO(2) ⋊ ℝ^2$. The part of the isometries that fixes the origin is $SO(2)$, which also preserves the direction space $𝕊^1$ of $ℝ^2$ and preserves the metric on $𝕊^1$, thereby preserving the distance on $𝕊^1$

$SO(2)$ is called rotation

Elements of $SO(2)$ are ${mat(a,-b;b,a) : a^2 + b^2 = 1}$. Set-theoretically equivalent to ${(a, b) : a^2 + b^2 = 1} = 𝕊^1$
$
  mat(a,-b;b,a) <--> (a, b)
$

The action of $SO(2)$ on $SO(2)$ and on $𝕊^1$ is compatible
$
  mat(a,-b;b,a) vec(1,0) &= vec(a,b) && " for" vec(1, 0) in 𝕊^1 \

  mat(a,-b;b,a) mat(1;,1) &= mat(a,-b;b,a) && " for" mat(1;,1) in SO(2)
$
Thus, we can define multiplication on $z, z' in 𝕊^1$ as the corresponding multiplication of $SO(2)$
$
  z ⋅ z' = (a, b) ⋅ (a', b') &≃ mat(a,-b;b,a) mat(a',-b';b',a') \
  &= ⋯ \
  &≃ (a a' - b b', a' b + a b')
$
At the same time, because $SO(2)$ are linear maps, the distributive law holds
$
  z ⋅ (z' + z'') = z ⋅ z' + z ⋅ z''
$
#tag("complex-numbler-geometric-meaning") This is equivalent to the multiplication of unit complex numbers. Since rotations $SO(2)$ and scalar multiplication $ℝ$ commute, the multiplication on unit complex numbers can be easily extended to multiplication on complex numbers $ℂ$

#tag("angle") Angle
#indent[
  It may not be a perfect motivation

  Intuitively, in Euclidean $ℝ^2$, we can "rotate", and the composition of rotations corresponds to the addition of "angles"

  Angle should be the distance on $𝕊^1$, the distance along the shortest geodesic connecting two points.

  The rotation we defined is the group preserving the $𝕊^1$ distance, which hasn't directly explained the intuitive sense of rotation.

  Intuitively, we know that on $𝕊^1$, we can continuously define a "positive direction of the tangent space" for each point

  For $(a, b) in 𝕊^1$, the positive direction of the tangent space is $(-b, a) in ⊤ 𝕊^1$

  One can guess that the intuitive rotation is moving each point on $𝕊^1$ along the positive direction by a distance/radian/angle of $θ$

  The question is, how to understand that $SO(2)$, which preserves the $𝕊^1$ distance (and orientation), is equivalent to this intuitive rotation?

  At least from the result, I know
  - The positive direction tangent field $X = (-b, a)$ is an infinitesimal isometry (called a Killing field), which is the Lie algebra of the isometry group. And moving each point along the positive direction by a distance $θ$ (along the geodesic) is the way to generate an isometry from an infinitesimal isometry, i.e., the $exp$ of the Lie algebra.
  - Since geodesics are a kind of integral curve along a vector field, the addition of distances is homomorphic to the multiplication of group actions
    $
      exp((θ_1 + θ_2) X) = exp(θ_1 X) ⋅ exp(θ_2 X)
    $
    This also gives commutativity
    $
      exp(θ_1 X) ⋅ exp(θ_2 X) = exp(θ_2 X) ⋅ exp(θ_1 X)
    $

  For the geodesic coordinates starting from $vec(1,0) in 𝕊^1$, the result is denoted as #tag("trigonometric-function") trigonometric functions $vec(cos(θ),sin(θ))$.

  According to the correspondence between $SO(2)$ multiplication and $𝕊^1$ multiplication, we know that $mat(cos(θ), -sin(θ); sin(θ), cos(θ)) vec(1, 0) = vec(cos(θ), sin(θ))$

  Therefore $mat(cos(θ), -sin(θ); sin(θ), cos(θ))$ is also the action of rotating other points on $𝕊^1$ by $θ$

  According to the homomorphism
  $
    mat(cos(s+t),-sin(s+t);sin(s+t),cos(s+t))
    = mat(cos(s),-sin(s);sin(s),cos(s)) mat(cos(t),-sin(t);sin(t),cos(t))
  $

  According to the power series representation of $exp$, and that the unit tangent vector in the positive direction at $vec(1, 0)$ is $vec(0, 1)$ corresponding to $mat(,-1;1)$

  $
    mat(cos(θ), -sin(θ); sin(θ), cos(θ)) = sum_(n = 0..∞) 1/n! mat(,-1;1)^n θ^n
  $

  we can obtain
  $
    cos(θ) &= sum frac((-1)^n,(2n)!) θ^(2n) \
    sin(θ) &= sum frac((-1)^n,(2n+1)!) θ^(2n+1)
  $
]
Expressed using complex numbers, $mat(,-1;1) ≃ #i$
$
  mat(cos(θ), -sin(θ); sin(θ), cos(θ)) ≃ sum_(n = 0..∞) 1/n! (#i θ)^n = e^(#i θ) = cos t + #i sin t
$
and we have $SO(2) ≃ #U (1, ℂ)$

$± #i := vec(0,± 1) = vec(cos(± π/2) , sin(± π/2)) ≃ mat(, -(± 1); ± 1)$

$#i^(-1) = - #i$ or $- #i^2 = 1$ or $#i^2 = -1$

Complex conjugation preserves distance but reverses direction $(|z| e^(#i t))^* = |z| e^(- #i t)$ or $(x + #i y)^* = x - #i y$

Similarly, hyperbolic $ℝ^(1,1)$ and split complex $ℂ_"split"$

- $exp(Im(ℂ))$ give $#U (1,ℂ) ≃ 𝕊^1 ≃ SO(2)$

- $exp(Im(ℂ_"split"))$ give $#U (1,ℂ_"split") ≃ ℍ𝕪^1 ≃ SO(1,1)$

*Question* Generalize to quaternions $ℍ$ and octonions $𝕆$ and their split versions

Conversely, if we accept the concept that angles are additive (homomorphism), then it provides motivation for: the Euclidean norm of $ℝ^2$ being $sqrt(x_1^2 + x_2^2)$ and not some other norm. (Norm is defined as $|λ x| = |λ| |x|$.)