#import "../module/module.typ": *
#show: module

#let B = c-bf("B","#919191")
#let T = c-bf("T","#919191")

#tag("topology-subspace")
#indent[
  子拓扑 := let $S subset X$. 继承 #link(<topology>)[点网系统] $#T _S = {S ∩ B : B in #T _X}$

  等价地定义, 子拓扑是使得嵌入映射 $S ↪ X$ 连续的最小拓扑
]

子拓扑的继承性. $S' subset S$ 是 $#T _S$ 子拓扑 <==> $S' subset X$ 是 $#T _X$ 子拓扑

_Proof_ 根据 $∩$ 的结合性 + $S' subset S <==> S' ∩ S = S'$

#tag("closed-in-subspace") #link(<closed>)[] in subspace 的刻画
#indent[
  $S' ⊂ S ==> "closed"(S',#T _S) = S ∩ "closed"(S',#T _X)$

  *Example* $"closed"((0,1],#T _((0,1])) = (0,1] ≠ [0,1] = "closed"((0,1],#T _ ℝ)$

  说明 $"closed"(S',#T _X)$ 可能存在 #link(<limit-point>)[极限点] $∉ S$ or $in "closed"(S,#T _X) ∖ S$ 但 $"closed"(S',#T _S)$ 极限点只能 $in S$

  $S$ 是闭集 
  - ==> $S = "closed"(S,#T _X) supset "closed"(S',#T _X)$
  - ==> $"closed"(S',#T _S) = "closed"(S',#T _X)$
]

#tag("quotient-topology")
#indent[
  $#T _(X/∼)$ := 使得商映射 $X ↠ X/∼$ 连续的最大拓扑, 即 $B in #T _(X/∼) <==> f^(-1) (B) in #T _X$
]

#let prod = $limits(product)_(i in I) X_i$ 

#tag("product-topology")  
#indent[
  $#T _(prod)$ := 所有分量映射 $f_i : prod -> X$ 连续的最小拓扑 i.e. 以集族
  $
    {f_i ^(-1) (B) : exists i in I, exists B in #T _i}
  $
  为的有限交集生成点网系统
  $
    f_(i_1)^(-1) (B_(i_1)) ∩ ⋯ ∩ f_(i_n)^(-1) (B_(i_n))
  $

  因为 $f_i$ 是分量映射
  $
    forall A_j in Subset(X_j), f_i (f_i ^(-1) (A_i)) = cases(
      A_i "if" i = j,
      X_i "if" i ≠ j
    )
  $
]
闭集的 product 也是闭集. by 极限点定义和 `and` 逻辑

$f_i$ image 不一定传递闭集. *Example* 闭集 ${(x,y) in ℝ^2 : x y = 1}$ 映射到 $x$ 轴得到非闭集 $ℝ ∖ 0$

#let sum-top = $limits(⨆)_(i in I) X_i$

#tag("sum-topology") 
#indent[
  #sum-top 的拓扑是使得嵌入 $X_i ↪ #sum-top$ 连续的最大拓扑

  所有 $i$ 的 $X_i$ 的点网系统 $#T _i$ 在 sum 空间的 copy 组成了 sum 空间的点网系统, 其中的集合的形式是 $⨆_(i in I) B_i$
]
