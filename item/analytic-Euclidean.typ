#import "../module/module.typ": *
#show: module

幂级数 $sum_(0 .. ∞) a_n v^n$ 中的幂函数阶数不同, 引入了系数 $a_n$ 的不对称性, 使得不一定适合级数重排? 虽然我们仍然会讨论绝对收敛

一维情况开始

#link(<geometric-series>)[几何级数]

$ |a| < 1 ==> sum_(n ∈ ℕ) a^n = lim_(n -> ∞) (1 - a^(n+1))/(1-a) = 1/(1-a) $

in $𝕂$, $|a b| = |a| |b|$ 

$|a_n v^n| = (|a_n|^(1/n) |v|)^n$

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
  $|v| < R$ ==> $a_n v^n$ 绝对收敛

  _Proof_ 
  #indent()[  
    use #link(<geometric-series-test>)[几何级数判别] and $|a_n v^n|^(1/n) = |a_n|^(1/n) |v| <= (|v|)/R < 1$

    $ abs(sum_(n in ℕ) a_n v^n) <= sum_(n ∈ ℕ) ((|v|)/R)^n = 1/(1 - (|v|)/R) $
  ]
  $|v| > R$ ==> $a_n v^n$ 绝对发散

  _Proof_ $1/R := limsup_(n -> ∞) {|a_n|^(1/n)}$ ==> $n in ℕ$ 中无限项 $|a_n|^(1/n) ≈ 1/R ==> |a_n|^(1/n) |v| > 1 ==> |a_n v^n| > 1$
]
#tag("uniformaly-absolutely-convergence-analytic")
#indent[
  use $|v| <= r < R$. use #link(<geometric-serise-test>)[几何级数控制]

  in 半径 $r < R$ 的闭球 $Closed(𝔹)(r)$, $sum a_n v^n$ 一致绝对收敛 
]
多项式函数 $v ⇝ sum_(n=0)^N a_n v^n$ 是连续函数

收敛半径内, 幂级数定义的函数

  $v ⇝ f(x+v) = sum_(n ∈ ℕ) a_n v^n$, $|v| < R$

#tag("analytic-imply-continuous")
#indent[
  $R > 0$ ==> 连续

  $|f(x+v) - f(x)| 
  &= abs(sum_(n = 0)^∞ a_n v^n - a_0) \
  &<= sum_(n=1)^∞ ((|v|)/R)^n \
  &= 1/(1 - (|v|)/R) - 1$

  $lim_(v -> 0) 1/(1 - (|v|)/R) - 1 = 0$
]
将多项式的 #link(<change-base-point-polynomial>)[] 推广到级数



#tag("change-base-point-analytic") 
#indent[
  $R > 0$ 
  
  ==> 幂级数 $sum a_n v^n$ 切换基点到 $x + Δ in 𝔹(x,R)$ 之后的幂级数
  $ 
    f((x+Δ)+v) = sum_(m ∈ ℕ)(sum_(n=m)^∞ a_n (x) binom(n,m) Δ^(n-m)) v^m = sum_(m ∈ ℕ) a_m (x+Δ) v^m
  $
  在 $x+Δ$ 也有非零收敛半径 $R' > 0$. 根据三角不等式, $R' >= R - |Δ|$
  
  #image("../image/change-base-point-analytic.jpeg", width: 30%)
]
*Example* 

  - $log(1-z) ∼ sum 1/n z^n$ 的收敛半径是 $1$ // link to definition of log as inverse of exp

  - $e^z ∼ sum 1/(n!) z^n$ 的收敛半径是 $∞$

  边界上的收敛问题

  - $log(1 - x) ∼ sum 1/n x^n$ 的收敛半径是 $1$, 在 $x = 1$ 处是调和级数 $sum 1/n$, 绝对发散
  - $sum 1/(n^2) x^n$ 的收敛半径是 $1$, 在 $x = 1$ 绝对收敛到 
  - $sum 1/(n^2) = (π^2)/6$
  
  - 绝对收敛 vs 收敛: $log(1 - x) ∼ sum 1/n x^n$ 在 $x < 1$ 收敛

