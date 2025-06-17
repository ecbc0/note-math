#import "../module/module.typ": *
#show: module

使用 #raw("#link(<tensor-induced-quadratic-form>)[]") 的交错化
$
  ⟨v_1 ∧ ⋯ ∧ v_k , w_1 ∧ ⋯ ∧ w_k⟩ = det ⟨v_i,w_j⟩ 
$
遍历所有 $i_1 < ⋯ < i_k$, 正交基 $e_(i_1) ∧ ⋯ ∧
e_(i_k)$ with $⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2 = ⟨ e_(i_1) ⟩^2 ⋯ ⟨ e_(i_k) ⟩^2$, 得到 signature

let $v,w ∈ ℝ^n$. $v,w$ span $ℝ^2$ <==> $v ∧ w != 0$

*Abbreviation* $⟨ v,w ⟩ := ⟨ v , w ⟩, ⟨ v ⟩^2 := ⟨ v , v ⟩, |v| := (⟨ v ⟩^2)^(1/2)$

#tag("quadratic-form-inequality-Euclidean") 内积不等式 (Euclidean). $0 <= ⟨ v ∧ w ⟩^2 = det mat(⟨ v ⟩^2, ⟨ v,w ⟩; ⟨ w,v ⟩, ⟨ w ⟩^2) = ⟨ v ⟩^2 ⟨ w ⟩^2 - ⟨ w,v ⟩^2$. i.e. $⟨ w,v ⟩^2 <= ⟨ v ⟩^2 ⟨ w ⟩^2$ or $⟨ v,w ⟩ <= |v| |w|$

#tag("triangle-inequality-Euclidean") 三角不等式 (Euclidean)
  - $|v + w| <= |v| + |w|$ 

    _Proof_
      $
        ⟨ v+w ⟩^2 &=&⟨ v ⟩^2 + 2 ⟨ v,w ⟩ + ⟨ w ⟩^2 \
        &>=&⟨ v ⟩^2 + 2 |v| |w| + ⟨ w ⟩^2 \
        &=&(|v| + |w|)^2
      $
  - $|v - w| >= stretch(|, size: #120%)|v| - |w|stretch(|, size: #120%)$

    _Proof_
      $
        |v| &<=&|v-w| + |w| \
        |w| &<=&|v-w| + |v|
      $
#tag("Euclidean-space-topology") Euclidean $ℝ^d$ 拓扑. $f : ℝ^d -> ℝ^d'$ 在 $a ∈ ℝ^d$ 连续 :=
  $
    forall ε > 0, exists δ > 0, forall x : |x - a| < δ, |f(x) - f(a)| < ε
  $
let $A ⊂ ℝ^d$

#tag("closure") 闭包 := $closed(A) = {x ∈ ℝ^d : inf_(x ∈ A) |x-a| = 0}$

#tag("closed-set") 闭集 := $closed(A) = A$

(open) closed(𝔹) $𝔹(a,r) := {x ∈ ℝ^d : |x - a| < r}$

#tag("open-set") 开集 $U ⊂ ℝ^d$ := $forall x ∈ U, exists r > 0, 𝔹(x,r) ⊂ U$

$A$ open <==> $A^∁$ closed 

#let I = c-bf("I")
#let J = c-bf("J")

#tag("interval") 区间指 $ℝ$ 的子集 $I$ with property 序不中断
$ 
  And_(a,b ∈ I \ a <= b) And_(x ∈ ℝ \ a <= x <= b) x ∈ I 
$
#tag("best-interval-decomposition") $A ⊂ ℝ$ 的最优区间分解
#indent[
  def $"Interval" ⊂ Subset(ℝ)$ as 所有区间的集合, 包括 open, closed, half open half closed, single point

  def $#J (A) := {I ⊂ A : I ∈ "Interval"}$

  由单点区间的存在, $#J != ∅$ and $⋃ #J = A$

  $#J (A)$ 有 $⊂$ #raw("#link(<linear-order>)[线序链]"). 对每个极大线序链取 $⋃$ 都会继续得到区间. 这些区间的集合记为 $#I (A)$

  $#I (A) != ∅$ and $⨆ #I (A) = A$  

  $#I$ 的区间都是不相交的, 分解方式是唯一的, 于是这些区间组成 $A$ 的最优区间分解

  - 当 $|#I (A)| = 1$ 时, $A$ 是区间, 连通
  - 当 $|#I (A)| > 1$ 时, $A$ 不连通. *Example* $ℝ ∖ 0 = ℝ_(< 0) ⊔ ℝ_(>  0), ℚ = ⨆ _(x ∈ ℚ) {x}$

  如果 $A$ 是闭集, 则 $#I (A)$ 的区间都是闭区间
]
recall $⊂$ 的 #raw("#link(<linear-order>)[]") #raw("#link(<nested-closed-interval-theorem>)[闭区间套的交集非空]")

