#import "../module/module.typ": *
#show: module

#let B = c-bf("B","#919191")
#let I = c-bf("I","#919191")

#tag("net") 
#indent[
$#B$ a net of $A$ := $#B ⊂ Subset(A)$ (a collection of subset of $A$) with property 
  - $forall B ∈ #B, B != ∅$
  - $forall B_1 ,…, B_n ∈ #B, exists B ∈ #B, B ⊂ B_1 ∩ ⋯ ∩ B_n$ 
  - (含义: 收敛到极限之前非空. 如果 $#B$ 元素无限那么有限交集控制着收敛方向, 尽管可能 $∅ = ⋂ #B$. 如果 $#B = {B_1 ,…, B_n}$ 元素有限那么 $∅ != B_1 ∩ ⋯ ∩ B_n ∈ #B$)
]
*Example* $X = ℕ$, 网 $#B = {n,n+1, ⋯}_(n = 0 .. ∞)$

点网 or 包含点 $x in X$ 的网 $#B (x) := forall B in #B (x), x in B$

网 $#B$ 细于 $#B'$ := $forall B' in #B', exists B in #B, B ⊂ B'$ \
并且这蕴含 $⋂ #B ⊂ ⋂ #B'$

#tag("net-same-limit") $#B,#B'$ 极限相同 := 相互细于

并不是所有极限相同的网都有用. 集合论上可用 $∪$ 构造出新的极限相同的网, 但有很多冗余

任何网都可以补充所有的有限交集 ${B_1 ∩ ⋯ ∩ B_n : n in ℕ, B_1 ,…, B_n in #B}$ 成为新的网, 并保持相同的极限

#tag("hom-limit") 网之间的极限同态 := 
#indent[
  $f : X -> Y$. 网 $f(#B _X)$ 细于 $#B _Y$
  $
    forall B_Y in #B _Y \ 
    exists B_X in #B _X \
    f(B_X) ⊂ B_Y "or" B_X subset f^(-1) (B_Y)
  $
  $⊂$ 用点来描述就是 $forall a in B_X, f(a) in B_Y$
]

*Example* 

- 序列 $ℕ -> ℝ$ 收敛 $lim_(n -> ∞) a_n = a$
#indent[ 
  使用包含 $a$ 的所有区间 $#B _ ℝ = #I (a)$ 和 $#B _ ℕ = {n, n+1, ⋯}_(n = 0 .. ∞)$, 则 $ℕ -> ℝ$ 极限同态
  $
    forall I(a) in #I (a) \
    exists {n,n+1, ⋯} in #B _ ℕ \
    {a_n, a_(n+1), ⋯} ⊂ I(a)
  $
]
- $ℝ -> ℝ$ 函数极限
#indent[  
  let $f : ℝ -> ℝ, f(x) = y$, 从 $#I (x)$ 到 $#I (y)$
  $
    forall I_y in #I (y) \ 
    exists I_x in #I (x) \
    f(I_x) ⊂ I_y
  $
] 
