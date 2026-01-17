#import "../module/module.typ": *
#show: module

使用 #link(<tensor-induced-quadratic-form>)[] 的交错化
$
  ⟨v_1 ∧ ⋯ ∧ v_k , w_1 ∧ ⋯ ∧ w_k⟩ = det ⟨v_i,w_j⟩ 
$
遍历所有 $i_1 < ⋯ < i_k$, 正交基 $e_(i_1) ∧ ⋯ ∧
e_(i_k)$ with $⟨ e_(i_1) ∧ ⋯ ∧ e_(i_k) ⟩^2 = ⟨ e_(i_1) ⟩^2 ⋯ ⟨ e_(i_k) ⟩^2$, 得到 signature

let $v,w ∈ ℝ^n$. $v,w$ span $ℝ^2$ <==> $v ∧ w != 0$

*Abbreviation* $⟨v⟩^2 := ⟨v,v⟩, |v| := (⟨v⟩^2)^(1/2)$

#tag("quadratic-form-inequality-Euclidean") 内积不等式 (Euclidean). $0 <= ⟨v ∧ w⟩^2 = det mat(⟨v⟩^2, ⟨v,w⟩; ⟨w,v⟩, ⟨w⟩^2) = ⟨v⟩^2 ⟨w⟩^2 - ⟨w,v⟩^2$. i.e. $⟨w,v⟩^2 <= ⟨v⟩^2 ⟨w⟩^2$ or $⟨v,w⟩ <= |v| |w|$

