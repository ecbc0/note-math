#import "../module/module.typ": *
#show: module

$(ℝ,+,⋅)$ 代数结构 or 
$
& ℝ ∈ Set \
&+& ℝ^2 -> ℝ \
&⋅& ℝ^2 -> ℝ \
&& "property-real-algebra"
$

有两种推广到 $ℝ^n$ 的方式

- 线性代数
#indent[  
  $
  & ℝ^n ∈ Set \
  &+& (ℝ^n)^2 -> ℝ^n \
  &⋅& ℝ × ℝ^n -> ℝ^n \
  && "property-linear-algebra"
  $
  *Example* 实 2 维空间. $vec(x,y),vec(x',y') ∈ ℝ^2, a ∈ ℝ$
  $
    vec(x,y) + vec(x',y') &=&vec(x+x',y+y') \

    a vec(x,y) &=&vec(a x, a y) \
  $
  以及分配律. $ℝ^n$ property-linear-algebra 的构造使用了 $ℝ$ 的 property-real-algebra
]
- 代数
#indent[
  $
  & (ℝ^n) ∈ Set \
  &+& (ℝ^n)^2 -> ℝ^n \
  &⋅& (ℝ^n)^2 -> ℝ^n \
  && "property-algebra"
  $
  *Example* #tag("complex-number") 复数. $x + y #i, x' + y' #i ∈ ℂ$

  加法和 $ℝ^2$ 相同. 乘法使用 $#i^2 = -1$ or $1/#i = -#i$ 和分配律
  $
    (x + y #i)(x' + y' #i) &=&(x x' - y y') + (x y' + y x') #i
  $
  复数 or $z^2 = -1$ 的一种来源. #raw("#link(<harmonic-oscillator>)[谐振子]") ODE 的特征方程 $ξ^2 + ω^2 = 0$

  *Example* #tag("split-complex-number") 分裂复数. $x + y #i-split, x' + y' #i-split ∈ ℂ_"split"$

  加法和 $ℝ^2$ 相同. 乘法使用 $#i-split^2 = 1$ or $1/#i-split = #i-split$ 和分配律
  $
    (x + y #i-split)(x' + y' #i-split) &=&(x x' + y y') + (x y' + y x') #i-split
  $
]
#tag("linear") $ℝ^n$ 线性结构
#indent[
  struct 同态 := 保持 struct 的映射 $f$

  *Example* linear struct hom $f: ℝ^n -> ℝ^m$ 
  - $x ∈ ℝ^n$ map to $f(x) ∈ ℝ^m$
  - $+ : (ℝ^n)^2 -> ℝ^n$ map to $f(+) : (ℝ^m)^2 -> ℝ^m$
  so $f(x+x')$ map to $f(x) f(+) f(x')$ 或者简写为 $f(x) + f(x')$

  linear struct hom 也称为线性映射

  到自身的双射 + $f,f^(-1)$ hom = isomorphism

  linear isomorphism of $ℝ^n$ := $GL(n,ℝ)$
]
$ℝ^n$ 代数结构
#indent[
  *Example* 
  - $ℂ$ 复数, $ℍ$ 四元数, $𝕆$ 八元数
  - 矩阵代数. 但在概念和意义上, 不像是好的 $ℝ$ 代数的推广. 所以需要别的限制, e.g. normed algebra, composition algebra 
]
#tag("normed-algebra")
#indent[
  $ℝ$ 的乘法带有性质 $|x y| = |x| |y|$

  $ℝ^n$ #raw("#link(<metric>)[二次型]") 带有性质 $⟨ a x ⟩^2 = a^2 ⟨ x ⟩^2$

  $ℝ^n$ algebra 我们期待性质 $⟨ x y ⟩^2 = ⟨ x ⟩^2 ⟨ y ⟩^2$
]
*Example*
- $ℂ$
#indent[
  def 复共轭 $#i^* = - #i$
  
  $(x + y #i)^* := x + y #i^* = x - y #i$

  $z z^* = z^* z = |z|^2 = x^2 + y^2$. 这是 $ℝ^2$ spatial

  $|z z'|^2 = |z|^2 |z'|^2$ by
  $
    (x x' - y y')^2 + (x y' + y x')^2 
    &=&x^2 x'^2 + y^2 y'^2 + x^2 y'^2 + y^2 x'^2 \
    &=&(x^2 + y^2) (x'^2 + y'^2)
  $
]
- $ℂ_"split"$ 
#indent[
  $z z^* = z^* z = |z|^2 = x^2 - y^2$. 这是 $ℝ^(1,1)$ spacetime

  $|z z'|^2 = |z|^2 |z'|^2$ by
  $
    (x x' + y y')^2 - (x y' + y x')^2 
    &=&x^2 x'^2 + y^2 y'^2 - x^2 y'^2 - y^2 x'^2 \
    &=&(x^2 - y^2) (x'^2 - y'^2)
  $
  null elements 没有乘法逆
]
- $exp(Im(ℂ))$ give $#U (1,ℂ) ≃ 𝕊 ≃ SO(2)$

