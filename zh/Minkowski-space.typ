#import "../module/module.typ": *
#show: module

考虑子空间 $span(v,w) ↪ ℝ^(p,q)$ 

以下等价 
- $dim(span(v,w)) = 2$
- $v,w$ not co-linear

if $span(v,w) ≃ ℝ^(1,1)$, 根据 $ℝ^(1,1)$ 的直观 (画图), 以下类型的基都有可能
- 2 time(-like)
- 2 space
- 1 time, 1 space
- 1 time, 1 light
- 1 space, 1 light
- 2 light

*Example*

- 2 time(-like) \ 
  #indent()[
    $v = vec(1,0), w = vec(a,b)$, where $0 < |b| < |a|$ \
    $⟨ w ⟩^2 = a^2 - b^2 > 0$ \
    $v, w$ 可以线性生成 $vec(0,1)$, 所以张开 $ℝ^(1,1)$
  ]
- 2 space \
  $v = vec(0,1), w = vec(a,b)$, where $0 < |a| < |b|$
- 1 time, 1 space \
  $v = vec(1,0), w = vec(0,1)$
- 1 time, 1 light \
  $v = vec(1,0), w = vec(a,a)$
- 1 space, 1 light 同理
- 2 light \ 
  *Example* $ℝ^(1,1), v = vec(a,a), w = vec(a,-a)$. 注意 $v ⋅ w = 2 a^2 != 0$. \ 
  $v ± w$ 生成 $ℝ^(1,1)$

考虑 $ℝ^(1,n)$ 中的一般的 $span(v,w)$

#tag("signature-of-2d-subspace-of-spacetime") *Prop* Minkowski $(1,n)$ 在 $dim = 2$ 的 $span(v,w)$ 的可能 signature 是 

- $1,1$
- $0,2$
- $0,1$

我们会在后面证明 signature $(1,0), (0,0)$ 不可能

直观上, 两条直线张开的平面 (想象 $ℝ^(1,2)$ 的情况)
- $1,1$ 和光锥内部外部都相交. 虽然所有基的种类都可能, 但以下种类的所有基都是 $1,1$ signature 的
  - 2 time
  - 1 time, 1 light
  - 2 light
- $0,2$ 只和光锥外部相交
  - 2 space
- $0,1$ 和光锥相切, 不与光锥内部相交, 且与光锥只相交于一条 light-like 直线
  - 1 light, 1 space

*Prop* $ℝ^(1,n)$ 可以存在 $0,1$ signature 子空间. _Proof_ $ℝ^(1,2)$ 的 $vec(1,1,0),vec(1,1,1)$

*Prop* time-like 只正交于 space-like

let $v$ time-like. 使用正交分解 $ℝ^(1,n) = v ⊕ v^⟂$, let $v = v_0, w = w_0 + bf(w)$ then $⟨ v,w ⟩ = v_0 w_0 = 0 ==> w_0 = 0$ ==> $w$ space-like

*Prop* light-like $v$ 不正交于 
- time-like. 因为 time-like 只正交于 space-like
- 与自身共线 $k v$ 之外的 light-like #tag("metric-cannot-distinguish-colinear-light-like")

_Proof_ 
#indent[
  取一个正交分解 $ℝ^(1,n) = ℝ_"time" ⊕ ℝ^n_"space"$, 设 $v,w$ light-like 且正交
  $
    v &= v_0 + bf(v) \ 
    w &= w_0 + bf(w)
  $
  $
    dmat(delim: #none ,
      ⟨ v ⟩^2,=,0,==>,v_0^2,=,⟨ bf(v) ⟩^2 ;
    ⟨ w ⟩^2,=,0,==>,w_0^2,=,⟨ bf(w) ⟩^2 ;
    ⟨ v,w ⟩,=,0,==>,v_0 w_0,=,⟨ bf(v) , bf(w) ⟩
    )
  $
  $bf(v), bf(w)$ 类空. 根据 Euclidean 内积不等式
  $
    ⟨ bf(v), bf(w) ⟩^2 &<= ⟨ bf(v) ⟩^2 ⟨ bf(w) ⟩^2 \
    (v_0 w_0)^2 &<= v_0^2 w_0^2 
  $
  但是 $(v_0 w_0)^2 = v_0^2 w_0^2$, 所以 Euclidean 内积不等式取等号, 从而 $bf(v), bf(w)$ 共线 $bf(w) = k bf(v)$. 
  $
    v_0 w_0 &= ⟨ bf(v) , bf(w) ⟩ \
    &= k ⟨ v ⟩^2 \
    &= k v_0^2
  $
  这蕴含 $w_0 = k v_0$, 从而 $w = k v$
]
*Prop* $ℝ^(1,n)$ 的二维子空间的 signature 不可能是 $1,0$ or $0,0$

