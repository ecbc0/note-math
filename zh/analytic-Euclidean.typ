#import "../module/module.typ": *
#show: module

一维情况开始

#link(<geometric-series>)[几何级数]

$ |a| < 1 ==> sum_(n in ℕ) a^n = lim_(n -> ∞) (1 - a^(n+1))/(1-a) = 1/(1-a) $

in $𝕂$, $|a b| = |a| |b|$ 

$|a_n v^n| = |a_n| |v|^n = (|a_n|^(1/n) |v|)^n$

#tag("convergence-radius-1d") 收敛半径
#indent[
  (cf. #link(<limsup>)[])
  $ 
    R &:= 1/(limits(limsup)_(n -> ∞) {|a_n|^(1/n)}) in [0,∞] \
    "or " 1/R &:= limsup_(n -> ∞) {|a_n|^(1/n)}
  $
  ==> $|a_n|^(1/n) <= 1/R$
]
#tag("absolute-convergence-analytic-1d") 
#indent[
  *Prop* $|v| < R$ ==> $a_n v^n$ 绝对收敛

  _Proof_ 
  #indent()[  
    $|a_n|^(1/n) <= 1/R$ and $|v| < R$

    use #link(<geometric-series-test>)[几何级数判别] and $|a_n|^(1/n) |v| <= (|v|)/R < 1$

    $ abs(sum_(n in ℕ) a_n v^n) <= sum_(n in ℕ) ((|v|)/R)^n = 1/(1 - (|v|)/R) $
  ]
  *Prop* $|v| > R$ ==> $a_n v^n$ 绝对发散

  _Proof_ $1/R := limsup_(n -> ∞) {|a_n|^(1/n)}$ ==> $n in ℕ$ 中无限项 $|a_n|^(1/n) ≈ 1/R ==> |a_n|^(1/n) |v| > 1 ==> |a_n v^n| > 1$

  *Prop* $a_n v^n$ 绝对收敛 ==> $|v| <= R$
]
#tag("uniformaly-absolutely-convergence-analytic")
#indent[
  use $|v| <= r < R$. use #link(<geometric-serise-test>)[几何级数控制]

  in 半径 $r < R$ 的闭球 $Closed(𝔹)(r)$, $sum a_n v^n$ 一致绝对收敛 
]
多项式函数 $v ⇝ sum_(n=0)^N a_n v^n$ 是连续函数

收敛半径内, 幂级数定义的函数

  $v ⇝ f(x+v) = sum_(n in ℕ) a_n v^n$, $|v| < R$

#tag("analytic-imply-continuous")
#indent[
  $R > 0$ ==> 连续

  $|f(x+v) - f(x)| 
  &= abs(sum_(n = 0)^∞ a_n v^n - a_0) \
  &<= sum_(n=1)^∞ ((|v|)/R)^n \
  &= 1/(1 - (|v|)/R) - 1$

  $lim_(v -> 0) 1/(1 - (|v|)/R) - 1 = 0$
]
*Example* 

  - $log(1-z) ∼ sum 1/n z^n$ 的收敛半径是 $1$ // link to definition of log as inverse of exp

  - $e^z ∼ sum 1/(n!) z^n$ 的收敛半径是 $∞$

  边界上的收敛问题

  - $log(1 - x) ∼ sum 1/n x^n$ 的收敛半径是 $1$, 在 $x = 1$ 处是调和级数 $sum 1/n$, 绝对发散
  - $sum 1/(n^2) x^n$ 的收敛半径是 $1$, 在 $x = 1$ 绝对收敛到 $sum 1/(n^2) = (π^2)/6$
  
  - 绝对收敛 vs 收敛: $log(1 - x) ∼ sum 1/n x^n$ 在 $x <= -1$ 收敛, 但不绝对收敛

将多项式的 #link(<change-base-point-polynomial>)[] 推广到级数

