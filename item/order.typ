#import "../module/module.typ": *
#show: module

二元关系 := 命题函数 $p : A × B -> {0,1}$ or $A × B$ 的子集

$A × B$ 时称为 $A,B$ 独立无关

$n$ 元关系类似

#tag("order")
#indent[
  命题函数 $< : A^2 -> {0,1}$ 是序 := $forall a,b,c ∈ A$  
  - 传递: $(a < b) and (b < c) ==> a < c$
  - 无环: $not ((a < b) and (b < a))$
  也可以用 "等价" 的 $<=$ 版本
  - 传递: $(a <= b) and (b <= c) ==> a <= c$
  - 自反 $a <= a$
  - 反对称 $(a <= b) and (b <= a) ==> a = b$
  
  等价是指 
  - 如果先有 $<$ 版本的偏序, 那么定义 $a <= b := (a < b) or (a = b)$ 之后就有 $<=$ 版本的偏序, 且能变回来 $a < b <==> (a <= b) and (a != b)$ (变回来不是显然的, 需要 $<$ 偏序的性质来证明, 下同)
  - 如果先有 $<=$ 版本的偏序, 那么定义 $a < b := (a < b) and (a != b)$ 之后就有 $<$ 版本的偏序, 且能变回来 $a <= b <==> (a < b) or (a = b)$
]
*Prop* $<$ 偏序 ==> 非自反 $forall(x in A) { not (x < x) }$ _Proof_ 如果 $x < x$, 那么无环被破坏

注意: "非自反" (nonreflexive) 不是 not 自反 (not reflexive)

*Prop* $<$ 偏序 ==> ($x < y ==> x != y$) _Proof_ 如果 $x = y$ 那么就有 $x < x$

*Def* 
- $"lte_from"(<)(a, b) := (a < b) or (a = b)$
- $"lt_from"(<=)(a, b) := (a <= b) and (a != b)$

*Prop* 假设 $<$ 偏序, 则 $"lt_from"("lte_from"(<)) = (<)$

_Proof_
#indent[
  $
    "lt_from"("lte_from"(<))(a, b) &= ((x < y) or (x = y)) and x != y \
    &= ((x < y) and (x != y)) or ((x = y) and (x != y)) \
    &= (x < y) and (x != y)
  $
  但是偏序 $<$ ==> $(x < y) ==> (x != y)$, 所以
  $
    (x < y) and (x != y) = (x < y)
  $
]

*Prop* 假设 $<=$ 偏序, 则 $"lte_from"("lt_from"(<=)) = (<=)$
_Proof_
#indent[
  $
    "lte_from"("lt_from"(<=))(a, b) &= ((x <= y) and (x != y)) or x = y \
    &= ((x <= y) or (x = y)) and ((x = y) or (x != y)) \
    &= (x <= y) or (x = y)
  $
  但是偏序 $<=$ ==> $(x <= y) or (x = y) <==> (x <= y)$ 

  _Proof_ <== 显然. 对于 ==>, 假设 $(x <= y) or (x = y)$. 如果 $x = y$ 则由于 $x <= x$, 有 $x <= y$. 如果 $x != y$ 那么 $x <= y$
]
*Prop* (证明不需要 $<, <=$ 的偏序性质)
- $"lte_from"(<)$ 是自反的 
- $"lt_from"(<=)$ 是非自反的

*Prop* $<$ 的无环性质 ==> $"lte_from"(<)$ 的反对称性质

*Prop* $<=$ 的反对称性质 ==> $"lt_from"(<)$ 的无环性质

*Prop* $<$ 传递 ==> $"lte_from"(<)$ 传递

*Prop* $<=$ 传递 + 反对称 ==> $"lt_from"(<=)$ 传递

这些命题加起来就证明了 $<, <=$ 偏序的等价性

*Example* 
  - 子集的 "包含" $⊂$, 或者 "包含且不等于" $⊊$, 是序 #image("../image/tree-diagram.svg", width: 70%) 
    image modified from wiki media about partial order
  - $ℕ,ℤ,ℚ,ℝ$ 的 $<,<=$
  - 树图
