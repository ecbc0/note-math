#import "../module/module.typ": *
#show: module

#tag("complex_number") 复数. $x + y #i, x' + y' #i ∈ ℂ$

加法和 $ℝ^2$ 相同. 乘法使用 $#i^2 = -1$ or $1/#i = -#i$ 和分配律
$
  (x + y #i)(x' + y' #i) &= (x x' - y y') + (x y' + y x') #i
$
复数 or $z^2 = -1$ 的来源

- #link(<harmonic_oscillator>)[谐振子] ODE 的特征方程 $ξ^2 + ω^2 = 0$
- 复数的另一种动机来自多项式的因子分解. *实*多项式分解能够完全为 $(x - a)$ 或 $(x^2 + p x + q)^2$ 的形式的相乘, 而后者能在 $ℂ$ 中分解为 $(x - a) (x - a^*)$ 的形式, 特别地, $x^2 + 1 = (x - #i) (x + #i)$. 于是为了方便, 可以选择使用复数.
  
  你仍然可以选择认为这只是一种代数方便, 不需要复数的几何
  
  但是在下面的 split complex $ℂ_"split"$ 中却无法分解 $x^2 + 1$ 为一阶多项式. 甚至 $x^2 - 1$ 有四个根, 除了 $x = ± 1$, 多了两个根 $1/2 (1 ± #i-split)$

*Eaxmple* #tag("split_complex_number") 分裂复数. $x + y #i-split, x' + y' #i-split ∈ ℂ_"split"$

加法和 $ℝ^2$ 相同. 乘法使用 $#i-split^2 = 1$ or $1/#i-split = #i-split$ 和分配律
$
  (x + y #i-split)(x' + y' #i-split) &= (x x' + y y') + (x y' + y x') #i-split
$

也参见 #link(<complex_numbler_geometric_meaning>)[复数的直观解释], 了解单位复数乘法和 $ℝ^2$ 的旋转 $SO(2)$ 的关系

#tag("normed_division_algebra")
#indent[
  $ℝ^n$ 有二次型 $⟨ x , y ⟩$, 有乘法 $x ⋅ y$, 且单位 (二次型) 距离的元素 $x, y in ℝ^n, |x|^2 = |y|^2 = 1$ 的乘法 $x ⋅ y$ 也是单位距离的 $|x ⋅ y|^2 = 1$

  将单位距离和 $ℝ$ 纯量乘法结合起来后, 这种性质可以表示为 $|x ⋅ y|^2 = |x|^2 |y|^2$
]
- $ℂ$ 对应 $ℝ^2$
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
- $ℂ_"split"$ 对应 $ℝ^(1,1)$
#indent[
  $z z^* = z^* z = |z|^2 = x^2 - y^2$

  $|z z'|^2 = |z|^2 |z'|^2$ by
  $
    (x x' + y y')^2 - (x y' + y x')^2 
    &= x^2 x'^2 + y^2 y'^2 - x^2 y'^2 - y^2 x'^2 \
    &= (x^2 - y^2) (x'^2 - y'^2)
  $
  null elements 没有乘法逆
]
#tag("quaternion") 
#indent[
  从 $ℂ$ 或 $ℂ_"split"$ 开始 $x_0 + x_1 #i _1$, 加入新的虚数元 $#i _2$

  - 定义其它虚数元 $#i _3 := #i _1 #i _2$

  - 不同虚数元反交换 $#i _2 #i _1 := - #i _1 #i _2$

  - 虚数元共轭取反 or $#i^* = -#i$
    - $(#i _2)^* &:= - #i _2$ 
    - $(#i _3)^* &:= - #i _3$

  这使得 
  - $x^* x = x x^* = |x|^2$
  - $(x x')^* = x'^* x^*$
  - 虚数元乘法结合 $#i _i'' (#i _i' #i _i) = (#i _i'' #i _i') #i _i$
  - 满足 norm 乘法 $|x y|^2 = |x|^2 |y|^2$

  $(#i _3)^2 = #i _1 (#i _2 #i _1) #i _2 = - #i _1 (#i _1 #i _2) #i _2 = - #i _1^2 #i _2^2$
  
  - 如果是从 $ℂ$ 开始, $#i _1^2 = -1$, 于是 $#i _3^2 = #i _2^2$
  $
    (#i _2)^2 &= -1 && "give" (#i _3)^2 = -1 "and" ℍ &&"for" ℝ^4 \
    (#i _2)^2 &= +1 && "give" (#i _3)^2 = +1 "and" ℍ_("split") &&"for" ℝ^(2,2)
  $
  - 如果是从 $ℂ_"split"$ 开始, $#i _1^2 = +1$, 于是 $#i _3^2 = - #i _2^2$
  $
    (#i _2)^2 &= -1 && "give" (#i _3)^2 = +1 "and" ℍ_("split") \
    (#i _2)^2 &= +1 && "give" (#i _3)^2 = -1 "and" ℍ_("split") 
  $
]

- $exp(Im(ℍ))$ give $#U (1,ℍ) ≃ 𝕊^3 = ℚ^4 ↠ SO(3)$

- $exp(Im(ℍ_"split"))$ give $#U (1,ℍ_"split") ≃ ℚ^(2,2) ↠ SO(1,2)$

*Eaxmple* #tag("octonion") 在 $x_0 + x_1 #i _1 + x_2 #i _2 + x_3 #i _3$ (其中 $#i _3 = #i _1 #i _2$) 中使用新的虚数元 $#i _4$
#indent[
  定义其它虚数元 
  $
    #i _5 &:= #i _1 #i _4 \
    #i _6 &:= #i _2 #i _4 \
    #i _7 &:= #i _3 #i _4 \
  $
  不同虚数元反交换 $#i _i' #i _i := - #i _i #i _i'$

  不同虚数元反结合 $#i _i'' (#i _i' #i _i) := - (#i _i'' #i _i') #i _i$ 如果 $#i _i'' != ± #i _i' #i _i$

  虚数元共轭取反 $(#i _i)^* = - #i _i$

  这使得 
  - $x^* x = x x^* = |x|^2$
  - $(x x')^* = x'^* x^*$
  - norm 乘法 $|x y|^2 = |x|^2 |y|^2$ 

  同理, 根据 $#i _2 = ± 1$ 和 $(#i _4)^2 = ± 1$ 给出 octonion $𝕆$ for $ℝ^8$ 或 split octonion $𝕆_("split")$ for $ℝ^(4,4)$
]
- $exp(Im(𝕆))$ give $#U (1,𝕆) ≃ 𝕊^7 = ℚ^(8) ↪ SO(7)$ 

- $exp(Im(𝕆_"split"))$ give $#U (1,𝕆_"split") ≃ ℚ^(4,4)(1) ↪ SO(3,4)$

从 $ℍ$ 和虚数元结合律得到的是另一种代数 $ℍ ⊕ ℍ$, _不_满足 $|x y|^2 = |x|^2 |y|^2$

#tag("imaginary_automorphism") 新虚数元构造方法并不是无坐标的, 所以我们需要考虑虚数元的 automorphism $f : Im(𝕂) -> Im(𝕂)$ with $f(x y) = f(x) f(y)$. 由于保持乘法, 所以自动保持距离
  
  *Example* for $ℂ$ it's $ℤ_2 = #O (1)$ symmetric $#i -> -#i$

  *Question* (@ref-21, p.35) (@ref-22, p.85)
  - $SO(3)$ for $ℍ$
  - $G_2$ for $𝕆$. $dim G_2 = 14 < 21 = dim (SO(7))$

  $G_2$ as automorphism of $𝕆$ 说明了, 没有额外的结构, 例如乘法 $x ⋅ y$ 和 $|x ⋅ y|^2 = |x|^2 |y|^2$, 只有单纯的线性空间结构, 无法给出 $G_2$ 之类的特殊群. (虽然据说所有 compact group 都能存在矩阵表示.) 

#tag("problem_of_quaternionic_linear") 
#indent[
  尝试给 $ℍ^n$ 定义线性代数. 我们立刻遇到问题: 线性映射的一种定义是作为线性空间之间的同态, 但由于 $ℍ$ 非交换, 纯量乘法不能随便和同一边的矩阵乘法交换 $a (T x) ! = T(a x)$, 从而 $ℍ^n$ 的矩阵乘法不是线性变换 
  
  所以, $ℍ^n$ "线性结构" 定义为, 例如, 左边矩阵乘法作为线性映射 $T x$, 右边纯量乘法 $x b$, 使得线性映射是线性结构的同态 $T(x b) = (T x) b$.
]