#tag("change-base-point-analytic") 
#indent[
  $R > 0$ 
  
  ==> 幂级数 $sum a_n v^n$ 切换基点到 $x + Δ in 𝔹(x,R)$ 之后的幂级数
  $ 
    f((x+Δ)+v) 
    &= sum_(m in ℕ) a_m (x) (v + Δ)^m \
    &= sum_(m in ℕ)(sum_(n=m)^∞ a_n (x) binom(n,m) Δ^(n-m)) v^m \
    &= sum_(m in ℕ) a_m (x+Δ) v^m
  $
  在 $x+Δ$ 也有非零收敛半径 $R' > 0$. 根据三角不等式, $R' >= R - |Δ|$
  $
    sum_(m = 0 .. n) a_m (x+Δ) v^m &= sum_(m = 0 .. n) a_m (x) (v + Δ)^m \

    abs(sum_(m in ℕ) a_m (x+Δ) v^m) &<= sum_(m in ℕ) |a_k (x)| (|v| + |Δ|)^m
  $
  #image("../image/change-base-point-analytic.png", width: 30%)
  $|v| + |Δ| < R$ 时绝对收敛, $|v| < R - |Δ|$, 从而 $R' >= R - |Δ|$
]
现在考虑高维的情况. $𝕂^d -> 𝕂^(d')$ 幂级数

注意 $|v|$ 对称性, 例如 $ℝ^d$ 的 $#O (d)$, $ℂ^d$ 的 $#U (d)$

将多项式函数 #link(<polynomial-function>)[] 推广到幂级数 $sum A_n (v^n)$

不同于一维, 在高维, 一般没有 $|A_n (v^n)| = |A_n| |v|^n$. 甚至还没有定义 $|A_n|$

#tag("linear-map-induced-norm")
#indent[  
  let $A in Lin(⊗^n 𝕂^d -> 𝕂^(d'))$

  $|A|$ 定义为对所有方向 $v in 𝕂ℙ^(d-1)$ 的一致控制系数. compactness of $𝕂ℙ^(d-1)$ 将会使得这种定义有意义

  $ |A| := sup_(v in 𝕂ℙ^(d-1)) |A(v^n)|_(𝕂^(d')) = sup_(v in 𝕂^d) ( |A(v^n)| )/( |v|^n ) $

  so that (for all direction) $ |A (v^n)| <= |A| |v|^n $ 

  and

  - $|λ A| = |λ| |A|$
  - $|A + B| <= |A| + |B|$

  和 $𝕂^1$ 情况比较, $𝕂^d$ 的定义的可计算性低
]
#tag("convergence-radius") 收敛半径 

$ R = 1/(limits(limsup)_(n -> ∞) {|A_n|^(1/n)}) $

#tag("absolute-convergence-analytic")
#indent[
  #link(<absolute-convergence-analytic-1d>)[same as] $𝕂^1$

  - $|v| < R$ ==> $A_n (v^n)$ 绝对收敛

  - 存在方向 $v/(|v|)$, forall $|v| > R$, $A_n (v^n)$ 绝对发散
]
_Proof_ (of 发散) 
#indent[
  use #link(<linear-map-induced-norm>)[] $|A_n|$, 存在 $v_n in 𝕂ℙ^(d-1)$ 使 $|A_n ((v_n)^n)| ≈ |A_n|$

  use $limsup$ 定义, $n in ℕ$ 中无限项 $|A_n|^(1/n) ≈ limsup {|A_n|^(1/n)} = 1/R$

  use passing to compact $𝕂ℙ^(d-1)$ and $v_n$ 子序列收敛到 $v$

  ==> $n in ℕ$ 中无限项 $|A_n ((v_n)^n)| ≈ |A_n (v^n)|$

  ==> $n in ℕ$ 中无限项 $|A_n (v^n)|^(1/n) ≈ limsup {|A_n|^(1/n)} = 1/R$

  将 $w/(|w|) := v in 𝕂ℙ^(d-1)$ 伸缩到 $w in 𝕂^d$

  ==> $|A_n (w^n)| = |A_n (v)| |w|^n $
  
  let $|w| > R$

  ==> $n in ℕ$ 中无限项 $|A_n|^(1/n) |w| > 1 ==> |A_n (w^n)| > 1$
]
*Prop* $A_n v^n$ 绝对收敛 ==> $|v| <= R$

类似一维, 也有 

- #link(<uniformaly-absolutely-convergence-analytic>)[]
  
- #link(<analytic-imply-continuous>)[]

- #link(<change-base-point-analytic>)[]

for $f(x+v) = sum A_n (v^n)$, $n$ 阶 #link(<difference-polynomial>)[差分] 给出 

$ n! A_n (v_1 ⋯ v_n) + o(v^n) $

替换 $v_k -> t_k v_k$

$
  t_1 ⋯ t_n n! A_n (v_1 ⋯ v_n) + o(t_1 ⋯ t_n)
$

幂级数在收敛半径中一致绝对收敛, 从而可以交换极限

$lim_(t_1 ,…, t_k -> 0) 1/(t_1 ⋯ t_n)$ 可以恢复 $n$ 阶单项式

#tag("differential") 
#indent[
  $n$ 阶微分 $#d^n f(x) in Lin(⊙^n 𝕂^d -> 𝕂^(d'))$
  $
    #d^n f(x) (v_1 ⋯ v_n) &:= n! A_n (v_1 ⋯ v_n) \
    
    &= lim_(t_1 ,…, t_k -> 0) 1/(t_1 ⋯ t_n) sum_(B ⊆ {1,...,n}) (-1)^(|B| - n) f(x + sum_(b in B) t_b v_b)
  $
]
*Example* 
#indent[
  $ #d f(x)(v) &= lim_(t -> 0) 1/t (f(x + t v) - f(x)) $
  $ 
    #d^2 f(x)(v_1 v_2) = lim_(t_1,t_2 -> 0) 1/(t_1 t_2) (
      &+ f(x + t_1 v_1 + t_2 v_2) \
      &- f(x + t_1 v_1) \
      &- f(x + t_2 v_2) \
      &+ f(x))
  $
]  
差分和微分的定义可以用于任何函数, 不需要是由幂级数定义的函数

#tag("polynomial-expansion") 多项式展开 $ f(x+v) ∼ sum 1/(n!) #d^n f(x)(v^n) $ *alias* 幂级数, Taylor 展开, Taylor 级数

#tag("polynomial-approximation") 多项式逼近 $ f(x+v) ∼ sum_(n=0..N) 1/(n!) #d^n f(x)(v^n) + o(v^N) $ *alias* Taylor 展开, Taylor 逼近, Taylor 多项式 #tag("Taylor-expansion") #tag("Taylor-approximation") #tag("Taylor-polynomial")

#tag("derivative") 微商 *alias* 导数, 方向导数 

$ (∂ f)/(∂ v) (x) := #d f(x)(v) = lim 1/t (f(x + t v) - f(x)) $

