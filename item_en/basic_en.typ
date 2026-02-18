#import "../module/module.typ": *
#show: module

For humans, one way to understand natural numbers is counting.

For computers (cf. #link(<logic.typ>)[]), the source of representing natural numbers is periodic circuits. The binary in memory can directly represent numbers. For example, for 3 bits:

#table(
  columns: 2, align: center,
  [binary],[decimal],
  [000],[0],
  [001],[1],
  [010],[2],
  [011],[3],
  [100],[4],
  [101],[5],
  [110],[6],
  [111],[7]
)

A computer's arithmetic unit can perform $+1$ calculations on numbers.

There are also various more complex computer behaviors like "functions that recursively call themselves", which is also a form of counting.

However, the number of elements in the set of natural numbers is infinite, while bits and computer memory are finite. Human memory is also finite.

Problem of infinite space: Reality cannot construct circuits and memory of infinite space. Even if it could, it would be limited by the finite speed of electric current.

But "potential infinity" can be achieved using potentially infinite time.

Assuming the upper limit of memory is infinite but memory usage per cycle is finite, then a program has infinitely possible inputs, which is also a form of potential infinity.

Theoretically, all natural numbers can be counted one by one. However, there are even sets with an #link(<uncountable>)[uncountable] number of elements. They are infinite and cannot be counted. *Example*
- All subsets of $ℕ$, $Subset(ℕ)$ or $ℕ -> {0, 1}$ (i.e., all functions from $ℕ$ to ${0, 1} = "Bool"$)
- All functions from $ℕ$ to itself, $ℕ -> ℕ$

Verifying the correctness of set theory/languages requires a parser, or for mathematical languages, also called a prover.

Motivation for sets/types
#indent[
  - Modularity and multiplicative decomposition to simplify cognition

    *Example* The subject-verb-object SVO in natural language. Suppose there are 10 nouns and 10 verbs. If we "forgot the SVO rules", then verifying the grammatical correctness of a three-word sentence would require at most $10^3 = 1000$ attempts. If we understand and use SVO rules, it would require at most $2^3 = 8$ attempts.

  - If the number of elements in a set is infinite, then the set/type will be conceptually finite, making it possible to state within a finite time
]
Complex mathematical objects are stored in variable names, so humans still need to check the correctness of all complex definitions stored in variable names, which is why code readability is very important

A prover allows humans to reduce from needing to review all steps to reviewing definitions (and checking the compiler's logical code), skipping a large number of detailed proof steps, and still being able to determine the correctness of the proof result

The human brain compiler can omit and supplement omissions, trading temporary efficiency for error-proneness and forgetfulness

In addition to verifying the correctness of proofs, provers can also have other uses, for example, similar to tools in programming languages, they can have friendly and interactive compiler error messages, and LSP (language server protocol) tools

prover 的例子: #link("https://github.com/acornprover/acorn")[acornprover], #link("https://github.com/leanprover/lean4")[lean]

Let's not go into details here for now, just a brief overview

#tag("proposition") #tag("theorem") An unproved proposition/theorem $p$ is a function from type $T$ to $"Bool"$, $p: T -> "Bool"$

```ac
theorem p(x: T) {
  // ...
}
```

$p$ is proven := the prover's calculation result for $p$ always returns true. Can be understood as (usually omitting `= true`)

```ac
forall(x: T) {
  p(x) = true
}
```

Although we have not yet given the construction rules for types

#tag("set") A set $a$ of type $T$ is essentially a function from type $T$ to $"Bool"$, $p: T -> "Bool"$. But using a wrapper layer is sometimes convenient
```ac
structure Set[K] {
    contains: K -> Bool
}
```
A set $a$ of type $K$ is represented as

```ac
a: Set[K]
```

An element $x$ of type $K$ belongs to $a$ is represented as

```ac
a.contains(x)
```

or

```ac
x ∈ a
```

The empty set `empty[T]` corresponds to the constant false function. The universe set `universe[T]` corresponds to the constant true function.

According to the definition of subset in common set theory, it can be written as

$a in Set[K] := a ⊆ K$

#image("../image/subset.png", width: 30%)

Equality $=$ can be understood as a binary Boolean function

`equal(x: T, y: T) -> Bool`

Satisfies transitivity

`a = b and b = c implies a = c`

- forall, exists (all, exist)
#indent[
  ```ac
  forall(a: T) {
    // ...
  }
  exists(a: T) {
    // ...
  }
  ```
  Or written as
  $
    And_(a ∈ A) p(a) "  " forall a ∈ A, p(a) \
    Or_(a ∈ A) p(a) "  " exists a ∈ A, p(a)
  $
]
- inference (推导)
#indent[
  ```ac
  p implies q
  ```
  Or written as $p => q$
]
- equivalent
#indent[
  ```ac
  p = q
  ```
  Or
  ```ac
  p iff q
  ```
  or
  ```ac
  (p implies q) and (q implies p)
  ```
  or written as $p <==> q$
]
The following calculation results can be proven to be equal by exhaustion
$
  not (not p) &<==> p \
  not (p and q) &<==> (not p) or (not q)