现在考虑高维的情况. $𝕂^d -> 𝕂^(d')$ 幂级数

注意 $|v|$ 对称性, 例如 $ℝ^d$ 的 $#O (d)$, $ℂ^d$ 的 $#U (d)$

将多项式函数 #link(<polynomial-function>)[] 推广到幂级数 $sum A_n (v^n)$

不同于一维, 在高维, 一般没有 $|A_n (v^n)| = |A_n| |v|^n$. 甚至还没有定义 $|A_n|$

#tag("linear-map-induced-norm")
#indent[  
  let $A in Lin(⊗^n 𝕂^d -> 𝕂^(d'))$

  $|A|$ 定义为对所有方向 $v in 𝕂ℙ^(d-1)$ 的一致控制系数. compactness of $𝕂ℙ^(d-1)$ 将会使得这种定义有意义 (and 无法直接用于一般 $p,q$ 二次型方向空间 $ℚ^(p,q)(± 1)$)


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
另一种观点: 对每个方向 $v in 𝕂ℙ^(d-1)$ 考虑 $𝕂$ 直线嵌入的收敛半径 $R(v)$. then let $R = inf_(v in 𝕂ℙ^(d-1)) R(v)$

类似一维 also have 

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
    
    &= lim_(t_1 ,…, t_k -> 0) 1/(t_1 ⋯ t_n) sum_(B ⊂ {1,...,n}) (-1)^(|B| - n) f(x + sum_(b in B) t_b v_b)
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

#tag("polynomial-approximation") 多项式逼近 $ f(x+v) ∼ sum_(n=0..N) 1/(n!) #d^n f(x)(v^n) + o(v^N) $ *alias* Taylor 展开, Taylor 逼近, Taylor 多项式

#tag("derivative") 微商 *alias* 导数, 方向导数 

$ (∂ f)/(∂ v) (x) := #d f(x)(v) = lim 1/t (f(x + t v) - f(x)) $

接连的差分和微商 $#d^2 f(x)(v_1 v_2) =$
$
  #d^2 f(x)(v_1 v_2) 
  &=lim_(t_2) 1/(t_2) 
  sum_(B_2 ⊂ {2}) lim_(t_1) 1/(t_1) 
  sum_(B_1 ⊂ {1}) (-1)^(|B_1|+|B_2|-2) 
  f(x + ...) \

  &= lim_(t_2) 1/(t_2) ((∂ f)/(∂ v_1) (x + t_2 v_2) - (∂ f)/(∂ v_1) (x)) \

  &= (∂^2 f)/(∂ v_2 ∂ v_1) (x)
$
#link(<successive-difference>)[逐次差分] 不依赖于顺序 + 极限交换 ==> $(∂^2 f)/(∂ v_1 ∂ v_2) = (∂^2 f)/(∂ v_2 ∂ v_1)$

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
when domain = $𝕂^1$, $f(x+v) = sum (#d^n f)/(#d x^n) (x) v^n$

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
- 介值 ver. $ exists c in (a,b), f(b) - f(a) = (b - a) f'(c) $
- compact 一致线性控制 ver. $ |f(b) - f(a)| <= |b - a| sup_(c in [a,b]) |f'(c)| $
_Proof_
#indent[
  

  use $f(x) - (f(b) - f(a))/(b - a)$ reduce to

  $ f(a) = f(b) = 0 ==> exists c in (a,b), f'(c) = 0 $

  - $f ≡ 0$ 
  - $exists a',b' in (a,b), a' < b', sign f(a') ≠ sign f(b')$ 
  
  ==> $exists c in (a',b'), f'(c) = 0$ _Proof_ by #link(<mean-value-theorem-continuous>)[介值定理]

  介值定理使用了完整的 $ℝ$ 的序
  
  绝对值估计所用的 $ℝ_(>= 0)$ 的序可能没有足够的强度来得到微分中值定理
]
#tag("fundamental-theorem-of-calculus") 微积分基本定理 

$ f(b) - f(a) = integral_a^b f'(x) #d x $

微分中值定理 compact 一致线性控制 ver. + compact 分割一致逼近

#tag("mean-value-theorem-analytic") 微分中值定理 for $ℝ^d -> ℝ^d'$. 用嵌入的直线 $t -> x + t v$ reduce to $ℝ$ 的情况
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
      1/m! #d^m f (x + t v) v^m 
      &= - (((1-t)^m)/(m!) #d^m f(x + t v) v^m)|_0^1 \
      &= - integral_0^1 #d t (#d)/(#d t) (((1-t)^m)/(m!) #d^m f(x + t v) v^m) \
      &= integral_0^1 #d t (((1-t)^(m-1))/((m-1)!) #d^m f(x + t v) v^m) \
      &quad  - integral_0^1 #d t (((1-t)^m)/(m!) #d^(m+1) f(x + t v) v^(m+1))
    $
    remainder estimation, 一致 $m+1$ 阶幂控制

    $ f(x+v) - sum_(n=0)^m 1/(n!) #d^n f(x)(v^n) 
    &= o(v^m) "or" O(v^(m+1)) \
    &<= 1/(m+1)! |v|^(m+1)  sup_(t in [0,1]) |#d^(m+1) f (x + t v)| $
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

      收敛域 ${z = w + 1/2 : |w| < 1/2}$, 半径 $1/2$ 的开球

    - $-1/2 in {|z| < 1}$
      $w = z + 1/2$,
      $1/(1-z) = 1/(3/2 - (z + 1/2)) = (2/3)/(1 - 2/3 w)$

      收敛域 ${z = w - 1/2 : |w| < 3/2}$, 半径 $3/2$ 的开球
]
不断切换基点可以 "改变" 收敛到的值

*Example* 
#indent[
  - $log (1-z) ∼ sum 1/n z^n $
  #indent[
    let $Δ_1 ,…, Δ_m in ℂ$ with $Δ_1 + ⋯ + Δ_m = 0$

    let $sum 1/n z^n$ 逐次切换基点 $Δ_1 , Δ_1 + Δ_2 ,…, Δ_1 + ⋯ + Δ_m in ℂ$, 最后回到 $0$
    
    if 每次位移 $Δ_(i+1)$ 都在基点 $Δ_1 + ⋯ + Δ_i$ 的收敛域, 并使用幂级数极限
    
    then 最终的幂级数是 $2 k π #i + sum 1/n z^n$, where $k$ 是 $Δ_1 ,…, Δ_m$ 形成的道路绕 $0$ 的圈数
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
    
    极大良延拓区域是 $ℂ ∖ {x + #i 0 : x <= -1}$
  ]
  - $1/(1-z) ∼ sum z^n$ 收敛半径 $1$
  #indent[
    可以良定义地延拓到 $ℂ ∖ {1}$, 重合于用 $ℂ$ 除法定义的 $1/(1-z)$

    $#d _(z) log(1-z) = 1/(1-z)$, or $#d _(z) log(z) = 1/z$
  ]
  - $1/x, x in (-∞,0)$ 和 $1/x, x in (0,+∞)$ 已经是极大延拓
  #indent[
    $1/z$ 的极大延拓是 $ℂ ∖ 0$

    $1/z$ 的幂级数系数包含复数, 不同于 $1/x$ 只包含实数
  ]
]
#tag("analytic-function") 解析函数 := 幂级数任何点收敛半径非零 + 极大解析延拓 

