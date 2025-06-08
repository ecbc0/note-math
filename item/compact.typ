#import "/module/module.typ": *
#show: module

#let A = c-bf("A","#919191")
#let B = c-bf("B","#919191")
#let T = c-bf("T","#919191")

#let open(x) = math.circle(x)

compact 的原初的启发: $ℝ$ 的闭区间网的交集非空 #link(<closed-interval-net-theorem>)[]

$0$ 是 $(0,1)$ 的 $#T _ ℝ$ 的 #link(<limit-point>)[极限点]. #link(<net>)[网] $(0,1/n)$ 看似收敛到 $0$

但是 $⋂ (0,1/n) = ∅$

比较乘法反演的 $⋂ (n,∞) = ∅$

$ℝ$ 没有 $∞$ 对应到可能的极限 $0$

比较 $⋂ [0,1/n) = {0}$

let $#T _X$ #link(<topology>)[拓扑空间]. let $A subset X$

#tag("compact") $A$ compact := forall $#B$ net of $A$, $⋂_(B ∈ #B) closed(B) != ∅$

含义: 任何 #link(<net>)[网] $#B$ 的元素在拓扑 $#T _X$ 下有共同的极限点集. 或者, 经过 $#T _X$ 闭包后网 $#B$ 收敛到非空集 or 交集非空, 而不是收敛到空集 (例如 Euclidean $ℝ^d$ 收敛到空集或者收敛到无穷远, 但还有很多其它复杂的情况)

任何网都可以补充所有的有限交集并保持 #link(<net-same-limit>)[相同的极限], 所以对于 compact, 等价的描述是 

$#T _X$ compact <==> 
$
  forall A_1 ,…, A_n in #A, closed(A)_1 ∩ ⋯ ∩ closed(A)_n != ∅ ==> ⋂_(A in #A) closed(A) != ∅
$
逻辑等价于
$
  ⋂_(A in #A) closed(A) = ∅ ==> exists A_1 ,…, A_n in #A, closed(A)_1 ∩ ⋯ ∩ closed(A)_n = ∅
$
逻辑等价于 #tag("compact-finite-open-cover")
$
  ⋃_(A in #A) open(A) = X ==> exists A_1 ,…, A_n in #A, open(A)_1 ∩ ⋯ ∩ open(A)_n = X
$

#tag("compact-subset") $S subset X$ := #link(<topology-subspace>)[] $#T _S$ compact

recall #link(<closed-in-subspace>)[], $"closed"(A,#T _S) = S ∩ "closed"(A,#T _X)$, 记为 $S ∩ closed(A)$

compact-subset 逻辑等价于
$
  forall A_1 ,…, A_n in #A, S ∩ closed(A)_1 ∩ ⋯ ∩ closed(A)_n != ∅ ==> S ∩ ⋂_(A in #A) closed(A) != ∅
$
逻辑等价于
$
  S ∩ ⋂_(A in #A) closed(A) = ∅ ==> exists A_1 ,…, A_n in #A, S ∩ closed(A)_1 ∩ ⋯ ∩ closed(A)_n = ∅
$
逻辑等价于
#tag("compact-subset-finite-open-cover")
$
  S subset ⋃_(A in #A) open(A) ==> exists A_1 ,…, A_n in #A, S subset open(A)_1 ∩ ⋯ ∩ open(A)_n
$
compact-subset 对有限并集封闭. this is easy to proof

#tag("closed-set-in-compact-space-is-compact") $#T _X$ compact and $S$ closed ==> $S$ compact

_Proof_
#indent[
  $S$ closed in $#T _X$ ==> $forall A subset S, "closed"(A,#T _S) = "closed"(A,#T _X)$. by #link(<closed-in-subspace>)[]

  再利用 $#T _X$ compact 得到 $⋂_(A in #A) closed(A) != ∅$ 从而得到 $S$ compact
]
Hausdorff 空间 := $forall x,x' in X, x != x' ==> exists B_x, B_x' in #T _X, B_x ∩ B_x' = ∅$

Hausdorff + compact ==> closed. 此时 compact 对任意交集封闭

#tag("continous-preserve-compact") let $f : X -> Y$. $f(X)$ is compact-subset of $#T _Y$

_Proof_
#indent[
  
  使用 topology-subspace, 只需处理情况 $f(X) = Y$

  let $#A$ be net of $Y$. to prove $⋂_(A in #A) closed(A) != 0$

  ${f^(-1) (A) : A in #A}$ is net of $X$

  $#T _X$ compact ==> $⋂_(A in #A) Closed(f^(-1)(A)) != 0$

  连续函数逆像保持 closed $Closed(f^(-1)(A)) = f^(-1)(closed(A))$. 使用逆像对 $∩$ 的 #link(<inverse-image>)[性质]
  $
    ∅ != f(⋂_(A in #A) f^(-1)(closed(A))) subset ⋂_(A in #A) f(f^(-1)(closed(A)))
  $
  $f : X -> Y$ 满射 ==> $f(f^(-1)(closed(A))) = closed(A)$
  
  so $⋂_(A in #A) closed(A) != ∅$, so $#T _Y$ compact
]
逆否命题: 连续函数下, non-compact 逆像是 non-compact 的

#tag("quotient-topology-preserve-compact") 对于 #link(<quotient-topology>)[] $π : X ⇝ X/∼$, 源空间 $X$ compact ==> 商空间 $X/∼$ compact. by 商映射 $π$ 连续所以保持 compact

#let prod = $limits(product)_(i in I) X_i$ 

#tag("product-topology-preserve-compact") #link(<product-topology>)[] 保持 compact

_Proof_
#indent[
  取 $prod$ 的网 $#A$, 需要证明 $⋂_(A in #A) closed(A) != ∅$ or $exists x in prod, x in ⋂_(A in #A) closed(A)$

  ${f_i (A) : A in #A}$ is net of $X_i$
  
  根据 $X_i$ compact $⋂_(A in #A) Closed(f_i (A)) != ∅$
  
  ==> $forall "index" i in I, exists x_i in ⋂_(A in #A) Closed(f_i (A))$
  
  根据闭包 $Closed(f_i (A))$ 的定义 
  $
    forall B_(x_i) in #B _(i) (x_i) \ 
    f_i (A) ∩ B_(x_i) != ∅
  $
  ==> 
  $
    ∅ &!= (f_i "restrict to" A)^(-1) (f_i (A) ∩ B_(x_i)) \
    &= A ∩ f_i^(-1)(B_(x_i))
  $
  由积拓扑的点网系统定义和闭包 $closed(A)$ 的定义

  ==> $exists x in prod, x in ⋂_(A in #A) closed(A)$
]