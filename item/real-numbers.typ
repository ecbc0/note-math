#import "/module/module.typ": *
#show: module

自然数 $ℕ$ 的加法
#indent[
  $a$ 是数 $a$ 次 $1$, $a + b$ 是先数 $a$ 次, 再数 $b$ 次

  - 结合律: $(a + b) + c = a + (b + c)$
  - 交换律: $a + b = b + a$
]
*Proof* 在现实世界的直观是, 对于数数 $+1$, 无论怎样把数数任务手动分成几个子任务, 都不会影响结果, 而且总的分解方式有限. 加法结合律和交换律只是其中的特殊情况

对计算机来说似乎难以表达这种直观, 但似乎所有的有限结果一定会正确

通常的 "证明" 需要假设 $1$ 的结合律 $(a + b) + 1 = a + (b + 1)$, (仍然对计算机不显然?) 然后推出其它  

自然数 $ℕ$ 的乘法
#indent[
  $a ⋅ b$ 是数 $a$ 次的数 $b$ 次

  也满足交换律和结合律. 在现实世界的直观是 "二维和三维矩形", 对于数数 $+1$, 无论分解成怎么样的 product 分解的子任务, 都不影响结果. 所以乘法交换律和结合律只是完全乘法分解 i.e. 素数分解的特殊情况, 而且总分解次数有限
]
自然数运算分配律
#indent[
  $(a + b) ⋅ c = a ⋅ c + b ⋅ c$

  直观是用二维矩形的边长的 sum 分解
]
整数 $ℤ$
#indent[
  数轴有两个方向
]
有理数 $ℚ$
#indent[
  $n$ 等分操作, 乘法的逆 $1/n$

  不要混淆于 $ℕ,ℤ$ 的除, 余, 那是一个数 $a$ 另一个数 $b$ 的逐次减法, 而不是等分
]
实数 $ℝ$
#indent[
  实数的一种直观是长度

  鉴于实数的直观性, 可以认为它存在, 用很多公理去定义实数 i.e. 假设 true proposition. 但也可以从有理数 "恢复" 实数
]
无理数的例子
#indent[
  代数整数 $"algebraic-integer" := {x ∈ ℚ : (x^n + a_(n - 1) x^(n - 1) + ⋯ + a_0 = 0) and (a_0, a_1 ,…, a_(n - 1) ∈ ℤ)}$

  代数整数里的 "整数" 是因为 $"algebraic-integer" ⊂ ℤ$

  特殊情况 ${x ∈ ℚ : x^2 - 2 = 0}$. 但是 $(± 1)^2 = 1$ 且 $|x| >= 2 ==> |x|^2 >= 4$

  所以 ${x ∈ ℚ : x^2 - 2 = 0} = ∅$ 即 $sqrt(2)$ 不是有理数
]
代数数 $"algebraic-number" := {x ∈ ℝ : (a_n x^n + a_(n - 1) x^(n - 1) + ⋯ + a_0 = 0) and (a_0, a_1 ,…, a_n ∈ ℤ)}$

注意不要求 $a_n = 1$, 不限制 $x in ℚ$, 包含所有有理数 $p/q$, 部分无理数 e.g. $sqrt(2)$

代数数 $"algebraic-number"$ 是可数集, 实数 $ℝ$ 是不可数集

超越数 $"transcendental-number" := ℝ ∖ "algebraic-number" != ∅$. $e,π$ 是超越数

十进制, 二进制 vs 区间套 vs 分割

十进制 (区间套) 似乎很直观

然而十进制并不能原生地处理 $e = sum_(n = 0)^∞ 1/n!$