#tag("analytic-isomorphism") 解析同胚 := $f : D <-> D'$
  - 解析函数
  - $forall x in D, #d f (x) in GL(𝕂^d)$
  - same for $f^(-1)$
*Example* 
#indent[
  - $A in GL(d,𝕂)$ 是解析同胚

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
尝试对幂级数空间定义距离. 启发自
#indent[
  $|A_n (v^n)|^(1/n) <= |A_n|^(1/n) |v|$

  $1/R = limsup {|A_n|^(1/n)}$

  三角不等式 $|A + B|^(1/n) <= |A|^(1/n) + |B|^(1/n)$ _Proof_ by 两边 $n$ power, 二项式展开
]
#tag("power-series-space") 
#indent[  
  幂级数空间
  
    $ ⨁_(n = 1)^∞ Lin(⊙^n 𝕂^d -> 𝕂^(d')) $

    #link(<net>)[网] (note: $|A|$ is #link(<linear-map-induced-norm>)[])
  
    $ 𝔹(A,ε) := {B : forall n in ℕ_(>= 1), |A_n - B_n|^(1/n) < ε} $ (or $|A_n - B_n| < ε^n$)

  距离

    $ "dist"(A,B) = sup_(n >= 1) |A_n - B_n|^(1/n) $ 
    
    as 一致控制 for forall $n >= 1$
]
幂级数空间是 distance 空间 and complete. _Proof_ by 继承自 $| |^(1/n)$ of forall $n >= 1$

$"dist"$ 不是 norm, eg. $|λ A_n|^(1/n) = |λ|^(1/n) |A_n|^(1/n)$

收敛半径的接近 $R_A ≈ R_B$
#indent[
  $|B|^(1/n) <= |A|^(1/n) + |A - B|^(1/n)$

  $|A|^(1/n) <= |B|^(1/n) + |A - B|^(1/n)$

  ==> $|A - B|^(1/n) >= | |A|^(1/n) - |B|^(1/n) |$

  $|A_n - B_n|^(1/n) < ε$

  ==> $| |A_n|^(1/n) - |B_n|^(1/n) | < ε$

  ==> $|A_n|^(1/n) - ε <= |B_n|^(1/n) <= |A_n|^(1/n) + ε$

  ==> $limsup {|B_n|^(1/n)} ≈ limsup {|A_n|^(1/n)}$

  ==> $R_A ≈ R_B$
]
收敛的值的接近
#indent[
  $abs( 
    sum_(n >= 1) A_n (v^n) - sum_(n >= 1) B_n (v^n) 
  )
  &<= sum_(n >= 1) |A_n - B_n| |v|^n \ 
  &<= sum_(n >= 1) ε^n |v|^n \
  &= 1/(1 - ε |v|) - 1 \
  &-> 0$
]
#tag("Sobolev-space") for Sobolev anayltic space, try use 几乎处处解析 + $integral abs(1/n! #d^n f)^(1/n)$ 作为控制函数去逼近目标函数 $integral abs(1/n! ϕ_n - 1/n! #d^n g)^(1/n) <= integral abs(1/n! #d^n f)^(1/n)$, where $ϕ_n$ 是 $ϕ$ 的 #tag("weak-differential"). (note: $|A|$ is #link(<linear-map-induced-norm>)[]) 或者只用带解析型积分 norm 限制的几乎处处解析空间, 或者对此空间进行积分 norm 的 Cauchy 网完备化

