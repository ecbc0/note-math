#import "../module/module.typ": *
#show: module

对人来说, 一种理解自然数的方式是数数 (counting) 

对计算机来说 (cf. #link(<logic.typ>)[]), 表示自然数的方式有
- 周期电路
- 算术元件 $+1$
- 二进制
- 调用自身的函数

然而, 自然数集的元素数量是无限的, 而 bit 和计算机内存是有限的. 人类的记忆也是有限的

空间无限的问题: 现实无法构建空间无限的电路和内存. 即使能, 也受限于电流速度有限

但是可以使用潜在无限的时间来实现 "潜无限"

然而, 甚至存在集合的元素数量 #link(<uncountable>)[不可数]. *Example* 
- the set of all subset of $ℕ$, $Subset(ℕ)$
- all function from $ℕ$ to itself, $ℕ -> ℕ$

验证集合论语言的正确性需要 parser, 内存数据结构, 函数. 生成的计算机指令流的实现并不是这个目标范围的重点

集合/类型的动机
#indent[
  - 模块化和乘法分解以简化认知
  
    *Example* 自然语言的主谓宾 SVO (subject, predicate, object). 假设有 10 个名词和 10 个动词. 假设我们 "忘记了 SVO 规则", 那么, 验证三个词的句子的语法正确性最多需要 $10^3 = 1000$ 次. 如果理解并使用 SVO 规则, 最多需要 $2^3 = 8$ 次

  - 如果集合的元素数量是无限的, 则集合/类型将概念有限化, 使得可以在有限时间内说出来
]
复杂的 set theory object (集合论对象), proposition (命题) 被储存在变量名里, 所以还是需要人类去检查所有存储在变量名里面的复杂定义, 所以可读性很重要

parser or 证明辅助程序能让人类从需要检阅所有步骤 reduce to 检阅定义 (以及检查编译器的逻辑代码), 跳过大量详细证明步骤, 就能确定证明结果的正确性. 这像 API 的情况

人脑编译器能省略和补充省略, 用容易出错和遗忘来换取临时效率

而且证明辅助还会有其它作用, 类似于, IDE/LSP/友好且互动的编译器错误信息/documentation 时代之前的编程是痛苦的, 数据和信息的组织和结构化和复用做得不好, 也没利用好计算机的强大记忆容量和时间

证明辅助的例子: #link("https://github.com/acornprover/acorn")[acornprover], 还在开发中. 还没实现集合论 ...

#tag("proposition") proposition 是特殊的 (string, bool) product struct ((字符串, 真假值) 的逻辑乘积结构) 计算机数据结构. 对于数学语言, string field 使用特殊的构造规则来限制, 此 string 限制版本称为 formula (公式)

因为我们无法直接判断一个猜测的真假, 所以我们需要一种具有未定义真假值的语言

from 命题 to 未知命题的, 其真值部分被修改为 (bool, unknow) sum struct

*Abbreviation* true proposition 和 proposition 经常混用

很多命题是无法被计算机自动推导出来的, 需要人类去寻找可能的路径, 输入到计算机中进行验证, 或者开发更多新的自动化证明方法

我们将假设一些最开始的不需要证明的命题. 以及假设规则之使用现有命题构造新命题

*Abbreviation* 使用相同的符号 $ϕ$ for formula and proposition, "$ϕ$ is true/false/unknow", $ϕ = 0\/1\/?$

#tag("formula") 
#indent[
  - in (属于)
  #indent[
    let symbol (符号) $a,A$ be type of math object, then $a in A$ is a formula
    
    $a in A$ 类似于 `value : type` or `variable_name : type` in programming language
    
    symbol $in$ 不是 math object 
  ]
  - equal (等于)

  #indent[let $a,b$ be object, then $a = b$ is a formula]

  - and, or, not (且, 或, 非)
  #indent[
    let $p,q$ be formula, then 
    $ 
      p and q \ 
      p or q \ 
      not q 
    $ 
    is formula
  ]
  - forall, exists (所有, 存在) 
  #indent[
    设 $p(a)$ 是用 $a$ 构造的公式 i.e. 在内存中读取 $a ∈ A$, 使用特殊的函数调用, 则
    $
      And_(a ∈ A) p(a) " or " forall a ∈ A, p(a) \
      Or_(a ∈ A) p(a) " or " exists a ∈ A, p(a)
    $
    is formula
  ]
  - inference (推导) $p => q$, equivalent (等价) $p <=> q$ is formula
]
以下讨论 math-object-construct-rule (数学对象构造规则) *alias* set-theory (集合论)

