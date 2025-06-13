#import "../module/module.typ": *
#show: module

Binary relation := Propositional function $p : A × B -> {0,1}$ or a subset of $A × B$

$n$-ary relation is similar

#tag("order")
#indent[
  Propositional function $< : A^2 -> {0,1}$ is an order := $forall a,b,c ∈ A$  
  - Transitive: $(a < b) and (b < c) ==> a < c$
  - Acyclic: $not ((a < b) and (b < a))$
  Can also use the equivalent $<=$ version
]
*Example* 
  - Subset inclusion $⊂$ or inclusion and not equal to $⊊$ is an order #image("../image/tree-diagram.svg", width: 70%) 
    image modified from wiki media about partial order
  - $<,<=$ of $ℕ,ℤ,ℚ,ℝ$
  - Tree diagram
#tag("order-comparable") $a,a' ∈ A$ comparable := $(a <= a') or (a' <= a)$

#tag("comparable-component") $A_i ⊂ A$ is comparable-component := $forall a ∈ A, (exists a_i ∈ A_i, "comparable"(a,a_i) ==> a ∈ A_i)$

Partial order can be decomposed into comparable-components that are not comparable to each other. Imagine two tree diagrams that have no relation

#tag("linear-order") $A$ linear order 
#indent[
  $forall a,a' ∈ A, "comparable"(a,a')$

  Intuitively, a linear order has no branches, also called a "chain"
]
#tag("maximal-linear-order") Maximal linear order chain 
#indent[
  let $B ⊂ A$ with $<$ linear order. $B$ is maximal-linear-order := the following definitions are equivalent
  - $forall a in A, (forall b in B, "comparable"(a,b) ==> a in B)$
  - $forall "linear-order" C ⊂ A, (B ⊂ C ==> B = C)$ 

  It cannot be used to decompose partial orders. Two maximal linear order chains can have intersecting parts
]
#tag("maximal-linear-order-exists") maximal-linear-order chain alaways exists 
#indent[
  related to #link(<axiom-of-choice>)[]?
]