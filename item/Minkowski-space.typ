#import "../module/module.typ": *
#show: module

子空间 $span(v,w) ↪ ℝ^(p,q)$ 

以下等价 
- $dim(span(v,w)) = 2$
- $v,w$ not co-linear
- $v ∧ w != 0$

if $span(v,w) ≃ ℝ^(1,1)$, 可能 

- 2 time(-like) \
  *Example* 
  #indent()[
    $v = vec(1,0), w = vec(a,b)$, where $0 < |b| < |a|$ \
    $⟨ w ⟩^2 = a^2 - b^2 > 0$ \
    可以线性生成 $vec(0,1)$
  ]
- 1 time, 1 space \
  *Example* $v = vec(1,0), w = vec(0,1)$
- 1 time, 1 null \
  *Example* $v = vec(1,0), w = vec(a,a)$
- 2 null \ 
  *Example* $ℝ^(1,1), v = vec(a,a), w = vec(a,-a)$. 注意 $v ⋅ w = 2 a^2 != 0$. signature $(1,1)$
- 2 space. \
  *Example* \
  $v = vec(0,1), w = vec(a,b)$, where $0 < |a| < |b|$
- other cases (symmetry of time $<-->$ space)

考虑一般的 $ℝ^(1,n)$ 中的 $span(v,w)$

#tag("signature-of-2d-subspace-of-spacetime") *Prop* Minkowski $(1,n)$ 在 $dim = 2$ 的 $span(v,w)$ 的可能 signature 是 

- $1,1$
- $0,2$
- $0,1$

*Prop* time-like 只正交于 space-like

let $v$ time-like. 使用正交分解, let $v = v_0, w = w_0 + bf(w)$ then $⟨ v,w ⟩ = v_0 w_0 = 0 ==> w_0 = 0$ ==> $w$ space-like

*Prop* light-like $v$ 不正交于 
- time-like
- 与自身共线 $k v$ 之外的 light-like #tag("metric-cannot-distinguish-colinear-light-like")

_Proof_ (@ref-7, (@ref-9, p.13))
#indent[
  根据情况取一个正交分解 $ℝ^(1,n) = ℝ_"time" ⊕ ℝ^n_"space"$
  $
    v &=&v_0 + bf(v) \ 
    w &=&w_0 + bf(w)
  $
  - $w$ time-like ==> let $w = w_0$ ==> $⟨ v,w ⟩ = v_0 w_0 != 0$
  - $w$ light-like 
  #indent[
    $
      dmat(delim: #none ,
        ⟨ v ⟩^2,=,0,==>,v_0^2,=,⟨ bf(v) ⟩^2 ;
      ⟨ w ⟩^2,=,0,==>,w_0^2,=,⟨ bf(w) ⟩^2 ;
      ⟨ v,w ⟩,=,0,==>,v_0 w_0,=,⟨ bf(v) , bf(w) ⟩
      )
    $
    我们证明 $w_0 ⋅ v = v_0 ⋅ w$
    $
      &w_0 ⋅ v - v_0 ⋅ w \ 
      =& w_0 ⋅ bf(v) - v_0 ⋅ bf(w) \ 
      in& ℝ^n_"space"
    $
    but
    $
      &⟨ w_0 ⋅ bf(v) - v_0 ⋅ bf(w) ⟩^2 \
      =& w_0^2 ⟨ bf(v) ⟩^2 - 2 v_0 w_0 ⋅ ⟨ bf(v) , bf(w) ⟩ + v_0^2 ⟨ bf(w) ⟩^2 \
      =& 0
    $
    space-like 但长度零, 所以 $w_0 ⋅ bf(v) - v_0 ⋅ bf(w) = 0$

    ==> $w_0 ⋅ v - v_0 ⋅ w = 0$
  ]
]
*Prop* $ℝ^(1,n)$ 的二维子空间的 signature 不可能是 $1,0$ or $0,0$

_Proof_ 用上一个定理

*Prop* $ℝ^(1,n)$ 的两个不共线 time-like $v,w$ 的展开 $span(v,w)$ 的 signature 是 $1,1$

_Proof_ 以其中一个为初始的基来生成 $span(v,w)$ 正交基, 但 signature 不能是 $1,0$, 所以只能是 $1,1$

$v$ 的射影 ${k v in ℝ^(1,3) : k in ℝ} ⊂ "cone"$