$
Similarly, to represent the case of "infinite elements", define the De Morgan law for infinite elements
$
  not (And_(a ∈ A) p(a)) &<==> Or_(a ∈ A) not p(a) \
  not (forall a in A, p(a)) &<==> exists a in A, not p(a)
$
Similar to the redundancy of $and,or,not$, set/type construction rules may also have redundancy, or many equivalent definitions

follow #link(<bool-algebra>)[various rules for bool in finite cases], define

#tag("commutative-forall-exists")
#indent[
  $
    And_(a ∈ A) And_(b ∈ B) p(a,b)
    <==> And_(b ∈ B) And_(a ∈ A) p(a,b)
  $
  same for $Or$
]
#tag("distributive-forall-exists")
#indent[
  (Need to assume the existence of function $A -> B$?)
  $
    And_(a ∈ A) Or_(b ∈ B) p(a,b)
    <==> Or_(b(a) ∈ B(a)) And_(a ∈ A) p(a,b(a)) \

    Or_(a ∈ A) And_(b ∈ B) p(a,b)
    <==> And_(b(a) ∈ B(a)) Or_(a ∈ A) p(a,b(a))
  $
]
Natural language examples of derivation
#indent[
  If it rains, I won't go out \
  It's raining \
  So I won't go out
]
This example is similar to a conditional branch
```rs
let rain : bool;
let out : bool;
match (rain) {
  true => out = false,
  false => out = undefined,
};
```
Similar to the if block in common programming languages, it automatically skips the execution area when the condition is not met
```rs
if (rain = true) {
  out = false
}
```
For mathematical language, that is
- prover reads $p,q$
- prover reads $p => q$ is true (possibly from definition)
- prover reads $p$ is true
- prover assigns the boolean value of $q$ to true based on this condition (from memory)

If "void implication" similar to skipping an if block is accepted, then there will be $(p => q) = (not p) or q$

$p <=> q := (p => q) and (q => p)$ and find that $p <=> q$ is $p = q$

#tag("reverse-inference") Reverse inference. If the result is that I went out, then it must not be the result of rain. If the result of the conditional branch is `out = true`, this is not the result of `rain = true`. Since the boolean value of an ideal binary computer must be one or the other, it can only be the result of `rain = false`. This can be written as a conditional branch
```rs
match (out) {
  true => rain = false,
  false => rain = undefined,
};
```
Mathematically, reverse inference is written as the formula $not q => not p$, and defined as equivalent to $p => q$

#tag("natural-number")
#indent[
  natural number $0,1,2,...$

  natural number set $ℕ$ is an inductive type

  ```ac
  inductive ℕ {
    0
    suc(ℕ)
  }
  ```

  Computers cannot handle infinity. To enable computers to represent the set of natural numbers with finite characters and memory, we treat $n, ℕ$ and the $+1$ function as finite symbols in memory addresses, such that
  - $0 in ℕ$
  - $n in ℕ ==> n + 1 in ℕ$
  is equivalent to telling the computer how to continuously $+1$ using an instruction stream? This also relates to induction.

  The cost of finite characters is potentially infinite time, always relying on counting or periodic circuits.
]
definition
  - $a != b := not (a = b)$
  - $a ∉ A := not (a ∈ A)$

  Since "definition language expansion" is long, it is usually abbreviated to "*definition*" "*def*"