#tag("bounded-closed-interval-is-compact") $ℝ$ 有界闭区间 ==> #raw("#link(<compact>)[]")

_Proof_ 
#let B = c-bf("B")
#let C = c-bf("C")
#indent[
  let $#B$ 是 $A$ 的 #raw("#link(<net>)[]"). let $B in #B$

  由 $A ⊂ ℝ$ 有界闭, $closed(B) ⊂ A$

  取最优闭区间分解 $closed(B) = ⨆ #I (closed(B))$

  对所有 $B in #B$ 的分解闭区间, 考虑任何 $⊂$ 极大线序链 #raw("#link(<maximal-linear-order>)[]") $#C$

  根据 #raw("#link(<nested-closed-interval-theorem>)[]"), $⊂$ 线序的闭区间套的交集是非空闭区间 $⋂ #C != ∅$

  类似 #raw("#link(<closed-interval-net-theorem>)[]") 的证明, 证明 $⋂ #C$ 是极小的闭区间, 从而 $subset$ 每个 $B in #B$
]
#tag("compact-imply-subsequence-converge") $A$ compact ==> 序列 ${x_n} ⊂ A$ 存在子序列收敛. 对 net 同理

_Proof_ 
#indent[
  $B_n = {x_n,x_(n+1),...}$ 组成网 $#B$
  
  $A$ compact ==> $⋂_(n ∈ ℕ) closed(B)_n != ∅$
  
  let $x ∈ ⋂_(n ∈ ℕ) closed(B)_n$
  
  use 闭包 $closed(B)_n$ 的定义 
  
  $ 
    x in closed(B)_n 
    <==> forall ε_n > 0, exists i_n > i_(n-1), |x_(i_n) - x| < ε_n 
  $

  let $ε_n -> 0$ 
  
  ==> $forall ε > 0, exists N in ℕ, forall n > N, |x_(i_n) - x| < ε$
]
- 单位闭球 $closed(𝔹)^n := {x ∈ ℝ^n : x^2 <= 1}$
- 单位球面 $𝕊^(n-1) := {x ∈ ℝ^n : x^2 = 1}$

#tag("circle-is-compact") $𝕊^1$ compact

_Proof_ $e^(#i θ) : ℝ -> 𝕊^1$ 连续
#indent[
  $𝕊^1$ 连续同构于 $ℝ/ℤ$ (#raw("#link(<quotient-topology>)[]")) 连续同构于 $closed(𝔹)^1/𝕊^0$ i.e. $[-1,1] = closed(𝔹)^1$ 塌缩端点 ${-1,1} = 𝕊^0$ (quotient-topology)

  $closed(𝔹)^1 = [-1,1]$ 有界闭区间 compact ==> quotient $𝕊^1 = closed(𝔹)^n/𝕊^0$ compact. by #raw("#link(<quotient-topology-preserve-compact>)[quotient 保持 compact]")
]
#tag("closed-ball-sphere-is-compact") 

_Proof_ 
#indent[
  $closed(𝔹)^1, 𝕊^1$ compact. 归纳假设 $closed(𝔹)^n, 𝕊^n$ compact

  - $closed(𝔹)^(n+1)$ compact
  #indent[
    $
      f : dmat( delim: #none ,
        𝕊^n × [0,1], ⟶, closed(𝔹)^(n+1);
        (x,r), ⟿, r ⋅ x
      )
    $
    (画图) 连续. quotient 原点 $0 ∈ ℝ^(n+1)$ 后得到同构

    $𝕊^n × [0,1]$ compact. by #raw("#link(<product-topology-preserve-compact>)[]")

    $(𝕊^n × [0,1])/{0 ∈ ℝ^(n+1)} ≃ closed(𝔹)^(n+1)$ compact
  ]
  - $𝕊^(n+1)$ compact
  #indent[
    用极坐标从 $𝕊^n$ 构造 $𝕊^(n+1)$, 经过 quotient, 得到 $𝕊^(n+1)$ compact

    另一种方法 $closed(𝔹)^(n+1)$ 边界 $𝕊^n$ 塌缩到一点得到 $closed(𝔹)^(n+1)/𝕊^n ≃ 𝕊^(n+1)$ compact
    
    _Proof_ 
    #indent[
     $1/(1 - |x|^2) x : 𝔹^(n+1) <-> ℝ^(n+1)$ 将球面 $𝕊(|x|)$ 映射到球面 $𝕊^((|x|)/(1 - |x|^2))$ and $r/(1 - r^2) : [0,1) <-> ℝ_(>= 0)$

     球极投影 $ℝ^(n+1) <-> 𝕊^(n+1) ∖ N$

     复合后的 $𝔹^(n+1) -> 𝕊^(n+1) ∖ N$ 映射加上 $∂ closed(𝔹)^(n+1) = 𝕊^n$ 映射到 $N$, 得到的 $closed(𝔹)^(n+1) -> 𝕊^(n+1)$ 映射仍然连续, quotient 后是双射
    ]
  ]
]
射影空间 (Euclidean) compact. _Proof_ $ℝℙ^n := ℝ^(n+1)/{k x} ≃ 𝕊^n/{± x}$ 

