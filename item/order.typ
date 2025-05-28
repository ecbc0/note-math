#import "/module/module.typ": *
#show: module

二元关系 := 命题函数 $p : A × B -> {0,1}$ or $A × B$ 的子集

$n$ 元关系类似

#tag("order")
#indent[
  命题函数 $< : A^2 -> {0,1}$ 是序 := $forall a,b,c ∈ A$  
  - 传递: $(a < b) and (b < c) ==>  a < c$
  - 无环: $not ((a < b) and (b < a))$
  也可以用等价的 $<=$ 版本
]
*Example* 
  - 子集的包含 $⊂$ 或者包含且不等于 $⊊$ 是序 #image("/image/tree-diagram.svg", width: 70%) 
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
]
#tag("maximal-linear-order-exists") maximal-linear-order chain alaways exists 
#indent[
  related to #link(<axiom-of-choice>)[]?
]