#tag("triangle-inequality-Euclidean") 三角不等式 (Euclidean)
  - $|v + w| <= |v| + |w|$ 

    _Proof_
      $
        ⟨v+w⟩^2 &= ⟨v⟩^2 + 2 ⟨v,w⟩ + ⟨w⟩^2 \
        &>= ⟨v⟩^2 + 2 |v| |w| + ⟨w⟩^2 \
        &= (|v| + |w|)^2
      $
  - $|v - w| >= stretch(|, size: #120%)|v| - |w|stretch(|, size: #120%)$

    _Proof_
      $
        |v| &<= |v-w| + |w| \
        |w| &<= |v-w| + |v|
      $
  - $dim >= 2$ 时更一般的不等式应该是 $|v + w| <= K (|v| + |w|)$. 为简便起见, 暂时不使用这种更一般的假设
  
    对于 $p$ norm $|v|_p = (|v_1|^p + ⋯ + |v_n|^p)^(1/p)$, $|v + w|_p <= K(|v|_p + |w|_p)$ 的 $K$ 的下确界, 或者 $(|v + w|_p)/(|v|_p + |w|_p)$ 对 $v, w$ 的上确界, 是 $2^(1/p - 1)$ 
  
    (_Proof_ 先计算出 $(|v + w|_p)/(|v|_p + |w|_p)$ 的一个上界, 然后证明它是确界. 用微分技术证明对 $a, b >= 0$ 有 $(a + b)^p <= a^p + b^p$. 作用于 $p$ norm 的分量. 令 $x = |v|_p, y = |w|_p$, 转为尝试计算 $f(x,y) = (x^p + y^p)^(1/p) / (x + y)$ 的最大值. 由于齐次性, 伸缩 $f(a x, a y) = f(x, y)$ 不影响结果. 假设 $y = 1$. 用微分方法计算 $g(x) = (x^p + 1)^(1/p) / (x + 1)$ 的最大值, 得到上界 $2^(1/p - 1)$. 再用 $ℝ^2$ 嵌入的 $v = (1, 0), w = (0, 1)$ 说明可以取到, 于是 $2^(1/p - 1)$ 是上确界. 当 $0 < p < 1$ 时, $2^(1/p - 1) > 1$, 这使得正常的三角不等式不成立)
#tag("Euclidean-space-topology") Euclidean $ℝ^d$ 拓扑. $f : ℝ^d -> ℝ^d'$ 在 $a ∈ ℝ^d$ 连续 :=
  $
    forall ε > 0, exists δ > 0, forall x : |x - a| < δ, |f(x) - f(a)| < ε
  $
let $A ⊆ ℝ^d$

#tag("closure") 闭包 := $closed(A) = {x ∈ ℝ^d : inf_(x ∈ A) |x-a| = 0}$

#tag("closed-set") 闭集 := $closed(A) = A$

(open) closed(𝔹) $𝔹(a,r) := {x ∈ ℝ^d : |x - a| < r}$

#tag("open-set") 开集 $U ⊆ ℝ^d$ := $forall x ∈ U, exists r > 0, 𝔹(x,r) ⊆ U$

$A$ open <==> $A^∁$ closed 

#let I = c-bf("I", rgb("#919191"))
#let J = c-bf("J", rgb("#919191"))

#tag("interval") 区间指 $ℝ$ 的子集 $I$ with property 序不中断
$ 
  And_(a,b ∈ I \ a <= b) And_(x ∈ ℝ \ a <= x <= b) x ∈ I 
$
#tag("best-interval-decomposition") $A ⊆ ℝ$ 的最优区间分解
#indent[
  def $"Interval" ⊆ Subset(ℝ)$ as 所有区间的集合, 包括 open, closed, half open half closed, single point (这里不是定义拓扑, 也不需要推广到高维, 所以不需要限制为只有开区间)

  def $#J (A) := {I ⊆ A : I ∈ "Interval"}$

  由单点区间的存在, $#J != ∅$ and $⋃ #J = A$

  $#J (A)$ 有 $⊆$ #link(<linear-order>)[线序链]. 对每个极大线序链取 $⋃$ 都会继续得到区间. 这些区间的集合记为 $#I (A)$

  $#I (A) != ∅$ and $⨆ #I (A) = A$  

  $#I$ 的区间都是不相交的, 分解方式是唯一的, 于是这些区间组成 $A$ 的最优区间分解

  - 当 $|#I (A)| = 1$ 时, $A$ 是区间, 连通
  - 当 $|#I (A)| > 1$ 时, $A$ 不连通. *Example* $ℝ ∖ 0 = ℝ_(< 0) ⊔ ℝ_(>  0), ℚ = ⨆ _(x ∈ ℚ) {x}$

  如果 $A$ 是闭集, 则 $#I (A)$ 的区间都是闭区间
]
recall $⊆$ 的 #link(<linear-order>)[] #link(<nested-closed-interval-theorem>)[闭区间套的交集非空]

#tag("bounded-closed-interval-is-compact") $ℝ$ 有界闭区间 ==> #link(<compact>)[]

