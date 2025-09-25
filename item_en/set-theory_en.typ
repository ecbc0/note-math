#import "../module/module.typ": *
#show: module

For people, one way to understand natural numbers is counting 

For computers (cf. #link(<logic.typ>)[]), the ways to represent natural numbers are
- Periodic circuit
- Arithmetic component $+1$
- Binary 
- Function that call itself

However, the number of elements in the set of natural numbers is infinite, while bits and computer memory are finite. Human memory is also finite

The problem of infinite space: Reality cannot build circuits and memory with infinite space. Even if it could, it would be limited by the finite speed of electricity.

But potentially infinite time can be used to achieve "potential infinity"

Assuming that the upper limit of memory is infinite but the memory occupied in each cycle is limited, the program has infinite possible inputs, which is also a potential infinite

However, there are even sets with an #link(<uncountable>)[uncountable] number of elements. *Example* 
- the set of all subset of $ℕ$, $Subset(ℕ)$
- all function from $ℕ$ to itself, $ℕ -> ℕ$

Verifying the correctness of set theory language requires a parser, memory data structures, and functions. The implementation of the generated computer instruction stream is not the focus of this goal.

Motivation for sets/types
#indent[
  - Modularization and multiplicative decomposition to simplify cognition
  
    *Example* Natural language's Subject-Verb-Object SVO (subject, predicate, object). Suppose there are 10 nouns and 10 verbs. Suppose we "forget the SVO rule", then verifying the grammatical correctness of a three-word sentence requires at most $10^3 = 1000$ times. If we understand and use the SVO rule, it requires at most $2^3 = 8$ times.

  - If the number of elements in a set is infinite, then the set/type limits the concept, making it possible to say it in a finite amount of time
]
Complex set theory objects, propositions are stored in variable names, so humans still need to check all the complex definitions stored in variable names, so readability is very important

Parser or proof assistants can allow humans to reduce from reviewing all steps to reviewing definitions (and check all the code logic of compiler), skipping a large number of detailed proof steps, and then determine the correctness of the proof result. This is like the case of APIs

The human brain compiler can omit and supplement omissions, trading temporary efficiency for error-proneness and forgetfulness

Assistance also has other functions, like the case of, Programming before the era of IDE/LSP/friendly-and-interactive-compiler-error-messages/documentation was painful. The organization, structuring and reuse of data and information were not done well, and the powerful capacity and time of memory of computer were not used well.

Example of proof assistant: #link("https://github.com/acornprover/acorn")[acornprover], in development. Not yet implement set theory ... My attitude is that even if there may not be a good underlying implementation for the time being, we can turn to looking for easy-to-use syntax and convenient additional tools (e.g. LSP).

#tag("proposition") proposition is a special (string, bool) product struct computer data structure. For mathematical language, the string field uses special construction rules to restrict it, and this restricted version of the string is called a formula

Because we cannot directly judge the truth or falsehood of a guess, we need a language with undefined truth values.

from proposition to unknown proposition, its truth value part is modified to (bool, unknow) sum struct

*Abbreviation* true proposition and proposition are often used interchangeably

Many propositions cannot be automatically derived by computers, and humans need to find possible paths, input them into the computer for verification, or develop more new automated proof methods.

We will assume some initial propositions that do not need to be proven. And assume rules for constructing new propositions using existing propositions.

*Abbreviation* Use the same symbol $ϕ$ for formula and proposition, "$ϕ$ is true/false/unknow", $ϕ = 0\/1\/?$

