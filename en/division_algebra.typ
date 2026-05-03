#import "../module/module.typ": *
#show: module

#tag("complex_number") Complex numbers. $x + y #i, x' + y' #i ∈ ℂ$

Addition is the same as in $ℝ^2$. Multiplication uses $#i^2 = -1$ or $1/#i = -#i$ and the distributive law
$
  (x + y #i)(x' + y' #i) &= (x x' - y y') + (x y' + y x') #i
$
Origin of complex numbers or $z^2 = -1$

- Characteristic equation $ξ^2 + ω^2 = 0$ of the #link(<harmonic_oscillator>)[harmonic oscillator] ODE
- Another motivation for complex numbers comes from polynomial factorization. A *real* polynomial can be factored completely into products of the form $(x - a)$ or $(x^2 + p x + q)^2$, while the latter can be factored in $ℂ$ as $(x - a) (x - a^*)$, in particular, $x^2 + 1 = (x - #i) (x + #i)$. So for convenience, one may choose to use complex numbers.

  You can still choose to think of this as merely an algebraic convenience, without needing the geometry of complex numbers

  However, in the split complex $ℂ_"split"$ below, $x^2 + 1$ cannot be factored into linear polynomials. Even $x^2 - 1$ has four roots, besides $x = ± 1$, there are two more roots $1/2 (1 ± #i-split)$

*Example* #tag("split_complex_number") Split-complex numbers. $x + y #i-split, x' + y' #i-split ∈ ℂ_"split"$

Addition is the same as in $ℝ^2$. Multiplication uses $#i-split^2 = 1$ or $1/#i-split = #i-split$ and the distributive law
$
  (x + y #i-split)(x' + y' #i-split) &= (x x' + y y') + (x y' + y x') #i-split
$

Also see #link(<complex_numbler_geometric_meaning>)[Intuitive explanation of complex numbers] for the relation between multiplication by unit complex numbers and rotations $SO(2)$ in $ℝ^2$

#tag("normed_division_algebra")
#indent[
  $ℝ^n$ has a quadratic form $⟨ x , y ⟩$, a multiplication $x ⋅ y$, and for elements with unit (quadratic form) distance $x, y in ℝ^n, |x|^2 = |y|^2 = 1$, the multiplication $x ⋅ y$ also has unit distance $|x ⋅ y|^2 = 1$

  Combining unit distance and $ℝ$ scalar multiplication, this property can be expressed as $|x ⋅ y|^2 = |x|^2 |y|^2$
]
- $ℂ$ corresponds to $ℝ^2$
#indent[
  $(x + y #i)^* := x + y #i^* = x - y #i$

  $z z^* = z^* z = |z|^2 = x^2 + y^2$

  $|z z'|^2 = |z|^2 |z'|^2$ by
  $
    (x x' - y y')^2 + (x y' + y x')^2
    &= x^2 x'^2 + y^2 y'^2 + x^2 y'^2 + y^2 x'^2 \
    &= (x^2 + y^2) (x'^2 + y'^2)
  $
]
- $ℂ_{"split"}$ corresponds to $ℝ^(1,1)$
#indent[
  $z z^* = z^* z = |z|^2 = x^2 - y^2$

  $|z z'|^2 = |z|^2 |z'|^2$ by
  $
    (x x' + y y')^2 - (x y' + y x')^2
    &= x^2 x'^2 + y^2 y'^2 - x^2 y'^2 - y^2 x'^2 \
    &= (x^2 - y^2) (x'^2 - y'^2)
  $
  null elements have no multiplicative inverse
]
#tag("quaternion")
#indent[
  Starting from $ℂ$ or $ℂ_{"split"}$ as $x_0 + x_1 #i _1$, add a new imaginary unit $#i _2$

  - Define another imaginary unit $#i _3 := #i _1 #i _2$

  - Different imaginary units anti-commute $#i _2 #i _1 := - #i _1 #i _2$

  - Conjugate of an imaginary unit gives its negative $#i^* = -#i$
    - $(#i _2)^* &:= - #i _2$
    - $(#i _3)^* &:= - #i _3$

  This results in
  - $x^* x = x x^* = |x|^2$
  - $(x x')^* = x'^* x^*$
  - Imaginary unit multiplication is associative $#i _i'' (#i _i' #i _i) = (#i _i'' #i _i') #i _i$
  - Satisfies norm multiplication $|x y|^2 = |x|^2 |y|^2$

  $(#i _3)^2 = #i _1 (#i _2 #i _1) #i _2 = - #i _1 (#i _1 #i _2) #i _2 = - #i _1^2 #i _2^2$

  - If starting from $ℂ$, $#i _1^2 = -1$, thus $#i _3^2 = #i _2^2$
  $
    (#i _2)^2 &= -1 && "give" (#i _3)^2 = -1 "and" ℍ &&"for" ℝ^4 \
    (#i _2)^2 &= +1 && "give" (#i _3)^2 = +1 "and" ℍ_("split") &&"for" ℝ^(2,2)
  $
  - If starting from $ℂ_{"split"}$, $#i _1^2 = +1$, thus $#i _3^2 = - #i _2^2$
  $
    (#i _2)^2 &= -1 && "give" (#i _3)^2 = +1 "and" ℍ_("split") \
    (#i _2)^2 &= +1 && "give" (#i _3)^2 = -1 "and" ℍ_("split")
  $
]

- $exp(Im(ℍ))$ give $#U (1,ℍ) ≃ 𝕊^3 = ℚ^4 ↠ SO(3)$

- $exp(Im(ℍ_"split"))$ give $#U (1,ℍ_"split") ≃ ℚ^(2,2) ↠ SO(1,2)$

*Eaxmple* #tag("octonion") Using a new imaginary unit $#i _4$ in $x_0 + x_1 #i _1 + x_2 #i _2 + x_3 #i _3$ (where $#i _3 = #i _1 #i _2$)
#indent[
  Define other imaginary units
  $
    #i _5 &:= #i _1 #i _4 \
    #i _6 &:= #i _2 #i _4 \
    #i _7 &:= #i _3 #i _4 \
  $
  Different imaginary units anticommute $#i _i' #i _i := - #i _i #i _i'$

  Different imaginary units anti-associate $#i _i'' (#i _i' #i _i) := - (#i _i'' #i _i') #i _i$ if $#i _i'' != ± #i _i' #i _i$

  Conjugate of imaginary unit is negative $(#i _i)^* = - #i _i$

  This makes
  - $x^* x = x x^* = |x|^2$
  - $(x x')^* = x'^* x^*$
  - norm multiplication $|x y|^2 = |x|^2 |y|^2$

  Similarly, according to $#i _2 = ± 1$ and $(#i _4)^2 = ± 1$ gives octonion $𝕆$ for $ℝ^8$ or split octonion $𝕆_("split")$ for $ℝ^(4,4)$
]
- $exp(Im(𝕆))$ give $#U (1,𝕆) ≃ 𝕊^7 = ℚ^(8) ↪ SO(7)$

- $exp(Im(𝕆_"split"))$ give $#U (1,𝕆_"split") ≃ ℚ^(4,4)(1) ↪ SO(3,4)$

What results from $ℍ$ and the associativity of imaginary units is another algebra $ℍ ⊕ ℍ$, which does _not_ satisfy $|x y|^2 = |x|^2 |y|^2$

#tag("imaginary_automorphism") The method of constructing new imaginary units is not coordinate-free, so we need to consider automorphisms of imaginary units $f : Im(𝕂) -> Im(𝕂)$ with $f(x y) = f(x) f(y)$. Since it preserves multiplication, it automatically preserves distance

  *Example* for $ℂ$ it's $ℤ_2 = #O (1)$ symmetric $#i -> -#i$

  *Question* (@ref-21, p.35) (@ref-22, p.85)
  - $SO(3)$ for $ℍ$
  - $G_2$ for $𝕆$. $dim G_2 = 14 < 21 = dim (SO(7))$

  $G_2$ as automorphism of $𝕆$ illustrates that, without additional structure, such as multiplication $x ⋅ y$ and $|x ⋅ y|^2 = |x|^2 |y|^2$, only the bare linear space structure cannot yield special groups like $G_2$. (Although it is said that all compact groups can have matrix representations.)

#tag("problem_of_quaternionic_linear")
#indent[
  Attempting to define linear algebra for $ℍ^n$. We immediately encounter a problem: one definition of a linear map is as a homomorphism between linear spaces, but since $ℍ$ is non-commutative, scalar multiplication cannot arbitrarily commute with matrix multiplication on the same side $a (T x) ! = T(a x)$, thus matrix multiplication on $ℍ^n$ is not a linear transformation.

  Therefore, the "linear structure" of $ℍ^n$ is defined as, for example, left matrix multiplication acting as the linear map $T x$, and right scalar multiplication $x b$, such that the linear map is a homomorphism of the linear structure $T(x b) = (T x) b$.
]