#import "/module/module.typ": *
#show: module

#let B = c-bf("B","#919191")
#let T = c-bf("T","#919191")

#tag("topology") 拓扑 := $X$ 每个点都有一个 #link(<net>)[点网] $#B (x)$. 这样的点网系统记为 $#T _X$, 是 Euclidean 空间的类似物

*Example* Euclidean 空间的所有球 $𝔹(x,r)$ 组成的点网系统

#link(<Minkowski-space>)[] 中, 一点 $x$ 有多个不极限等价的网

#tag("continuous") 拓扑连续 := $f : X -> Y$ 在每一点都是 #link(<hom-limit>)[]

let $A ⊂ X$

#tag("limit-point") 极限点 := $x in X : forall B in #B (x), A ∩ B ≠ ∅$

$x in A$ ==> $x$ 是 $A$ 的极限点

对一般网, 需要分类不同的类型极限点

#let closed(x) = math.macron(x)

#tag("closure") 闭包 $closed(A)$ := $x in X$, $x$ 是 $A$ 极限点

$A$ 的闭包 $closed(A)$ 是所有 $A$ 极限点的集合

$A subset closed(A)$

*Example* $ℝ$ 拓扑下, 开区间 $(a,b)$ 的闭包是闭区间 $[a,b]$. $ℚ$ 的闭包是 $ℝ$

#tag("closed") $A$ 是闭集 := $closed(A) = A$

$A$ 是闭集 <==> $A$ 包含所有 $A$ 极限点

forall $A$, $closed(A)$ 是闭集. *Proof* 其它点不满足 $forall B in #B (x), A ∩ B = ∅$

$closed(closed(A)) = closed(A)$

$closed(A)$ 是包围 $A$ 的最小闭集. *Proof* $A subset B ==> closed(A) subset closed(B)$ and 闭集 $B = closed(B)$ ==> $closed(A) subset B$

极限点 $x in closed(A)$ 可以分类为孤立点或聚点

孤立点 := $x in A and exists B_x in #B (x), A ∩ B_x = ∅$

聚点 := $forall B_x in #B (x), (A ∖ x) ∩ B_x ≠ ∅$

连续函数不保证把闭集映射到闭集. *Example* $1/(1+x^2)$ 将 $ℝ$ 映射到 $(0,1]$

根据极限点的定义

#tag("continuous-closed") 连续 <==> 每个 $#T _Y$ 拓扑闭集的逆像都是 $#T _X$ 拓扑闭集

#tag("open") 开集 := 闭集的补

#tag("continuous-open") 连续 <==> 每个 $#T _Y$ 拓扑开集的逆像都是 $#T _X$ 拓扑开集