#tag("natural-number") $ℕ$ 
#indent[
  natrual number (自然数) $0,1,2,...$ and natrual number set (自然数集) $ℕ$ is object. $0,1,2,... ∈ ℕ$ is true proposition

  但是计算机无法处理无限. 为了让计算机能用有限的字符和内存去表示自然数集, 把 $n,ℕ$ 和 $+1$ 函数作为内存地址里的有限 symbol, 定义以下为 true proposition
  - $0 ∈ ℕ$
  - $n ∈ ℕ ==> n + 1 ∈ ℕ$
  等价于用指令流告诉计算机如何连续地 $+1$? 也联系到归纳法

  有限的字符的代价是潜在无限的时间, 总是借助了数数或者周期电路
]
#tag("empty") $∅$ 
#indent[
  empty $∅$ is object. let $a$ be a object, $a ∈ ∅$ is false proposition

  The definition of $∅$ 方便用于 intersections $∩$ e.g. 交集为空, 和有限集 $A$ 的 $Subset(A)$ 的元素数量, $2^n$ 比 $2^n - 1$ 方便
]
定义语言展开
  - $a != b := not (a = b)$ 
  - $a ∉ A := not (a ∈ A)$

  由于 “定义语言展开” 很长, 因此通常 abbreviated to "*definition*" "*def*"

  其实 symbol $=$ 通常也被用来表示定义语言展开或者规定语言转化. 具体自然数的 $=$ 可以直接定义为用计算机电路比较内存的值 

#tag("declare-element-of-set") 
#indent[
  If $A$ is non empty $A != ∅$ (此信息来自 $A$ 的定义), we can define symbol $a$ and construct true proposition (let) $a ∈ A$ 

  可以构造有限个 declare 语句
]
#tag("enum") enumerate 
#indent[
  $a_0 ,…, a_n$ is object then ${a_0 ,…, a_n}$ is a set
  
  表示为内存里的数列
  
  整个集合可以被这样调用: 记录第一个元素地址 + 数组长度作为电路周期数量, 每个电路周期读取一个元素
  
  formulas $a_0 ,…, a_n ∈ {a_0 ,…, a_n}$ are true propositions

  特别地, 单元素集合 $a ∈ {a}$
]
define $A ⊂ B := forall a ∈ A, a ∈ B$

#tag("equivalent") $<==>$ 
#indent[
  等价的一些使用. 对有限的计算机数据来说, 可以穷举证明以下计算结果相等
  $ 
    not (not p) &<==> p \
    not (p and q) &<==> (not p) or (not q)
  $
  类似地, 为了表示 "无限元素" 的情况, 定义语言展开或者规定语言转化. 例如无限元素的 De Morgan law
  $
    not (And_(a ∈ A) p(a)) &<==> Or_(a ∈ A) not p(a) \
    "or" not (forall a in A, p(a)) &<==> exists a in A, not p(a)
  $
  其中 "无限" 的概念有的限化是使用 #link(<declare-element-of-set>)[] 的符号串 $a in A$
]
formula, proposition 是内存里特殊的数据结构. 可以认为 math_object, formula, proposition 是编程语言的 type

许多命题是等价的, 于是可以考虑命题的 "quotient" 类型, 但等价可能性是无限的, 是否可能从存在穷举算法, 首先要看它是否 #link(<countable>)[] ...

类似 $and,or,not$ 的冗余, set theory construction rules 也有可能有冗余, 或者说有很多等价的定义方式

规定 (有限的)

$=$ transitive := $(a = b) and (b = c) ==> (a = c)$

$<=>$ transitive := $(p <=> q) and (q <=> r) ==> (p <=> r)$

follow #link(<bool-algebra>)[有限情况的 bool 的各种规则], 定义语言转换规则: let $p(a,b)$ is formula built with independent/parallel $a,b$ i.e. independent/parallel in memory read and used by specific cuntion, then

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
注意, 我自己也觉得我无法完全清晰地处理下面的推导和证明的概念