*Prop* let $⟨ v ⟩^2 = 0$, let $w$ time-like or light-like with $v,w$ 不共线. 则 $span(v,w) ⊄ "cone"$

_Proof_
#indent[
  已知 $⟨ v,w ⟩ != 0$

  在光锥上等价于解变量 $b$ 的二次方程 $0 = (a v + b w)^2 = a b ⋅ ⟨ v,w ⟩ + b^2 ⋅ ⟨ w ⟩^2 = b ( b ⋅ ⟨ w ⟩^2 + a ⋅ ⟨ v,w ⟩)$

  $b != 0 ==> b = cases(
    - (a ⋅ ⟨ v,w ⟩)/(⟨ w ⟩^2) &"if" ⟨ w ⟩^2 != 0,
    ℝ &"if" ⟨ w ⟩^2 = 0
  )$
]
*Prop* $ℝ^(1,n)$ 的两个不共线 light-like $v,w$ 的展开 $span(v,w)$ 的 signature 是 $1,1$ or $0,1$

_Proof_ $ℝ^(0,2)$ Euclidean 没有 light-like, 所以无其它可能性

*Example*
- $ℝ^(1,1)$ 的 $vec(1,±1)$
- $ℝ^(1,2)$ 的 $vec(1,1,0),vec(1,0,1)$. 相减得到正交基 $vec(1,1,0),vec(0,1,-1)$

#tag("simultaneity-relativity") 相对论同时性
#indent[
  use 正交基延拓

  in $1,n$, $dim = n$ space-like 子空间的正交补是 $dim = 1$ time-like 子空间 

  - ($span(v,v') ≃ ℝ^2$ space-like <==> 存在 time-like $w$ 同时正交于 $v,v'$)

  - ($span(v,v') ≃ ℝ^(1,1)$ not space-like <==> 不存在 time-like $w$ 同时正交于 space-like $v,v'$)

  直观: 不同 space-like 子空间 $S,S'$ 无法使用兼容的时间计算方式 or $S,S'$ 的 time-like 正交补不相同
]
use $ℝ^(1,n)$ 正交分解

$v = v_0 + bf(v)$

$⟨ v,w ⟩ = v_0 w_0 - ⟨ bf(v) , bf(w) ⟩$
  
- $⟨ v ⟩^2,⟨ w ⟩^2 >= 0$
#indent[
  分类讨论 $sign(v_0 w_0)$. 内积的时间相乘的符号决定内积的符号
  $ 
    sign(v_0 w_0) 
    &=&sign(v_0 w_0 - ⟨ bf(v) , bf(w) ⟩) \ 
    &=&sign(⟨ v,w ⟩) 
  $
]
- $⟨ v ⟩^2,⟨ w ⟩^2 <= 0$
#indent[
  分类讨论 $sign(⟨ bf(v) , bf(w) ⟩)$. 内积的空间相乘的符号决定内积的符号
  $ 
    sign(- ⟨ bf(v) , bf(w) ⟩) 
    &=&sign(v_0 w_0 - ⟨ bf(v) , bf(w) ⟩) \ 
    &=&sign(⟨ v,w ⟩) 
  $
]  
in Euclidean, we have #raw("#link(<quadratic-form-inequality-Euclidean>)[内积不等式]") $|⟨ v,w ⟩|^2 <= abs(v) abs(w)$ ==> #raw("#link(<triangle-inequality-Euclidean>)[三角不等式]") $|v+w| <= |v|+|w|$

in signature $p,q$ 二次型, 这一般不成立

将 $p,q$ 二次型 #raw("#link(<tensor-induced-quadratic-form>)[导出]") 到交错二阶线性 

$⟨ v ∧ w ⟩^2 = det mat(⟨ v ⟩^2 , ⟨ v,w ⟩ ; w v , ⟨ w ⟩^2) = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2$

