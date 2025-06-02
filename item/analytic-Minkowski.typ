#import "/module/module.typ": *
#show: module

#import "Minkowski-space.typ": *

为了处理 $ℝ^(1,n)$ 的幂级数, 需要先处理值域 $ℝ^(1,n)$ 的级数

暂时只处理类时未来的情况

#tag("sum-preserve-time-future") let $v,w$ 类时未来, then   $v+w$ 类时未来
#indent[
  $⟨ v+w ⟩^2 = ⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 ⟨v,w⟩$

  $⟨v,w⟩ > 0$

  $|v+w| >= |v| + |w|$ (#link(<quadratic-form-inequality-Minkowski>)[三角不等式])

  $|v+w| > |v|,|w|$
]

let $x_n$ 类时未来 or $0$

then $x_1 + ⋯ + x_n$ 类时未来 or $0$

$|x_1 + ⋯ + x_n| >= |x_1| + ⋯ + |x_n|$

$|x_1 + ⋯ + x_n| >= |x_1 + ⋯ + x_(n-1)|$, or $n ⇝ |x_1 + ⋯ + x_n| >= 0$ 单调递增 #tag("increasing-length-of-time-future-series")

let $v,w$ time future, not co-linear. $span(v,w) ≃ ℝ^(1,1)$ cf. #link(<signature-of-2d-subspace-of-spacetime>)[]

通过 $SO(1,n)$ 变换, 可以假设测地线球的中心是 $(0 ,…, 0, 1)$