_Proof_ 
#let B = c-bf("B", rgb("#919191"))
#let C = c-bf("C", rgb("#919191"))
#indent[
  假设 $A$ 是有界闭区间, $#B$ 是 $A$ 的网

  由于 $A$ 是闭集, 故 $closed(B)$ 的定义对 $ℝ, A$ 的拓扑都相同
  
  由于 $A$ 有界, 可以定义非空下确界集 $L = {inf(B) in ℝ : B in #B}$ 和上确界集 $U = {sup(B) in ℝ : B in #B}$
  
  根据网的性质 (或者使用相应的区间网 $[inf(B), sup(B)]$), 可以证明 $L$ 的数都 $<=$ $U$ 的数 
  
  $L$ 有上界, $U$ 有下界, 于是可以取确界, 且满足 $sup(L) <= inf(U)$ 
  
  我们证明 $l = sup(L) in ⋂_(B in #B) closed(B)$

  取 $B_0 in #B$, 证明 $l in closed(B)_0$

  _Proof_
  #indent[
    定义 $S = { inf(B) : B in #B and B ⊆ B_0 }$

    $S != ∅$ 因为 $inf(B_0) in S$

    $inf(B) in closed(B) ⊆ closed(B)_0$

    $closed(B)_0$ 是闭集, 所以 $l_0 = sup(S) in closed(B)_0$

    $S = { inf(B) : B in #B and B ⊆ B_0 } ⊆ { inf(B) : B in #B } = L$
    
    所以 $l_0 = sup(S) <= sup(L) = l$

    即 $l_0 <= l$

    再证明 $l <= l_0$

    对每个 $B_1 in #B$, _由于 $#B$ 是网_, 所以存在 $B in #B$ 使得 $B ⊆ B_0 ∩ B_1$

    从而 $B ⊆ B_0$, 所以 $inf(B) in S$ 且 $inf(B) <= sup(S)$ 
    
    并且 $B ⊆ B_1$, 所以 $inf(B_1) <= inf(B)$

    由 $B_1 in #B$ 选取的任意性, 我们有 $sup(S)$ 是 $L = { inf(B_1) : B_1 in #B }$ 的上界, 于是 $sup(L) <= sup(S)$, 也即 $l <= l_0$

    从而 $l = l_0$

    由于 $l_0 in closed(B)_0$, 所以 $l in closed(B)_0$
  ]
  由 $B_0 in #B$ 选取的任意性, 有 $l in ⋂_(B in #B) closed(B)$

  于是 $⋂_(B in #B) closed(B) != ∅$
]
#tag("compact-imply-subsequence-converge") $A$ compact ==> 序列 ${x_n} ⊆ A$ 存在子序列收敛. 对 net 同理

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
  $𝕊^1$ 连续同构于 $ℝ/ℤ$ (#link(<quotient-topology>)[]) 连续同构于 $closed(𝔹)^1/𝕊^0$ i.e. $[-1,1] = closed(𝔹)^1$ 塌缩端点 ${-1,1} = 𝕊^0$ (quotient-topology)

  $closed(𝔹)^1 = [-1,1]$ 有界闭区间 compact ==> quotient $𝕊^1 = closed(𝔹)^1/𝕊^0$ compact. by #link(<quotient-topology-preserve-compact>)[quotient 保持 compact]
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

    $𝕊^n × [0,1]$ compact. by #link(<product-topology-preserve-compact>)[]

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

考虑到无穷远 $∞$ 的平移不变性, 使用球极投影技术

$ℝ ⊔ {∞} ≃ 𝕊^n$ by 球极投影

平移不改变 $ℝ^n ⊔ {∞}$ 的无穷远 $∞$ (而只是 $ℝ^n ⊔ {∞} ≃ 𝕊^n$ 的共形映射, 共形群 $SO(1,n)$) 

in Euclidean topology of $ℝ^n ⊔ {∞} ≃ 𝕊^n$
- 有界 <==> 远离 $∞$ <==> $∞ ∉ closed(A)$
- 无界 <==> $∞ ∈ closed(A)$

#tag("Euclidean-space-compact-iff-bounded-closed") $A ⊆ ℝ^n$ compact <==> $A$ 有界闭集 

_Proof_
#indent[
  - <==
  #indent[
    $ℝ^n$ 有界闭集 $A$ 对应到 $ℝ^n ⊔ {∞}$ 的闭集且不包括 $∞$

    $𝕊^n$ compact + #link(<closed-set-in-compact-space-is-compact>)[] ==> $A$ is compact in $𝕊^n$

    从 $ℝ^n ⊔ {∞}$ topology 限制回到 subspace $ℝ^n$ topology + $A subset ℝ^n$

    得到 $A$ compact
  ]
  - ==>
  #indent[
    - 闭集
    #indent[
      let $x ∈ closed(A)$

      $𝔹(x,r) ∩ A$ 组成 $A$ 的网. 注意可能 $x ∉ 𝔹(x,r) ∩ A$

      - compact ==> $∅ != ⋂_(r > 0) closed(𝔹)(x,r) ∩ A ⊆ A$

      - $⋂_(r > 0) closed(𝔹)(x,r) = x$

      ==> $∅ != {x} ∩ A ==> x in A$
    ]
    - 有界
    #indent[
      $ℝ^d$ 开球不包含 $∞$. 开球族 ${𝔹(x,r) ⊆ ℝ^n : (x ∈ A) and (r > 0)}$ 覆盖 $A$. 取 #link(<compact-finite-open-cover>)[有限覆盖], 仍然不包含 $∞$
    ]
  ]
]
let $#B$ be net of $ℝ^n$

