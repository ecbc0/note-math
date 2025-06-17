#import "../module/module.typ": *
#show: module

$(ℝ,+,⋅)$ algebraic structure or 
$
&ℝ ∈ Set \
&+& ℝ^2 -> ℝ \
&⋅& ℝ^2 -> ℝ \
&& "property-real-algebra"
$

There are two ways to extend to $ℝ^n$

- Linear Algebra
#indent[  
  $
  & ℝ^n ∈ Set \
  &+& (ℝ^n)^2 -> ℝ^n \
  &⋅& ℝ × ℝ^n -> ℝ^n \
  && "property-linear-algebra"
  $
  *Example* Real 2-dimensional space. $vec(x,y),vec(x',y') ∈ ℝ^2, a ∈ ℝ$
  $
    vec(x,y) + vec(x',y') &=&vec(x+x',y+y') \

    a vec(x,y) &=&vec(a x, a y) \
  $
  and the distributive law. The construction of $ℝ^n$ property-linear-algebra uses the property-real-algebra of $ℝ$
]
- Algebra
#indent[
  $
  & (ℝ^n) ∈ Set \
  &+& (ℝ^n)^2 -> ℝ^n \
  &⋅& (ℝ^n)^2 -> ℝ^n \
  && "property-algebra"
  $
  *Example* #tag("complex-number") Complex number. $x + y #i, x' + y' #i ∈ ℂ$

  Addition is the same as $ℝ^2$. Multiplication uses $#i^2 = -1$ or $1/#i = -#i$ and the distributive law
  $
    (x + y #i)(x' + y' #i) &=&(x x' - y y') + (x y' + y x') #i
  $
  one of motivation of complex-number or $z^2 = -1$ is the characteristic polynomial equation of #raw("#link(<harmonic-oscillator>)[]") $ξ^2 + ω^2 = 0$

  *Example* #tag("split-complex-number") Split-complex number. $x + y #i-split, x' + y' #i-split ∈ ℂ_"split"$

  Addition is the same as $ℝ^2$. Multiplication uses $#i-split^2 = 1$ or $1/#i-split = #i-split$ and the distributive law
  $
    (x + y #i-split)(x' + y' #i-split) &=&(x x' + y y') + (x y' + y x') #i-split
  $
]
#tag("linear") $ℝ^n$ linear structure
#indent[
  struct homomorphism := a mapping $f$ that preserves struct

  *Example* linear struct hom $f: ℝ^n -> ℝ^m$ 
  - $x ∈ ℝ^n$ map to $f(x) ∈ ℝ^m$
  - $+ : (ℝ^n)^2 -> ℝ^n$ map to $f(+) : (ℝ^m)^2 -> ℝ^m$
  so $f(x+x')$ map to $f(x) f(+) f(x')$ or abbreviated as $f(x) + f(x')$

  linear struct hom is also called linear mapping

  bijection to itself + $f,f^(-1)$ hom = isomorphism

  linear isomorphism of $ℝ^n$ := $GL(n,ℝ)$
]
$ℝ^n$ algebraic structure
#indent[
  *Example* 
  - $ℂ$ complex numbers, $ℍ$ quaternions, $𝕆$ octonions
  - Matrix algebra. But conceptually and meaningfully, it doesn't seem like a good generalization of $ℝ$ algebra. So we need other restrictions, e.g. normed algebra, composition algebra 
]
#tag("normed-algebra")
#indent[
  The multiplication of $ℝ$ has the property $|x y| = |x| |y|$

  The $ℝ^n$ spatial quadratic form has the property $⟨ a x ⟩^2 = a^2 ⟨ x ⟩^2$

  For $ℝ^n$ algebra, we expect the property $⟨ x y ⟩^2 = ⟨ x ⟩^2 ⟨ y ⟩^2$
]
*Example*
- $ℂ$
#indent[
  def complex conjugate $#i^* = - #i$
  
  $(x + y #i)^* := x + y #i^* = x - y #i$

  $z z^* = z^* z = |z|^2 = x^2 + y^2$. This is $ℝ^2$ spatial

  $|z z'|^2 = |z|^2 |z'|^2$ by
  $
    (x x' - y y')^2 + (x y' + y x')^2 
    &=&x^2 x'^2 + y^2 y'^2 + x^2 y'^2 + y^2 x'^2 \
    &=&(x^2 + y^2) (x'^2 + y'^2)
  $
]
- $ℂ_"split"$ 
#indent[
  $z z^* = z^* z = |z|^2 = x^2 - y^2$. This is $ℝ^(1,1)$ spacetime

  $|z z'|^2 = |z|^2 |z'|^2$ by
  $
    (x x' + y y')^2 - (x y' + y x')^2 
    &=&x^2 x'^2 + y^2 y'^2 - x^2 y'^2 - y^2 x'^2 \
    &=&(x^2 - y^2) (x'^2 - y'^2)
  $
  null elements have no multiplicative inverse
]
- $exp(Im(ℂ))$ give $#U (1,ℂ) ≃ 𝕊 ≃ SO(2)$