#tag("formula") 
#indent[
  - in 
  #indent[
    let symbol $a,A$ be type of math object, then $a in A$ is a formula
    
    $a in A$ is similar to `value : type` or `variable_name : type` in programming language
    
    symbol $in$ is not math object 
  ]
  - equal 

  #indent[let $a,b$ be object, then $a = b$ is a formula]

  - and, or, not 
  #indent[
    let $p,q$ be formula, then 
    $ 
      p and q \ 
      p or q \ 
      not q 
    $ 
    is formula
  ]
  - forall, exists 
  #indent[
    let $p(a)$ be formula built with $a$ i.e. read $a ∈ A$ in memory, used by some specific function call, then
    $
      And_(a ∈ A) p(a) " or " forall a ∈ A, p(a) \
      Or_(a ∈ A) p(a) " or " exists a ∈ A, p(a)
    $
    is formula
  ]
  - inference $p => q$, equivalent $p <=> q$ is formula
]
#tag("equivalent") $<==>$ 
#indent[
  Some equivalent uses. For finite computer data, the following calculation results can be exhaustively proven to be equal
  $ 
    not (not p) &<==> p \
    not (p and q) &<==> (not p) or (not q)
  $
  Similarly, in order to represent the case of "infinite elements", define language expansion or specify language transformation. For example, De Morgan law of infinite elements
  $
    not (And_(a ∈ A) p(a)) &<==> Or_(a ∈ A) not p(a) \
    "or" not (forall a in A, p(a)) &<==> exists a in A, not p(a)
  $
  The concept of "infinity" is limited by using the symbol string $a in A$ of #link(<declare-element-of-set>)[]
]
formula, proposition is a special data structure in memory. It can be considered that math_object, formula, proposition are the type of programming language

Many propositions are equivalent, so we can consider the "quotient" type of propositions, but the possibility of equivalence is infinite, whether it is possible to have an exhaustive algorithm, first depends on whether it is #link(<countable>)[] ...

Similar to the redundancy of $and,or,not$, set theory construction rules may also have redundancy, or there are many equivalent definitions

Specify (finite)

$=$ transitive := $(a = b) and (b = c) ==> (a = c)$

$<=>$ transitive := $(p <=> q) and (q <=> r) ==> (p <=> r)$

follow #link(<bool-algebra>)[various rules of bool in the finite case], define language transformation rules: let $p(a,b)$ is formula built with independent/parallel $a,b$ i.e. independent/parallel in memory read and used by specific cuntion, then

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
  $ 
    And_(a ∈ A) Or_(b ∈ B) p(a,b) 
    <==> Or_(b ∈ B) And_(a ∈ A) p(a,b) 
  $
]
Natural language example of derivation
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
similar to if block in many programming language, automatically skips the execution area when the condition is not met
```rs
if (rain = true) {
  out = false
}
```
#tag("inference") For mathematical language, that is
- The compiler reads the formula $p,q$
- The compiler reads the formula $p => q$ is true proposition (may be custom)
- The compiler reads the formula $p$ is true proposition
- Then the language rule setting is that the compiler, according to this condition (from memory), assigns the bool value of the formula $q$ to true i.e. sets $q$ is true proposition

#tag("proof") The proof is that compiling passes $p => q$ is true proposition

Although I am confused by this type of vacuous argument like $And_(x in 2^A) (x in ∅_(2^A) => P(x))$ is always true proposition, there is no reason to abandon defining the intersection of local empty set families for a certain set $A$. I can only accept it from a certain perspective, for example, treating it as true without a constructive proof, thus automatically skipping it, or skipping over an if block in a programming language without generating an error ... 

If this type of vacuous implication is accepted, then $(p => q) = (not p) or q$

$p <=> q := (p => q) and (q => p)$ and find that $p <=> q$ is $p = q$

#tag("reverse-inference") Reverse inference. If the result is that I went out, then it is definitely not the result of rain. If the result of the conditional branch is `out = true`, this is not the result of `rain = true`. Since the bool value of an ideal binary computer must be one of two, it can only be the result of `rain = false`. This can be written as a conditional branch
```rs
match (out) {
  true => rain = false,
  false => rain = undefined,
};
```
Mathematically, reverse inference is written as formula $not q => not p$, and defined equivalent to $p => q$

#tag("reverse-proof") Proof by contradiction is that compiling passes $not p => not q$ is true proposition

Deductive proof also requires syllogism

+ All living things die \
+ Humans are living things \
+ Therefore, all humans will die \

Where "all living things die" is a specially constructed proposition