#tag("quadratic-form-inequality-Minkowski") 内积不等式
#indent[
  in $ℝ^(1,n)$, let $v,w$ not co-linear, so $dim(span(v,w)) = 2$

  $ℝ^(1,n)$ 二次型限制在 $span(v,w)$ 上, signature 
  - $1,1$ ==> $⟨ v ∧ w ⟩^2 = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 < 0$ ==> $⟨ v ⟩^2 ⟨ w ⟩^2 < ⟨ v,w ⟩^2$
  - $0,2$ ==> $⟨ v ∧ w ⟩^2 = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 > 0$ ==> $⟨ v ⟩^2 ⟨ w ⟩^2 > ⟨ v,w ⟩^2$
]
_Proof_
#indent[
  $dim(span(v,w)) = 2$ ==> $dim(⋀^2 span(v,w)) = binom(2,2) = 1$

  $span(v,w)$ 二次型导出到 $⋀^2 span(v,w)$ 

  signature

  - $1,1$ of $span(v,w)$ ==> $(-1)$ of $⋀^2 span(v,w)$ 
  
    _Proof_ 
    #indent[
      $1,1$ of $span(v,w)$ 正交基 $e_0,e_1$, $e_0^2 = 1, e_1^2 = -1$ ==> $⋀^2 span(v,w)$ 正交基 $e_0 ∧ e_1$, $(e_0 ∧ e_1)^2 = e_0^2 ⋅ e_1^2 = -1$
    ]
    ==> $⟨ v ∧ w ⟩^2 < 0$, i.e. 内积不等式

  - $0,2$ of $span(v,w)$ ==> $(+1)$ of $⋀^2 span(v,w)$

    ==> $⟨ v ∧ w ⟩^2 > 0$
]
#tag("triangel-inequality-Minkowski") 三角不等式
#indent[
  $⟨ v + w ⟩^2 = ⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2$

  - 2 time 
  #indent[
    $⟨ v ⟩^2 > 0$, $|v| := (⟨ v ⟩^2)^(1/2)$

    - $⟨ v,w ⟩ > 0$ ==> $|v+w| > |v| + |w|$
    - $⟨ v,w ⟩ < 0$ ==> $⟨ v + w ⟩^2 < (|v| - |w|)^2$
  ]
  - 1 time, 1 null
  #indent[  
    $⟨ w ⟩^2 = 0$ ==> $⟨ v + w ⟩^2 = ⟨ v ⟩^2 + 2 ⟨ v,w ⟩$
    - $⟨ v,w ⟩ > 0$ ==> $⟨ v + w ⟩^2 > ⟨ v ⟩^2$
    - $⟨ v,w ⟩ < 0$ ==> $⟨ v + w ⟩^2 < ⟨ v ⟩^2$
  ]
]
_Proof_ of 2 time-like
#indent[
  $⟨ v ⟩^2, ⟨ w ⟩^2 > 0$

  $|v| := (⟨ v ⟩^2)^(1/2)$

  - $⟨ v,w ⟩ > 0$
  #indent[
    $⟨ v + w ⟩^2 > 0$

    use #raw("#link(<quadratic-form-inequality-Minkowski>)[]") $⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 = ⟨ v ∧ w ⟩^2 < 0$

    ==> $abs(v) abs(w) < ⟨ v,w ⟩$

    ==> 
    $
      ⟨ v + w ⟩^2 
      &>&⟨ v ⟩^2 + 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &=&(|v| + |w|)^2
    $
    ==> $ |v+w| > |v| + |w| $
  ]
  - $⟨ v,w ⟩ < 0$
  #indent[
    $⟨ v,w ⟩ < 0$ 

    ==> $- abs(v) abs(w) > ⟨ v,w ⟩$

    ==> 
    $ 
      ⟨ v + w ⟩^2 
      &<&⟨ v ⟩^2 - 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &=&(|v| - |w|)^2      
    $
    $sign ⟨ v + w ⟩^2$ 不确定

    *Example* let $v = vec(1,0)$. let $w$ 过去 time-like
    
    - $w = vec(-1,0) ==> ⟨ v + w ⟩^2 = 0$
    
    - $w = vec(-1,1/2) ==> ⟨ v + w ⟩^2 = -1/4$
    
    - $w = vec(-1/2,0) ==> ⟨ v + w ⟩^2 = 1/4$
  ]
]
Euclidean 空间已经可以讨论不同的收敛方向 e.g. 序列 $x_n/(|x_n|)$ 是否收敛到 $𝕊^(n-1)$. 螺旋线 like 的东西在方向空间不收敛

Euclidean 空间在所有 $𝕊^(n-1)$ 方向收敛到一点 <==> 在所有方向一致地收敛到一点, by compactness of $𝕊^(n-1), ℝℙ^(n-1)$

Minkowski 空间方向空间 $ℚ^(1,n)(± 1)$ is non compact. 虽然我们尚未定义 $ℚ^(1,n)(± 1)$ 的网