很多不同 $ℕ$ 区间套有相同极限, e.g. $[0,1/n]$ vs $[-1/n,0]$, 需要 limit-distance-vanish 系 quotient. let $"distance" (A) = sup_(x,x' in A) |x - x'|$

let $A_0 ⊃ A_1 ⋯ , B_0 ⊃ B_1 ⋯$ and $lim_(n -> ∞) "distance"(A_n),"distance"(B_n) = 0$, limit-distance-vanish 关系 (*alias*: Cauchy 收敛) 
$
  forall (ε ∈ ℚ) and (ε > 0), exists N ∈ ℕ, forall n,m > N, "distance"(A_n union B_m) < ε
$
可以把 $ℕ$ 有理数区间套改为一般的长度 #link(<hom-limit>)[极限] 趋于零的有理数区间 $⊂$ #link(<maximal-linear-order>)[线序链] 或者更一般的长度趋于零的有理数区间 (极大的) #link(<net>)[网]

有理数区间是子集 $A ⊂ ℚ$ with property 序不中断 

$ And_(a,b in A \ a < b) And_(c in ℚ \ a < c < b) c in A $

从操作简单性来说, 应该用 Dedekind-cut. "操作简单" 是指 
- let $x ∈ ℝ$, ${x} <-> ℝ ∖ {x}$ 一一对应
- $(ℝ ∖ {x}) ∩ ℚ = ℚ ∖ {x} = ℚ_(< x) ⊔ ℚ_(> x)$
- 所以 $x in ℝ$ 和 $ℚ_(< x) ⊔ ℚ_(> x)$ 一一对应

#tag("Dedekind-cut") 无理数 $ℝ ∖ ℚ$
#indent[
  $x ∈ ℝ ∖ ℚ$ 一一对应到 ${(A,B) ∈ Subset(ℚ)^2 : (ℚ = A ⊔ B) and (forall (a,b) ∈ (A,B), a < b)}$ 

  $x := (A,B)$. 将 $(A,B)$ 重新记为 $(ℚ_(< x), ℚ_(>  x))$
]
实数 $ℝ := ℚ ⊔ (ℝ ∖ ℚ)$

- #tag("order-real") $ℝ$ 序 $x < y <==>  (ℚ_(< x) ⊊ ℚ_(< y))$

let 
$
  A + A' := {a + a' : (a,a') ∈ (A,A')} \
  A ⋅ A' := {a ⋅ a' : (a,a') ∈ (A,A')}
$
- #tag("add-real") $ℝ$ 加法. let $x,y ∈ ℝ$
#indent[  
  $
    x + y &:= (ℚ_(< x) + ℚ_(< y) , ℚ_(> x) + ℚ_(>  y)) 
    &&"expect" (ℚ_(< x + y) , ℚ_(>  x + y)) \

    -x &:= (- ℚ_(> x), - ℚ_(< x)) 
    &&"expect" (ℚ_(< -x),ℚ_(>  -x))
  $
  ]
由于 $< 0$ 的存在, 乘法不保持序. 但是 $ℚ_(> 0), ℝ_(> 0)$ 的乘法保持序. 先处理 $>  0$ 的情况, 再用反射 $- x$ 得到 $< 0$ 的情况

- #tag("multiply-real") $ℝ$ 乘法. let $x,y > 0$
#indent[
  $
    x ⋅ y &:= (ℚ_((0,x)) ⋅ ℚ_((0,y)) , ℚ_((x,∞)) ⋅ ℚ_((y,∞))) 
    && "expect" (ℚ_((0,x y)) , ℚ_((x y,∞))) \

    1/x &:= (1/(ℚ_((x,∞))) , 1/(ℚ_((0,x)))) 
    && "expect" (ℚ_((0,1/x)),ℚ_((1/x,∞)))
  $
]
$ℤ,ℚ,ℝ$ 的 $+,⋅$ 都有结合律, 交换律, 分配律

$ℝ$ 完备性 #tag("completeness-real")

#tag("exact-bound") 确界原理
#indent[
  let $A ⊂ ℝ$ 有上界
  
  $exists x ∈ ℝ, ⋃_(a ∈ A) ℚ_(< a) = ℚ_(< x)$
  
  上确界 $sup A := x$

  - $forall a ∈ A, a <= sup A$ 
  - $forall ε > 0, exists a in A, sup A - ε < a <= sup A$
]
#tag("nested-closed-interval-theorem") 闭区间套定理
#indent[
  无论是 $ℕ$ 区间套还是 $⊂$ 线序链区间套, 线序意味着区间端点单调性, 对端点用上确界 $a_1$ 下确界 $a_0$ with $a_0 <= a_1$ 得到闭区间套交集是闭区间 $[a_0,a_1] ≠ ∅$
] 
#let B = c-bf("B","#919191")
#let C = c-bf("C","#919191")
#tag("closed-interval-net-theorem") 闭区间 #link(<net>)[网] $#B$ 交集非空 $⋂ #B != ∅$