接连的差分和微商 $#d^2 f(x)(v_1 v_2) =$
$
  #d^2 f(x)(v_1 v_2) 
  &=lim_(t_2) 1/(t_2) 
  sum_(B_2 ⊆ {2}) lim_(t_1) 1/(t_1) 
  sum_(B_1 ⊆ {1}) (-1)^(|B_1|+|B_2|-2) 
  f(x + ...) \

  &= lim_(t_2) 1/(t_2) ((∂ f)/(∂ v_1) (x + t_2 v_2) - (∂ f)/(∂ v_1) (x)) \

  &= (∂^2 f)/(∂ v_2 ∂ v_1) (x)
$
#link(<successive-difference>)[逐次差分] 不依赖于顺序 + 极限交换 ==> 方向导数交换 $(∂^2 f)/(∂ v_1 ∂ v_2) = (∂^2 f)/(∂ v_2 ∂ v_1)$

#tag("successive-derivative") 逐次微商   
  $ 
    (∂^n f)/(∂ v_1 ⋯ ∂ v_n) (x) 
    &:= lim_(t_n -> 0) 1/(t_n) ((∂ f)/(∂ v_1 ⋯ ∂ v_(n-1)) (x + t_n v_n) - (∂ f)/(∂ v_1 ⋯ ∂ v_(n-1)) (x)) \ 
    &= #d^n f(x)(v_1 ⋯ v_n) 
  $
==> 幂级数的方向导数表示 $f(x+v) = sum 1/(n!) (∂^n f)/(∂ v^n) (x)$

逐次微商的概念使用了不同点的切向量的相减, 隐含地用到了 connection 的概念

#tag("partial-derivative") 偏导数
#indent[
  使用坐标. let $e_k$ 是 $𝕂^d$ 的基. so $t_k e_k$ $<-->$ 坐标 $k$ 分量 $t_k$

  $ (∂ f)/(∂ x_k) (x) := (∂ f)/(∂ e_k) (x) = lim_(t_k -> 0) 1/(t_k) (f(x + t_k e_k) - f(x)) $

  and so on
]
let $v = a_1 e_1 + ⋯ + a_d e_d$. use #link(<successive-derivative>)[], #link(<partial-derivative>)[]