Minkowski 空间的 #raw("#link(<net>)[]") 需要足够远离光锥 $⟨ v ⟩^2 = 0$ 

#let time = "time"
#let space = "space"

let $ℍ𝕪^n (time\/space) := {x in ℝ^(1,n) : x^2 = ± 1}$

#let future = "future"
#let past = "past"

对于收敛的类时方向, 可以分开 
#indent[
  - 未来: $v in ℍ𝕪^n (time,future) = {x in ℝ^(1,n) : x^2 = 1, x_0 > 0}$
  - 过去: $v in ℍ𝕪^n (time,past) = {x in ℝ^(1,n) : x^2 = 1, x_0 < 0}$
  - 混合: $ℍ𝕪^n (time)$ quotient 掉双叶 $±v$, 成为 projective space 式的方向空间
]
in $ℝ^(1,1)$ 

let $ℍ𝕪 := ℍ𝕪^1 (time,future) = {(t,x) in ℝ^(1,1) : t^2 - x^2 = 1 , t > 0}$

#tag("hyperbolic-complex") 双曲复数. cf. #raw("#link(<split-complex-number>)[]")
#indent[
  $(x,y) ≃ x + y #i-split = x 𝟙 + y #i-split $
  
  - $𝟙 ⋅ #i-split = #i-split ⋅ 𝟙 = #i-split$
  - $#i-split^2 = 𝟙$
  - $(x_1 + y_1 #i-split) ⋅ (x_2 + y_2 #i-split)$ 按分配率展开
]
#tag("hyperbolic-exp") 
#indent[
  $exph z := sum_(n ∈ ℕ) 1/(n!) z^n$

  use 二项式

  - $exph (z+w) = (exph z) (exph w)$

  - $exph(t + #i-split x) = exph(t) exph(#i-split x)$

  - $exph (ϕ #i-split) = cosh ϕ + (sinh ϕ) #i-split in ℍ𝕪$, $ϕ in ℝ$. by $cosh^2 - sinh^2 = 1$
    
    #tag("polor-coordinate-hyperbolic") 
    
    #html.elem("img", attrs: (src: "../image/polor-coordinate-hyperbolic.jpeg", width: "50%"))
    
    双曲极坐标 $v = |v| exph(ϕ #i-split)$, $|v| = (v v^*)^(1/2) = ⟨ v ⟩^2^(1/2)$, $ϕ in ℝ$. $ϕ$ can come from $ℍ𝕪$ 测地线长度参数. 也称为双曲角度 #tag("hyperbolic-angle")

    极坐标即距离和方向的分解
    
    $|v|$ 不是 $ℍ𝕪$ 测地线长度, 而是 $v ∈ ℝ^(1,1)$ 的长度
]
#tag("hyperbolic-isom")
#indent[
  group isomorphism (比较复数的情况) // link

    - $ℝ$
    - $ℍ𝕪$
    - $#U (1,ℂ_"split")$
    - $SO(1,1)$

    $exph ((ϕ + ψ)#i-split) = exph(ϕ #i-split) exph(ψ #i-split)$

    $ϕ ⇝ sinh ϕ = 1/2 (e^ϕ - e^(-ϕ))$ 单调递增
    
    解二次方程 $x = 1/2 (e^ϕ - 1/e^ϕ) <==> (e^ϕ)^2 - 2 x e^ϕ - 1$ 得到逆映射

    $ϕ = sinh^(-1)(x) = log (x^2 + (x^2 + 1)^(1/2))$ 

    inverse $argh : ℍ𝕪 -> ℝ$
    
    $argh(t + x #i-split) = log (x^2 + (x^2 + 1)^(1/2))$

    *Question* 模仿 $ℂ$ 用球极投影和 $tan^(-1)$, $ℂ_"split"$ 用 #raw("#link(<stereographic-projective-hyperbolic>)[双曲投影]") 和 $tanh^(-1)$ 来处理双曲角度 or 测地线长度映射 $argh$
]
$ℍ𝕪$ 的测地线坐标就是 $exph(#i-split ϕ) , ϕ in ℝ$

记号冲突. 测地线坐标也通常用记号 $exp$, 但不是用 $#i,#i-split$ 代数去定义的

测地线坐标是 Riemman 同构 or Euclidean 同构

$A ⊂ ℍ𝕪$ compact <==> $1/#i-split logh A ⊂ ℝ$ compact 

双曲极坐标 $ℝ^(1,1)(time,future) ≃ ℝ(>=0) × ℍ𝕪$ 
$
  mat(delim: #none,
  ℝ(>=0) × ℝ , --> , ℂ_"split" , --> , ℝ^(1,1) ;
  (r,ϕ) , ~~> , r exph(ϕ #i-split) , ~~> , r (cosh ϕ, sinh ϕ)
  )
$

net structure of $0 in ℝ^(1,1)$
#indent[
  距离 $r = |z|$, 方向空间 $ℍ𝕪$ or 其射影 $ℍ𝕪 ℙ$, 测地线长度 $ϕ$ 都是 $SO(1,1)$ invariant. $SO(1,1)$ 是 $ℍ𝕪$ 的 isometry group

  远离光锥 $⟨ v ⟩^2 = 0$ 地定义 (time,future) #raw("#link(<net>)[网]") 

    $[0,r] × [ϕ - R, ϕ + R]$. $R$ 作为测地线球半径
    
    or 距离空间 $ℝ_(>= 0)$ 和方向空间 $ℍ𝕪$ 的 product net struct

    极限方式
    - $r -> 0$ 距离连续
    - $R -> 0$ 方向连续
]
in $ℝ^(1,1)$, 类时类空基本上是对称的, 所以 space like net 也是类似的

$f : ℝ^(1,1) -> ℝ^(1,1)$ ((time,future),(time,future)) 连续 at $f(0) = 0$ :=
#indent[
  in 双曲极坐标 
  $
    forall ε, Epsilon > 0 \ 
    exists δ, Δ > 0 \
    forall r < δ, R < Δ \
    (|f| < ε) and (|argh (f)| < Epsilon)
  $
]
推广到高维, 粗略的直观: 
#indent[
  Minkowski $ℝ^(1,n)$ 可以分解为 $1$ dim 距离空间 $ℝ_(>= 0)$ 和 $n$ dim 方向空间 ${⟨ x ⟩^2 = ±1}$, 让我们来使用它们的乘积拓扑

  现在我们需要定义方向空间 $ℚ^(1,n) (± 1)$ 的拓扑. 我们可以使用 $ℚ^(1,n) (± 1)$ 的 $n$ dim 测地线坐标. 我们可以使用测地线坐标的拓扑结构, 它是 $ℝ^n$ type 或 $ℝ^(1,n-1)$ type. 通过维数的归纳, 我们需要定义 $ℝ^(1,1)$ 的拓扑结构, 再次分解为 $1$ dim 径向空间和 $1$ dim 方向空间 $ℚ^(1,1)$. 现在 $1$ dim 方向空间只是双曲曲线, 它是 Riemann 子流形, meitrc 继承自 $ℝ^(1,1)$ 的 metric

  为了用纯二次形式技术定义测地线, $p in ℚ^(1,n) (± 1)$ 为起点的测地线是嵌入的双曲线 $ℍ𝕪$, 定义为 $ℚ^(1,n) (± 1)$ 和 $2$ dim 空间 span by $p$ and $q in p^⟂$
]
二次流形 $ℚ^(p,q)(± 1)$ 的切空间可以定义为正交于径向的 (仿射) 子空间

二次流形 $ℚ^(p,q)(± 1)$ 的测地线的定义不需要流形技术, 只需要用测地线 as 截线 of 截面 span by (径向 + 切向) + 嵌入的双曲线 $ℍ𝕪$ 及其测地线长度. *Question* 是否有好的解释?

$ℍ𝕪^n (time) = ℚ^(1,n)(1)$ type #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic.jpeg", width: "30%"))

$ℍ𝕪^n (space) = ℚ^(1,n)(-1)$ type 
  #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic-1.jpeg", width: "30%"))
  #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic-2.jpeg", width: "30%"))
  #html.elem("img", attrs: (src: "../image/quadratic-manifold-geodesic-3.jpeg", width: "30%"))


#tag("geodesic-of-quadratic-manifold") $ℍ𝕪^n (time)$ 测地线
#indent[  
  let $v in ℍ𝕪^n (time) = ℚ^(1,n)(1) = {x_0^2 - (x_1^2 + ⋯ + x_n^2) = 1}$ 
  
  正交补空间 $v^perp ≃ ℝ^n$, $n$ 维类空 
  
  仿射空间 $v + v^perp$ as 切空间 of $ℍ𝕪^n (time)$

  let $w in v^perp$, $|w| = 1$

  $span(v,w)$ 是二维子空间, signature $1,1$

  $span(v,w) ≃ ℝ^(1,1)$, 并与 $ℍ𝕪^n (time)$ 相交得到嵌入的 $ℍ𝕪$
  
  得到 $v$ 基点 $w$ 方向的测地线 
  
  $ ϕ ⇝ v cosh(ϕ) + w sinh(ϕ) $
]
$ℍ𝕪^n (time)$ 测地线球
#indent[
  $ 𝔹(v,R) = {v cosh(ϕ) + w sinh(ϕ) in ℍ𝕪^n (time) : w in v^perp , |w| = 1 , ϕ <= R} $

  where $v^⟂ ≃ ℝ^n, {|w| = 1} ≃ 𝕊^(n-1)$
 ]