_Proof_ 用上一个定理

  *Question* 是否有不依赖于时间空间正交分解的证明? 但是注意, 这个命题对一般 $ℝ^(p,q)$ 不成立. 在 $ℝ^(2,2)$ 中, 以下正交且不共线
  - 1 time, 1 light $v = vec(1, 0, 0, 0), w = vec(0, 1, 0, 1)$
  - 2 light $v = vec(1, 0, 1, 0), w = vec(0, 1, 0, 1)$ 
  进一步的概念是 "全迷向子空间" (Totally Isotropic Subspace)

*Prop* $p,q >= 2$ 时 $ℝ^(p,q)$ 的子空间 $span(v,w)$ 的所有 signature 都有可能

_Proof_ 此时 $ℝ^(p,q)$ 包含子空间 $ℝ^(2,2)$, 那里容易构造所有可能的 signature 子空间

*Prop* $ℝ^(1,n)$ 的两个不共线 time-like $v,w$ 的展开 $span(v,w)$ 的 signature 是 $1,1$

_Proof_ 以其中一个 time-like 为初始的基来生成 $span(v,w)$ 正交基, 但 signature 不能是 $1,0$, 所以只能是 $1,1$

*Prop* 在 $ℝ^(1,n)$ let $v$ light-like, $w$ time-like or light-like, $v,w$ 不共线. 则 $span(v,w) ≃ ℝ^(1,1)$