#tag("sum-preserve-angle-range") 
#indent[
  let $v,w$ 的方向 $v/(|v|), w/(|w|)$ 包含在 $ℍ𝕪$ 的测地线球 $exph([-R,R] #i-split)$

  ==> $v+w$ 的方向 $(v+w)/(|v+w|)$ 在测地线球 $exph([-R,R] #i-split)$
]
_Proof_ 
#indent[
  *Question* 有更直接的证明吗?

  let 
  
  $v = |v| exph (ϕ #i-split) \ w = |w| exph (ψ #i-split)$

  let $|ϕ|, |ψ| <= R$

  双曲线的测地线长度 $r$ 是双射. 双曲线映射到到空间轴是单射. 复合后是 $sinh r$ 保持单调的双射 

  #image("../image/hyperbolic-to-space-bijective.jpeg", width: 60%)
  $ 
    argh ((v+w)/(|v+w|)) 
    &-> im (v+w)/(|v+w|) &(im "of" ℂ_"split") \
    &= (|v| sinh ϕ + |w| sinh ψ)/((|v|^2 + |w|^2 + 2 |v| |w| cosh (ψ - ϕ))^(1/2))  & cosh >= 1 \
    &<= (|v| sinh R + |w| sinh R)/((|v|^2 + |w|^2 + 2 |v| |w| cosh (R - R))^(1/2)) \
    &= sinh R \
    
    abs(argh ((v+w)/(|v+w|))) 
    &<= R
  $
]
let $x_n$ 方向 $x_n/(|x_n|)$ in $ℍ𝕪^n (time,future)$ 测地线球 $𝔹$

  ==> $x_1 + ⋯ + x_n in 𝔹$

_Proof_ use $span(x_1 + ⋯ + x_(n-1) , x_n)$ signature $1,1$, 嵌入 $ℍ𝕪$, 归纳

#tag("quadratic-form-inequality-Minkowski-another") 
#indent[
  let $v,w$ 的方向 in $ℍ𝕪$ 测地线球 $exph([-R,R] #i-split)$

  ==> $⟨v,w⟩ <= |v| |w| cosh(2 R)$
]
_Proof_ use $⟨v,w⟩ = |v| |w| cosh (ψ - ϕ)$ cf. #link(<hyperbolic-cosine-formula>)[]

let $x_n$ time future, 方向 $x_n/(|x_n|)$ 在 $ℍ𝕪^n (time,future)$ 测地线球 $𝔹$ with 半径 $R$

$
  |x_1 + ⋯ + x_n|^2 
  &= |x_1|^2 + ⋯ + |x_n|^2 + 2 sum_(1 <= i < j <= n ) ⟨x_i,x_j⟩ \
  &<= |x_1|^2 + ⋯ + |x_n|^2 + 2 cosh(2 R) sum_(1 <= i < j <= n ) |x_i| |x_j| \
$ 

==> use $cosh >= 1$
$
  |x_1 + ⋯ + x_n|^2 
  &<= cosh(2 R) (|x_1| + ⋯ + |x_n|)^2
$
#tag("absolute-convergence-Minkowski-distance") $sum_(i = 1)^∞ |x_i| < ∞$ ==> #link(<increasing-length-of-time-future-series>)[单调递增] 有界 $lim_(n -> ∞) |x_1 + ⋯ + x_n| < ∞$ 存在极限

#tag("Minkowski-power-series") 
#indent[
  let $sum_(i = 1)^∞ |x_i| < ∞$

  - 距离 $|y| = lim_(n -> ∞) |x_1 + ⋯ + x_n|$ 极限存在 (上一个定理)
  - 方向 $y/(|y|) = lim_(n -> ∞) (x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|) in 𝔹$, 极限存在待证明

  have property

  - $y - (x_1 + ⋯ + x_n)$ time future
  - $lim_(n -> ∞)|y - (x_1 + ⋯ + x_n)| = 0$

  称为 Minkowski 级数收敛 $sum_(i = 1)^∞ x_i = y$
]
_Proof_ of convergence in direction space
#indent[
  - 方向 $(x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|)$ 收敛
  #indent[
    *Question* 有无更直接的证明
    
    use #link(<isom-top-hyperbolic-Euclidean>)[]. $ℝ^(1,n)$ 距离限制在 $ℍ𝕪^n (time,future)$ 等价于作为 Riemman manifold 的测地线距离, $ℍ𝕪^n$ 两个元素相减是 $ℝ^(1,n)$ 类空 
    
    we prove $(x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|)$ Cauchy in $ℍ𝕪^n (time,future)$
    
    $lim_(n -> ∞) |x_1 + ⋯ + x_n| < ∞$ ==> $|x_1 + ⋯ + x_n|$ 是 Cauchy 序列 

    ==> all $ε > 0$, exist $n in ℕ$, all $m in ℕ$ \
    $|x_1 + ⋯ + x_(n+m)| - |x_1 + ⋯ + x_n| < ε$


    let

    $v = x_1 + ⋯ + x_(n), w = x_1 + ⋯ + x_(n+m)$. use $ℍ𝕪^n$ 两点相减是 $ℝ^(1,n)$ 类空

    $ 
      0 
      &<= - ⟨ v/(|v|) - (w)/(|w|) ⟩^2 \
      &= - 2 (1 - ⟨v/(|v|),w/(|w|)⟩) \
      &= 2 ((⟨v,w⟩ - |v| |w|)/(|v| |w|))
    $

    use $1/(|v| |w|) = 1/(|x_1 + ⋯ + x_(n+m)| |x_1 + ⋯ + x_(n)|) <= 1/(|x_1|^2)$ (or other) 不影响极限 $->_(n->∞) 0$  

    use #link(<sum-preserve-time-future>)[]. $w - v$ 类时, $|w| > |v|$. use #link(<triangel-inequality-Minkowski>)[三角不等式] $|w| >= |w - v| + |v|$, use Cauchy $|w| - |v| < ε$ 
    
    ==> $|w - v| <= |w| - |v| < ε$

    ==> $|w - v|^2 <= (|w| - |v|)^2 < ε^2$

    ==> $0 <= (|w| - |v|)^2 - |w - v|^2 < ε^2$

    ==> $2(⟨v,w⟩ - |v| |w|) < ε^2$

    ==> $(x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|)$ Cauchy in $ℍ𝕪^n (time,future)$
  ]
  - 内积收敛
  #indent[
    let $y = |y| exph ϕ$ \
    let $z = |z| exph ψ$ time future \
    for $y_n -> y$ use 双曲余弦
    $
      ⟨y,z⟩ 
      &= |y| |z| cosh (|ϕ - ψ|) \
      &= lim_(n -> ∞) |y_n| |z| cosh(|ϕ_n - ψ|) &quad "distance" |y_n| and "direction" ϕ_n \
      &= lim_(n -> ∞) ⟨y_n,z⟩
    $
  ]
  - $y - (x_1 + ⋯ + x_n)$ 类时
  #indent[
    $
      ⟨ y - (x_1 + ⋯ + x_n) ⟩^2 
      &= ⟨ y - y_n ⟩^2 \
      &= y^2 + y_n^2 - 2 ⟨y,y_n⟩ \
      &= lim_(m -> ∞) (y_(n+m)^2 + y_n^2 - 2 ⟨y_(n+m),y_n⟩) \
      &= lim_(m -> ∞) ⟨ y_(n+m) - y_n ⟩^2
    $
    where $⟨ y_(n+m) - y_n ⟩^2 = ⟨ x_(n+1) + ⋯ + x_(n+m) ⟩^2 >= 0$
  ]
  - $y - (x_1 + ⋯ + x_n)$ 未来
  #indent[
    $
      ⟨y - (x_1 + ⋯ + x_n) , x_1 + ⋯ + x_n⟩ 
      &= ⟨y,y_n⟩ - ⟨y_n,y_n⟩ \
      &= (lim_(m -> ∞) ⟨y_(n+m),y_n⟩) - ⟨y_n,y_n⟩ \
      &= lim_(m -> ∞) ⟨y_(n+m) - y_n , y_n⟩
    $
    where $⟨y_(n+m) - y_n , y_n⟩ = ⟨x_(n+1) + ⋯ + x_(n+m),x_1 + ⋯ + x_n⟩ >= 0$
    $
      lim_(n -> ∞)⟨ y - (x_1 + ⋯ + x_n) ⟩^2 
      &= lim_(n -> ∞) (y^2 + y_n^2 - 2 ⟨y,y_n⟩) \
      &= 0
    $
  ]
]
处理幂级数