$ℝ^(1,n)$ 的 (time,future)-like net struct


  #html.elem("img", attrs: (src: "../image/polor-coordinate-hyperbolic.jpeg", width: "40%"))
  #html.elem("img", attrs: (src: "../image/Minkowski-net.jpeg", width: "30%"))


双曲极坐标 as 距离空间 $ℝ_(>= 0)$ 和方向空间 $ℍ𝕪^n (time)$ 的 product net struct
#indent[
  $[0,r] × 𝔹(v,R)$

  极限方式: $r -> 0$, $R -> 0$. or 距离连续 + 方向连续
]
$f : ℝ^(1,n) -> ℝ^(1,n)$ (time,future),(time,future) 连续 at $f(0) = 0$ :=
#indent[
  in 双曲极坐标 (time,future) 
  $
    forall ε, Epsilon > 0 \ 
    exists δ, Δ > 0 \
    forall r < δ, R < Δ \
    (|f| < ε) and (|argh (f)| < Epsilon)
  $
]
let $v in ℍ𝕪^n (space) = ℚ^(1,n)(-1) = {x_0^2 - (x_1^2 + ⋯ + x_n^2) = -1}$

正交补空间 $v^perp ≃ ℝ^(1,n-1)$

仿射空间 $v + v^perp$ as 切空间 of $ℍ𝕪^n (space)$