#tag("nested-closed-set-theorem") $ℝ^n$ 的有界闭集套的交集非空. 其交集也是闭集, 可以理解为 $⊆$ 线序链闭集套的最小元

#tag("closed-net-theorem") $ℝ^n$ 的有界闭集网的交集非空
_Proof_
#indent[
  将 $ℝ^n$ 闭集对应到 $ℝ^n ⊔ {∞} ≃ 𝕊^n$ 闭集, $𝕊^n$ compact, 所以闭集套 or 闭集网交集非空. 有界使得不收敛到 $∞$
]
#tag("limit-distance-vanish-net") := $lim_(B ∈ #B) |B| = 0$ 

or $forall ε > 0, exists B ∈ #B, |B| < ε$. 网的尾部有界

序列可以根据尾部组成网 $B_n = {x_n,x_(n+1),...}$ 

#tag("Cauchy-completeness-Euclidean") 
#indent[
  in $ℝ^n$, limit-distance-vanish 网收敛于一点
  
  $ℝ^n$ 有界闭集 = compact ==> let $x in ⋂_(B ∈ #B) closed(B) != ∅$

  limit-distance-vanish $lim_(B ∈ #B)|B| = 0$ ==> $⋂_(B ∈ #B) closed(B) = {x}$
]
有些无穷维线性空间 e.g. #link(<Lebesgue-integrable>)[] $L^1$, 有界闭集不能得到 compact 但是仍然满足 limit-distance-vanish 网收敛到一点

根据归纳, 有限求和 is 结合且交换. 但是这不保证无限求和 i.e. 

let
- 重排 $f : ℕ <-> ℕ$ 
- $x_n = a_1 + ⋯ + a_n$ 收敛到 $x$
则 $y_n = a_(f(1)) + ⋯ + a_(f(n))$ 可能不收敛或者收敛到其它值 $y != x$

compare
- $sum 1/n = ∞$
- $sum (-1)^(n+1) 1/n = log(1+1) = log(2)$ 
收敛 (not ==>) 绝对收敛

let $a_n$ 是序列 $ℕ -> ℝ$

- $sum_(.. ∞) a_n$ 收敛 ==> $lim_(n -> ∞) a_n = 0$
  
  _Proof_ $forall ε > 0, exists N in ℕ, forall n > N, abs(sum_(i = 1 .. n) a_i - a) < ε/2$ 

   ==> 由三角不等式 
   
   $ |a_n| = abs(sum_(i = 1 .. n+1) a_i - sum_(i = 1 .. n) a_i) <= abs(sum_(i = 1 .. n+1) a_i - a) + abs(sum_(i = 1 .. n) a_i - a) < ε $
- $lim_(n -> ∞) a_n != 0$ ==> $sum_(.. ∞) a_n$ 不收敛

任何序列 $x_n$ 可以定义 $a_n = x_n - x_(n-1)$ 使得 $x_n = a_1 + ⋯ + a_n$

重排 $f : ℕ <-> ℕ$ 不改变序列尾部行为 $lim_(n -> ∞) a_(f(n)) = lim_(n -> ∞) a_n$

如果 $a_n >= 0$, $sum a_n$ 重排不变

_Proof_ 
#indent[
  $sum a_n < ∞ ==> forall ε > 0, exists N ∈ ℕ, forall m > ℕ, sum a_n - epsilon < sum_(n=0..m) a_n <= sum a_n$

  $N' := max {f^(-1)(1) ,…, f^(-1)(N)}$

  ==> ${1 ,…, N} ⊆ {f(1) ,…, f(N')}$

  ==> $forall M > N', sum a_n - epsilon <= sum_(n=0..N) a_n <= sum_(n=0..M) a_(f(n)) <= sum a_n$ (by $a_n >= 0$)

  ==> $lim_(M -> ∞) sum_(n=0..M) a_(f(n)) = sum a_n$
]
def
$
  a_n^+ &:= "switch"(a_n) cases(>= 0 => a_n , < 0 => 0) \

  a_n^- &:= "switch"(a_n) cases(>= 0 => 0 , < 0 => - a_n) \

  a_n^+,a_n^- &>= 0 \

  a_n &= a_n^+ - a_n^-
$
$ sum |a_n| < ∞ <==> sum a_n^+, sum a_n^- < ∞ $

#tag("series-rearrangement-absolutely-convergence-real") 绝对收敛 $sum_(.. ∞) |a_n|$ ==> $sum_(.. ∞) a_n$ 收敛且重排不变 
  
_Proof_ $a_n = a_n^+ - a_n^-$ and use 收敛序列的运算 
  $
    lim sum_(.. N) a_n 
    
    = lim sum_(.. N) a_n^+ - lim sum_(.. N) a_n^-
  $
$sum a_n^+ = ∞$ and $sum a_n^- < ∞$ ==> $sum a_n = +∞$ 且重排不变

*Question* $l^2$ norm $(sum |a_n|^2)^(1/2)$ 的情况 reduce to $b_n = |a_n|^2$? 

调和级数 $sum 1/n = ∞$ vs $sum 1/n^2 = π^2 / 6$ 说明, $l^1$ 会更接近一般收敛. 而 $l^2$ 收敛更适合 Fourier 展开?

最后的可能性

#tag("series-rearrangement-real") 
#indent[
  let $lim_(n -> ∞) a_n = 0$ and $sum a_n^+ = sum a_n^- = ∞$

  $exists f : ℕ <-> ℕ, sum a_(f(n))$
  - 收敛到 $ℝ,+∞,-∞$
  - 不收敛到 $ℝ,+∞,-∞$ 
]
*Example*
- 收敛的情况 $a_n = (-1)^(n+1) 1/n$
- 不收敛的情况 $a_n = (-1)^n$

_Proof_ 
#indent[
  - 收敛到 $A ∈ ℝ$
  #indent[
    $p_1 := inf { p ∈ ℕ : A < sum_(.. p) a_n^+ }$. 意义: $p_1$ 是使得正求和大于 $A$ 的最小自然数

    $q_1 := inf { q ∈ ℕ : A > sum_(.. p_1) a_n^+ - sum_(.. q) a_n^- }$. 意义: $q_1$ 是使得负求和小于 $A$ 的最小自然数

    $p_2 := inf { p ∈ ℕ : A > sum_(.. p) a_n^+ - sum_(.. q_1) a_n^- }$

    依此类推, 穷尽所有 $a_n$

    将 $a_1,a_2,...$ 重排为 
    $
      a_1^+ ,…, a_(p_1)^+ \ - a_1^- ,…, - a_(q_1)^- \ a_(p_1 + 1)^+ ,…, a_(p_2)^+ \
      ⋮
    $
    根据 $p_(N+1)$ 的定义
    $
      0 

      &< (sum_1^(p_(N+1)) a_n^+ - sum_1^(q_N) a_n^-) - A \

      &<= (sum_1^(p_(N+1)) a_n^+ - sum_1^(q_N) a_n^-) 
      - (sum_1^(p_(N+1) - 1) a_n^+ - sum_1^(q_N) a_n^-) \

      &= a_(p_(N+1))^+
    $
    根据 $q_(N+1)$ 的定义
    $
      0 
      
      < (sum_1^(p_(N+1)) a_n^+ - sum_1^(q_N ,…, q_(N+1) - 1) a_n^-) - A 
      
      <= a_(p_(N+1))^+
    $
    依此类推
    $
      - a_(q_(N+1))^- 

      <= (sum_1^(p_(N+1) ,…, p_(N+2) - 1) a_n^+ - sum_1^(q_(N+1)) a_n^-) - A 

      < 0
    $
    $lim_(n -> ∞) a_n = 0 ==> lim_(N -> ∞) a_(p_(N))^+ = lim_(N -> ∞) a_(q_N)^- = 0$

    ==> $lim_(N -> ∞) sum_(.. N) a_n = A$
  ]
  - 收敛到 $+∞$
  #indent[
    在 $A ∈ ℝ$ 的处理中
    
    将 $A < sum_1^⋯ a_n^+ - sum_1^⋯ a_n^-$ 改为 $N < sum_1^⋯ a_n^+ - sum_1^⋯ a_n^-$

    将 $A > ⋯$ 改为 $N > ⋯$
  ]
  - 不收敛到 $ℝ,+∞,-∞$
  #indent[
    将 $A < ⋯$ 改为 $1 < ⋯$

    将 $A > ⋯$ 改为 $-1 > ⋯$
  ]
]
$ℝ^d$ 重排不变的级数也是绝对收敛级数