let $A_n in Lin(⊙^n ℝ^(1,3) -> ℝ^(1,3))$

#tag("Minkowski-analytic") Minkowski 解析
#indent[
  $sum_(n=1)^∞ A_n (v^n)$ (零阶不影响)

  let 测地线坐标 $argh: ℍ𝕪^n -> ℝ^n$

  目标的 $A_n$ property

  - $v$ time future ==> $A_n (v^n)$ time future

  - 定义范数给出绝对收敛
  #indent[
    use 几何级数控制 like #link(<linear-map-induced-norm>)[the case of Euclidean]
    $ 
      |A_n|(R) &:= sup_(v in ℍ𝕪^n \ |argh(v)| <= R) |A_n (v^n)| = sup_(|argh(v)| <= R) (|A_n (v^n)|)/(|v|^n) \
      
      ρ(R) &:= limsup_(n in ℕ) {|A_n|(R)^(1/n)} ^(-1)
    $
    ==> $|argh(v)| < R$ and $|v| < ρ(R)$ ==> $sum |A_n (v^n)| <= sum ((|v|)/(ρ(R)))^n = 1/(1 - (|v|)/(ρ(R))) - 1 < ∞$
  ]
  - *Question* 类似 Euclidean 的情况, 收敛半径内蕴含 Minkowski 连续性 i.e. 距离和方向的连续, 而且有绝对一致收敛性质 
]
*Example* *Question*

  - $exph$ is $ℂ_"split" ≃ ℝ^(1,1)$ Minkowski 解析

  - 类似复分析, $ℂ_"split"$ 解析 ==> $ℝ^(1,1)$ Minkowski 解析

  - 类似于 Euclidean 的情况, PDE, 特征函数, 特殊函数可能会给出更多 Minkowski-analytic 的例子

*Question* let $f : ℝ^(1,d) -> ℝ^(1,d)$ Euclidean 解析 $ℝ^(1+d)$, $#d f in SO(1,d)$ ==> $f$ Minkowski 解析?

*Question* 对于 Minkowski 解析, 考虑对应到 Euclidean 的 #link(<analytic-continuation>)[], #link(<power-series-space>)[], #link(<analytic-space>)[] 

多了 $|argh(v)| <= R$, 参数 $R$

级数 or 函数三角不等式可能需要加上参数 $cosh (2 R)$ 修正的版本

解析函数空间的网的逼近时还需要 $R -> ∞$ 作为整个方向空间的极限