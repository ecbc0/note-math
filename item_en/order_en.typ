#import "../module/module.typ": *
#show: module

Binary relation := Propositional function $p : A × B -> {0,1}$ or a subset of $A × B$

when $A × B$ it's called $A,B$ is independent

$n$-ary relation is similar

#tag("order")
#indent[
  Propositional function $< : A^2 -> {0,1}$ is an order := $forall a,b,c ∈ A$
  - Transitive: $(a < b) and (b < c) ==> a < c$
  - Acyclic: $not ((a < b) and (b < a))$
  Can also use the "equivalent" $<=$ version
  - Transitivity: $(a <= b) and (b <= c) ==> a <= c$
  - Reflexivity $a <= a$
  - Antisymmetry $(a <= b) and (b <= a) ==> a = b$

  Equivalence means
  - If we first have the $<$ version of partial order, then define $a <= b := (a < b) or (a = b)$, we get the $<=$ version of partial order, and it can be converted back to $a < b <==> (a <= b) and (a != b)$ (converting back is not obvious and requires the properties of $<$ partial order to prove, same below)
  - If we first have the $<=$ version of partial order, then define $a < b := (a < b) and (a != b)$, we get the $<$ version of partial order, and it can be converted back to $a <= b <==> (a < b) or (a = b)$
]
*Prop* $<$ partial order ==> irreflexive $forall(x in A) { not (x < x) }$ _Proof_ If $x < x$, then acyclicity is broken

Note: "nonreflexive" is not not reflexive

*Prop* $<$ partial order ==> ($x < y ==> x != y$) _Proof_ If $x = y$ then $x < x$

*Def*
- $"lte_from"(<)(a, b) := (a < b) or (a = b)$
- $"lt_from"(<=)(a, b) := (a <= b) and (a != b)$

*Prop* Assume $<$ is a partial order, then $"lt_from"("lte_from"(<)) = (<)$

_Proof_
#indent[
  $
    "lt_from"("lte_from"(<))(a, b) &= ((x < y) or (x = y)) and x != y \
    &= ((x < y) and (x != y)) or ((x = y) and (x != y)) \
    &= (x < y) and (x != y)
  $
  But partial order $<$ ==> $(x < y) ==> (x != y)$, so
  $
    (x < y) and (x != y) = (x < y)
  $
]

*Prop* Assume $<=$ is a partial order, then $"lte_from"("lt_from"(<=)) = (<=)$
_Proof_
#indent[
  $
    "lte_from"("lt_from"(<=))(a, b) &= ((x <= y) and (x != y)) or x = y \
    &= ((x <= y) or (x = y)) and ((x = y) or (x != y)) \
    &= (x <= y) or (x = y)
  $
  But partial order $<=$ ==> $(x <= y) or (x = y) <==> (x <= y)$

  _Proof_ <== is obvious. For ==>, assume $(x <= y) or (x = y)$. If $x = y$ then because $x <= x$, we have $x <= y$. If $x != y$ then $x <= y$
]
*Prop* (Proof does not require partial order properties of $<, <=$)
- $"lte_from"(<)$ is reflexive
- $"lt_from"(<=)$ is irreflexive

*Prop* Acyclicity of $<$ ==> Antisymmetry of $"lte_from"(<)$

*Prop* Antisymmetry of $<=$ ==> Acyclicity of $"lt_from"(<)$

*Prop* Transitivity of $<$ ==> Transitivity of $"lte_from"(<)$

*Prop* Transitivity of $<=$ + Antisymmetry ==> Transitivity of $"lt_from"(<=)$

These propositions together prove the equivalence of $<, <=$ partial orders

*Example*
  - Subset "inclusion" $⊆$ or "inclusion and not equal to" $⊊$ is an order #image("../image/tree-diagram.svg", width: 70%)
    image modified from wiki media about partial order
  - $<,<=$ of $ℕ,ℤ,ℚ,ℝ$
  - Tree diagram
#tag("order-comparable") $a,a' ∈ A$ comparable := $(a <= a') or (a' <= a)$

#tag("comparable-component") $A_i ⊆ A$ is comparable-component := $forall a ∈ A, (exists a_i ∈ A_i, "comparable"(a,a_i) ==> a ∈ A_i)$

Partial order can be decomposed into comparable-components that are not comparable to each other. Imagine two tree diagrams that have no relation

#tag("linear-order") $A$ linear order
#indent[
  $forall a,a' ∈ A, "comparable"(a,a')$

  Intuitively, a linear order has no branches, also called a "chain"
]
#tag("maximal-linear-order") Maximal linear order chain
#indent[
  let $B ⊆ A$ with $<$ linear order. $B$ is maximal-linear-order := the following definitions are equivalent
  - $forall a in A, (forall b in B, "comparable"(a,b) ==> a in B)$
  - $forall "linear-order" C ⊆ A, (B ⊆ C ==> B = C)$

  It cannot be used to decompose partial orders. Two maximal linear order chains can have intersecting parts

  Equivalently,
  - $B$ chain cannot be extended

  The extension of chain $B$ means there exists $a in A$ and $a ∉ B$, such that for every $b in B$, $"comparable"(a, b)$. After extension, $B ∪ {a}$ is also a chain
]
#tag("maximal-linear-order-exists") maximal-linear-order chain alaways exists
#indent[
  Also known as the Zorn Lemma

  Requires #link(<axiom-of-choice>)[Axiom of Choice]: If it can be proven that some sets (of a certain type) have elements with a certain property, then a function can be defined that maps these sets to the corresponding elements.
]
_Proof_ `zorn_lemma.ac` in my github repo `ac-math` #link(<ref-30>)[]