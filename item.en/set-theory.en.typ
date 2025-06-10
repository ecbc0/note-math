#import "/module/module.typ": *
#show: module

For people, one way to understand natural numbers is counting 

For computers (cf. #link(<logic.typ>)[]), the ways to represent natural numbers are
- Periodic circuit
- Arithmetic component $+1$
- Binary 

However, the number of elements in the set of natural numbers is infinite, while bits and computer memory are finite. Human memory is also finite

The problem of infinite space: Reality cannot build circuits and memory with infinite space. Even if it could, it would be limited by the finite speed of electricity.

But potentially infinite time can be used to achieve "potential infinity"

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

Parser or proof assistants can allow humans to reduce from reviewing all steps to reviewing definitions, skipping a large number of detailed proof steps, and then determine the correctness of the proof result. This is like the case of APIs

The human brain compiler can omit and supplement omissions, trading temporary efficiency for error-proneness and forgetfulness

Assistance also has other functions, like the case of, Programming before the era of IDE/LSP/friendly-and -interactive-compiler-error-messages/documentation was painful. The organization, structuring and reuse of data and information were not done well, and the powerful capacity and time of memory were not used well.

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
The following discusses math-object-construct-rule *alias* set-theory

#tag("natural-number") $ℕ$ 
#indent[
  natrual number $0,1,2,...$ and natrual number set $ℕ$ is object. $0,1,2,... ∈ ℕ$ is true proposition

  But computers cannot handle infinity. In order to allow computers to use limited characters and memory to represent natural numbers, let $n,ℕ$ and $+1$ functions be finite symbols in the memory address, and define the following as true proposition
  - $0 ∈ ℕ$
  - $n ∈ ℕ ==> n + 1 ∈ ℕ$
  Equivalent to telling the computer how to continuously $+1$ with instruction streams? Also related to induction
]
#tag("empty") $∅$ 
#indent[
  empty $∅$ is object. let $a$ be a object, $a ∈ ∅$ is false proposition

  The definition of $∅$ is convenient for intersections $∩$ e.g. the intersection is empty, and the number of elements of $Subset(A)$ of a finite set $A$, $2^n$ is more convenient than $2^n - 1$
]
Define language expansion
  - $a != b := not (a = b)$ 
  - $a ∉ A := not (a ∈ A)$

  Because “define language expansion” is very long, it is usually abbreviated to "*definition*" "*def*"

  In fact, the symbol $=$ is also commonly used to represent defining language expansion or specifying language transformation. Specifically, the $=$ of natural numbers can be directly defined as comparing the value of memory with computer circuits. 

#tag("declare-element-of-set") 
#indent[
  If $A$ is non empty $A != ∅$ (this information comes from the definition of $A$), we can define symbol $a$ and construct true proposition (let) $a ∈ A$ 

  A finite number of declare statements can be constructed
]
#tag("enum") enumerate 
#indent[
  $a_0 ,…, a_n$ is object then ${a_0 ,…, a_n}$ is a set
  
  Represented as a sequence of numbers in memory
  
  The entire set can be called in this way: record the address of the first element + the length of the array as the number of circuit cycles, and read one element per circuit cycle
  
  formulas $a_0 ,…, a_n ∈ {a_0 ,…, a_n}$ are true propositions

  Specifically, a single-element set $a ∈ {a}$
]
define $A ⊂ B := forall a ∈ A, a ∈ B$

#tag("equivalent") $<==>$ 
#indent[
  Some equivalent uses. For computer data, it can be proved by exhaustion that the following calculation results are equal
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
Note that I myself also feel that I cannot completely clearly handle the concepts of derivation and proof below

Natural language example of derivation
#indent[
  If it rains, I won't go out \
  It's raining \
  So I won't go out
]
This example is similar to a conditional branch
```
rain : bool;
out : bool;
switch (rain) {
  true => out = false,
  false => out = undefined
};
```
#tag("inference") For mathematical language, that is
- The compiler reads the formula $p,q$
- The compiler reads the formula $p => q$ is true proposition (may be custom)
- The compiler reads the formula $p$ is true proposition
- Then the language rule setting is that the compiler, according to this condition (from memory), assigns the bool value of the formula $q$ to true i.e. sets $q$ is true proposition

#tag("proof") The proof is that compiling passes $p => q$ is true proposition

Another kind of equivalence $p <=> q := (p => q) and (q => p)$

#tag("reverse-inference") Reverse inference. If the result is that I went out, then it is definitely not the result of rain. If the result of the conditional branch is `out = true`, this is not the result of `rain = true`. Since the bool value of an ideal binary computer must be one of two, it can only be the result of `rain = false`. This can be written as a conditional branch
```
switch (out) {
  true => rain = false,
  false => rain = undefined
};
```
Mathematically, reverse inference is written as formula $not q => not p$, and defined equivalent to $p => q$