let $w in v^perp$, $|w| = 1$

- $w$ 类时
#indent[
  $span(v,w)$ signature $1,1$

  $span(v,w) ≃ ℝ^(1,1)$ 与 $ℍ𝕪^n (space)$ 相交得到嵌入的 $ℍ𝕪$

  得到 $v$ 基点 $w$ 方向的测地线 

  $ ϕ ⇝ w cosh(ϕ) + v sinh(ϕ) $
]
- $w$ 类空
#indent[
  $span(v,w)$ signature $0,2$

  $span(v,w) ≃ ℝ^2$ 与 $ℍ𝕪^n (space)$ 相交得到嵌入的 $𝕊$

  得到 $v$ 基点 $w$ 方向的测地线 

  $ ϕ ⇝ w cos(ϕ) + v sin(ϕ) $
]
$ℍ𝕪^n (space)$ 不是 Euclidean type metric 流形, 所以测地线球的概念需要修改

space like 方向空间 $ℍ𝕪^n (space)$ 的测地线坐标 $v^⟂ ≃ ℝ^(1,n-1)$, 根据维数归纳, 使用 $ℝ^(1,n-1)$ 的 net struct, 得到 $ℍ𝕪^n (space)$ 的 local net struct

由于 net 是 product type 分解的, 所以归纳下去大概会分解到多个一维半径, 称之为 #tag("multi-radius-geodesic-ball"). 分解顺序会影响吗?

然后尝试用双曲极坐标 i.e. 距离和方向的 product net struct 定义 $ℝ^(1,n)$ 的 space-like net struct

然后可以定义 $f : ℝ^(1,n) -> ℝ^(1,n)$ (space,space)-like 连续 at $f(0) = 0$, 或简称 space-like 连续

$(p,q)$ signature 的情况应该是类似的 

$ℝ^(1,n)$ 的类时网和类空网并不等价

$f: ℝ^(1,n) -> ℝ^(1,n)$ Minkowski 连续定义为 time-like 连续 and space-like 连续