_Proof_
#indent[
  $⟨ v ⟩^2 = 0$
  
  $v,w$ 不正交, $⟨ v,w ⟩ != 0$
  $ 
    ⟨ a v + b w ⟩^2 
    &= 2 a b ⋅ ⟨ v,w ⟩ + b^2 ⋅ ⟨ w ⟩^2 \
    &= b ( b ⋅ ⟨ w ⟩^2 + a ⋅ ⟨ v,w ⟩)  
  $
  固定一个 $b > 0$, 考虑 
  $
    b ⋅ ⟨ w ⟩^2 + a ⋅ ⟨ v,w ⟩ = ⟨ v,w ⟩ (a - (-b ⋅ ⟨ w ⟩^2)/⟨ v,w ⟩)
  $
  调整 $a$ 即可得到正或负的结果, 从而有 time-like 和 space-like, 从而 $±$ signature 都 $>= 1$, 只能是 $1,1$

  另一种方法. 二次型在基 $v,w$ 下对应矩阵 $G = mat(⟨ v,v ⟩, ⟨ v,w ⟩; ⟨ w,v ⟩, ⟨ w,w ⟩)$. 转为 signature 标准形式, 对应矩阵变换 $A^⊺ G A = mat(λ_1;,λ_2)$
  $
    λ_1 λ_2 = det mat(λ_1;,λ_2) = (det A)^2 det G = - ⟨ v,w ⟩ ^2 (det A)^2 < 0
  $
  于是 $λ_1, λ_2$ 一正一负, 对应 $1,1$ signature
]
#tag("simultaneity-relativity") 相对论同时性
#indent[
  根据正交基延拓, 可以证明

  in $1,n$, $dim = n$ space-like 子空间的正交补是 $dim = 1$ time-like 子空间 

  - ($span(v,v') ≃ ℝ^2$ space-like) <==> (存在 time-like $w$ 同时正交于 $v,v'$) \
    _Proof_ 
      注意, time-like 只与 space-like 正交
      - (==>) 从 $span(v,v')$ 开始延拓. time-like $w$ 基向量与 space-like 基向量正交
      - (<==) 从 $w$ 开始延拓. 全部 space-like 基向量组成 $w$ 的正交补空间 $w^⟂$. $v,v'$ 和 $w$ 正交, 所以属于 $w^⟂$, 而 Euclidean 空间的所有子空间都是 Euclidean 的

  从而逆否命题也成立

  - ($span(v,v') cancel(≃) ℝ^(2)$ not space-like) <==> (不存在 time-like $w$ 同时正交于 space-like $v,v'$)

  直观: 不同 space-like 子空间 $S,S'$ 可能无法使用兼容的时间计算方式 or $S,S'$ 的 time-like 正交补可能不相同
]
取一个 $ℝ^(1,n)$ 的时间空间正交分解

$v = v_0 + bf(v)$

$⟨ v,w ⟩ = v_0 w_0 - ⟨ bf(v) , bf(w) ⟩$
  
*Prop* $⟨ v ⟩^2,⟨ w ⟩^2 >= 0$ ==> 内积的时间相乘的符号决定内积的符号  
$ 
  sign(v_0 w_0) 
  &= sign(v_0 w_0 - ⟨ bf(v) , bf(w) ⟩) \ 
  &= sign(⟨ v,w ⟩) 
$
_Proof_ 分类讨论 $sign(v_0 w_0) >= 0, <= 0$ 的情况

- $sign(v_0 w_0) >= 0$. let $v_0, w_0 > 0$. $⟨ v ⟩^2 >= 0 ==> v_0^2 >= ⟨ bf(v) ⟩^2$. 对 $w$ 同理. 于是根据 Euclidean 内积不等式 
  $
    v_0^2 w_0^2 
    >= ⟨ bf(v) ⟩^2 ⟨ bf(w) ⟩^2 
    >= ⟨ bf(v), bf(w) ⟩^2
  $
  于是 $v_0 w_0 - ⟨ bf(v) , bf(w) ⟩ >= 0$, 即, 和 $v_0 w_0$ 相同正负
- $sign(v_0 w_0) <= 0$. let $v_0 > 0, w_0 < 0$. 取 $w'_0 = - w_0$ 然后用 $sign(v_0 w'_0) >= 0$ 的结论

in Euclidean, we have 

#link(<quadratic-form-inequality-Euclidean>)[内积不等式] $|⟨ v,w ⟩|^2 <= abs(v) abs(w)$ ==> #link(<triangle-inequality-Euclidean>)[三角不等式] $|v+w| <= |v|+|w|$

in signature $p,q$ 二次型, 这一般不成立

前面说过, 二次型在基 $v,w$ 下对应矩阵 $G = mat(⟨ v,v ⟩, ⟨ v,w ⟩; ⟨ w,v ⟩, ⟨ w,w ⟩)$. 转为标准二次型形式, 对应矩阵变换 $A^⊺ G A = mat(λ_1;,λ_2)$
  $
    λ_1 λ_2 = det mat(λ_1;,λ_2) = (det A)^2 det G
  $
$det G = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ v,w ⟩^2 = λ_1 λ_2$

#tag("quadratic-form-inequality-Minkowski") 内积不等式
- $⟨ v ⟩^2 ⟨ w ⟩^2 < ⟨ v,w ⟩^2$ \
  $λ_1, λ_2$ 一正一负, 对应 $1,1$ signature
- $⟨ v ⟩^2 ⟨ w ⟩^2 > ⟨ v,w ⟩^2$ \
  $λ_1, λ_2$ 同正负, 对应 $2,0$ 或 $0,2$ signature
- $⟨ v ⟩^2 ⟨ w ⟩^2 = ⟨ v,w ⟩^2$ \
  其它 signature 或 $v,w$ 共线

#tag("triangel-inequality-Minkowski") $1,1$ signature 三角不等式
#indent[
  $⟨ v + w ⟩^2 = ⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2$

  - 2 time 
  #indent[
    $⟨ v ⟩^2 > 0$, $|v| := (⟨ v ⟩^2)^(1/2)$

    - $⟨ v,w ⟩ > 0$ ==> $|v+w| > |v| + |w|$
    - $⟨ v,w ⟩ < 0$ ==> $⟨ v + w ⟩^2 < (|v| - |w|)^2$
  ]
  - 1 time, 1 light
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

    use #link(<quadratic-form-inequality-Minkowski>)[] $⟨ v ⟩^2 ⟨ w ⟩^2 < ⟨ v,w ⟩^2$

    ==> $abs(v) abs(w) < ⟨ v,w ⟩$

    ==> 
    $
      ⟨ v + w ⟩^2 
      &> ⟨ v ⟩^2 + 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &= (|v| + |w|)^2
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
      &< ⟨ v ⟩^2 - 2 abs(v) abs(w) + ⟨ w ⟩^2 \
      &= (|v| - |w|)^2      
    $
    注意 $sign ⟨ v + w ⟩^2$ 不确定

    *Example* let $v = vec(1,0)$. let $w$ 过去 time-like
    
    - $w = vec(-1,0) ==> ⟨ v + w ⟩^2 = 0$
    
    - $w = vec(-1,1/2) ==> ⟨ v + w ⟩^2 = -1/4$
    
    - $w = vec(-1/2,0) ==> ⟨ v + w ⟩^2 = 1/4$
  ]
]
Euclidean 空间的极限或连续是直接用开球 $𝔹(r) = { ⟨ x ⟩^2 < r^2 }$ (为了简化讨论, 只考虑原点 $0$ 为中心)

