#import "../module/module.typ": *
#show: module

#let projective-cone = $"Cone-"ℙ$ // cone projective space

#tag("projective-cone") (图)

  - $"Cone"(p,q) := {x ∈ ℝ^(p,q) : g(x,x) = 0}$  
  - $#projective-cone (p,q) := {[x] ∈ ℝℙ^(p+q) : x ∈ "Cone"(p,q) }$

可以等价地理解为 positive-cone & positive quotient 
$
  #projective-cone (p,q) ≃ {[λ x] : g(x,x) = 0 and λ > 0}
$
由于 metric 在光锥上是零, 很多分析不能做. 而且光锥上的射线进行 quotient, 也对应 #link(<metric-cannot-distinguish-colinear-light-like>)[metric 完全不能区分共线的类光]

$SO(p,q)$ 导出 $#projective-cone (p,q)$ 的双射

_Proof_ $#projective-cone ⊆ ℝℙ, SO ⊆ GL$, $GL$ 导出一维子空间集的双射

identity $𝟙 ∈ GL$ induce $𝟙 ∈ ℝℙ$

#tag("complex-struct-of-4d-projective-lightcone") 4d projective-lightcone 的复结构 (图)

  - 椭圆型 $#projective-cone (1,3) ≃ 𝕊^2 ≃ ℂℙ^1$
  - 双曲型 $#projective-cone (1,3) ∖ #projective-cone (1,2) ≃ ℍ𝕪^2$ \ 
    双曲型的情况有分离的两枝. 从未来光锥截面到过去光锥截面之间存在奇点区域 $#projective-cone (1,2)$ \
    是否有 $ℂℙ^1$ 类似物? 但是 $ℍ𝕪^2$ 是 Euclidean 型流形, 不适合分裂复数 $ℂ_"split"$ 的 $1,1$ signature, 而且 #link(<stereographic-projective-hyperbolic>)[双曲球极投影] 似乎挺复杂的 \
    既然光锥能截出 $𝕊^2$, 那么失去 $ℍ𝕪^2 = ℚ^(1,2)(1)$ 对应 $ℚ^(1,2)(-1)$ 的那种对称性是合理的
#let c_1 = ${λ vec(z,w) ∈ ℂ^2 : w != 0}$
#let c_2 = ${λ vec(z,w) ∈ ℂ^2 : z != 0}$
_Proof_ 
#indent[
  - $#projective-cone (1,3) ≃ 𝕊^2$ 
  #indent[
    使用 $x_0 = 1$ 截取 lightcone $"Cone"(1,3) = {x_0^2 - (x_1^2 + x_2^2 + x_3^2) = 0}$, 得到类空截面 $𝕊^2 = {x_1^2 + x_2^2 + x_3^2 = 1}$
    
    $1$ 可以替换为其它非零实数, 结果等价
  ]
  - $#projective-cone (1,3) ∖ #projective-cone (1,2) ≃ ℍ𝕪^2$
  #indent[
    使用 $x_1 = 1$ 截取 lightcone, 得到 $ℍ𝕪^2 = {x_0^2 - (x_2^2 + x_3^2) = 1}$. 分为未来和过去两枝

    $"Cone"(1,2) = {x_0^2 - (x_2^2 + x_3^2) = 0}$ 的射影无法被 $x_1 = 1$ 截到
  ]
  - $𝕊^2 ≃ ℂℙ^1$
  #indent[
    #link(<stereographic-projection>)[球极投影] transition-function 是二次型反演
    $ dmat( delim: #none , 
      ℝ^(n-1) ,⟶, ℝ^(n-1) ;
      ξ ,⟿, (1 ± x_1)/(1 ∓ x_1) ξ = ξ/(|ξ|^2)
    ) $ 
    $ℂℙ^1 = {λ vec(z,w) : vec(z,w) ∈ ℂ^2}$ and its coordinate
    
    coordinate 1 #c_1, coordinate map $vec(z,w) ⇝ z/w ∈ ℂ$ 
    
    coordinate 2 #c_2, coordinate map $vec(z,w) ⇝ w/z ∈ ℂ$

    transition-function $z/w ⇝ w/z = (z/w)^(-1)$, or $ξ ⇝ 1/ξ = (ξ^*)/(|ξ|^2)$, i.e. $ℂ$ 的乘法逆. $ℂℙ^1$ 是 complex manifold
    
    vs $𝕊^2$ 球极投影 transition-function $ξ ⇝ 1/(ξ^*) = ξ/(|ξ|^2)$

    更直接的 $ℂℙ^1 -> 𝕊^2$ 坐标之间的映射, cf. #link(<Hopf-bundle>)[] 
  ]
]
#tag("linear-fractional")  
#indent[
  $GL(2,ℂ)$ 作用在 $ℂ^2$, $vec(z,w) ⇝ mat(a,b;c,d) vec(z,w) = vec(a z + b w , c z + d w)$, 使用 $ℂ$ 乘法逆将其限制于 $ℂℙ^1$, in coordinate 1 $#c_1$
  $ 
    ℂℙ^1 ,⟶, ℂℙ^1 \
    z/w ,⟿, (a z + b w)/(c z + d w) = (a z/w + b)/(c z/w + d) 
  $
  in coordinate 2 $#c_2$ 
  $ 
    ℂℙ^1 ,⟶, ℂℙ^1 \
    w/z ,⟿, (c z + d w)/(a z + b w) = (c + d w/z)/(a + b w/z) 
  $
]
$mat(d,c;b,a)$ 带有相同的 $det$