#tag("product")
#indent[
  #image("../image/product.png", width: 30%)

  let $A_0 ,…, A_n$ be set, then $A_0 × ⋯ × A_n$ is set
  $
    x ∈ A_0 × ⋯ × A_n &:= And_(i in {0 ,…, n}) Or_(a in A_i) (x, i) = a
  $
  The expression $(x, i)$ is a product data structure.

  *Abbreviation* $A × A = A^2$. in finite case, number of elements $abs(product_1^n A(i)) = product_1^n |A(i)|$
]
#tag("sum")
#indent[
  #image("../image/sum.png", width: 30%)

  let $A_0 ,…, A_n$ be set then $A_0 + ⋯ + A_n$ is a set
  $
    x ∈ A_0 + ⋯ + A_n &:= Or_(i in {0 ,…, n}) Or_(a in A_i) x = (i, a)
  $
  also known as tagged union

  in finite case, number of element $abs(sum_1^n A(i)) = sum_1^n |A(i)|$
]
#tag("function")
#indent[
  #image("../image/map.png", width: 30%)

  let $A,B$ be set. Define function space $A -> B$, the rule for map $f$ is
  $
    f ∈ (A -> B) &:= And_(a ∈ A) Or_(b in B) (f,a) = b
  $
  or
  $
    f ∈ (A -> B) &:= And_(a ∈ A) f(a) ∈ B \
    &:= forall a ∈ A, f(a) ∈ B
  $
  denoted by $f : A -> B$

  denoted by $f ∈ B^A$. in finite case, number of elements $|B^A| = |B|^(|A|)$

  In a prover, the definition and behavior of a function are: input type + output type + if the same input is checked, the output is specified to be the same

  *Prop* $C^(A + B) ≃ C^A × C^B, C^(A × B) ≃ (C^B)^A$. $A -> (B -> C)$ can correspond to $(A × B) -> C$
]

#tag("subtype")
#indent[
  Adding a proposition to a type and using logic `and` can yield a "subtype". It's similar to a subset, but uses dependent types to add a layer of wrapper.

  ```ac
  define(a: Set[K]) -> Type {
    structure {
      val: K
    } constraint {
      a.contains(val)
    }
  }
  ```

  If a theorem about type $T$ is proven, sometimes, it's easy to see that it holds for certain subtypes. But for a computer, the theorem might need to be rewritten. One way to mitigate this tedium is to use typeclasses to represent structural types and their properties, so that theorems are based on typeclasses, thus increasing reuse and reducing repetition.
]

function space introduces higher-level infinity

Something counter-intuitive at first glance is that we _seem_ to know all $S in Set ℕ$ or all $f : ℕ -> ℕ$, yet we cannot count them #link(<cardinal-increase>)[] #link(<uncountable>)[]. But, what exactly does "knowing all $S in Set ℕ$" mean? In fact, trying to consider the problem of "finding an infinite subset of $ℕ$ in a general way" will reveal that it's not simple.

Similarly, although countable can already define some real numbers e.g. $sum 1/n! = e$, if not using $Set ℕ$ or $ℕ -> ℕ$, only countable constructions cannot obtain all $ℝ$

#tag("subset")
#indent[
  #image("../image/subset.png", width: 30%)

  $ Subset(A) in Set T \ S in Subset(A) := S subset A $

  Since $x in ∅_T$ false, according to vacuous implication, $∅_T in Subset(A)$

  denoted by $2^A$. in finite case, number of elements $|2^A| = 2^(|A|)$

  let $S, S' in Subset(A)$

  $S = S' <=> (S subset S') and (S' subset S)$

  Or if #link(<set-with-element-in-a-type>)["construct set theory with type theory"], then the definition of equality of sets reduce to the definition of equality of functions $f,g: T -> "Bool"$
]
#let A = c-bf("A",rgb("#0056e1"))

let $#A in Set(Set(T))$

#tag("union")
#indent[
  #image("../image/union.jpeg", width: 30%)

  $
    x ∈ A ∪ A' &:= (x ∈ A) or (x ∈ A') \
    \
    x ∈ ⋃ #A &:= Or_(A ∈ #A) x ∈ A \
    &:= exists A ∈ #A, x ∈ A
  $

  $A ∪ A = A$
]
#tag("intersection")
#indent[
  #image("../image/intersection.jpeg", width: 30%)
  $
    x ∈ A ∩ A' &:= (x ∈ A) and (x ∈ A') \
    \
    x ∈ ⋂ #A &:= And_(A ∈ #A) x ∈ A \
    &:= forall A ∈ #A, x ∈ A
  $

  $A ∩ A = A$
]
Note that the elements of union and intersection are restricted to type $T$. In ordinary set theory, if one tries to define the intersection of an empty family of sets, if not restricted to type $T$ (or restricted to a certain set), then due to the vacuous argument, the result of the intersection of an empty family of sets is the universal set $Set$, and the universal set $Set$ is not a set, which violates the rules of set theory construction