同理 $ℂℙ^n$ (and $ℍℙ,𝕆ℙ$)

#tag("Euclidean-set-distance") $|A| := sup_(x,y ∈ A) |x-y|$ 

- #tag("bounded") 有界 := $|A| < ∞$ 
- #tag("unbounded") 无界 := $|A| = ∞$ 

$|A|$ is $SO(n) ⋊ ℝ^n$ invariant

$ℝ ⊔ {∞} ≃ 𝕊^n$ by 球极投影

平移不改变 $ℝ^n ⊔ {∞}$ 的无穷远 $∞$ (而只是 $ℝ^n ⊔ {∞} ≃ 𝕊^n$ 的共形映射, 共形群 $SO(1,n)$) 

in Euclidean topology of $ℝ^n ⊔ {∞} ≃ 𝕊^n$
- 有界 <==> 远离 $∞$ <==> $∞ ∉ closed(A)$
- 无界 <==> $∞ ∈ closed(A)$

#tag("Euclidean-space-compact-iff-bounded-closed") $A ⊂ ℝ^n$ compact <==> $A$ 有界闭集 

_Proof_
#indent[
  - <==
  #indent[
    $ℝ^n$ 有界闭集 $A$ 对应到 $ℝ^n ⊔ {∞}$ 的闭集且不包括 $∞$

    $𝕊^n$ compact + #raw("#link(<closed-set-in-compact-space-is-compact>)[]") ==> $A$ is compact in $𝕊^n$

    从 $ℝ^n ⊔ {∞}$ topology 限制回到 subspace $ℝ^n$ topology + $A subset ℝ^n$

    得到 $A$ compact
  ]
  - ==>
  #indent[
    - 闭集
    #indent[
      let $x ∈ closed(A)$

      $𝔹(x,r) ∩ A$ 组成 $A$ 的网. 注意可能 $x ∉ 𝔹(x,r) ∩ A$

      - compact ==> $∅ != ⋂_(r > 0) closed(𝔹)(x,r) ∩ A ⊂ A$

      - $⋂_(r > 0) closed(𝔹)(x,r) = x$

      ==> $∅ != {x} ∩ A ==> x in A$
    ]
    - 有界
    #indent[
      $ℝ^d$ 开球不包含 $∞$. 开球族 ${𝔹(x,r) ⊂ ℝ^n : (x ∈ A) and (r > 0)}$ 覆盖 $A$. 取 #raw("#link(<compact-finite-open-cover>)[有限覆盖]"), 仍然不包含 $∞$
    ]
  ]
]
let $#B$ be net of $ℝ^n$

#tag("nested-closed-set-theorem") $ℝ^n$ 的有界闭集套的交集非空. 其交集也是闭集, 可以理解为 $⊂$ 线序链闭集套的最小元

#tag("closed-net-theorem") $ℝ^n$ 的有界闭集网的交集非空
_Proof_
#indent[
  将 $ℝ^n$ 闭集对应到 $ℝ^n ⊔ {∞} ≃ 𝕊^n$ 闭集, $𝕊^n$ compact, 所以闭集套 or 闭集网交集非空. 有界使得不收敛到 $∞$
]
#tag("limit-distance-vanish-net") := $lim_(B ∈ #B) |B| = 0$ 

or $forall ε > 0, exists B ∈ #B, |B| < ε$. 网的尾部有界

序列可以根据尾部组成网 $B_n = {x_n,x_(n+1),...}$ 