Minkowski 连续同胚定义为 $f,f^(-1)$ 都是 Minkowski 连续

all $f in SO(1,n)$ 都是连续且同胚

$Lin(ℝ^(1,n) -> ℝ^(1,n))$ 一般线性函数可能不 Minkowski 连续

测地线坐标 or 双曲极坐标按照定义是局部 Minkowski 同胚或局部 Euclidean 同胚

$ℍ𝕪^n (time)$ 是 Riemman manifold, const negative curvature

$ℍ𝕪^n (space)$ 是 Lorentz manifold, const positive curvature

$ℍ𝕪^n (space)$ *alias* de Sitter space

#tag("hyperbolic-cosine-formula") 双曲余弦公式
#indent[
  let $v,w in ℍ𝕪$

  let $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    ⟨ v,w ⟩ 
    &=&Re(v ⋅ w^*) \
    &=&Re(exph ((ϕ - ψ) #i-split)) \
    &=&cosh(ϕ - ψ)
  $
  let $v,w$ 未来 time-like. $|v| := (⟨ v ⟩^2)^(1/2)$

  $v/(|v|),w/(|w|) in ℍ𝕪$

  $(⟨ v,w ⟩)/(abs(v) abs(w)) = cosh(ϕ - ψ)$

  余弦公式
  $ 
    ⟨ v + w ⟩^2 
    &=&⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2 \ 
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) (⟨ v,w ⟩)/(abs(v) abs(w)) \
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) cosh (ϕ - ψ)
  $
]
#tag("isom-top-hyperbolic-Euclidean")

  $ℍ𝕪$ 在 $ℂ_"split" = ℝ^(1,1)$ 距离下的极限结构 $≃$ 测地线距离 $≃$ Euclidean $ℝ^1$ 

_Proof_ 
#indent[
  let $v,w in ℍ𝕪$, $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    ⟨ v - w ⟩^2 
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &=&2 (1 - cosh(ϕ - ψ)) \
    &<=&0 " by " cosh >= 1
  $
  let $"dist"(v,w) := (- ⟨ v - w ⟩^2)^(1/2)$
  
  use $cosh ϕ = 1 <==> ϕ = 0$
  $
    "dist"(v,w) = 0
    &<==>&⟨ v - w ⟩^2 = 0 \
    &<==>&ϕ = ψ \
    &<==>&v = w 
  $
  use $cosh ϕ = 1/2 (e^ϕ + e^(-ϕ))$ 连续性
  $ 
    forall ε > 0 , exists δ > 0 , forall ϕ , ψ ∈ ℝ \
    |ϕ - ψ| < δ ==> "dist"(v,w) < ε 
  $
]
推广到 $ℍ𝕪^(n) subset ℝ^(1,n)$, Euclidean $ℝ^n$

_Proof_ 
#indent[
  use 测地线坐标

  similar to $ℝ^(1,1)$, try to prove
  $ 
    ⟨ v - w ⟩^2 
    &=&⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &=&2 (1 - cosh(|ϕ - ψ|)) \
    &<=&0
  $
  where

  - $ϕ,ψ$ 是 $v,w$ 的测地线坐标
  - $|ϕ - ψ|$ 是测地线坐标中的 Euclid 距离
]
球面 $𝕊^n$ 的球极投影的基点在 $𝕊^n$ 上. 需要两个以上的坐标卡覆盖全部 $𝕊^n$

#tag("stereographic-projective-hyperbolic") time-like 双曲面 $ℍ𝕪^n (time)$ 考虑球极投影, 两个基点分别在两枝双曲面上, 且投影在光锥方向形成分隔的奇点

#html.elem("img", attrs: (src: "../image/stereographic-projective-hyperbolic-time-like.jpg", width: "50%"))

space-like 双曲面, 用 space-like 基点来定义双曲投影, 而且投影坐标卡是低一维的 Minkowski 空间

转换函数应该是 Minkowski 连续同胚?

#html.elem("img", attrs: (src: "../image/stereographic-projective-hyperbolic-space-like.jpg", width: "50%"))

对 $ℝ^(1,2)$ 的情况进行 3d 作图, 画出基点的光锥 (注意是光锥是 "纵向" 的) 

即使画图的直观可能难, 解析计算应该是不难的

$exph$ 可以推广到 $ℍ' ≃ ℝ^(2,2)$ and $𝕆' ≃ ℝ^(4,4)$?