#tag("syllogism") Syllogistic reasoning is a language rule
- The compiler reads the formula $(forall a in A, p(a))$ is true proposition (possibly from a definition e.g. #link(<union>)[])) 
- The compiler reads the declaration let $a' in A$ is true proposition
- The compiler reads the formula $p(a')$
- Then the compiler sets $p(a')$ is true proposition according to this condition (from memory)

That is, the compiler implements the specific construction of data (finite) according to the declaration $(forall a in A, p(a))$ (possibly "infinite")

Or understand it as, this rule and behavior are defining the concept of $(forall a in A, p(a))$ itself

It is also usually written as the equivalent rule let $a' in A$, then the special inference formula $(forall a in A, p(a)) ==> p(a')$ is always true proposition. This form is often used in what #link(<proof>)[previously] said, "proving is compiling passes $p => q$ is true proposition"
 
Reverse syllogism: let $a' ∈ A$, then the equivalent formula $not p(a') ==> not (forall a ∈ A, p(a)) "or" exists a in A, not p(a)$  is true proposition

We may never know whether a proposition of bool unknow can be constructively proved, i.e. compiled successfully in a limited number of steps

Where does the target proposition come from? It may be related to a model of the real world

The proof requires expanding a large number of sentences, although computers are very fast at processing strings. In any case, performance optimization? Use only when needed (lazy load)? Parallel (parallel) when two propositions are not interdependent? Assume already proven results (incremental compilation)? 

A proposition has many proofs with different runtime data flow

The following discusses math-object-construct-rule *alias* set-theory

#tag("natural-number") $ℕ$ 
#indent[
  natural number $0,1,2,...$ and natural number set $ℕ$ is object. $0,1,2,... ∈ ℕ$ is true proposition

  However, computers cannot handle infinity. In order for computers to represent the natural number set using a finite number of characters and memory, $n,ℕ$ and the $+1$ function are treated as finite symbols in memory addresses, and the following is defined as a true proposition:
  - $0 ∈ ℕ$
  - $n ∈ ℕ ==> n + 1 ∈ ℕ$
  Is it equivalent to telling the computer how to continuously $+1$ with an instruction stream? Also related to induction.

  The cost of finite characters is potentially infinite time, always relying on counting or periodic circuits.
]
Definition language expansion
  - $a != b := not (a = b)$ 
  - $a ∉ A := not (a ∈ A)$

  Since "definition language expansion" is long, it is usually abbreviated to "*definition*" "*def*"

  In fact, the symbol $=$ is often used to represent definition language expansion or specified language transformation. The $=$ for specific natural numbers can be directly defined as comparing memory values using computer circuits. 

#tag("declare-element-of-set") 
#indent[
  If $A$ is non empty $A != ∅$ (this information comes from the definition of $A$), we can define symbol $a$ and construct true proposition (let) $a ∈ A$ 

  Finite declare statements can be constructed.
]
#tag("product") 
#indent[
  #image("../image/product.jpeg", width: 30%)

  let $A_0 ,…, A_n$ be set, let $A_0 × ⋯ × A_n$ is set
  $
    x ∈ A_0 × ⋯ × A_n &:= And_(i in {0 ,…, n}) Or_(a in A_i) (x, i) = a
  $
  The data structure meaning of the expression $(x, i)$ in memory should be clear.

  *Abbreviation* $A × A = A^2$. in finite case, number of elements $abs(product_1^n A(i)) = product_1^n |A(i)|$
]
#tag("sum") 
#indent[
  #image("../image/sum.jpeg", width: 30%)

  let $A_0 ,…, A_n$ be set then $A_0 + ⋯ + A_n$ is a set
  $
    x ∈ A_0 + ⋯ + A_n &:= Or_(i in {0 ,…, n}) Or_(a in A_i) x = (i, a) 
  $
  Also known as tagged union

  in finite case, number of element $abs(sum_1^n A(i)) = sum_1^n |A(i)|$ 
]
#tag("function") 
#indent[
  #image("../image/map.jpeg", width: 30%)

  let $A,B$ be set. The rule for defining the function space $A -> B$ and mapping $f$ as a math object is
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

  In a prover, the definition and behavior of a function are: input type + output type + if the same input is checked, the output is specified to be the same.

  *Prop* $C^(A ⊔ B) ≃ C^A × C^B, C^(A × B) ≃ (C^B)^A$. Changing $A -> (B -> C)$ to $(A × B) -> C$ is called normalization of function.
]
#tag("set-with-element-in-a-type") For type $T$, a set whose element type belongs to $T$ is written as $Set T$, corresponding to the $in$ function $T -> "Bool"$. The empty set $∅_T$ corresponds to the constant false function. The universal set $"U"_T$ (usually written simply as $T$) corresponds to the constant true function. Let $A,B in Set T$, define $A subset B := And_(x in T) (x in A => x in B)$