- $exp(Im(ℂ_"split"))$ give $#U (1,ℂ_"split") ≃ ℍ𝕪 ≃ SO(1,1)$

New imaginary unit construction method
#indent[
  *Example* 
  #indent[
    Use a new imaginary unit $#i _2$ in the complex number $x_0 + x_1 #i _1$ with $(#i _1)^2 = -1$

    - Define other imaginary units $#i _3 := #i _1 #i _2$

    - Different imaginary units anticommute $#i _2 #i _1 := - #i _1 #i _2$

    - Invert the imaginary unit conjugate or $1/#i = -#i$
      - $(#i _2)^* &:=&-& #i _2$ 
      - $(#i _3)^* &:=&-& #i _3$

    Anti-commutation + conjugate inversion makes $x^* x = x x^* = |x|^2$, and also gives $(x x')^* = x'^* x^*$
    
    Imaginary unit associativity $#i _i'' (#i _i' #i _i) = (#i _i'' #i _i') #i _i$
    
    Satisfies norm multiplication $|x y|^2 = |x|^2 |y|^2$

    $(#i _3)^2 = #i _1 #i _2 #i _1 #i _2 = - #i _1^2 #i _2^2 = #i _2^2$
    $
      (#i _2)^2 &=&-1 && "give" (#i _3)^2 = -1 "and" ℍ \
      (#i _2)^2 &=&+1 && "give" (#i _3)^2 = +1 "and" ℍ_("split") "with" (2,2) "signature"
    $
  ]
  *Example* If split complex $#i _1^2 = 1$ is used, then $(#i _3)^2 = - #i _1^2 #i _2^2 = - #i _2^2$, so $#i _2^2 = ± 1$ both give split quaternion
  
  - $exp(Im(ℍ))$ give $#U (1,ℍ) ≃ 𝕊^3 ↠ SO(3)$

  - $exp(Im(ℍ_"split"))$ give $#U (1,ℍ_"split") ≃ ℚ^(2,2)(1) ↠ SO(1,2)$
  
  *Example* Using a new imaginary unit $#i _4$ in quaternion $x_0 + x_1 #i _1 + x_2 #i _2 + x_3 #i _3$
  #indent[
    Define other imaginary units 
    $
      #i _5 &:=&#i _1 #i _4 \
      #i _6 &:=&#i _2 #i _4 \
      #i _7 &:=&#i _3 #i _4 \
    $
    Anti-commutation of different imaginary units $#i _i' #i _i := - #i _i #i _i'$

    Anti-associativity of different imaginary units $#i _i'' (#i _i' #i _i) := - (#i _i'' #i _i') #i _i$ if $#i _i'' != ± #i _i' #i _i$

    Imaginary unit conjugate inversion $(#i _i)^* = - #i _i$

    Anti-commutation + conjugate inversion makes $x^* x = x x^* = |x|^2$, and also gives $(x x')^* = x'^* x^*$

    *Question* Anti-associativity is needed for norm multiplication $|x y|^2 = |x|^2 |y|^2$

    $(#i _4)^2 = -1$ gives octonion $𝕆$. split octonion similarly, with $(4,4)$ signature
  ]
  - $exp(Im(𝕆))$ give $#U (1,𝕆) ≃ 𝕊^7 ↪ SO(7)$ (*Question*)
  
  - $exp(Im(𝕆_"split"))$ give $#U (1,𝕆_"split") ≃ ℚ^(4,4)(1) ↪ SO(3,4)$

  What is obtained from $ℍ$ and the associative law of imaginary units is another algebra $ℍ ⊕ ℍ$, which does _not_ satisfy $|x y|^2 = |x|^2 |y|^2$

  *Question* Anti-combination cannot be further extended to sixteen dimensions and beyond
]
The new imaginary unit construction method is not coordinate-free, so we need to consider the automorphism of imaginary units $f : Im(𝕂) -> Im(𝕂)$ with $f(x y) = f(x) f(y)$. Since it preserves multiplication, it automatically preserves distance
  
  *Example* for $ℂ$ it's $ℤ_2 = #O (1)$ symmetric $#i -> -#i$

  *Question* 
  - $SO(3)$ for $ℍ$
  - $G_2$ for $𝕆$. $dim G_2 = 14 < 21 = dim (SO(7))$

  $G_2$ as automorphism of $𝕆$ illustrates that, without additional structure, such as multiplication $x ⋅ y$ and $|x ⋅ y|^2 = |x|^2 |y|^2$, only a simple linear space structure, it is impossible to give special groups like $G_2$. (Although it is said that all compact groups can have matrix representations.) 

#tag("affine") $ℝ^n$ affine structure
#indent[
  Change the origin, translate

  hom additionally keeps $f(x-y) = f(x) f(-) f(y)$ abbreviated as $f(x) - f(y)$
]