更弱的网控制
#indent[
  let $r < R_A$

  use data $A,ε$ and new data $r$

  $ {B : sum_(n >= 1) |A_n - B_n| r^n < ε} $

  *Example* 包括 $A$ 的截断多项式逼近, i.e. Taylor 多项式 by $sum_(n = 0 .. ∞) |A_n| r^n < ∞ ==> lim_(N -> ∞) sum_(n = N .. ∞) = 0$
]
至于解析函数空间的拓扑, 直观是, 逐点用幂级数之间的距离, 然后全局定义域用类似连续函数空间所使用的 compact-open topology 技术

出于对称性的考虑, 解析的定义应该不依赖于特定的幂级数展开基点

不同基点的幂级数距离控制对比
#indent[
  对基点 $x$, 幂级数 $A,B$ with $"dist"(A,B) = ε$

  同时切换基点到 $x + Δ$

  系数估计

  $ 
    |A_m (x+Δ) - B_m (x+Δ)| 
    &= abs( 
      sum_(n=m>=1)^∞ (A_n (x) - B_n (x)) binom(n,m,n-m) Δ^(n-m)
    ) \
    &<= sum_(n=m>=1)^∞ ε^n binom(n,m,n-m) |Δ|^(n-m) \ 
    &= ε^m sum_(p = 0)^∞ binom(p+m , m, p) |ε Δ|^p ("use" p = n-m) \
    &= ε^m 1/((1-|ε Δ|)^(m+1)) 
  $

  ==> $ |A_m (x+Δ) - B_m (x+Δ)|^(1/m) <= ε 1/((1-|ε Δ|)^(1 + 1/m)) $

  $1/((1-|ε Δ|)^(1 + 1/m)) <= 1/((1-|ε Δ|)^2)$ 关于 $ε$ 递减

  ==> $ ε = "dist"(A,B)(x) -> 0 ==> "dist"(A,B)(x + Δ) -> 0 $

  let $r < R(x)$

  ==>

  $ lim_("dist"(A,B)(x) -> 0) sup_(|Δ|<=r) {sum |A_n (x+Δ) - B_n (x+Δ)| |v|^n} = 0 $ 

  继续, 有限次

  let $x_i = x + Δ_1 + ⋯ + Δ_i$

  ==> 一点 $x$ 的幂级数距离一致地控制区域 $⋃_(i=1)^N overline(𝔹)(x_i , r_i)$ 的幂级数距离

  虽然这仍然无法保持解析延拓的良定义, e.g. $log(z)$
]
#tag("analytic-space")
#indent[
  解析空间的网

  let $f$ 解析, with domain $D_f$

  $f$ 的 #link(<net>)[网]
  #indent[
    - let $ε > 0$

    - let $D ⊂ D_f$ and $D$ compact and 传递连通, i.e. for $a,b in D$, 存在构造 $limits(⋃)_(i=1)^N overline(𝔹)(x_i , r_i)$ 连接 $x_1 = a, x_N = b$ 
    
    - forall 解析 $g$ with property \
      $g$ 收敛域包含 $D$, $sup_(x in D) "dist"( 1/(n!) #d^n f , 1/(n!) #d^n g )(x) < ε$
  ]

  网的逼近方式: $D -> D_f$ and $ε -> 0$

  when 验证网的性质 "$forall B',B'' in "Net", exists B in "Net", B ⊂ B' ∩ B''$"
  
  if $D',D''$ 分离, 需要构造传递连通的 $D$ 包含 $D',D''$

  一种可能的构造方式: compact 折线连接 $D',D''$, 使 $"dist"( 1/(n!) #d^n f , 1/(n!) #d^n g )(x) < ε$ 的有界球覆盖道路每一点, use 有限覆盖
]
幂级数空间和解析空间处理 $n >= 1$ 阶微分系数