#tag("top-level-set") *alias* #tag("type") Sets constructed by the above rules are called "top-level-set" or "type". Sets constructed by the following rules are general sets, with a clear type. For a prover, the language rules of both can be multiplicatively decomposed, also known as "implementing set theory with type theory"

function space introduces higher-level infinity

One thing that is counter-intuitive at first glance is that we _seem_ to know all $S in Set ℕ$ or all $f : ℕ -> ℕ$, but cannot count them #link(<cardinal-increase>)[] #link(<uncountable>)[]. But what exactly does "knowing all $S in Set ℕ$" mean? In fact, if you try to consider the problem of "finding an infinite subset of $ℕ$ in a general way", you will find that it is not simple.

Similarly, although countability can already define some real numbers, e.g. $sum 1/n! = e$, without the aid of subset or map, countable construction cannot obtain all $ℝ$

The following assumes that sets belong to a certain type

Expand according to type definition

  - $And_(x in A) P(x) := And_(x in T) (x in A => P(x))$
  - $Or_(x in A) P(x) := Or_(x in T) (x in S) and P(x)$

#tag("subset") 
#indent[
  #image("../image/subset.jpeg", width: 30%)
  
  $ Subset(A) in Set T \ S in Subset(A) := S subset A $

  Since $x in ∅_T$ is false, according to vacuous implication, $∅_T in Subset(A)$

  denoted by $2^A$. in finite case, number of elements $|2^A| = 2^(|A|)$

  let $S, S' in Subset(A)$
  
  $S = S' <=> (S subset S') and (S' subset S)$
]
#let A = c-bf("A",rgb("#0056e1"))

let $#A in Set(Set(T))$

#tag("union")  
#indent[
  #image("../image/union.jpeg", width: 30%)

  define object $⋃ #A$ and language expansion
  $ 
    x ∈ A ∪ A' &:= (x ∈ A) or (x ∈ A') \ 
    \
    x ∈ ⋃ #A &:= Or_(A ∈ #A) x ∈ A \ 
    &:= exists A ∈ #A, x ∈ A
  $
  is non-emtpy unless $forall A ∈ #A, A = ∅_T$ or $#A = ∅(Set(T))$

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
  According to vacuous implication $#A = ∅(Set(T)) => ⋂ #A = T$

  $A ∩ A = A$
]
#tag("why-type-theory")
#indent[
  Why limit union and intersection to types? Because, since there is no reason not to define the intersection of an empty family of sets and consider it also a set, however, if not limited to types

  - If no restrictions are placed on the elements in the set $#A$, then due to the vacuous argument, the intersection of an empty family of sets results in the universal set $Set$, and the universal set $Set$ is not a set, which violates the construction rules of set theory.

  - If the elements in the set $#A$ are restricted to an existing set $B$ or (in mainstream set theory) $⋃ #A$, then the intersection of an empty family of sets produces a local universal set that is $B$ or $⋃ #A$. However, the elements in the set $#A$ may belong to a smaller or larger set, which causes the universal set to also change, making $⋂ #A$ unstable and without a clear result. This still violates the construction rules of set theory.

  - In set theory, restricting the intersection of a family of sets $⋂ #A$ to be within the union of that family $⋃ #A$, has a certain logic to it: it is the minimal common container set for all elements of the sets in $#A$. However, this makes the definition of intersection dependent on the definition of union, and this dependency breaks the symmetry

  However, every set does have a unique type, thus these problems will be solved.
]
According to the index mapping $A in (I -> Set T)$, infinite versions of product and sum can be defined.