推导的自然语言例子
#indent[
  如果下雨, 我不会出门 \
  下雨了 \
  所以我不会出门
]
这个例子类似于 conditional branch (条件分支)
```rs
let rain : bool;
let out : bool;
match (rain) {
  true => out = false,
  false => out = undefined,
};
```
#tag("inference") 对于数学语言, 那就是
- 编译器读取到 formula $p,q$
- 编译器读取到 formula $p => q$ is true proposition (可能来自定义)
- 编译器读取到 formula $p$ is true proposition
- 然后语言规则设置是, 编译器根据这种条件 (来自内存), 赋予 formula $q$ 的 bool 值为 true i.e. 设置 $q$ is true proposition

#tag("proof") 证明就是编译通过 $p => q$ is true proposition

又一种等价 $p <=> q := (p => q) and (q => p)$

#tag("reverse-inference") 反向推导. 如果结果是我出门了, 那么肯定不是下雨的结果. 如果条件分支的结果是 `out = true`, 这不是 `rain = true` 的结果. 由于理想二进制计算机的 bool 值必定二选一, 所以只能是 `rain = false` 的结果. 这可以被写为条件分支
```rs
match (out) {
  true => rain = false,
  false => rain = undefined,
};
```
数学上, 反向推导写为 formula $not q => not p$, 并定义等价到 $p => q$

#tag("reverse-proof") 反证明就是编译通过 $not p => not q$ is true proposition

演绎证明还需要三段论 (syllogism)

+ 所有生物都会死 \
+ 人是生物 \
+ 所以所有人都会死

其中 "所有生物都会死" 是特殊构造的一种命题

#tag("syllogism") 三段论推导是语言规则
- 编译器读取到 formula $(forall a in A, p(a))$ is true proposition (可能来自定义 e.g. #link(<union>)[])) 
- 编译器读取到声明 let $a' in A$ is true proposition
- 编译器读取到 formula $p(a')$
- 然后编译器根据这种条件 (来自内存) 设置 $p(a')$ is true proposition

也即, 编译器根据声明 $(forall a in A, p(a))$ (可能 "无限") 来实现对数据的具体构造 (有限)

或者理解为, 这种规则和行为就是在定义 $(forall a in A, p(a))$ 这种概念本身

通常也被写为等价的规则 let $a' in A$, then 特殊的推导 formula $(forall a in A, p(a)) ==> p(a')$ is always true proposition. 这种形式通常被用于 #link(<proof>)[前面] 所说的 "证明就是编译通过 $p => q$ is true proposition"
 
反向三段论: let $a' ∈ A$, then 等价的 formula $not p(a') ==> not (forall a ∈ A, p(a)) "or" exists a in A, not p(a)$  is true proposition

我们可能永远不知道一个 bool unknow 的 proposition 是否能被构造性地证明, i.e. 有限步骤编译成功

target proposition 来自哪里? 可能是相关于现实世界的模型

证明需要展开大量句子, 尽管计算机处理 string 是非常快的. 无论如何, 性能优化? 仅在需要时使用 (lazy load)? 两个 proposition 不相互依赖时, 并行 (parallel)? 假设已经证明过的结果 (incremental compilation)? 

A proposition has many proofs with different runtime data flow, 可以认为它们属于同一个 quotient proof of this proposition

以下的 object construction rules, 除了交集, 一般都给出 non-emtpy sets

#tag("union")  
#indent[
  #image("../image/union.jpeg", width: 30%)

  define object $⋃ A$ 和语言展开
  $ 
    x ∈ a ∪ a' &:= (x ∈ a) or (x ∈ a') \ 
    \
    x ∈ ⋃ A &:= Or_(a ∈ A) x ∈ a \ 
    &:= exists a ∈ A, x ∈ a
  $
  is non-emtpy unless $forall a ∈ A, a = ∅$

  $A ∪ A = A$

  我们不对 $A = ∅$ 定义 union. 下同. 理由是 let $a in A = ∅$ is always false proposition, 这使得很多东西不能用
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

  $x(a)$ 表示将两个 symbol 作为一个组合 symbol 来读取
]
#tag("map") 
#indent[
  #image("../image/map.jpeg", width: 30%)

  let $A,B$ is math object. 定义 map space $A -> B$, map $f$ as math object 的规则是
  $
    f ∈ (A -> B) &:= And_(a ∈ A) f(a) ∈ B \
    &:= forall a ∈ A, f(a) ∈ B
  $
  denoted by $f : A -> B$ 
  
  denoted by $f ∈ B^A$. in finite case, number of elements $|B^A| = |B|^(|A|)$

  $f,f(a),f(a) in B$ 的使用虽然看起来有问题, 但它们仍然在 symbol & symbol 串方面是可以定义的
  
  如果谈到 map $f$ 具体代表什么, 由于非具体构造性, 没有一般编程语言那样的具体的 `return`, 或者 `return` 的是新定义的 symbol, math object, 语言展开

  *Prop* $C^(A ⊔ B) ≃ C^A × C^B, C^(A × B) ≃ (C^B)^A$
]
#tag("subset") 
#indent[
  #image("../image/subset.jpeg", width: 30%)
  $ S ∈ Subset(A) := S ⊂ A $

  denoted by $2^A$. 根据 #link(<proposition-function>)[] 等价于 map space $A -> {0,1}$. in finite case, number of elements $|2^A| = 2^(|A|)$

  define $∅ ⊂ A$ be true proposition
]
map space 和 subset 引入了高级别的无限