在 Minkowski 空间或者 p,q 二次型空间中, 对 Euclidean 的情况的直接模仿是 
- 类时 ${0 <= ⟨ x ⟩^2 < r^2 }$, 类空 ${ -r^2 < ⟨ x ⟩^2 <= 0 }$, 或者
- 合并类时类空 ${ -r^2 < ⟨ x ⟩^2 < r^2 }$

但是注意, 此时 
+ $r^2 -> 0$ 所表示的极限含义和 Euclidean 的情况不同. 例如光锥上不同的两点虽然 "隔开" 但是其二次型距离是零. 对于光锥上的点 $a != 0$ 虽然和 $0$ 隔开, 却可以通过 $SO(p,q)$ 变换使得 $a$ 的坐标任意接近 $0$. 以 $ℝ^(1,1)$ 为例, 设 $a = (t,x) = (1,1)$. 变换后 $mat(cosh ϕ, sinh ϕ; sinh ϕ, cosh ϕ) vec(1,1) = vec(cosh ϕ + sinh ϕ, cosh ϕ + sinh ϕ) = vec(e^ϕ, e^ϕ)$, 然后 $lim_(ϕ -> -∞) e^ϕ = 0$. $(1,1)$ 在 $SO(1,1)$ 作用的轨道下是射线 $k (1,1), k > 0$
+ 以 $ℝ^(1,1)$ 为例, $ℍ𝕪 = { t^2 - x^2 = 1} $ 应该是 $ℝ^2$ 的球面 $𝕊 = { x^2 + y^2 = 1 }$ 的类似物. 在 $ℝ^2$ 的图形直觉上, $ℍ𝕪$ 上有些点看起来离原点 $0$ 很远, 但实际上 $ℍ𝕪$ 上任意点的 $1,1$ 距离都是一样的, $ℍ𝕪$ 上任意两点都可以通过 $SO(1,1)$ 变换相互转换, 这就像 $𝕊$ 的情况一样. 在 $ℝ^(1,n)$ 上, 二次型距离 $> 0$ 时可以认为是类时测地线距离或者惯性粒子的 proper time. $ℝ^(1,n)$ 上的类时点可以 $SO(1,n)$ 变换到空间坐标是零, 意味着从匀速变换到静止, 此时 proper time = time. 对于 $ℝ^(p,q)$ 大概也有类似结论 

#image("../image/hyperbolic-to-space-bijective.png", width: 50%)