#tag("order-comparable") $a,a' ∈ A$ comparable := $(a <= a') or (a' <= a)$

#tag("comparable-component") $A_i ⊂ A$ is comparable-component := $forall a ∈ A, (exists a_i ∈ A_i, "comparable"(a,a_i) ==> a ∈ A_i)$

偏序可以分解为相互不 comparable 的 comparable-component. 想象两个毫无关系的树图

#tag("linear-order") $A$ 线序 
#indent[
  $forall a,a' ∈ A, "comparable"(a,a')$

  直观上, 线序没有分支, 也称为 "链"
]
#tag("maximal-linear-order") 极大线序链 
#indent[
  let $B ⊂ A$ with $<$ 线序. $B$ is maximal-linear-order := 以下定义等价
  - $forall a in A, (forall b in B, "comparable"(a,b) ==> a in B)$
  - $forall "linear-order" C ⊂ A, (B ⊂ C ==> B = C)$ 

  它并不能用于分解偏序. 两个极大线序链可以有相交的部分

  等价地
  - $B$ 链无法延拓
  
  $B$ 链的延拓是指, 存在 $a in A$ 且 $a ∉ B$, 使得, 对每个 $b in B$, $"comparable"(a, b)$. 延拓后, $B ∪ {a}$ 也是链
]
#tag("maximal-linear-order-exists") maximal-linear-order chain alaways exists 
#indent[
  也称为 Zorn 引理

  需要 #link(<axiom-of-choice>)[选择公理]: 如果能够对 (某个类型的) 一些集合证明按照存在某种性质的元素, 那么可以定义一个函数, 将这些集合映射到对应的元素
]
_Proof_ (#link(<ref-29>)[]) (ported from formal proof in `zorn_lemma.ac` in my github repo `ac-math` #link(<ref-30>)[])
#indent[
  可以用 $ℝ$ 的所有区间的 $⊂$ 偏序, 作为直观例子. 区间链 $B$ 就是, 对每个区间 $b_1, b_2 in B$ 都有 $b_1 ⊂ b_2$ 或 $b_2 ⊂ b_1$

  假设没有极大链, 那么每个链都是可延拓的
  
  根据选择公理, 可以构造延拓函数 $f$ 的定义域是 ${B ⊂ A: B " is chain"}$, 值域是 $A$, $f(B) = b$ 是延拓元

  *Def* 链 $B$ 的 "$+1$" 或者 "后继" $"suc"(B) = B ∪ {f(B)}$

  *Def* 链 $B_1, B_2$ 之间的可比较定义为 $B_1 ⊂ B_2$ 或 $B_2 ⊂ B_1$

  *Def* 可比较的链集, 或者线性链集 $"Linear_Chains"(A) := {C ⊂ "Chains"(A): forall B_1, B_2 in C, "comparable"(B_1, B_2)}$.

  *Prop* 线性链集 $C ⊂ "Linear_Chains"(A)$ 对自己的元素进行并集 $⋃ C$ 得到的是 $A$ 的链 $⋃ C in "Chains"(A)$

  _Proof_
  #indent[
    对每个 $b_1, b_2 in ⋃ C$, 存在 $B_1, B_2$ 使得 $b_1 in B_1, b_2 in B_2$. 
    
    如果 $B_1 ⊂ B_2$ 那么 $b_1, b_2 in B_2$ 是 $<$ 可比较的

    如果 $B_2 ⊂ B_1$ 那么 $b_1, b_2 in B_1$ 是 $<$ 可比较的
  ]

  *Def* 归纳链集 $C in "Inductive_Chains"(A) := C ⊂ "Chain"(A)$ 且满足, 
  - 包含零元或者归纳初始元. $Set[A](∅) in C$
  - 包含 "+1". 对每个 $B in C$, 其后继也 $"suc"(B) in C$
  - 线性链集的并集也是归纳链. 如果 $D ⊂ C$ 是线性链集 $D in "Linear_Chains"(A)$, 则 $⋃ D in C$

    似乎类似于 $ℕ$ 的 "强归纳法": (对 $k < n$, $f(k)$ 正确 ==> $f(n)$ 正确) ==> 对所有 $n$, $f(n)$ 正确

  *Prop* 归纳链集存在. 所有 $<$ 链的集合 $"Chains"(A)$ 就满足 $"Inductive_Chains"(A)$ 所需要的所有性质

  *Def* 最小归纳链集 := $⋂ "Inductive_Chains"(A)$

  *Prop* $⋂ "Inductive_Chains"(A)$ 是归纳链集

  _Proof_ 证明归纳链集的性质对闭集封闭
  #indent[
    - 零元. 
    #indent[
      $Set[A](∅)$ 属于每个 $C in "Inductive_Chains"$, 从而也属于 $⋂ "Inductive_Chains"(A)$
    ]
    - +1 
    #indent[
      对每个链 $B in ⋂ "Inductive_Chains"(A)$
    
      对每个 $C in "Inductive_Chains"(A)$
      - $B in C$
      - $"suc"(B) in C$
      从而 $"suc"(B) in ⋂ "Inductive_Chains"(A)$
    ]
    - 强归纳
    #indent[
      设 $D ⊂ ⋂ "Inductive_Chains"(A)$ 是线性链 $D in "Linear_Chains"(A)$
      
      对每个 $C in "Inductive_Chains"(A)$
      - $D ⊂ C$
      - $⋃ D ⊂ C$
      从而 $⋃ D ⊂ ⋂ "Inductive_Chains"(A)$
    ]
  ]

  *Def* 最小归纳链集里的可比较链 $"Comparable_Chains"(A) := B in ⋂ "Inductive_Chains"(A)$ 且满足
  - 对每个 $B' in ⋂ "Inductive_Chains"(A)$ 都链可比较 $"comparable"(B, B')$
  
  $"Comparable_Chains"(A) ⊂ ⋂ "Inductive_Chains"(A)$

  *Prop* $"Comparable_Chains"(A)$ 是归纳链集
  - 从而 $⋂ "Inductive_Chains"(A) ⊂ "Comparable_Chains"(A)$
  - 从而 $"Comparable_Chains"(A) = ⋂ "Inductive_Chains"(A)$
  
  _Proof_
  #indent[
    - 零元
    #indent[
      空链 $Set[A](∅)$ 因为 $⊂$ 其它链, 从而是可比较链, $Set[A](∅) in "Comparable_Chains"(A)$
    ]
    - $+1$. 如果 $B$ 是可比较链, 那么 $"suc"(B)$ 也是可比较链
    #indent[
      *Prop* 对 $B' in ⋂ "Inductive_Chains"(A)$, 如果 $B' ⊊ B$, 则 $"suc"(B') ⊂ B$

      _Proof_ $B$ 是可比较链, 所以 $B, "suc"(B')$ 可比较. $"suc"(B') = B ∪ {f(B)}$. 用反证法, 假设 $B ⊊ B ∪ {f(B)}$ 得到矛盾

      因为 $"suc"(B) ⊂ B'$ 就是我们要证明的, 所以需要绕过它

      *Def* 设 $B$ 是可比较链, $"Suc_Comparable_Chains"(B)$ 定义为 $:= B' in ⋂ "Inductive_Chains"(A)$ 且满足
        - $B' ⊂ B$ or $"suc"(B) ⊂ B'$

      *Prop* $"Suc_Comparable_Chains"(B)$ 是可归纳集

      _Proof_ 
      #indent[
        - 零元
        - "+1"
        #indent[
          设 $B' in "Suc_Comparable_Chains"(B)$
          - 如果 $B' ⊊ B$, 如前所述 $"suc"(B') ⊂ B$
          - 如果 $B' = B$, 则 $"suc"(B') = "suc"(B)$ 从而 $"suc"(B) ⊂ "suc"(B')$
          - 如果 $"suc"(B) ⊂ B'$, 则 $"suc"(B) ⊂ "suc"(B')$
          从而 $"suc"(B') ⊂ B$ or $"suc"(B) ⊂ "suc"(B')$

          从而 $"suc"(B') in "Suc_Comparable_Chains"(B)$
        ] 
        - 强归纳
        #indent[
          设 $D ⊂ "Suc_Comparable_Chains"(B)$

          $⋃ D in ⋂ "Inductive_Chains"(A)$

          对 $b' in ⋃ D$, 取 $B' in "Suc_Comparable_Chains"(B)$ 使得 $b' in B' ⊂ "suc"(B') ⊂ B$

          $"suc"(B') ⊂ B$ or $"suc"(B) ⊂ "suc"(B')$

          $"suc"(B) ⊂ "suc"(B')$ ==> $"suc"(B) ⊂ ⋃ D$

          $forall b' in ⋃ D, (b' in B) or ("suc"(B) ⊂ ⋃ D)$

          $(⋃ D ⊂ B) or ("suc"(B) ⊂ ⋃ D)$

          $⋃ D in "Suc_Comparable_Chains"(B)$
        ]
      ] 

      从而 $"Suc_Comparable_Chains"(B) = ⋂ "Inductive_Chains"(A)$

      回来继续证明 $"Comparable_Chains"(A)$ 的 $+1$ 性质, 证明 $B in "Comparable_Chains"(A) ==> "suc"(B) in "Comparable_Chains"(A)$

      对于 $B' in ⋂ "Inductive_Chains"(A)$
      - 如果 $not("suc"(B) ⊂ B')$
        则根据 $B' in "Suc_Comparable_Chains"(B)$ 的定义, $B' ⊂ B ⊂ "suc"(B)$
      从而 $B' ⊂ "suc"(B)$ or $"suc"(B) ⊂ B'$ 

      从而 $"suc"(B) in "Comparable_Chains"(A)$
    ]
    - 强归纳
    #indent[
      设 $D ⊂ "Comparable_Chains"(A)$ 且 $D in "Linear_Chains"(A)$

      对于 $B' in ⋂ "Inductive_Chains"(A)$
      - 如果每个 $B in D$ 都 $B ⊂ B'$ 那么 $⋃ D ⊂ B'$
      - 如果有一个 $B in D$ 使得 $B' ⊂ B$ 那么 $B' ⊂ ⋃ D$
      从而 $⋃ D, B'$ 可比较, 从而 $⋃ D in "Comparable_Chains"(A)$
    ]
  ]

  *Prop* $"Comparable_Chains"(A)$ 是线性链集 
  
  _Proof_ 使用 
  - $"Comparable_Chains"(A)$ 的性质, 以及
  - $"Comparable_Chains"(A) = ⋂ "Inductive_Chains"(A)$
  
  从而最小归纳链集 $⋂ "Inductive_Chains"(A)$ 也是线性链集

  *Prop* $⋃ ⋂ "Inductive_Chains"(A) in ⋂ "Inductive_Chains"(A)$

  *Prop* $⋃ ⋂ "Inductive_Chains"(A)$ 是链

  *Prop* $⋃ ⋂ "Inductive_Chains"(A)$ 是极大链

  _Proof_
  #indent[
    定义 $M = ⋃ ⋂ "Inductive_Chains"(A)$

    假设 $M$ 不是最大链

    $M in ⋂ "Inductive_Chains"(A)$

    由归纳链集的性质, $"suc"(M) in ⋂ "Inductive_Chains"(A)$ 
    
    $f(M) in "suc"(M) ⊂ ⋂ "Inductive_Chains"(A)$, 所以 $f(M) in ⋃ ⋂ "Inductive_Chains"(A) = M$

    也即 $f(M) in M$

    这与 $f(M) ∉ M$ 矛盾, 根据链延拓函数 $f$ 的定义
  ] 
]