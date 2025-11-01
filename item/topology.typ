#import "../module/module.typ": *
#show: module

#let B = c-bf("B", rgb("#919191"))
#let T = c-bf("T", rgb("#919191"))

点网系统 := $X$ 每个点都有一个 #link(<net>)[点网] $#B (x)$. 

*Example* Euclidean 空间的所有球 $𝔹(x,r)$ 组成的点网系统

点网系统不足以作为拓扑空间的定义. 例如, 无法证明闭包是闭集 i.e. 闭包的封闭 $closed(closed(A)) = closed(A)$. 例子: 设 $X = {1, 2, 3}$. 设 $2$ 的点网只有一个元素 ${1, 2, 3}$. 设 $3$ 的点网只有一个元素 ${2, 3}$. 则 ${1}$ 的闭包是 ${1, 2}$, 再次闭包是 ${1, 2, 3}$ 

#tag("topology") 定义为点网系统 + 任何集合 $A$ 的内部和外部的极限分离
- 内部 $x in "int"(A):= exists B in #B (x), B ⊂ A$
- 外部 $x in "ext"(A) := exists B in #B (x), B ⊂ A^∁$ 
- 极限分离 
  - $forall x in "int"(A), exists B(x) in #B (x), B(x) ⊂ "int"(A)$
  - $forall y in "ext"(A), exists B(y) in #B (y), B(y) ⊂ "ext"(A)$

(我对这种定义的直观度并不满意, 感觉需要任意子集 $A$ 来操作, 不够自然? 欢迎更好的定义, 如果有的话)

边界定义为 $"bd"(A) := X ∖ ("int"(A) ∪ "ext"(A))$. 它的点可能属于 $A$ 也可能属于 $A^∁$

#link(<Minkowski-space>)[] 中, 一点 $x$ 有多个不极限等价的网

#tag("continuous") 拓扑连续 := $f : X -> Y$ 对每个开集 $V$ with $f(x) in V$, 存在开集 $U$ with $x in U$ 使得 $f(U) ⊂ V$ 

*Note*: 仅仅每点 $x$ 是极限 #link(<hom-limit>)[] 是不够的, 保持极限似乎并没有连续强. 仅仅保持极限并不能证明连续函数的逆像保持闭包 (subset 意义上的保持 $overline(f^(-1)(A)) ⊂ f^(-1)(closed(A))$)

let $A ⊂ X$

#tag("limit-point") 极限点 := $x in X : forall B in #B (x), A ∩ B ≠ ∅$

$x in A$ ==> $x$ 是 $A$ 的极限点

$A$ 的极限点集是内部 $"int"(A)$ + 边界 $"bd"(A)$

外部极限点 := $x in X : forall B in #B (x), A^∁ ∩ B ≠ ∅$, 是外部 $"ext"(A)$ + 边界 $"bd"(A)$

对一般网, 需要分类不同的类型极限点

#tag("closure") 闭包 $closed(A)$ := $x in X$, $x$ 是 $A$ 极限点

$A$ 的闭包 $closed(A)$ 是所有 $A$ 极限点的集合

$A subset closed(A)$

*Example* $ℝ$ 拓扑下, 开区间 $(a,b)$ 的闭包是闭区间 $[a,b]$. $ℚ$ 的闭包是 $ℝ$

#tag("closed") $A$ 是闭集 := $closed(A) = A$

$A$ 是闭集 <==> $A$ 包含所有 $A$ 极限点

forall $A$, $closed(A)$ 是闭集. _Proof_ 其它点不满足 $forall B in #B (x), A ∩ B != ∅$

$closed(closed(A)) = closed(A)$

$closed(A)$ 是包围 $A$ 的最小闭集. _Proof_ $A subset B ==> closed(A) subset closed(B)$ and 闭集 $B = closed(B)$ ==> $closed(A) subset B$

极限点 $x in closed(A)$ 可以分类为孤立点或聚点

孤立点 := $x in A and exists B_x in #B (x), A ∩ B_x = ∅$

聚点 := $forall B_x in #B (x), (A ∖ x) ∩ B_x ≠ ∅$

连续函数不保证把闭集映射到闭集. *Example* $1/(1+x^2)$ 将 $ℝ$ 映射到 $(0,1]$

#tag("continuous-closed") 连续 <==> 每个 $#T _Y$ 拓扑闭集的逆像都是 $#T _X$ 拓扑闭集

#tag("open") 开集 := 内部是自身 $"int"(A) = A$

$"int"(A)$ 是 $A$ 里面的最大开集 _Proof_ $A ⊂ B ==> "int"(A) ⊂ "int"(B)$

#tag("union-preserve-open") 设 $C$ 是一族开集, 则 $C$ 也是开集 

_Proof_ 对 $x in ⋃ C$, 取 $S in C$ 使得 $x in S$. $S$ 是开集, 取 $B(x) in #B (x)$, $B (x) ⊂ S$. 于是由于并集 $S ⊂ ⋃ C$ 所以 $B(x) ⊂ ⋃ C$, 从而 $x in "int"(⋃ C)$, 从而 $⋃ C ⊂ "int"(⋃ C)$ 从而 $⋃ C = "int"(⋃ C)$ 是开集

#tag("finite-intersection-preserve-open") $A, B$ 是开集 ==> $A ∩ B$ 是开集

_Proof_ 设 $x in U ∩ V$. 取 $S_U, S_V in #B (x), S_U ⊂ U, S_V ⊂ V$. 由网的定义, $exists S in #B (x), S ⊂ S_U ∩ S_V$. 而且 $S ⊂ U ∩ V$. 因此 $x in "int"(U ∩ V)$. 

#tag("continuous-open") 连续 <==> 每个 $#T _Y$ 拓扑开集的逆像都是 $#T _X$ 拓扑开集

_Proof_ ==>. 对 $#T _Y$ 开集, 对每个 $x in X$ 且 $f(x) in V$, 取开集 $U(x) ⊂ f^(-1)(V)$ 使得 $x in U(x)$. 然后开集的并集是开集 $⋃_(x in f^(-1)(V)) = f^(-1)(V)$

由于这不再是逆像描述版本, 所以不能将这里的开集改为闭集. 反例: 不连续函数 $f(x) = cases(0 "if" x < 0, 1 "if" x >= 0)$. 那么包含 $1$ 的闭集 $C$ 的逆像与闭集 $(-∞, 0]$ 的交集也是逆像, 而 $f(C ∩ (-∞, 0)) = {1} ⊂ C$. 

#tag("continuous-imp-inv-image-closure-subset-closure-inv-image") 连续 ==> $overline(f^(-1)(A)) ⊂ f^(-1)(closed(A))$

开集版本的拓扑到 net 版本的拓扑: 对开集补充所有有限交集, 得到每一点处的网. 可以用网的开集构造方法来恢复开集