$𝕆$ 需要另作处理, $Lin(2,𝕆)$ 复合不能表示为通常的矩阵乘法

伸缩 $λ ∈ ℂ ∖ 0 , λ mat(a,b;c,d) $ 给出相同的 linear-fractional, 所以 $GL(2,ℂ)$ 可以 quotient 到 $SL(2,ℂ)$ or $SL(2,ℂ)/ℤ_2$

*Prop* (@ref-13, p.172--174)

- $SO(1,3)$ 作用于 $ℂℙ^1$ in coordinate 可以表示为 $SL(2,ℂ)$ #link(<linear-fractional>)[] 

- $SL(2,ℂ)/ℤ_2 = SO(1,3)$ #tag("Lorentz-group-spinor-representation") 

_Proof_ 
#indent[
  in $ℝ^(1,3)$, 3 rotation $exp(θ_i #i)$, 3 boost $exph(φ_i #i-split)$, where $θ_i$ is rotation in $x_i$ direction, $φ_i$ is boost in $x_i$ direction

  #tag("rotation-boost-spinor-representation")

  3 rotation 3 boost 作用在射影光锥的 $x_0 = 1$ 截出来的 $𝕊^2$, 计算其在 (其中一个) 球极投影坐标 $ℝ^2 ≃ ℂ$ 的表示 
  
  - rotation in $x_1$ 
  #indent[  - $e^(θ #i)$ act on $x_2 + x_3 #i ∈ ℂ ≃ ℝ^2$ 
    - $A = mat(e^(1/2 θ #i) ; , e^(- 1/2 θ #i))$ act on $ℂ^2$, 生成元 $1/2 #i mat(1;,-1) ∈ su(2)$ (with eigenvalue $± 1/2 #i$ and eigenstate $vec(1,0),vec(0,1)$ as base of $ℂ^2$)
  ]
  - boost in $x_1$
  #indent[
    - $e^(φ #i-split)$ act on $x_0 + x_1 #i-split ∈ ℂ_"split" ≃ ℝ^(1,1)$ 
    - $A = mat(e^(1/2 φ) ; , e^(-1/2 φ))$ act on $ℂ^2$, 生成元 $1/2 mat(1;,-1) ∈ #i su(2)$
  ]
  因为选择了 $x_1$ 方向来构造球极投影, $x_2,x_3$ 方向的情况会更复杂一些 (以下我没有进行计算检验)

  - rotation in $x_2$  

    $mat(
      cos 1/2 θ, #i sin 1/2 θ;
      #i sin 1/2 θ, cos 1/2 θ
    )$
    act on $ℂ^2$, 生成元 $1/2 #i mat(,1;1,) ∈ su(2)$

  - rotation in $x_3$ 

    $mat(
      cos 1/2 θ, - sin 1/2 θ;
      sin 1/2 θ, cos 1/2 θ
    )$
    act on $ℂ^2$, 生成元 $1/2 mat(,-1;1,) ∈ su(2)$

  - boost in $x_2$ 

    $mat(
      cosh 1/2 θ, sinh 1/2 θ;
      sinh 1/2 θ, cosh 1/2 θ
    )$
    act on $ℂ^2$, 生成元 $1/2 mat(,1;1,) ∈ #i su(2)$

  - boost in $x_3$ 

    $mat(
      cosh 1/2 θ, - #i sinh 1/2 θ;
      #i sinh 1/2 θ, cosh 1/2 θ
    )$
    act on $ℂ^2$, 生成元 $1/2 #i mat(,-1;1,) ∈ #i su(2)$

  可以证明 $sl(2,ℂ) = su(2) + #i su(2)$, 可以证明 $sl(2,ℂ) ≃ so(1,3)$

  比较 $exp$ of $sl(2,ℂ)$ 和 $exp$ of $so(1,3)$, 至少局部地同构 $SL(2,ℂ) <-> SO(1,3)$ 
  
  - for $mat(a, b; c, -a) ∈ sl(2,ℂ)$ 
  
    $ exp mat(a, b; c, -a) = cosh ω 𝟙 + (sinh ω)/ω mat(a, b; c, -a) $ 
  
    where $ω^2 = - det mat(a, b; c, -a)$ 

  - $so(1,3)$ have form $mat(0,b^⊺;b,r)$ where $r ∈ so(3), b ∈ ℝ^3$ (@ref-2, Vol.1, p.180)

  - from $SO(1,3)$ to $SL(2,ℂ)$. 从后面的 $SL(2,ℂ)$ to $SO(1,3)$ 中反解出来. 或者用 $SO(1,3)$ #link(<polar-decomposition-of-Lorentz-group>)[Polar decomposition] to rotation boost + #link(<Euler-angle-Lorentz-group>)[Euler 角] 

  - from $A = mat(a,b;c,d) in SL(2,ℂ)$ to $Λ in SO(1,3)$, where $a d - b c = 1$ 
  #indent[
    使用 #link(<spacetime-momentum-spinor-representation>)[] 直接计算 $A #spin($p$) A^† in ℝ^(1,3)$  
    $ 
      Λ^ μ _ ν = 1/2 tr (σ_ μ A σ_ ν A^†) = 1/2 tr (A σ_ ν A^† σ_  μ) = \
      mat( delim: #none ,
        |a|^2 + |b|^2 + |c|^2 + |d|^2, 2 Re(a b^* + c d^*), 2 Im(a b^* + c d^*), |a|^2 - |b|^2 + |c^2| - |d|^2;

        2 Re(a c^* + b d^*), 2 Re(a d^* + b c^*), 2 Im(a d^* + b c^*), 2 Re(a c^* - b d^*);

        - 2 Im(a c^* + b d^*), - 2 Im(a d^* + b c^*), 2 Re(a d^* - b c^*), - 2 Im(a c^* - b d^*);
        
        |a|^2 + |b|^2 - |c|^2 - |d|^2, 2 Re(a b^* - c d^*), 2 Im(a b^* - c d^*), |a|^2 - |b|^2 - |c|^2 + |d|^2
      ) 
    $
  ]
]
$ℂ^2,ℂℙ^1$ 使用 Euclidean type topology, 因为 $𝕊^2$ metric 继承自 space-like ${x_0 = 1} ≃ ℝ^3 ⊆ ℝ^(1,3)$ 继承自 $ℝ^(1,3)$ metric