$n = 0$ 阶微分系数基本没影响

一个基点的 $n = 0$ 系数的修改同时作用于其他基点, 且不影响 $n >= 1$ 系数, $A_m (x+Δ) = sum_(n=m>=1)^∞ A_n (x) binom(n,m,n-m) Δ^(n-m)$

compare 解析空间的网 vs 连续函数空间的网 (should be something compact open topology?)

in 解析空间及其网

  - #tag("inverse-op-continous-in-analytic-space") $f ≈ g$ ==> $f^(-1) ≈ g^(-1)$

  - #tag("compose-op-continous-in-analytic-space") $f_1 ≈ f_2$ and $g_1 ≈ g_2$ ==> $f_1 ∘ g_1 ≈ f_2 ∘ g_2$

  或者说, $#none ^(-1) , ∘$ 算子都是解析空间的连续函数

  same for linear $f + g$, multiplication $f g$, inversion $1/f$?

*Example* 

  - 仿射线性
  #indent[
    $f(x+v) = A_0 + A_1 v$
    
    收敛半径 $∞$
    
    任何基点的幂级数的一阶项都是 const $A_1$
    
    仿射线性空间内能定义一致距离 $|A_1 - B_1| = sup_(v in 𝕂ℙ^(d-1)) |(A_1 - B_1)(v)|$
  ]
  - 多项式映射
  #indent[
    $f(x+v) = A_0 + A_1 v + ⋯ + A_n v^n$

    收敛半径 $∞$

    多项式函数空间内无法定义一致距离
  ]
#tag("connected-analytic") in 解析空间, $1/x, x in (-∞,0)$ 和 $1/x, x in (0,+∞)$ 在不同的连通分支? 

连通分支内奇点的性质在解析同胚下不变

#tag("homotopy-analytic") 解析 #link(<homotopy>)[同伦]

#tag("power-series-analytic-equivalent") 解析等价的幂级数 := 两个幂级数来自同一个解析函数在不同点的幂级数展开

#tag("power-series-analytic-homotopy-equivalent") 解析同伦等价的幂级数 := 两个幂级数来自同一个解析函数同伦类在不同点的幂级数展开

然后可以幂级数之间的定义不等价版本的性质