一件初看反直觉的事情是, 我们_似乎_知道所有 $S ⊂ ℕ$ 或所有 $f : ℕ -> ℕ$, 却无法数出来 #link(<cardinal-increase>)[] #link(<uncountable>)[]. 但是, "知道所有 $S ⊂ ℕ$" 究竟是什么意思? 事实上, 试着考虑 "一般方式之找一个 $ℕ$ 的无限子集" 这一个问题, 就会发现这不是简单的

类似地, 虽然可数已经可以定义一些实数 e.g. $sum 1/n! = e$, 但如果不借助 subset or map, 可数地构造无法得到全部 $ℝ$

#tag("proposition-function")
#indent[
  let $a ∈ A$, $p(a) : A -> {0,1}$ is already constructed

  ${a ∈ A : p(a)}$ is object

  $ x ∈ {a ∈ A : p(a)} := (x ∈ A) and p(x) $
]
define $ A = B := (x ∈ A) <==> (x ∈ B) $

$=$ 的其它用法
  + 内存里的 identifier 的别名
  + 内存里的函数返回值. so $1 + 1 = 2$ 应该理解为 add function 的返回值是 $2$

#tag("compare-math-lang-with-programming-lang") 
#indent[
  数学语言中的 `∈` 和编程语言中的 `:` 之间的区别是什么?

  数学语言与编程语言非常相似, 都需要编译器检查一系列语言规则

  一些区别:

  - 一般应用编程语言已经使用了递归, 但数学语言将递归指令本身视为类型. 或者将递归指令称为自然数的递归定义, 或生成自然数的指令. 这使得我们可以讨论一般的自然数, 而无需生成具体的自然数 (由计算机或人脑的周期性电路生成)

  - 主流的通用编程语言 (没有自然数集和依赖类型) 仅使用有限次 `and`, `or` 来生成新类型, 例如 `struct`, `enum`. 这依赖的是计算机能够表示特定数量的自然数. 另一方面, 数学语言有无限版本的 `and`, `or` 来生成新的类型 (或集合), 例如 `forall`, `exists`，它们不像有限次的 `and`, `or` 那样表示. 而且 "无限" 甚至可以超越可数的自然数

  在底层，数学语言或编程语言都可以用周期电路, 内存位和逻辑门来表示

  数学语言从自然数 (以及命题演算和集合论规则) 开始. 例如, 实数是基于自然数定义的. 然而, 它仍然需要 "变量" 的概念, 例如 `let a in A` 中的 `a`

  通用编程语言从内置类型开始. 从概念, 认知, 应用的角度来看, 最好将它们视为原始概念或计算机内存中的位的结构, 而不是使用数学上的自然数来构造它们
]
#tag("hierarchy-order-of-set")
#indent[
  以上构造的 set 称为 zero (hierarchy) order set

  $A ∈ Set$ or $A ∈ Set 0$

  then let $Set 0$ be math object, in first order set

  $Set 0 ∈ Set 1$

  再次使用 object construction rules, 得到的东西也定义为属于 $Set 1$ 

  无论如何我们总是可以在编译器中构造这种带有类型和 bool 和各种规则的语言
  
  let $Set 1$ be math object, $Set 1 ∈ Set 2$. 诸如此类 ...

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
    可以被分成多句, 使得可以方便的加入/移除 property, 来得到不同的 struct

  $Set 0, Set 1, ...$ 看起来像自然数集 $ℕ$, 所以应该再假设新的 hierarchy $Set ℕ$ 吗? 然后对 $Set ℕ$, 继续使用 object construct rule ... 

  $Set 0$ 语言是潜无穷的, hierarchy-order-of-set 语言也是如此. 当然绝大多数编程语言都是潜无穷的

  这种 hierarchy 之外是否可能存在很多不是线序 or 全序的东西?
]
似乎有两种 math object

