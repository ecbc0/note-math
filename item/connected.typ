#import "/module/module.typ": *
#show: module

#let T = text("T", fill: rgb("#919191"))

*Example* #link(<interval>)[] #link(<best-interval-decomposition>)[]

#tag("connected") 连通 or 极限连通 := 极限点集分解不再可能 or 闭集分解不再可能

$X = ⨆_(i in I) A_(i)$ with $A_i$ closed ==> $|I| = 1$

直观的说法是, 连通 = 不能给出任何实质的分解. 对任何集合分解 $X = ⨆ A_i$, 由 $X = ⋃ closed(A)_i$ + 连通, 每个 $A_i$ 必定和某个其它的某个 $A_j$ 在极限点之后相接: $exists j != i, closed(A)_i ∩ closed(A)_j != ∅$

闭集分解的每个 $A_i$ 是开集

_Proof_ $A_i = X ∖ Closed(⋃_(i' != i) A_i')$

连通的定义等价于分解为两个闭集的版本

$X = A ⊔ A'$ with $A,A'$ closed ==> $(X = A) or (X = A')$

_Proof_ 对分解取极限得到 $Or_(i in I) X = A_i$

连通子集 := 拓扑子空间连通

*Example* $ℝ$ 连通. $ℝ$ 存在连通和不连通集. 连通集可能不是 $#T _ ℝ$ 闭集

#tag("real-connected-is-interval") $ℝ$ 的连通集就是区间 _Proof_ by 区间连通 + 最优区间分解 + 最优区间分解中区间数 $> 1$ 不连通

#tag("connected-imply-closure-connected") $S$ 是连通集 ==> $closed(S)$ 是连通集

_Proof_ 
#indent[
  $closed(S)$ close ==> $#T _(closed(S))$ 闭集是 $#T _X$ 闭集
  
  let 闭集分解 $closed(S) = A ⊔ A'$
  
  $#T _S$ 闭集分解 $S = (S ∩ A) ⊔ (S ∩ A')$ and $S$ 连通 ==> 其中一个是空集, say $S ∩ A' = ∅$ so $S subset A$ 
  
  但 $closed(S)$ 是包含 $S$ 的最小闭集, so $closed(S) = A$ and $A' = ∅$
]
$closed(S)$ 不是连通集 ==> $S$ 不是连通集

#tag("connected-componet") 连通分支分解 := 极限点集的分解的极限 $X = lim ⨆_(i in I) A_(i)$, 使得每个极限点集 $A_i$ 不可再分解 i.e. 连通

确实是 #link(<net>)[网] 意义上的唯一极限. 网来自 $X$ 的两个闭集分解可以取共同加细分解 + 闭集对有限交集封闭

$S$ is $#T _S$ 连通 or $S$ 不可 $#T _S$ 闭集分解 and $#T _X$ 有闭集分解 $A ⊔ A'$ ==> $(S subset A) ⊕ (S subset A')$

_Proof_ $#T _S$ 的闭集分解 $(S ∩ A) ⊔ (S ∩ A')$ 导致其中一个集合是空集

$A$ 是极限连通集 ==> $A$ 在 $X$ 的唯一一个极限连通分支里 

_Proof_ $A$ 的点必定在 $X$ 从而在某个连通分支里

==> 即使 $X$ 仅仅只是分解为连通集合, 也已经是连通分支分解

有共同点 $x$ 的连通集 $S_i$ 的并集 $⋃_(i in I) S_i$ 连通
#indent[
  recall #link(<topology-subspace>)[子拓扑的继承性]. 所以连通也继承

  所以只需要处理 $⋃_(i in I) S_i = X$ 的情况
]
_Proof_ 包含 $x$ 的连通集都在同一个连通分支里面. 说明 $⋃_(i in I) S_i = X$ 只有一个连通分支, 从而连通

连通分支是连通集族的 $⊂$ #link(<maximal-linear-order>)[极大线序] 的极大元

连续函数的 image 传递连通

连续函数 inverse-image 传递非连通 as 逆否命题

#let prod = $limits(product)_(i in I) X_i$

_Proof_ 闭集分解 $Y = A ⊔ A'$ ==> 闭集分解 $X = f^(-1)(A) ⊔ f^(-1)(A')$

==> #tag("mean-value-theorem-continuous") 连续函数介值. 连续函数 $f : X -> ℝ$ 的像 $f(X)$ 连通 #link(<real-connected-is-interval>)[从而] 是区间

如果 $Y$ 任何两点都在某个连通子集 $S$ 中, 则 $Y$ 连通. _Proof_ let $Y = A ⊔ A'$ with $A,A'$ closed, 证明 $A or A' = ∅$. 或者 $Y = ⋃_(y in Y) S(y_0,y)$ and 有共同点 $y_0$ 的连通集 $S(y_0,y)$ 的并集是连通的

==> let $X$ 连通. 如果 $Y$ 任何两点都在某个连续函数连通像 $f(X)$ 中, 则 $Y$ 连通

==> 道路连通

#tag("product-topology-preserve-connected") #link(<product-topology>)[积拓扑] 保持连通

_Proof_
#indent[
  使用共同点方法 + 每个 $X_i$ 连通 ==> 所有 "十字形" 子集是连通的
  $
    C_(j_1 ,…, j_n) = product_(i in I) cases(
      X_i &"if" i = j_1 \,…\, j_n,
      {x_i} &"else"
    )
  $ 
  再次使用共同点方法, 十字形子集的并集 $C = ⋃_(j_1 ,…, j_n) C_(j_1 ,…, j_n)$ 组成了连通子集
  
  $closed(C) = prod$ and #link(<connected-imply-closure-connected>)[] ==> $prod$ 连通

  _Proof_ of $closed(C) = X$
  #indent[
    只需要证明 $prod$ 点网系统的每个集相交于某个十字形 $C_(j_1 ,…, j_n)$

    $prod$ 的点网系统的集合是
    $
      f_(i_1)^(-1) (B_(i_1)) ∩ ⋯ ∩ f_(i_n)^(-1) (B_(i_n))
    $
    它相交于十字形 $C_(j_1 ,…, j_n)$
  ]
]
let 连通分支分解 $X_i = product_(j in J(i)) A_(i, j(i))$

$prod$ 的所有连通分支是

$ product_(i in I) A_(i, j(i)) : j in product_(i in I) J(i) $

_Proof_ 使用 #link(<dependent-distributive>)[] $product_(i in I) ⨆_(j in J) A_(i,j(i)) = ⨆_(j in J) product_(i in I) A_(i,j(i))$ and 连通的 product 连通, 所以 $product_(i in I) A_(i, j(i))$ 连通, 从而已经不能再分解

定义 (how?) $f in C(X -> Y)$ 的拓扑或极限点之后 (should be something compact open topology?)

#tag("homotopy") 同伦 or 极限点同伦 := $C(X -> Y)$ 是极限连通的

*Example* $ℝ^(n+1) ∖ 0$ 同伦到 $𝕊^(n)$

#tag("homotopy-class") := $C(X -> Y)$ 的连通分支

由于复合保持连续, 复合导出 $C(X -> Y)$ 上的运算. 证明是否良定义. 有时可逆, 使得是群运算