$sum a_n$ 收敛 ==> $lim_(n -> ∞) a_n = 0$

#tag("series-rearrangement-absolutely-convergence") 
#indent[
  let $a_n$ 是 $ℕ -> ℝ^d$ 序列

  $sum |a_n| < ∞$ ==> $sum a_n$ 收敛且重排不变 
]
_Proof_ 
#indent[
  - $sum a_n$ 收敛. by 用三角不等式 $abs(sum_(N+1)^∞ a_n) <= sum_(N+1)^∞ |a_n|$ 和 $ℝ^d$ #link(<Cauchy-completeness-Euclidean>)[Cauchy 序列收敛]

  - 重排不变
  #indent[
    $forall ε > 0, exists N ∈ ℕ, (abs(sum_(.. N) a_n - A) < ε/2) and (sum_(N+1)^∞ |a_n| < ε/2)$

    $N' := max {f^(-1)(1) ,…, f^(-1)(N)}$

    ${1 ,…, N} ⊆ {f(1) ,…, f(N')}$

    $forall M > N', 
    abs(sum_(.. M) a_(f(n)) - A) 
    <= abs(sum_(.. N) a_n - A) + sum_(N+1)^∞ |a_n| 
    < ε$
  ]
]
现在考虑 $sum a_n$ 非绝对收敛的情况

def $V := { x ∈ ℝ^d : sum |⟨ a_n, x ⟩| < ∞ }$

由三角不等式 or $ℝ^d$ 的 $1$-norm, $2$-norm, $∞$-norm 等价
- $V$ 是线性子空间
- $V = ℝ^d ==> sum |a_n| < ∞$

let $V != ℝ^d$. $sum a_n$ 的 $V$ 分量绝对收敛

考虑 $sum a_n$ 的 $V^⟂$ 分量

#tag("series-rearrangement") 
#indent[
  let $x ∈ V^⟂$ 

  - $sum ⟨ a_n , x ⟩^+ = ∞$ and $sum ⟨ a_n , x ⟩^- < ∞$ ==> $sum a_n$ 在 $x$ 分量收敛到 $∞$, 重排不变 \
  - $sum ⟨ a_n , x ⟩^+ = sum ⟨ a_n , x ⟩^- = ∞$. $sum a_n$ 在 $x$ 分量重排不稳定
]

相同收敛模式的序列的*正*线性组合 $k a_n + k' a'_n$ with $sign(k) = sign(k')$ 保持它们的收敛模式