$SO(1,3)$ 是 $ℂℙ^1 ≃ 𝕊^2$ conformal 变换群, 在球极投影坐标中表示为 linear-fractional

为计算 metric 的 conformal 变换因子, use $ℂℙ^1$ coordinate and 3 rotation, 3 boost ...

#tag("isotropy-on-projective-lightcone") *Prop* $SL(2,ℂ)$ 作用在 projective-lightcone $ℂℙ^1$, #link(<isotropy>)[] 类似于 $GL(1,ℂ) ⋊ ℂ$
#indent[
  $GL(2,ℂ),SL(2,ℂ)$ 是 #link(<action-surjective>)[满射作用], orbit 数 $1$, 所以计算 isotropy #link(<isotropy-in-same-orbit-is-isom>)[只需要考虑] 一点

  使用点 $z = 1, w = 0 in ℂ^2$, 在坐标 #c_2, $w/z = 0$, 对应光锥射影上的点 $(1,1,0,0) ∈ ℝ^(1,3)$
  
  $mat(a,b;c,d)$ is isotropy $(c z + d w)/(a z + b w) = 0$ ==> $c = 0$

  所以 Isotropy
  $
    mat(a, b;, a^(-1))
  $
  类似于 $GL(1,ℂ) ⋊ ℂ$ 是因为
  $
    mat(a, 0;, a^(-1)) mat(1,b;,1) mat(a, 0;, a^(-1))^† &= mat(1,a^2 b;,1) \

    mat(1,b;,1) mat(1,b';,1) &= mat(1,b + b';,1)
  $
  the group multiplication is 
  $
    mat(a, b;, a^(-1)) mat(a', b';, a'^(-1)) = mat(a a', a b' + a'^(-1) b ;, (a a')^(-1))) 
  $
  使用对应 $a -> a^(1/2), b -> b a^(-1/2)$ i.e. $(a,b) -> mat(a^(1/2), b a^(-1/2);, a^(-1/2))$ 将会给出通常的 semi-direct product $#U (1) ⋊ ℂ$, i.e. $(a,b)(a',b') = (a' a, b' + b a')$
]
