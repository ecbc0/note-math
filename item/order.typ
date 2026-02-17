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
  - 子集的 "包含" $⊆$, 或者 "包含且不等于" $⊊$, 是序 #image("../image/tree-diagram.svg", width: 70%) 
    image modified from wiki media about partial order
  - $ℕ,ℤ,ℚ,ℝ$ 的 $<,<=$
  - 树图
#tag("order-comparable") $a,a' ∈ A$ comparable := $(a <= a') or (a' <= a)$

#tag("comparable-component") $A_i ⊆ A$ is comparable-component := $forall a ∈ A, (exists a_i ∈ A_i, "comparable"(a,a_i) ==> a ∈ A_i)$

偏序可以分解为相互不 comparable 的 comparable-component. 想象两个毫无关系的树图

#tag("linear-order") $A$ 线序 
#indent[
  $forall a,a' ∈ A, "comparable"(a,a')$

  直观上, 线序没有分支, 也称为 "链"
]
#tag("maximal-linear-order") 极大线序链 
#indent[
  let $B ⊆ A$ with $<$ 线序. $B$ is maximal-linear-order := 以下定义等价
  - $forall a in A, (forall b in B, "comparable"(a,b) ==> a in B)$
  - $forall "linear-order" C ⊆ A, (B ⊆ C ==> B = C)$ 

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
_Proof_ (#link(<ref-29>)[]) `zorn_lemma.ac` in my github repo `ac-math` #link(<ref-30>)[]