*Proof*
#indent[
  对网 $#B$ 补充所有的有限交集

  取一个 #link(<maximal-linear-order>)[极大线序链] $#C$. 由闭区间套定理, 其交集是非空闭区间 $⋂ #C != ∅$

  由 $#C$ 的极大性, 闭区间 $⋂ #C$ 将小于所有 $#B$ 的闭区间

  $forall B in #B$, 定义线序链 $#C _B = {B ∩ C in #B : C in #C}$
  
  $subset$ 线序链满足 $⋂_(A supset A_0) A = A_0$

  闭区间套的端点是上下确界

  如果 $⋂ #C _B subset.neq ⋂ #C$, 那么 $⋂ #C _B$ 的 小/大 端点 大/小 于 $⋂ #C$ 的 小/大 端点

  如果闭区间 $⋂ #C _B ∉ #B$, 那么对端点使用 $ℝ$ 确界原理 
  $
    exists B ∩ C_0 in #C _B \
    B ∩ C_0 in #B \
    B ∩ C_0 = ⋂_(B ∩ C supset B ∩ C_0) B ∩ C subset.neq ⋂ #C
  $ 
  矛盾于 $⋂ #C$ 是 $⊂$ 极大线序链
  
  如果闭区间 $⋂ #C _B in #B$, 同理矛盾
]

对于 $ℕ$ 序列定义 $"distance"{a_(n),a_(n+1),...} := sup_(m,m' >= n) |a_m - a_m'|$

对于一般 net 定义 $"distance"(B) = sup_(a,a' in B) |a - a'|$

limit-distance-vanish 序列 := $lim_(n -> ∞) abs({a_(n),a_(n+1),...}) = 0$ #tag("limit-distance-vanish-sequence"). i.e. tail distance vanish

limit-distance-vanish-net := $forall ε > 0, exists B in #B, "distance"(B) < ε$

#tag("Cauchy-completeness-real") limit-distance-vanish 序列 or net 收敛 
  
*Proof*
#indent[
  无界 ==> $forall ε > 0, forall N ∈ ℕ, exists n > N, abs({a_(n),a_(n+1),...}) >= ε$ 
  
  ==> limit-distance-vanish 序列有界
  
  ==> 单调增减有界序列 $n ⇝ inf_(m >= n){a_m} , sup_(m >= n){a_m}$ 有极限 $liminf_(n -> ∞) {a_n} <= limsup_(n -> ∞) {a_n}$
  
  limit-distance-vanish 性质 ==> $liminf_(n -> ∞) {a_n} = limsup_(n -> ∞) {a_n} = a$ 
  
  从而 $a_n$ 收敛到 $a$

  对网, 由闭区间网定理, let $a in ⋂_(B in #B) B != ∅$. 使用 limit-distance-vanish-net 得到 net 收敛 $lim_(B in #B) sup_(a_B in B) |a_B - a| = 0$
]
反过来, 收敛序列是 limit-distance-vanish 的. by 三角不等式 $|a_m - a_m'| <= |a_m - a| + |a_m' - a|$

序列 $ℕ -> ℝ$ or net $#B$ 收敛到 $a$ <==> limit-distance-vanish 

#tag("uncountable-real") 实数不可数 $|ℕ| < |ℝ|$ 
#indent[
  已经证明了 $|ℕ| < |Subset(ℕ)|$. cf. #link(<cardinal-increase>)[]

  recall ${0,1}^ℕ ≃ (ℕ -> "bool") ≃ Subset(ℕ)$

  $|Subset(ℝ)| = |ℕ -> ℕ| = |ℝ|$

  *Proof* 
  #indent[
    根据区间套定理, 实数的二进制小数点表示: $a_0 . a_1 a_2 ...$ 第 $n$ 位取 $0 ⇝ 0 ⋅ 1/2^n$ 或 $1 ⇝ 1 ⋅ 1/2^n$

    ==> ${0,1}^ℕ ≃ [0,1]$. 其中, 把二进制中可能的两种等价的选择 quotient

    $[0,1] ≃ (-1,1)$ by 线性映射 or 仿射映射

    $(-1,1) ≃ ℝ$ by $x ⇝ x/(1 - x^2)$

    $(ℕ -> ℕ) ≃ (0,1]$ 

    *Proof* 
    #indent[
      $
        (n_1, n_2, ...) ⇝ 1/2^(n_1) + 1/2^(n_1 + n_2) + ⋯
      $

      它代表二进制中, $1$ 出现的第一个位置是 $n_1$, 第二个位置是 $n_2$ ...

      对比 ${0,1}^ℕ$, $1/2^(m_1) + 1/2^(m_2) + ⋯$ vs $1/2^(n_1) + 1/2^(n_1 + n_2) + ⋯$
      
      $ 
        m_1 &= n_1 \ 
        m_2 &= n_1 + n_2 \ 
        &⋯
      $
      
      距离 $n_(i + 1) = m_(i + 1) - m_i$
    ]
  ]
]