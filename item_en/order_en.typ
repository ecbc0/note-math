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
  - Subset "inclusion" $⊂$ or "inclusion and not equal to" $⊊$ is an order #image("../image/tree-diagram.svg", width: 70%)
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

  Equivalently,
  - $B$ chain cannot be extended

  The extension of chain $B$ means there exists $a in A$ and $a ∉ B$, such that for every $b in B$, $"comparable"(a, b)$. After extension, $B ∪ {a}$ is also a chain
]
#tag("maximal-linear-order-exists") maximal-linear-order chain alaways exists
#indent[
  Also known as the Zorn Lemma

  Requires #link(<axiom-of-choice>)[Axiom of Choice]: If it can be proven that some sets (of a certain type) have elements with a certain property, then a function can be defined that maps these sets to the corresponding elements.
]
_Proof_ (#link(<ref-29>)[]) (ported from formal proof in `zorn_lemma.ac` in my github repo `ac-math` #link(<ref-30>)[])
#indent[
  We can use the partial order $⊂$ of all intervals in $ℝ$ as an intuitive example. An interval chain $B$ means that for every interval $b_1, b_2 in B$, either $b_1 ⊂ b_2$ or $b_2 ⊂ b_1$

  Assume there are no maximal chains, then every chain is extendable

  According to the axiom of choice, an extension function $f$ can be constructed with domain ${B ⊂ A: B " is chain"}$ and range $A$, where $f(B) = b$ is the extension element

  *Def* The "$+1$" or "successor" of a chain $B$ is $"suc"(B) = B ∪ {f(B)}$

  *Def* Comparability between chains $B_1, B_2$ is defined as $B_1 ⊂ B_2$ or $B_2 ⊂ B_1$

  *Def* A set of comparable chains, or a linear set of chains $"Linear_Chains"(A) := {C ⊂ "Chains"(A): forall B_1, B_2 in C, "comparable"(B_1, B_2)}$.

  *Prop* The union $⋃ C$ of elements of a linear chain set $C ⊂ "Linear_Chains"(A)$ is a chain in $A$, i.e., $⋃ C in "Chains"(A)$

  _Proof_
  #indent[
    For each $b_1, b_2 in ⋃ C$, there exist $B_1, B_2$ such that $b_1 in B_1, b_2 in B_2$.

    If $B_1 ⊂ B_2$, then $b_1, b_2 in B_2$ are $<$ comparable

    If $B_2 ⊂ B_1$, then $b_1, b_2 in B_1$ are $<$ comparable
  ]

  *Def* An inductive chain set $C in "Inductive_Chains"(A) := C ⊂ "Chain"(A)$ and satisfies,
  - Contains the zero element or inductive initial element. $Set[A](∅) in C$
  - Contains "+1". For each $B in C$, its successor also $"suc"(B) in C$
  - The union of a linear chain set is also an inductive chain. If $D ⊂ C$ is a linear chain set $D in "Linear_Chains"(A)$, then $⋃ D in C$

    Seems similar to "strong induction" for $ℕ$: (for $k < n$, $f(k)$ is true ==> $f(n)$ is true) ==> for all $n$, $f(n)$ is true

  *Prop* Inductive chain sets exist. The set of all $<$ chains $"Chains"(A)$ satisfies all properties required for $"Inductive_Chains"(A)$

  *Def* Minimal inductive chain set := $⋂ "Inductive_Chains"(A)$

  *Prop* $⋂ "Inductive_Chains"(A)$ is an inductive chain set

  _Proof_ Prove that the properties of inductive chain sets are closed under intersection
  #indent[
    - Zero element.
    #indent[
      $Set[A](∅)$ belongs to every $C in "Inductive_Chains"$, and thus also to $⋂ "Inductive_Chains"(A)$
    ]
    - +1
    #indent[
      For each chain $B in ⋂ "Inductive_Chains"(A)$

      For each $C in "Inductive_Chains"(A)$
      - $B in C$
      - $"suc"(B) in C$
      Thus $"suc"(B) in ⋂ "Inductive_Chains"(A)$
    ]
    - Strong Induction
    #indent[
      Let $D ⊂ ⋂ "Inductive_Chains"(A)$ be a linear chain $D in "Linear_Chains"(A)$

      For each $C in "Inductive_Chains"(A)$
      - $D ⊂ C$
      - $⋃ D ⊂ C$
      Thus $⋃ D ⊂ ⋂ "Inductive_Chains"(A)$
    ]
  ]

  *Def* Comparable chains in the set of minimal inductive chains $"Comparable_Chains"(A) := B in ⋂ "Inductive_Chains"(A)$ and satisfies
  - For each $B' in ⋂ "Inductive_Chains"(A)$, they are chain-comparable $"comparable"(B, B')$

  $"Comparable_Chains"(A) ⊂ ⋂ "Inductive_Chains"(A)$

  *Prop* $"Comparable_Chains"(A)$ is a set of inductive chains
  - Thus $⋂ "Inductive_Chains"(A) ⊂ "Comparable_Chains"(A)$
  - Thus $"Comparable_Chains"(A) = ⋂ "Inductive_Chains"(A)$

  _Proof_
  #indent[
    - Zero element
    #indent[
      The empty chain $Set[A](∅)$ is a comparable chain because $⊂$ other chains, so $Set[A](∅) in "Comparable_Chains"(A)$
    ]
    - $+1$. If $B$ is a comparable chain, then $"suc"(B)$ is also a comparable chain
    #indent[
      *Prop* For $B' in ⋂ "Inductive_Chains"(A)$, if $B' ⊊ B$, then $"suc"(B') ⊂ B$

      _Proof_ $B$ is a comparable chain, so $B, "suc"(B')$ are comparable. $"suc"(B') = B ∪ {f(B)}$. By contradiction, assume $B ⊊ B ∪ {f(B)}$ leads to a contradiction

      Since $"suc"(B) ⊂ B'$ is what we need to prove, we need to bypass it

      *Def* Let $B$ be a comparable chain, $"Suc_Comparable_Chains"(B)$ is defined as $:= B' in ⋂ "Inductive_Chains"(A)$ and satisfies
        - $B' ⊂ B$ or $"suc"(B) ⊂ B'$

      *Prop* $"Suc_Comparable_Chains"(B)$ is an inductive set

      _Proof_
      #indent[
        - Zero element
        - "+1"
        #indent[
          Let $B' in "Suc_Comparable_Chains"(B)$
          - If $B' ⊊ B$, as stated before $"suc"(B') ⊂ B$
          - If $B' = B$, then $"suc"(B') = "suc"(B)$ and thus $"suc"(B) ⊂ "suc"(B')$
          - If $"suc"(B) ⊂ B'$, then $"suc"(B) ⊂ "suc"(B')$
          Thus $"suc"(B') ⊂ B$ or $"suc"(B) ⊂ "suc"(B')$

          Thus $"suc"(B') in "Suc_Comparable_Chains"(B)$
        ]
        - Strong induction
        #indent[
          Let $D ⊂ "Suc_Comparable_Chains"(B)$

          $⋃ D in ⋂ "Inductive_Chains"(A)$

          For $b' in ⋃ D$, take $B' in "Suc_Comparable_Chains"(B)$ such that $b' in B' ⊂ "suc"(B') ⊂ B$

          $"suc"(B') ⊂ B$ or $"suc"(B) ⊂ "suc"(B')$

          $"suc"(B) ⊂ "suc"(B')$ ==> $"suc"(B) ⊂ ⋃ D$

          $forall b' in ⋃ D, (b' in B) or ("suc"(B) ⊂ ⋃ D)$

          $(⋃ D ⊂ B) or ("suc"(B) ⊂ ⋃ D)$

          $⋃ D in "Suc_Comparable_Chains"(B)$
        ]
      ]

      Thus $"Suc_Comparable_Chains"(B) = ⋂ "Inductive_Chains"(A)$

      Back to proving the $+1$ property of $"Comparable_Chains"(A)$, proving $B in "Comparable_Chains"(A) ==> "suc"(B) in "Comparable_Chains"(A)$

      For $B' in ⋂ "Inductive_Chains"(A)$
      - If $not("suc"(B) ⊂ B')$
        Then according to the definition of $B' in "Suc_Comparable_Chains"(B)$, $B' ⊂ B ⊂ "suc"(B)$
      Thus $B' ⊂ "suc"(B)$ or $"suc"(B) ⊂ B'$

      Thus $"suc"(B) in "Comparable_Chains"(A)$
    ]
    - Strong induction
    #indent[
      Let $D ⊂ "Comparable_Chains"(A)$ and $D in "Linear_Chains"(A)$

      For $B' in ⋂ "Inductive_Chains"(A)$
      - If for every $B in D$, $B ⊂ B'$, then $⋃ D ⊂ B'$
      - If there exists a $B in D$ such that $B' ⊂ B$, then $B' ⊂ ⋃ D$
      Thus $⋃ D, B'$ are comparable, hence $⋃ D in "Comparable_Chains"(A)$
    ]
  ]

  *Prop* $"Comparable_Chains"(A)$ is a set of linear chains

  _Proof_ Using
  - the properties of $"Comparable_Chains"(A)$, and
  - $"Comparable_Chains"(A) = ⋂ "Inductive_Chains"(A)$

  Thus, the smallest inductive chain set $⋂ "Inductive_Chains"(A)$ is also a set of linear chains

  *Prop* $⋃ ⋂ "Inductive_Chains"(A) in ⋂ "Inductive_Chains"(A)$

  *Prop* $⋃ ⋂ "Inductive_Chains"(A)$ is a chain

  *Prop* $⋃ ⋂ "Inductive_Chains"(A)$ is a maximal chain

  _Proof_
  #indent[
    Define $M = ⋃ ⋂ "Inductive_Chains"(A)$

    Assume $M$ is not a maximal chain

    $M in ⋂ "Inductive_Chains"(A)$

    By the properties of inductive chain sets, $"suc"(M) in ⋂ "Inductive_Chains"(A)$

    $f(M) in "suc"(M) ⊂ ⋂ "Inductive_Chains"(A)$, so $f(M) in ⋃ ⋂ "Inductive_Chains"(A) = M$

    That is, $f(M) in M$

    This contradicts $f(M) ∉ M$, according to the definition of the chain extension function $f$
  ]
]