$ℝ^(p,q)$ 的 "坐标距离的连续", 即 $ℝ_+^p × ℝ_-^q$ product 距离, 更细于, $ℝ^(p,q)$ 的 "二次型距离的连续", 因为 $|x_+^2 - x_-^2| <= x_+^2 + x_-^2$. 非 Euclidean 二次型距离连续不蕴含坐标距离连续

但这并不蕴含函数结构的连续

记坐标距离连续结构为 $C$, 二次型距离连续结构为 $Q$
- 在定义域连续结构 $A$ 相同的情况下, 值域 $C$ 的函数连续蕴含值域 $Q$ 的函数连续, $"continuous"(A -> C) ==> "continuous"(A -> Q)$
- 在值域连续结构 $A$ 相同的情况下, 定义域 $Q$ 的函数连续蕴含定义域 $C$ 的函数连续,  $"continuous"(Q -> A) ==> "continuous"(C -> A)$
- $"continuous"(C -> C), "continuous"(Q -> Q)$ 之间没有比较关系 

$"continuous"(Q -> Q)$ 大概会将光锥映射到光锥. 据说 Zeeman 证明了, 空间维数大于 $1$ 的 Minkowski 时空中保持光锥且保持任意光锥两点之间的时间先后顺序的双射同构群 二次型旋转 + 平移 + 伸缩 生成

$p, q$ 二次型距离合理性的可能线索: $ℝ^(p, q)$ 通过 $(1, 1)$ 张量 $ℝ^(p,q)^⊺ ⊗ ℝ^(p,q)$ 作为线性映射空间, 继承的张量二次型, 再限制在 $so(p,q)$ 时, 将会成比例于 $so(p, q)$ 的 Killing form 二次型 #link(<Killing-form-of-orthogonal-group>)[]. signature $(p q, binom(p,2) + binom(q, 2))$, 其中 $p q$ 是 boost 的数量, $binom(p,2)$ 是 time-like 旋转, $binom(q,2)$ 是 space-like 旋转. 在 Killing form 下, boost 是正距离的, time/space 旋转都是负距离的 

$ℝ^(1,1)$ 的类时区域 $"time-like"(1,1) = { (t,x) in ℝ^(1,1) : t^2 - x^2 > 0 }$. 它可以分解为距离空间部分 $ℝ(>= 0)$ 和方向空间部分 $ℍ𝕪 = { (t,x) in ℝ^(1,1) : t^2 - x^2 = 1 }$

#image("../image/hyperbolic-to-space-bijective.png", width: 50%)

像 $ℝ^2$ 极坐标那样, 我们可以用双曲极坐标 $(r, ϕ)$, 其中 $r$ 是二次型距离, $ϕ$ 是 $ℍ𝕪$ 的测地线长度, 也称为双曲角度 #tag("hyperbolic-angle") 或者快度 #tag("rapidity")

#let time = "time"
#let space = "space"
#let future = "future"
#let past = "past"