#tag("reverse-proof") Proof by contradiction is that compiling passes $not p => not q$ is true proposition

Deductive proof also requires syllogism

+ All living things die \
+ Humans are living things \
+ Therefore, all humans will die

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

A proposition has many proofs with different runtime data flow, which can be considered to belong to the same quotient proof of this proposition

The following object construction rules, except for the intersection, generally give non-empty sets

#tag("union")  
#indent[
  #image("../image/union.jpeg", width: 30%)

  define object $⋃ A$ and language expansion
  $ 
    x ∈ a ∪ a' &:= (x ∈ a) or (x ∈ a') \ 
    \
    x ∈ ⋃ A &:= Or_(a ∈ A) x ∈ a \ 
    &:= exists a ∈ A, x ∈ a
  $
  is non-emtpy unless $forall a ∈ A, a = ∅$

  $A ∪ A = A$

  We do not define the union for $A = ∅$. Same below. The reason is that let $a in A = ∅$ is always a false proposition, which makes many things unusable
]
#tag("sum")
#indent[
  #image("../image/sum.jpeg", width: 30%)
  $
    x ∈ a ⊔ a' &:= (x ∈ a) xor (x ∈ a') \
    \
    x ∈ ⨆ A &:= ⨁_(a ∈ A) x ∈ a \
    &:= exists! a ∈ A, x ∈ a
  $

  is non-emtpy unless $forall a ∈ A, a = ∅$

  in finite case, number of element $abs(⨁_1^n A_i) = sum_1^n |A_i|$ 
]
enum is special case of sum/union?

#tag("intersection") 
#indent[
  #image("../image/intersection.jpeg", width: 30%)
  $
    x ∈ a ∩ a' &:= (x ∈ a) and (x ∈ a') \
    \
    x ∈ ⋂ A &:= And_(a ∈ A) x ∈ a \
    &:= forall a ∈ A, x ∈ a
  $

  $A ∩ A = A$
]
#tag("product") 
#indent[
  #image("../image/product.jpeg", width: 30%)
  $
    x ∈ a × a' &:= (x(a) ∈ a) and (x(a') ∈ a') \
    \
    x ∈ product A &:= And_(a ∈ A) x(a) ∈ a \
    &:= forall a ∈ A, x(a) ∈ a 
  $
  is non-emtpy unless $exists a ∈ A, a = ∅$ (related to #tag("axiom-of-choice"))

  *Abbreviation* $A × A = A^2$. in finite case, number of elements $abs(product_1^n A_i) = product_1^n |A_i|$

  $x(a)$ means reading two symbols as a combined symbol
]
#tag("map") 
#indent[
  #image("../image/map.jpeg", width: 30%)

  let $A,B$ is math object. The rule for defining map space $A -> B$, map $f$ as math object is
  $
    f ∈ (A -> B) &:= And_(a ∈ A) f(a) ∈ B \
    &:= forall a ∈ A, f(a) ∈ B
  $
  denoted by $f : A -> B$ 
  
  denoted by $f ∈ B^A$. in finite case, number of elements $|B^A| = |B|^(|A|)$

  Although the usage of $f,f(a),f(a) in B$ seems problematic, they can still be defined in terms of symbol & symbol strings
  
  If we talk about what the map $f$ specifically represents, due to non-concrete constructiveness, there is no specific `return` like in general programming languages, or what `return` is a newly defined symbol, math object, language expansion
]
#tag("subset") 
#indent[
  #image("../image/subset.jpeg", width: 30%)
  $ S ∈ Subset(A) := S ⊂ A $

  denoted by $2^A$. According to #link(<proposition-function>)[] equivalent to map space $A -> {0,1}$. in finite case, number of elements $|2^A| = 2^(|A|)$

  define $∅ ⊂ A$ be true proposition
]
map space and subset introduce high-level infinity

One seemingly counterintuitive thing at first glance is that we _seemingly_ know all $S ⊂ ℕ$ or all $f : ℕ -> ℕ$, but cannot count them #link(<cardinal-increase>)[] #link(<uncountable>)[]. However, what exactly does "know all $S ⊂ ℕ$" mean? In fact, trying to consider the question of "finding an infinite subset of $ℕ$ in a general way" reveals that this is not simple.

Similarly, although countable can already define some real numbers e.g. $sum 1/n! = e$, if not with the help of subset or map, countable construction cannot obtain all $ℝ$