+ 已经用有限步构造出来的 math object. 它代表以一些规则所构造的类型

+ 直接假设的 math object 类型或者抽象的 type, 内存中的类型及其变量作为一种 placeholder (占位符). 在编程中, 这种概念叫做 generics (泛型). 它代表抽象符号之间的类型关系. 有时需要 generics 的 instantiation (实例化) or monomorphization (单态化) 之后才能通过编译

type 之间的同态的使用可以对证明带来方便. 有时可以让计算从特殊情况推出一般情况的证明, 如果特殊情况的证明没有用到特殊情况的专有性质, 则实际上是隐藏的对一般情况的证明

#tag("universal-type")
#indent[
  如果不假设可以随意使用 universal-type, 我发现自己真的无法理解很多事情. 所以, 我的选择是, 可以随意使用 universal-type, 即使进入了死循环或自指悖论, 也是正确的语言, 虽然此时是无用的结果. 类似的东西是, 一般编程语言可以手动构造死循环, 但这并不能说明这种编程语言是错的

  *Example* #tag("Russell-paradox")
  #indent[
    使用 set theory rules 定义

    $ A := {x ∈ "universal-set" : not (x ∈ x)} ∈ "universal-set" $ 

    然后让编译器去计算命题 $A in A$ 的 bool, 由于 $A in "universal-set"$ = `true`, 编译器只计算 $not (A in A)$ 的 bool, 然后发现 `not` 函数, 所以计算 `not` 里面的 bool, 但这又回到了计算 $A in A$ 的 bool, 编译器可能选择进入电路死循环

    对于有限集, $x ∉ x$, 或者无法判断 $x in x$, e.g. ${1} ∉ {1}$, 因为 ${1} ≠ 1 in {1}$, 或者没有定义 $x in 1$ 这个命题是 true proposition

    如果考虑集合 hierarchy, 对于 $A := {x ∈ Set 0 : not (x ∈ x)}$ 很可能 $A in Set 1 ∖ Set 0$ 从而 $A ∉ A$ 因为第一个条件 $A in Set 0$ 不满足
  ]
  *Example* #tag("self-referential-paradox") 自指悖论. "这个句子是错的"
  #indent[
    ```rs
    this_sentence_is_false : bool = false;
    loop:
      match (this_sentence_is_false) {
        false => this_sentence_is_false = true,
        true => this_sentence_is_false = false,
      } 
      goto loop
    };
    ```
    或者用分层绕过自指悖论 `(this_sentence = false) = true`. 认为它们是不同的句子和判断, 认为它并不能自指
  ]
]
#tag("dependent-distributive") 
#indent[
  union & interset 

  $ ⋂_(a ∈ A) ⋃_(x ∈ product A) x(a) = ⋃_(x ∈ product A) ⋂_(a ∈ A) x(a) $

  $ ⋃_(a ∈ A) ⋂_(x ∈ product A) x(a) = ⋂_(x ∈ product A) ⋃_(a ∈ A) x(a) $

  sum and product

  $ product_(a ∈ A) ⨆_(x ∈ product A) x(a) = ⨆_(x ∈ product A) product_(a ∈ A) x(a) $

  $ ⨆_(a ∈ A) product_(x ∈ product A) x(a) = product_(x ∈ product A) ⨆_(a ∈ A) x(a) $

  draft of proof: 展开, 使用 parallel distributive cf. #link(<distributive-forall-exists>)[]
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