#tag("polor-coordinate-hyperbolic") 双曲极坐标 $ℝ^(1,1)(time,future) ≃ ℝ(>=0) × ℍ𝕪$ 
$
  mat(delim: #none,
  ℝ(>=0) × ℝ , --> , ℂ_"split" , --> , ℝ^(1,1) ;
  (r,ϕ) , ~~> , r exph(ϕ #i-split) , ~~> , r (cosh ϕ, sinh ϕ)
  )
$
#tag("hyperbolic-cosine-formula") 双曲余弦公式
#indent[
  let $v,w in ℍ𝕪$

  let $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    ⟨ v,w ⟩ 
    &= Re(v ⋅ w^*) \
    &= Re(exph ((ϕ - ψ) #i-split)) \
    &= cosh(ϕ - ψ)
  $
  let $v,w$ future time-like. $|v| := (⟨ v ⟩^2)^(1/2)$

  $v/(|v|),w/(|w|) in ℍ𝕪$

  $(⟨ v,w ⟩)/(abs(v) abs(w)) = cosh(ϕ - ψ)$

  双曲余弦公式
  $ 
    ⟨ v + w ⟩^2 
    &= ⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2 \ 
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) (⟨ v,w ⟩)/(abs(v) abs(w)) \
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 abs(v) abs(w) cosh (ϕ - ψ)
  $
]
#tag("isom-top-hyperbolic-Euclidean")

  $ℍ𝕪$ 在 $ℂ_"split" = ℝ^(1,1)$ 距离下的极限结构 $≃$ 测地线距离 $≃$ Euclidean $ℝ^1$ 

_Proof_ 
#indent[
  let $v,w in ℍ𝕪$, $v = exph (ϕ #i-split), w = exph (ψ #i-split)$
  $ 
    ⟨ v - w ⟩^2 
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &= 2 (1 - cosh(ϕ - ψ)) \
    &<= 0 " by " cosh >= 1
  $
  let $"dist"(v,w) := (- ⟨ v - w ⟩^2)^(1/2)$
  
  use $cosh ϕ = 1 <==> ϕ = 0$
  $
    "dist"(v,w) = 0
    &<==> ⟨ v - w ⟩^2 = 0 \
    &<==> ϕ = ψ \
    &<==> v = w 
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
    &= ⟨ v ⟩^2 + ⟨ w ⟩^2 - 2 ⟨ v,w ⟩ \
    &= 2 (1 - cosh(|ϕ - ψ|)) \
    &<= 0
  $
  where

  - $ϕ,ψ$ 是 $v,w$ 的测地线坐标
  - $|ϕ - ψ|$ 是测地线坐标中的 Euclid 距离
]
二次型流形的测地线可以用纯二次形式技术定义

二次型流形 $ℚ^(p,q)(± r^2)$ 的 $a$ 点处的切空间可以定义为正交于径向向量 $a$ 的 (仿射) 子空间

$a$ 点出发的测地线的初始方向 $b$ 在 $ℚ^(p,q)$ 在 $a$ 点上的切空间 $b in ⊤_(a) (ℚ^(p,q))$

测地线定义为 $span(a, b) ∩ ℚ^(p,q)$ 

$ℍ𝕪^n (time) = ℚ^(1,n)(1)$ type (p. 19 of @ref-9) #image("../image/quadratic-manifold-geodesic.png", width: 30%)

$ℍ𝕪^n (space) = ℚ^(1,n)(-1)$ type #stack( dir: ltr,
  image("../image/quadratic-manifold-geodesic-1.png", width: 30%),
  image("../image/quadratic-manifold-geodesic-2.png", width: 30%),
  image("../image/quadratic-manifold-geodesic-3.png", width: 30%)
)

$ℍ𝕪^n (time)$ 是 Riemann manifold, const negative curvature

$ℍ𝕪^n (space)$ 是 Lorentz manifold, const positive curvature

$ℍ𝕪^n (space)$ *alias* de Sitter space

球面 $𝕊^n$ 的球极投影的基点 ("南北极") 在 $𝕊^n$ 上. 需要两个以上的坐标卡覆盖全部 $𝕊^n$

#tag("stereographic-projective-hyperbolic") time-like 双曲面 $ℍ𝕪^n (time)$ 考虑球极投影, 两个基点分别在两枝双曲面上, 且投影在光锥方向 (下图的交叉形状) 形成分隔的奇点

#image("../image/stereographic-projective-hyperbolic-time-like.jpg", width: 50%)

在未来基点的投影坐标中, 过去基点的坐标是零, 但未来基点的坐标没有或者坐标是 $∞$

$ℝ^(1,1)$ 是特殊的, 因此上图的 future 坐标是不连通的. 但是空间维数 $> 1$ 时 future 坐标应该连通

应该可以推广到 $p,q$ 二次型. $-1$ 距离的情况就是 $q,p$ 的 $+1$ 距离的情况

$ℝ^(1,2)$ space-like 双曲面, 投影坐标卡是低一维的 Minkowski 空间. 进行 3d 作图, 画出基点的光锥 (注意是光锥是 "纵向" 的) 

#image("../image/stereographic-projective-hyperbolic-space-like.png", width: 50%)

即使画图的直观可能难, 解析计算应该是不难的