- #tag("product-index") 
#indent[
  $x in product_(i in I) A(i) := And_(i in I) Or_(a in A(i)) (x, i) = a$

  product component
  $ 
    dmat( delim: #none ,
    product_(i in I) A(i), ⟶, A(i) ;
    x, ⟿, (x,i) ,=, a
    ) 
  $ 
  or 
  $
    dmat( delim: #none ,
    product_(i in I) A(i), ⟶, A(i) ;
    x, ⟿, x(i) 
    )     
  $
]
- #tag("sum-index") 
#indent[
  $x in sum_(i in I) A(i) := Or_(i in I) Or_(a in A(i)) x = (i, a)$

  sum component
  $ 
    dmat( delim: #none ,
    A(i), ⟶, sum_(i in I) A(i) ;
    a, ⟿, (i, a) ,=, x
    ) 
  $
]
Other uses of $=$
  + Alias for identifier in memory
  + Function return value in memory. So $1 + 1 = 2$ should be understood as the return value of the add function is $2$.

#tag("compare-math-lang-with-programming-lang") 
#indent[
  What's the difference between `∈` in mathematical language and `:` in programming language?

  Mathematical language and programming languages are very similar, both require a compiler to check a series of language rules.

  Some differences:

  - General practical programming languages already use recursion, but mathematical language treats the recursive instruction itself as a type. Or calls the recursive instruction, as, the recursive definition of natural numbers, or, an instruction to generate natural numbers. This allows us to discuss general natural numbers without generating specific natural numbers (generated by periodic circuits of computers or human brains).

  - General practical programming languages (without natural number sets and dependent types) only use finite `and` and `or` to generate new types, such as `struct`, `enum`. This relies on the computer's ability to represent a specific number of natural numbers. On the other hand, mathematical language has infinite versions of `and` and `or` to generate new types (or sets), such as `forall`, `exists`, which are not represented like finite `and` or `or`. And "infinite" can even go beyond countable natural numbers.

  At the bottom, mathematical language or programming language both can be represented by periodic circuits, memory bits, and logic gates.

  Mathematical language starts with natural numbers (& propositional calculus & set theory rules). For example, real numbers are defined based on natural numbers. However, it still needs the concept of "variables", such as `a` in `let a ∈ A`.

  General practical programming languages start with built-in types. From a conceptual, cognitive, and application perspective, it is best to regard them as primitive concepts or structures of bits in computer memory, rather than constructing them using mathematical natural numbers.
]
#tag("hierarchy-order-of-set")
#indent[
  The set constructed above is called a zero (hierarchy) order set, or zero order type

  $A ∈ Type$ or $A ∈ Type 0$

  then let $Type 0$ be math object, in first order Type

  $Type 0 ∈ Type 1$

  Using object construction rules again, what we get is also defined as belonging to $Type 1$ 

  Anyway, we can always construct such a language with types and bool and various rules in the compiler
  
  let $Type 1$ be math object, $Type 1 ∈ Type 2$. And so on ...

  *Example* 
  - $Type × Type ∈ Type 1$
  - $(Type -> Type) ∈ Type 1$
  - $"Group" ∈ Type 1$ \
    $ 
    & (G,m) ∈ "Group" := { \
    & quad G ∈ Type \
    & quad m ∈ Type \
    & quad "property-group-multiplication"(G,m) \
    & quad ("e.g. " m ∈ (G^2 -> G))  \  
    & } 
    $
    Can be divided into multiple sentences, so that it is convenient to add/remove properties to get different structs

    (Actually $"Group" in Type 1$ is not explicitly necessary, just as the mainstream set theory does not explicitly require $Set 0$)

  $Type 0, Type 1, ...$ looks like the set of natural numbers $ℕ$, so should we assume a new hierarchy $Type ℕ$ again? Then for $Type ℕ$, continue to use the object construct rule ... (Will this result in infinite language rule?)

  $Type n$ belong to $Type n+1$ and belong to $Type ℕ$, but two "belong" have different language rule 

  $Type 0$ language is potentially infinite, and so is hierarchy-order-of-Type language. Of course most of programming language is potentially infinite

  Normally we do not need explicit hierarchy of Type. For example, we just need to construct the concrete type like $"Group"$, but not need to mention that the type $"Group"$ is a element in type $Type 1$ 
]
#tag("universal-type")
#indent[
  The universal-type problem, or the type of every type problem

  One thing that's often overlooked here is what the "type" in "type of every type" refers to? What does "type" mean? A binary bool function or a binary predicate logic proposition?

  From a constructive perspective, language rules are needed to define a "type". However, to define "type of every type", require knowing all the language rules for constructing "types". Even if we know about logic gates, periodic circuits, and memory, we don't truly know all the language rules or programs unless we actually write them ...

  Even without considering the "type of every type", self-reference can still arise. In the recursive descent construction rules of mathematical languages, the `math_object` type does not participate in the construction rules. If a type `T` self-referentially participates in the construction rules, then the language or program is non-terminal. For example, `T : T` , even though the memory used in each cycle is limited, the program cannot be completed runing in finite time. Note that, general programming languages also can have infinite loops in program (by different reason)

  Suppose a program defines a The concept of universal-type, and universal-type can be used to construct "type", then universal-type self-referentially participates in the construction rules of "type", resulting in a non-terminal language or program

  *Example* #tag("Russell-paradox")
  #indent[
    Defined using set theory rules

    $ A := {x ∈ "universal-set" : not (x ∈ x)} ∈ "universal-set" $

    Then let the compiler calculate the boolean value of the proposition $A in A$. Since $A in "universal-set"$ = `true`, the compiler only calculates the boolean value of $not (A in A)$, and then finds the `not` function, so it calculates the boolean value inside `not`, but this goes back to calculating the boolean value of $A in A$, and the compiler may choose to enter a circuit dead loop.

    For finite sets, $x ∉ x$, or it is impossible to judge $x in x$, e.g. ${1} ∉ {1}$, because ${1} ≠ 1 in {1}$, or the proposition $x in 1$ is not defined as a true proposition.

    If we consider the Type hierarchy, for $A := {x ∈ Type 0 : not (x ∈ x)}$ it is very likely that $A in Type 1 ∖ Type 0$ and thus $A ∉ A$ because the first condition $A in Type 0$ does not satisfy

    It seems that when we want to use "universal-set" or "universal-type", what we want to use is a higher-order type rule of the current type rule.
  ]
  *Example* #tag("self-referential-paradox") "This sentence is false"
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
    Or use layering to bypass the self-referential paradox `(this_sentence = false) = true`. It is considered that they are different sentences and judgments, and that it cannot refer to itself.
  ]
]
#tag("dependent-distributive") 
#indent[
  let $#A$ be set of sets, let $A in "Map"(I, #A)$, and let $A(i)$ be set of sets, index by its elements $x(i)$

  union & intersection

  $ ⋂_(i ∈ I) ⋃_(x(i) in A(i)) x(i) = ⋃_(x ∈ product_(i in I) A(i)) ⋂_(i ∈ I) x(i) $

  $ ⋃_(i ∈ I) ⋂_(x(i) in A(i)) x(i) = ⋂_(x ∈ product_(i in I) A(i)) ⋃_(i ∈ I) x(i) $

  sum & product

  $ product_(i ∈ I) sum_(x(i) ∈ A(i)) x(i) = sum_(x ∈ product_(i in I) A(i)) product_(i ∈ I) x(i) $

  draft of proof: expand, use parallel distributive cf. #link(<distributive-forall-exists>)[]
]
#tag("set-minus") #image("../image/set-minus.jpeg", width: 30%)

$A ∖ B := {x ∈ A : x ∉ B}$. if $B ⊂ A$ then define $B^∁ := A ∖ B$

#tag("symmetric-set-minus") #image("../image/set-symmetric-minus.jpeg", width: 30%)

$A Δ B := (A ∖ B) ⊔ (B ∖ A) = (A ∪ B) ∖ (A ∩ B)$ 