#tag("proposition-function")
#indent[
  let $a ∈ A$, $p(a) : A -> {0,1}$ is already constructed

  ${a ∈ A : p(a)}$ is object

  $ x ∈ {a ∈ A : p(a)} := (x ∈ A) and p(x) $
]
define $ A = B := (x ∈ A) <==> (x ∈ B) $

Other usages of $=$
  + Alias of identifier in memory
  + Return value of function in memory. so $1 + 1 = 2$ should be understood as the return value of the add function is $2$

#tag("hierarchy-order-of-set")
#indent[
  The set constructed above is called a zero (hierarchy) order set

  $A ∈ Set$ or $A ∈ Set 0$

  then let $Set 0$ be math object, in first order set

  $Set 0 ∈ Set 1$

  Using object construction rules again, what we get is also defined as belonging to $Set 1$ 
  
  let $Set 1$ be math object, $Set 1 ∈ Set 2$. And so on ...

  *Example* 
  - $Set × Set ∈ Set 1$
  - $(Set -> Set) ∈ Set 1$
  - $"Group" ∈ Set 1$ \
    $ 
    & (G,m) ∈ "Group" := { \
    & quad G ∈ Set \
    & quad m ∈ Set \
    & quad "property-group-multiplication"(G,m) \
    & quad ("e.g. " m ∈ (G^2 -> G))  \  
    & } 
    $
    Can be divided into multiple sentences, so that it is convenient to add/remove properties to get different structs

  $Set 0, Set 1, ...$ looks like the set of natural numbers $ℕ$, so should we assume a new hierarchy $Set ℕ$ again? Then for $Set ℕ$, continue to use the object construct rule ... 
]
Will the above set construction rules lead to contradictions or computer dead loops?

#tag("universal-set") 
#indent[
  Does there exist a "set of every set", a "universal set"? 
  
  Defined using set theory rules

  $ A := {x ∈ "universal-set" : not (x ∈ x)} ∈ "universal-set" $ 

  Then let the compiler calculate the bool of the proposition $A in A$. Since $A in "universal-set"$ = `true`, the compiler only calculates the bool of $not (A in A)$, and then discovers the `not` function, so it calculates the bool inside `not`, but this returns to calculating the bool of $A in A$. The compiler may choose to enter a circuit dead loop.

  For a finite set $x ∉ x$ or it's impossible to judge, e.g. ${1} ∉ {1}$, because $1 ≠ {1}$ or $x in 1$ is true proposition is not defined

  Related to self-referential paradox. *Example* "This sentence is wrong" gives a computer dead loop

  ```
  this_sentence_is_false : bool = false;
  loop:
    switch (this_sentence_is_false) {
      false => this_sentence_is_false = true,
      true => this_sentence_is_false = false
    } 
    goto loop
  };
  ```
  Or use layering to bypass the self-referential paradox
  `(this_sentence = false) = true`
]
Define a type, called `math_object_type`, which is used by the rules and compilation of this language. It is not a math object itself, i.e. it does not belong to `math_object_type` itself, cannot be used as a math object for math object construt rule, or cannot be constructed in a non-finite way
 
#tag("dependent-distributive") 
#indent[
  union & interset 

  $ ⋂_(a ∈ A) ⋃_(x ∈ product A) x(a) = ⋃_(x ∈ product A) ⋂_(a ∈ A) x(a) $

  $ ⋃_(a ∈ A) ⋂_(x ∈ product A) x(a) = ⋂_(x ∈ product A) ⋃_(a ∈ A) x(a) $

  sum and product

  $ product_(a ∈ A) ⨆_(x ∈ product A) x(a) = ⨆_(x ∈ product A) product_(a ∈ A) x(a) $

  $ ⨆_(a ∈ A) product_(x ∈ product A) x(a) = product_(x ∈ product A) ⨆_(a ∈ A) x(a) $

  draft of proof: expand, use parallel distributive cf. #link(<distributive-forall-exists>)[]
]
#tag("set-minus") #image("../image/set-minus.jpeg", width: 30%)

$A ∖ B := {x ∈ A : x ∉ B}$. if $B ⊂ A$ then define $B^∁ := A ∖ B$

#tag("symmetric-set-minus") #image("../image/set-symmetric-minus.jpeg", width: 30%)

$A Δ B := (A ∖ B) ⊔ (B ∖ A) = (A ∪ B) ∖ (A ∩ B)$ 

#tag("coordinate-component")
- product component 
  $ 
    dmat( delim: #none ,
    product A, ⟶, a ;
    x, ⟿, x(a)
    ) 
  $ 
- sum component 
  $ 
    dmat( delim: #none ,
    a, ⟶, ⨆ A ;
    x, ⟿, x(a)
    ) 
  $