The intuition that the intersection of an empty family of sets is the universal set: because intersection is decreasing with respect to $⊆$, thus the intersection continuously increases towards the empty family of sets

Based on the index mapping $A in (I -> Set T)$, infinite versions of product, sum can be defined

- #tag("product-index")
#indent[
  $x in product_(i in I) A(i) := And_(i in I) Or_(a in A(i)) (x, i) = a$

  product component
  $
    map(product_(i in I) A(i), A(i), x, (x,i) = a)
  $
  or
  $
    map(product_(i in I) A(i), A(i), x, x(i))
  $
]
- #tag("sum-index")
#indent[
  $x in sum_(i in I) A(i) := Or_(i in I) Or_(a in A(i)) x = (i, a)$

  sum component
  $
    map(A(i), sum_(i in I) A(i), a, (i, a) = x)
  $
]
#tag("hierarchy-order-of-set")
#indent[
  The type/set constructed above is called zero (hierarchy) order type/set

  $A ∈ Type$ or $A ∈ Type 0$

  We can assume

  $Type 0 ∈ Type 1$

  Again using type construction rules, what is obtained is also defined as belonging to $Type 1$

  Can also continue

  $Type 1 ∈ Type 2$. And so on ...

  *Example*
  - $Type × Type ∈ Type 1$
  - $(Type -> Type) ∈ Type 1$
  - $"Group" ∈ Type 1$
    ```ac
    typeclass G: Group {
      mul(g: G, h: G) -> G
      inverse(g: G) -> G
      // property of group
    }
    ```

  $Type 0, Type 1, ...$ looks like the set of natural numbers $ℕ$, so should we assume a new hierarchy $Type ℕ$? Then for $Type ℕ$, continue to use the type construct rule ... (will it lead to needing infinite language rules?)

  $Type n$ belongs to $Type n+1$ and belongs to $Type ℕ$, but these two "belongs to" language rules are different
]
#tag("universal-type")
#indent[
  The problem of universal-type, or the problem of type of every type

  What is easy to overlook here is, what does "type" in "type of every type" refer to? What does the so-called "type" mean?

  Assuming the program defines a concept of universal-type, and universal-type can in turn be used to construct "type", then universal-type refers to itself in the construction rules of "type", leading to non-terminating languages or programs.

  *Example* #tag("Russell-paradox")
  #indent[
    defined using set theory rules

    $ A := {x ∈ "universal-set" : not (x ∈ x)} ∈ "universal-set" $

    Then try to calculate the boolean of another proposition $A in A$. Since $A in "universal-set"$ = `true`, the prover only needs to calculate the boolean of $not (A in A)$, then finds `not`, so it tries to calculate the boolean inside `not`, but this goes back to calculating the boolean of $A in A$, entering a circuit deadlock.
  ]
  *Example* #tag("self-referential-paradox") Self-referential paradox. "This sentence is false"
  #indent[
    ```rs
    this_sentence_is_false : bool = false;
    loop {
      match (this_sentence_is_false) {
        false => this_sentence_is_false = true,
        true => this_sentence_is_false = false,
      }
    }
    ```
  ]
]
#tag("dependent-distributive")
#indent[
  let $#A$ be set of sets, let $A in "Map"(I, #A)$, and let $A(i)$ be set of sets, index by its elements $x(i)$

  union & intersection

  $ ⋂_(i ∈ I) ⋃_(x(i) in A(i)) x(i) = ⋃_(x ∈ product_(i in I) A(i)) ⋂_(i ∈ I) x(i) $

  $ ⋃_(i ∈ I) ⋂_(x(i) in A(i)) x(i) = ⋂_(x ∈ product_(i in I) A(i)) ⋃_(i ∈ I) x(i) $

  draft of proof: 展开, 使用 #link(<distributive-forall-exists>)[]

  sum & product

  $ product_(i ∈ I) sum_(x(i) ∈ A(i)) x(i) = sum_(x ∈ product_(i in I) A(i)) product_(i ∈ I) x(i) $
]
#tag("set-minus") #image("../image/set-minus.jpeg", width: 30%)

$A ∖ B := {x ∈ A : x ∉ B}$. if $B ⊆ A$ then define $B^∁ := A ∖ B$

#tag("symmetric-set-minus") #image("../image/set-symmetric-minus.png", width: 30%)

$A Δ B := (A ∖ B) ⊔ (B ∖ A) = (A ∪ B) ∖ (A ∩ B)$