==> 幂级数的偏导数表示 (also cf. #link(<multi-combination>)[])
$ 
  f(x+v) 
  &= 
    sum_n 1/(n!) 
    sum_(i_1 ⋯ i_n = 1 ,…, d) 
    (∂^n f)/(∂ x_(i_1) ⋯ ∂ x_(i_n)) (x)
    a_(i_1) ⋯ a_(i_n) \
  &= 
    sum_n 1/(n!) 
    sum_(k_1 + ⋯ + k_d = n)
    binom(n, k_1 ⋯ k_d) 
    (∂^n f)/(∂ x_1^(k_1) ⋯ ∂ x_d^(k_d)) (x)
    a_1^(k_1) ⋯ a_d^(k_d)
$
when domain = $𝕂^1$, $f(x+v) = sum 1/n! (#d^n f)/(#d x^n) (x) v^n$

define $∂_(x_k) := e_k$ 和对偶基 $#d x_k$ with $#d x_k (a_1 ∂_(x_1) + ⋯ + a_d ∂_(x_d)) = a_k$

==> 微分的偏导数表示 as 对称张量的 系数--基 展开
$
  #d^n f(x) 
  =
    sum_(k_1 + ⋯ + k_d = n)
    binom(n, k_1 ⋯ k_d) 
    (∂^n f)/(∂ x_1^(k_1) ⋯ ∂ x_d^(k_d)) (x)
    #d x_1^(k_1) ⋯ #d x_d^(k_d) 
$
when domain = $𝕂^1$

- $#d^n f(x) = (#d^n f)/(#d x^n) (x) #d x^n$

- $#d^n f (x) (1) = (#d^n f)/(#d x^n) (x)$

*Example* 
#indent[
  let $f(x) = 1/(1-x)$

  $#d^n f (x) (1) = (#d^n f)/(#d x^n) (x) = n! (1/(1-x))^(n+1) $

  $(#d^n f)/(#d x^n) (0) = n!$

  $1/(1-v) = f(0+v) ∼ sum 1/n! (#d^n f)/(#d x^n) (0) v^n = sum v^n $, or 
  
  $1/(1-x) ∼ sum x^n$
]
if use range space 坐标 $f = vec(f_1 , dots.v , f_(d'))$ 那么一阶微分 $#d f$ 表示为 Jacobi 矩阵 #tag("Jacobi-matrix")
$ 
  #d f = mat(
    (∂ f_1)/(∂ x_1) , ... , (∂ f_1)/(∂ x_d) ;
    ⋮,,⋮;
    (∂ f_(d'))/(∂ x_1) , ... , (∂ f_(d'))/(∂ x_d)
    ) 
$ 
#tag("differential-function") 微分函数
  $
    mat( delim: #none ,
      𝕂^d &⟶ Lin(⊙^n 𝕂^d -> 𝕂^(d')) ;
      x &⟿ #d^n f(x)
    ) 
  $
将值域 $Lin(⊙^n 𝕂^d -> 𝕂^(d'))$ 作为 linear space, 使用 power norm, 可以幂级数展开

#tag("successive-differential")
#indent[
  isomorphism
  $
    mat( delim: #none ,
      Lin(⊙^m 𝕂^d -> Lin(⊙^n 𝕂^d -> 𝕂^(d'))) &⟶ Lin(⊙^(m+n) 𝕂^d -> 𝕂^(d')) ;
      #d^m (#d^n f) &⟿ #d^(m+n) f
    )
  $
  with 
  $ 
    #d^m (#d^n f) (v_1 ⋯ v_m) 
    = (v_(m+1) ⋯ v_(m+n) ⇝ #d^(m+n) f (v_1 ⋯ v_m v_(m+1) v_(m+n))) 
  $

  same norm $|#d^m (#d^n f)| = |#d^(m+n) f|$

  same convergence radius (#link(<exponential-root-of-power-function>)[use] $lim_(m -> ∞) (m+n)^(1/m) = 1$)
]
_Proof_ (draft) 导数的交换性 $#d^m, (v_1 ⋯ v_m)$ and $#d^n, (v_(m+1) ⋯ v_(m+n))$. norm estimation $|#d^(m+n) f (v_1 ⋯ v_(m+n))| <= |#d^(m+n) f| |v_1| ⋯ |v_(m+n)|$

*Abbreviation* $#d^m (#d^n f) = #d^(m+n) f$ 尽管记号冲突

==> 微分函数的幂级数 $#d^n f (x+v) = sum_(m) 1/(m!) #d^(m+n) f (x) (v^n)$

#tag("anti-derivative")

  - $𝕂 -> 𝕂$
  
    use $(#d)/(#d v) v^n = n v^(n-1)$
    
    ==> $((#d)/(#d v))^(-1) sum_(n >= 0) a_n v^n -> sum_(n >= 0) (a_n)/n v^(n+1)$. 零阶项不确定

  - $𝕂^d -> 𝕂^(d')$ ...

#tag("mean-value-theorem-analytic-1d") 微分中值定理
- 介值 ver. for $ℝ -> ℝ$ 函数 $ exists c in (a,b), f(b) - f(a) = (b - a) f'(c) $
- compact 一致线性增长控制 ver. $ |f(b) - f(a)| <= |b - a| sup_(c in [a,b]) |f'(c)| $
_Proof_
#indent[
  

  use $f(x) - f(a) - (f(b) - f(a))/(b - a) (x - a)$ reduce to

  $ f(a) = f(b) = 0 ==> exists x in (a,b), f'(x) = 0 $

  两者情况
  - $f ≡ 0$ 
  - $exists c in (a,b), f(c) != 0$ 从而 $f$ 存在最值 $f(x) != 0$ 且 $x in (a,b)$. 此时 $f'(x) = 0$
]
#tag("fundamental-theorem-of-calculus") 微积分基本定理 

$ f(b) - f(a) = integral_a^b f'(x) #d x $

证明使用的技术: 微分中值定理 compact 一致线性增长控制 ver. + compact 分割一致逼近

#tag("mean-value-theorem-analytic") 高维一般没有介值 ver. 微分中值定理 for $ℝ^d -> ℝ^d'$. 用嵌入的直线 $t -> x + t v$ reduce to $ℝ$ 的情况
#indent[
  - 一阶 
  #indent[
    $ f(x+v) = f(x) + integral_0^1 #d t space f'(x + t v) v $ 
    
    by 微积分基本定理 and #link(<chain-rule-1d>)[] and $(#d)/(#d t) (x + t v) = v$
  
    remainder estimation, 一致线性控制
    $ 
      f(x+v) - f(x) 
      &= o(1) "or" O(v) \
      &<= |v| sup_(t in [0,1]) |f'(x + t v)| 
    $
    ]
  - 高阶 
  #indent[
    $ f(x+v) = sum_(n=0)^m 1/(n!) #d^n f(x)(v^n) + integral_0^1 #d t (1-t)^m/(m!) #d^(m+1) f(x + t v) (v^(m+1)) $

    by 分部积分 
    $
      1/n! #d^n f (x) v^n 
      &= - (((1-t)^n)/(n!) #d^n f(x + t v) v^n)|_0^1 \
      &= - integral_0^1 #d t (#d)/(#d t) (((1-t)^n)/(n!) #d^n f(x + t v) v^n) \
      &= integral_0^1 #d t (((1-t)^(n-1))/((n-1)!) #d^n f(x + t v) v^n) \
      &quad  - integral_0^1 #d t (((1-t)^n)/(n!) #d^(n+1) f(x + t v) v^(n+1)) \
      &= R_(n-1) - R_(n)
    $
    $n$ 从 $1$ 开始相加直到 $m$
    $
      R_(0) - R_(m) &= sum_(n=1)^m 1/(n!) #d^n f(x)(v^n) \
      
      R_(m) &= integral_0^1 #d t (1-t)^m/(m!) #d^(m+1) f(x + t v) (v^(m+1)) \

      R_(0) &= integral_0^1 #d t ( #d^1 f(x + t v) v) \ 

      &= integral_0^1 #d t ( #d^1 f(x + t v) (#d)/(#d t) (x + t v)) \
      &= integral_0^1 #d t ( (#d)/(#d t) f(x + t v)) \
      &= f(x + t v) |_0^1 \
      &= f(x + v) - f(x)
    $
    remainder estimation, 一致 $m+1$ 阶幂控制
    $ 
      f(x+v) - sum_(n=0)^m 1/(n!) #d^n f(x)(v^n) 
      &= o(v^m) "or" O(v^(m+1)) \
      &= integral_0^1 #d t (1-t)^m/(m!) #d^(m+1) f(x + t v) (v^(m+1)) \
      &<= integral_0^1 #d t (1-t)^m/(m!) sup_(t in [0,1]) |#d^(m+1) f (x + t v)| |v|^(m+1) \
      &=  1/(m+1)! |v|^(m+1) sup_(t in [0,1]) |#d^(m+1) f (x + t v)|
    $
  ]
]
let 幂级数 $sum A_n (v^n)$

#tag("convergence-domain") 在一点的收敛域 := ${v in 𝕂^d : lim_(N -> ∞) sum_(n=0)^N A_n (v^n) "converge"}$

计算幂级数的切换基点后的系数使用了求和的交换

for 多项式, 求和有限, 求和顺序交换, 从而切换基点良定义 #link(<change-base-point-polynomial>)[]

但是, 无限求和的极限, 如果不是绝对收敛, 并不总是兼容于求和顺序改变 #link(<series-rearrangement>)[]

幂级数切换基点可能导致收敛域改变

*Example*
#indent[
  $ 1/(1-z) = sum z^n = lim_(n -> ∞) (1 - z^(n+1))/(1-z) $ 

  with $z^(n+1) = |z|^(n+1) e^(#i (n+1) θ)$

  收敛域是 $|z| < 1$

  切换基点导致收敛域改变
    
    - $1/2 in {|z| < 1}$, 
      $w = z - 1/2$, 
      $1/(1-z) = 1/(1/2 - (z - 1/2)) = 2/(1 - 2 w)$

      收敛域 ${z = w + 1/2 : 2|w| < 1}$, 半径 $1/2$ 的开球

    - $-1/2 in {|z| < 1}$
      $w = z + 1/2$,
      $1/(1-z) = 1/(3/2 - (z + 1/2)) = (2/3)/(1 - 2/3 w)$

      收敛域 ${z = w - 1/2 : 2/3 |w| < 1}$, 半径 $3/2$ 的开球
]
不断切换基点可以 "改变" 收敛到的值

*Example* 
#indent[
  - $log (1-z) ∼ sum 1/n z^n $
  #indent[
    let $Δ_1 ,…, Δ_m in ℂ$ with $Δ_1 + ⋯ + Δ_m = 0$

    let $sum 1/n z^n$ 逐次切换基点 $Δ_1 , Δ_1 + Δ_2 ,…, Δ_1 + ⋯ + Δ_m in ℂ$, 最后回到 $0$
    
    if 每次位移 $Δ_(i+1)$ 都在基点 $Δ_1 + ⋯ + Δ_i$ 的收敛域
    
    then 最终的幂级数是 $2 k π #i + sum 1/n z^n$, where $k$ 是 $Δ_1 ,…, Δ_m$ 形成的道路 (逆时针) 绕 $0$ 的圈数
    ]
  - $log(z)$. 绕 $1$ 转 $k$ 圈得到 $2 k π #i + log(z)$

  - $z^(1/2) = e^(1/2 log z)$
    
  #indent[绕 $1$ 转 $k$ 圈得到 $(-1)^k z^(1/2)$, by $e^(1/2 ⋅ 2 k π #i) = (-1)^k$]
]
#tag("analytic-continuation")

- 良定义的延拓区域: 不受切换基点的影响

- 极大延拓区域: 无法再良定义地延拓

*Example* 
#indent[
  - $log(1-z) ∼ sum 1/n z^n$ 收敛半径 $1$
  #indent[
    不能良定义地延拓到 $ℂ ∖ {1}$. by 绕 $0$ 转 $k$ 圈得到 $2 k π #i + log(1-z)$
    
    极大良延拓区域应该是 $ℂ ∖ {x + #i 0 : x <= -1}$
  ]
  - $1/(1-z) ∼ sum z^n$ 收敛半径 $1$
  #indent[
    可以良定义地延拓到 $ℂ ∖ {1}$, 重合于用 $ℂ$ 除法定义的 $1/(1-z)$

    注意 $#d _(z) log(1-z) = 1/(1-z)$, or $#d _(z) log(z) = 1/z$. 说明导数或反导数会影响
  ]
  - $1/x, x in (-∞,0)$ 和 $1/x, x in (0,+∞)$ 已经是极大延拓
  #indent[
    $1/z$ 的极大延拓是 $ℂ ∖ 0$

    $1/z$ 的幂级数系数包含复数, 不同于 $1/x$ 只包含实数
  ]
]
#tag("analytic-function") 解析函数 := $f$ 定义域每一点 $x$ 附近, $f$ 都可以由 $x$ 上的幂级数来定义 $f(x + v) = sum_(n = 0..∞) A_n v^n$. 此时 $A_n = 1/n! #d^n f (x)$

#tag("analytic-isomorphism") 解析同胚 := $f : D <-> D'$
  - $f$ 双射
  - $f,f^(-1)$ 解析函数
  这蕴含 $forall x in D, #d f (x) in GL(𝕂^d)$, 因为 $𝟙 = #d 𝟙 = #d (f ∘ f^(-1)) = #d f ∘ #d f^(-1)$
  
*Example* 
#indent[
  - $A in GL(d,𝕂)$ 是解析同胚. $#d A = A, #d^2 A = 0$

  - $f(x) = 1/3 x^3 + x$ 
  #indent[
    $(#d f)/(#d x) = x^2 + 1 > 0$ ==> $(#d f^(-1))/(#d y) > 0$, $f,f^(-1)$ 单调增 ==> $f$ 是 $ℝ -> ℝ$ 解析同胚
    
    $f(z) = 1/3 z^3 + z = 0$, $(#d f)/(#d z) = z^2 + 1$ in $ℂ$ 有解 $± #i$ ==> $#d f (± #i) ∉ GL$ ==> $f$ 不是 $ℂ -> ℂ$ 解析同胚
  ]
  - $f(x) = e^x$ with $(#d f)/(#d x) = e^x > 0$ 是 $ℝ -> ℝ_(>0)$ 解析同胚
  #indent[
    $f(z) = e^z$ with $(#d f)/(#d z) = e^z != 0$ 是局部解析同胚, 但不是 $ℂ -> ℂ ∖ {0}$ 解析同胚. 非单射: $e^(0) = e^(#i 2 π) = 1$
  ]
]
#tag("power-series-space") 
#indent[  
  幂级数空间
  
  $ ⨁_(n = 0)^∞ Lin(⊙^n 𝕂^d -> 𝕂^(d')) $

  尝试对幂级数空间定义距离. 期望 $A,B$ 在某个半径 $r$ 内都相近, 换言之, $A - B$ 在半径 $r$ 内接近 $0$

  (note: $| |$ is #link(<linear-map-induced-norm>)[] 

  let $r < R_A, R_B$

  $ sum_(n = 0..∞) |A_n - B_n| r^n < ε $

  注意我们做了半径截断 $r < R_A, R_B$, 此时在 $r$ 闭圆盘上, 幂级数绝对一致收敛

  $r$ 闭圆盘是 compact 的, 这带来了很多好的性质. 考虑 $A = 1/(1 - x) = sum_(n = 0 .. ∞) x^n$, 它在 $x = 1$ 附近无界. 那么对于 $λ A = λ ⋅ 1/(1 - x)$, 无论 $λ != 1$ 多么接近 $1$, $λ A - A = (λ - 1) A$ 都在 $x = 1$ 附近仍然无界. 但是如果考虑 $0$ 原点的半径 $< 1$ 的闭圆盘, 在那里 $A = 1/(1-x)$ 有界

  *Example* 幂级数 $A$ 自身的截断多项式 (Taylor 多项式) 也逼近 $A$. 因为 $sum_(n = 0 .. ∞) |A_n| r^n < ∞ ==> lim_(N -> ∞) sum_(n = N .. ∞) |A_n| r^n = 0$

  另一种可能拓扑等价的表述是使用 $sup_(n >= 1) |A_n - B_n| r^n$. 等价是因为
  
  - $sup_(n >= 1) |A_n - B_n| r^n <= sum_(n = 1 .. ∞) |A_n - B_n| r^n$

  - 取 $r < ρ < R_A, R_B$, 则 
    $
      sum_(n = 1 .. ∞) |A_n - B_n| r^n 
      &= sum_(n = 1 .. ∞) |A_n - B_n| ρ^n (r/ρ)^n \
      &<= (sup_(n >= 1) |A_n - B_n| ρ^n) sum_(n = 1 .. ∞) (r/ρ)^n \
      &= sup_(n >= 1) |A_n - B_n| ρ^n ⋅ (1/(1 - r/ρ) - 1)
    $
]
有一种可能过弱的拓扑. $sup_(n >= 1) |A_n - B_n|$. 

设 $A_n ≡ 0, B_n (k) = cases(1/k "if" k = n, 0 "if" k != n)$. 虽然 $lim_(k -> ∞) sup |A_n - B_n (k)| = 0$ 且 $A_n, B_n (k)$ 的收敛半径都是 $∞$. $A$ 在 $r > 1$ 处的取值是 $A(r) = 0$, $B(k)$ 在 $r > 1$ 处的取值 $B (k) (r) = B_k (k) (r) = 1/k r^k -> ∞ != 0$. 此时 $sum_(n >= 1) |A_n - B_n (k)| r^n$ 也是 $1/k r^k$ 

有一种可能过强的拓扑
$ 
  𝔹(A,ε) := {B : forall n in ℕ_(>= 1), |A_n - B_n|^(1/n) < ε} $ or $|A_n - B_n| < ε^n
$
根据已有的 $A_n$, 应该可以构造满足这种条件 $B_n$, 至少 $d,d' = 1$ 的情况是简单的

定义幂级数之间的距离

$ "dist"(A,B) = sup_(n >= 1) |A_n - B_n|^(1/n) $ 
    
作为 $forall n >= 1$ 的一致控制

它不是 norm. $|λ A_n|^(1/n) = |λ|^(1/n) |A_n|$

为什么说这种拓扑过强? 考虑 $ℝ -> ℝ$ 的情况, 考虑 $A_n ≡ 1$, 此时 $sum x^n = 1/(1 - x)$

是否应该 $lim_(λ -> 1) λ A = A$? 

在这种距离的定义下, 无论 $λ != 1$ 多么接近 $1$
$
  "dist"(λ(A), A) = sup_(n >= 1) |λ - 1|^(1/n) = 1
$
这就是说这种拓扑过强的意义, $lim_(λ -> 1) λ A != A$. 原因可能是不等式 $|x + y|^(1/n) <= |x|^(1/n) + |y|^(1/n)$ 太粗糙了, 两边 $n$ 次方后比较, 就可以看到

*Prop* $sup_(n in ℕ) |A_n - B_n (λ)| r^n -> 0 ==> |A_n - B_n (λ)| = 0$

_Proof_ 对 $ε > 0, n in ℕ$ 取 $ε_n = ε ⋅ (r^n)^(-1)$. $|A_n - B_n (λ)| r^n <= sup_(n in ℕ) |A_n - B_n (λ)| r^n < ε_n ==> |A_n - B_n (λ)| < ε$

现在来考虑解析函数空间的拓扑, 要使用类似连续函数空间所使用的 compact-open topology 技术

解析函数 $f$ 的在每一点 $x$ 的收敛半径 $R(x)$ 应该是连续函数

设 compact $K$ 属于解析函数 $f$ 的定义域, 则 ${R(x) > 0 : x in K}$ 在 compact $K$ 有非零下确界 $r$. 也即, $forall x in K, R(x) > r$. 因此我们可以定义 $f$ 在 $K$ 的范数为
$
  |f|_(K, r) &= sup_(x in K) sum_(n in ℕ) 1/n! abs(f^((n))(x)) r^n \
  "or" |f|_(K, r) &= sup_(x in K) sup_(n in ℕ) 1/n! abs(f^((n))(x)) r^n 
$
如果 compact $K$ 中存在 $r > 0$ 使得 $sup_(x in K) sum_(n in ℕ) 1/n! abs(f^((n))(x)) r^n$ 则根据解析的定义 $f$ 在 $K$ 上解析

对于开集 $U$, $f$ 在每个 compact $K ⊆ U$ 中解析 <==> $f$ 在 $U$ 中解析

对 compact $K$, $r > 0$ 定义空间 (是 Banach 空间)
$
  V_(K,r) = { f in C^ω (U) : |f|_(K,r) < ∞ }
$
$C^ω (U)$ 的拓扑基或者网基, 定义为
$
  B(K,r_K,ε) = { f in C^ω (U) : |f|_(K,r_K) < ε }
$
$f_m -> f$ 表述为 
$
  forall ε > 0, forall K ⋐ U, exists r_K > 0 \
  exists N in ℕ, forall m > N \
  f, f_m in V_(K,r_K) \
  |f_m - f|_(K,r_K) < ε
$
其中 $exists N in ℕ, forall m > N$ 可以换成任何 $ℕ$ 之外的网结构

*Prop* $forall x in U, forall n in ℕ, forall K ⋐ U, lim_(m -> ∞) sup_(x in K) | f_n^((m))(x) - f^((m))(x) | = 0$

_Proof_ 
固定 $n in ℕ, ε > 0, K ⋐ U$. 取 $(K,r_K)$ 得到 $V_(K,r_K)$. 取 $ε_n = ε ⋅ (1/n! r_K^n)^(-1)$, 取 $N_n$ 使得 $m > N_n ==> |f_m - f|_(K,r_K) < ε_n$
$
  sup_(x in K) 1/n! | f_n^((m))(x) - f^((m))(x) | r_K^n 
  &<= sup_(x in K) sup_(m in ℕ) 1/m! | f_n^((m))(x) - f^((m))(x) | r_K^m \
  &= |f_m - f|_(K,r_K) \
  &< ε_n
$
==> $sup_(x in K) | f_n^((m))(x) - f^((m))(x) | < ε$

*Prop* $f$ 在 $x$ 展开处的 Taylor 多项式 $f_n = T_n (f)$ 在 $𝔹(x, R(x))$ 上收敛于 $f$

_Proof_
#indent[
  let $A_n = 1/n! f^((n))$
  $
    R_N &= f - T_n (f) = sum_(n = N+1 .. ∞) A_n v^n \
    R_N^((m)) &= sum_(n = N+1 .. ∞) A_n frac(n!,(n-m)!) v^(n - m) \
    sum_(m = 0..∞) 1/m! |R_N^((m))| r^m &<= sum_(m = 0..∞) 1/m! r^m sum_(n = N+1 .. ∞) |A_n| frac(n!,(n-m)!) |v|^(n - m) \
    &= sum_(n = N+1 .. ∞) |A_n| sum_(m = 0..n) frac(n!, m! (n-m)!) r^m |v|^(n-m) \
    &= sum_(n = N+1 .. ∞) |A_n| (r + |v|)^n
  $
  取 $r_(closed(𝔹)(x,|v|)) = R(x) - |v|$? 得到 $sum_(n = N+1 .. ∞) |A_n| (r + |v|)^n < ∞$ 然后 
  $ lim_(N -> ∞) sum_(n = N+1 .. ∞) |A_n| (r + |v|)^n = 0 $
]
*Prop* 对实解析函数, 零阶的 $sup_(x in K) |f_n (x) - f(x)|$ 无法控制 $|f - f_n|_(K, r)$

*Example* $f = 0, f_n = 1/sqrt(n) sin(n x)$. $lim_(n -> ∞) sup_(x in K) |f_n (x) - f(x)| = 0$. $|f_n ' (x)| = |sqrt(n) cos(n x)| <= sqrt(n)$. 由于 $lim_(n -> ∞) |f_n ' (x) - f(x)| != 0$, 故不可能 $f_n -> f$

如果将实解析函数延拓到复解析函数 (通过将 $v$ 从 $ℝ^d$ 延拓到 $ℂ^d$), 则通过 Cauchy 积分公式可以证明, $V_(K, r_K)$ 拓扑等价于 $sup_(z in K(r_K)) |f(z) - g(z)|$, 其中 

$K(r) = { x in ℂ^d : exists y in K, |x - y| <= r }$

注意, 在非实数空间的 $z$ 的零阶控制 $|f(z) - g(z)|$, 如果想要通过实数函数 $f(x), g(x)$ 和 $z$ 来表示, 需要实数函数 $f(x), g(x)$ 的高阶导数的控制

以一维的情况为例. let $sup_(z in K(R)) |f(z)| = M < ∞$. let $r < R$
$
  1/n! f^((n))(x) &= frac(1,2 π #i) integral_(|z - x| = r) frac(f(z),(z - x)^(n+1)) #d z \
  1/n! |f^((n))(x)| &<= 1/(2 π) ⋅ 2 π r ⋅ frac(sup_(z in K(R)) |f(z)|, r^(n+1)) \
  &= M/(r^n)
$
从而 $|f|_(K,r) = sup_(n in ℕ) 1/n! |f^((n))(x)| r^n <= M < ∞$, 即
$
  |f|_(K,r) <= sup_(z in K(R)) |f(z)|
$
let $|f|_(K,R) = M < ∞$, let $r < R$. let $x in K$
$ 
  1/n! |f^((n))(x)| R^n &<= |f|_(K,R) = M \
  1/n! |f^((n))(x)| |z - x|^n &<= M (frac(|z - x|, R))^n \
  &<= M (r/R)^n
$
从而
$
  |f(z)| &<= sum_(n = 0..∞) 1/n! |f^((n))(x)| |z - x|^n \
  &<= M sum_(n = 0..∞) (r/R)^n \
  &= M/(1 - r/R)
$
从而 $sup_(z in K(r)) |f(z)| <= M/(1 - r/R) < ∞$, 即
$
  sup_(z in K(r)) |f(z)| <= |f|_(K,R)
$
*Example* 
#indent[
  $sin z = 1/(2 i) (e^(#i z) - e^(- #i z)), sinh z = 1/2 (e^z - e^(-z))$

  $|sin(n(x + #i y))|^2 = sin^2 (n x) + sinh^2 (n y)$

  $abs(1/sqrt(n) sin n z) = sqrt(1/n (sin^2 n x + sinh^2 (n y)))$

  $lim_(n -> ∞) 1/n sin^2 n x = 0$

  $lim_(n -> ∞) 1/n sinh^2 (n y) = ∞$ (if $y != 0$)

  $lim_(n -> ∞) sup_(z in K(r_K)) |f_n (z) - f(z)| = lim_(n -> ∞) sup_(z in K(r_K)) abs(1/sqrt(n) sin n z) = ∞$
]
in 解析空间及其网

  - #tag("inverse-op-continous-in-analytic-space") $f ≈ g$ ==> $f^(-1) ≈ g^(-1)$

  - #tag("compose-op-continous-in-analytic-space") $f_1 ≈ f_2$ and $g_1 ≈ g_2$ ==> $f_1 ∘ g_1 ≈ f_2 ∘ g_2$

或者说, $#none ^(-1) , ∘$ 算子都是解析空间的连续函数

same for linear $f + g$, multiplication $f g$, inversion $1/f$?

- $a f + b g$
#indent[
  $|(a f + b g) -(a f_0 + b g_0)|_(K, L) <= |a| |f - f_0|_(K, L) + |b| |g - g_0|_(K, L)$ 
]
- $f g$
#indent[
  $(f g)^((n)) = sum_(m = 0..n) 1/m! f^((m)) 1/(n-m)! g^((n-m))$

  我们要估计 $|f g|_(K,r)$. 我们证明 $V_(K,r)$ 是 Banach 代数
  $
    (|(f g)^((n)) (x) |)/(n!) (r)^n
    & <= sum_(k = 0)^n (| f^((k)) |)/(k!) (| g^((n - k)) |)/((n - k)!) (r)^n \
    &= sum_(k = 0)^n ((| f^((k)) |)/(k!) r^k)((| g^((n - k)) |)/((n - k)!) r^(n - k)) \
    
    sum_(n in ℕ) (|(f g)^((n)) (x) |)/(n!) (r)^n 
    &= sum_(n in ℕ) sum_(k = 0)^n (| f^((k)) |)/(k!) (| g^((n - k)) |)/((n - k)!) (r)^n \
    &= sum_(n in ℕ) ((| f^((n)) |)/(n!) r^n) ⋅ sum_(m in ℕ) ((| g^((m)) |)/(m!) r^(m)) 
  $
  所以 $|f g|_(K,r) <= |f|_(K,r) |g|_(K,r)$    
]
- $1/f$
#indent[
  $
    1/(f + h) - 1/f = 1/f (1/(1 + h/f) - 1) = 1/f sum_(m = 1..∞) (-1)^m (h/f)^m
  $
  设 $f$ 在 $K$ 上不为零, 于是 $1/f$ 也是解析函数. 考虑到 $f,1/f$ 收敛性质可能不同, 如有必要, 缩小 $r$. 于是根据范数的三角不等式和乘法不等式
  $
    abs(1/(f + h) - 1/f)_(K,r) 
    &<= sum_(m = 1..∞) abs(1/f)_(K,r) (|h|_(K,r) ⋅ abs(1/f)_(K,r))^n \
    &= abs(1/f)_(K,r) (1/(1 - |h|_(K,r) ⋅ abs(1/f)_(K,r)) - 1)
  $
  让 $|h|_(K,r) < (abs(1/f)_(K,r))^(-1)$ 即可?
]
- 复合 $f ∘ g$, 复合逆 $f^(-1)$. 暂略

解析函数空间拓扑的连通分支

#tag("homotopy-analytic") 解析 #link(<homotopy>)[同伦]

#tag("power-series-analytic-equivalent") 解析等价的幂级数 := 两个幂级数来自同一个解析函数在不同点的幂级数展开. 这等价于所有可能的解析延拓? (Riemann Surface?)

#tag("power-series-analytic-homotopy-equivalent") 解析同伦等价的幂级数 := 两个幂级数来自同一个解析函数同伦类在不同点的幂级数展开