- $exp(Im(ℂ_"split"))$ give $#U (1,ℂ_"split") ≃ ℍ𝕪 ≃ SO(1,1)$

新虚数元构造方法
#indent[
  *Example* 
  #indent[
    在复数 $x_0 + x_1 #i _1$ with $(#i _1)^2 = -1$ 中使用新的虚数元 $#i _2$

    - 定义其它虚数元 $#i _3 := #i _1 #i _2$

    - 不同虚数元反交换 $#i _2 #i _1 := - #i _1 #i _2$

    - 虚数元共轭取反 or $1/#i = -#i$
      - $(#i _2)^* &:=&-& #i _2$ 
      - $(#i _3)^* &:=&-& #i _3$

    反交换 + 共轭取反使得 $x^* x = x x^* = |x|^2$, 也给出 $(x x')^* = x'^* x^*$
    
    虚数元结合 $#i _i'' (#i _i' #i _i) = (#i _i'' #i _i') #i _i$
    
    满足 norm 乘法 $|x y|^2 = |x|^2 |y|^2$

    $(#i _3)^2 = #i _1 #i _2 #i _1 #i _2 = - #i _1^2 #i _2^2 = #i _2^2$
    $
      (#i _2)^2 &=&-1 && "give" (#i _3)^2 = -1 "and" ℍ \
      (#i _2)^2 &=&+1 && "give" (#i _3)^2 = +1 "and" ℍ_("split") "with" (2,2) "signature"
    $
  ]
  *Example* 如果用 split complex $#i _1^2 = 1$ 则 $(#i _3)^2 = - #i _1^2 #i _2^2 = - #i _2^2$ 从而 $#i _2^2 = ± 1$ 都给出 split quaternion
  
  - $exp(Im(ℍ))$ give $#U (1,ℍ) ≃ 𝕊^3 ↠ SO(3)$

  - $exp(Im(ℍ_"split"))$ give $#U (1,ℍ_"split") ≃ ℚ^(2,2)(1) ↠ SO(1,2)$
  
  *Example* 在四元数 $x_0 + x_1 #i _1 + x_2 #i _2 + x_3 #i _3$ 中使用新的虚数元 $#i _4$
  #indent[
    定义其它虚数元 
    $
      #i _5 &:=&#i _1 #i _4 \
      #i _6 &:=&#i _2 #i _4 \
      #i _7 &:=&#i _3 #i _4 \
    $
    不同虚数元反交换 $#i _i' #i _i := - #i _i #i _i'$

    不同虚数元反结合 $#i _i'' (#i _i' #i _i) := - (#i _i'' #i _i') #i _i$ 如果 $#i _i'' != ± #i _i' #i _i$

    虚数元共轭取反 $(#i _i)^* = - #i _i$

    反交换 + 共轭取反使得 $x^* x = x x^* = |x|^2$, 也给出 $(x x')^* = x'^* x^*$

    *Question* 反结合是 norm 乘法 $|x y|^2 = |x|^2 |y|^2$ 需要的

    $(#i _4)^2 = -1$ 给出八元数 $𝕆$. split octonion 同理, with $(4,4)$ signature
  ]
  - $exp(Im(𝕆))$ give $#U (1,𝕆) ≃ 𝕊^7 ↪ SO(7)$ (*Question*)
  
  - $exp(Im(𝕆_"split"))$ give $#U (1,𝕆_"split") ≃ ℚ^(4,4)(1) ↪ SO(3,4)$

  从 $ℍ$ 和虚数元结合律得到的是另一种代数 $ℍ ⊕ ℍ$, _不_满足 $|x y|^2 = |x|^2 |y|^2$

  *Question* 反结合不能进一步推广到十六维及以后
]
新虚数元构造方法并不是无坐标的, 所以我们需要考虑虚数元的 automorphism $f : Im(𝕂) -> Im(𝕂)$ with $f(x y) = f(x) f(y)$. 由于保持乘法, 所以自动保持距离
  
  *Example* for $ℂ$ it's $ℤ_2 = #O (1)$ symmetric $#i -> -#i$

  *Question* 
  - $SO(3)$ for $ℍ$
  - $G_2$ for $𝕆$. $dim G_2 = 14 < 21 = dim (SO(7))$

  $G_2$ as automorphism of $𝕆$ 说明了, 没有额外的结构, 例如乘法 $x ⋅ y$ 和 $|x ⋅ y|^2 = |x|^2 |y|^2$, 只有单纯的线性空间结构, 无法给出 $G_2$ 之类的特殊群. (虽然据说所有 compact group 都能存在矩阵表示.) 

#tag("affine") $ℝ^n$ 仿射结构
#indent[
  改变原点, 平移

  hom 额外保持 $f(x-y) = f(x) f(-) f(y)$ 简写为 $f(x) - f(y)$
]