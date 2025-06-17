#import "../module/module.typ": *
#show: module

#let T = text("T")

*Example* #raw("#link(<interval>)[]") #raw("#link(<best-interval-decomposition>)[]")

#tag("connected") Connected or limit point connected := limit point set decomposition is no longer possible or closed set decomposition is no longer possible

$X = ⨆_(i in I) A_(i)$ with $A_i$ closed ==> $|I| = 1$

Intuitively speaking, connected = cannot give any substantial decomposition. For any set decomposition $X = ⨆ A_i$, from $X = ⋃ closed(A)_i$ + connected, each $A_i$ must be connected to some other $A_j$ after the limit point: $exists j != i, closed(A)_i ∩ closed(A)_j != ∅$

Each $A_i$ of the closed set decomposition is an open set

_Proof_ $A_i = X ∖ Closed(⋃_(i' != i) A_i')$

The definition of connected is equivalent to the version decomposed into two closed sets

$X = A ⊔ A'$ with $A,A'$ closed ==> $(X = A) or (X = A')$

_Proof_ Taking the limit of the decomposition yields $Or_(i in I) X = A_i$

Connected subset := topological subspace connected

*Example* $ℝ$ is connected. $ℝ$ has connected and disconnected sets. Connected sets may not be $#T _ ℝ$ closed sets

#tag("real-connected-is-interval") Connected sets of $ℝ$ are intervals _Proof_ by interval connected + optimal interval decomposition + number of intervals in optimal interval decomposition $> 1$ is disconnected

#tag("connected-imply-closure-connected") $S$ is a connected set ==> $closed(S)$ is a connected set

_Proof_ 
#indent[
  $closed(S)$ close ==> $#T _(closed(S))$ closed set is $#T _X$ closed set
  
  let closed set decomposition $closed(S) = A ⊔ A'$
  
  $#T _S$ closed set decomposition $S = (S ∩ A) ⊔ (S ∩ A')$ and $S$ connected ==> one of them is an empty set, say $S ∩ A' = ∅$ so $S subset A$ 
  
  But $closed(S)$ is the smallest closed set containing $S$, so $closed(S) = A$ and $A' = ∅$
]
$closed(S)$ is not a connected set ==> $S$ is not a connected set

#tag("connected-componet") Connected component decomposition := Limit point set decomposition's limit $X = lim ⨆_(i in I) A_(i)$, such that each limit point set $A_i$ cannot be further decomposed i.e. connected

It is indeed the unique limit in the sense of #raw("#link(<net>)[net]"). The net comes from the decomposition of $X$ into two closed sets, which can be taken as a common refinement decomposition + closed sets are closed under finite intersection.

$S$ is $#T _S$ connected or $S$ cannot be $#T _S$ closed set decomposition and $#T _X$ has closed set decomposition $A ⊔ A'$ ==> $(S subset A) ⊕ (S subset A')$

_Proof_ The closed set decomposition of $#T _S$, $(S ∩ A) ⊔ (S ∩ A')$, results in one of the sets being an empty set

$A$ is a limit point connected set ==> $A$ is in the only one limit point connected component of $X$ 

_Proof_ The points of $A$ must be in $X$ and therefore in some connected component.

==> Even if $X$ is only decomposed into connected sets, it is already a connected component decomposition.

The union of connected sets $S_i$ with a common point $x$, $⋃_(i in I) S_i$, is connected
#indent[
  recall #raw("#link(<topology-subspace>)[inheritance of subspace topology]"). So connectedness is also inherited.

  So we only need to deal with the case of $⋃_(i in I) S_i = X$
]
_Proof_ The connected sets containing $x$ are all in the same connected component. This shows that $⋃_(i in I) S_i = X$ has only one connected component, and is therefore connected.

A connected component is a maximal element of the $⊂$ #raw("#link(<maximal-linear-order>)[maximal linear order]") of a connected set family.

The image of a continuous function transmits connectedness.

The inverse-image of a continuous function transmits disconnectedness as contrapositive

#let prod = $limits(product)_(i in I) X_i$

_Proof_ Closed set decomposition $Y = A ⊔ A'$ ==> Closed set decomposition $X = f^(-1)(A) ⊔ f^(-1)(A')$

==> #tag("mean-value-theorem-continuous") Intermediate Value Theorem for Continuous Functions. The image $f(X)$ of a continuous function $f : X -> ℝ$ is connected #raw("#link(<real-connected-is-interval>)[therefore]") is an interval

If any two points in $Y$ are in some connected subset $S$, then $Y$ is connected. _Proof_ let $Y = A ⊔ A'$ with $A,A'$ closed, prove that $A or A' = ∅$. Or $Y = ⋃_(y in Y) S(y_0,y)$ and the union of connected sets $S(y_0,y)$ that have a common point $y_0$ is connected

==> let $X$ be connected. If any two points in $Y$ are in some connected image $f(X)$ of a continuous function, then $Y$ is connected

==> Path connected

#tag("product-topology-preserve-connected") #raw("#link(<product-topology>)[Product topology]") preserves connectedness

_Proof_
#indent[
  Using the common point method + each $X_i$ connected ==> all "cross-shaped" subsets are connected
  $
    C_(j_1 ,…, j_n) = product_(i in I) cases(
      X_i &"if" i = j_1 \,…\, j_n,
      {x_i} &"else"
    )
  $ 
  Using the common point method again, the union of cross-shaped subsets $C = ⋃_(j_1 ,…, j_n) C_(j_1 ,…, j_n)$ forms a connected subset
  
  $closed(C) = prod$ and #raw("#link(<connected-imply-closure-connected>)[]") ==> $prod$ connected

  _Proof_ of $closed(C) = X$
  #indent[
    Just need to prove that each set of the point-net system of $prod$ intersects some cross shape $C_(j_1 ,…, j_n)$

    The set of the point-net system of $prod$ is
    $
      f_(i_1)^(-1) (B_(i_1)) ∩ ⋯ ∩ f_(i_n)^(-1) (B_(i_n))
    $
    It intersects the cross shape $C_(j_1 ,…, j_n)$
  ]
]
let the connected component decomposition $X_i = product_(j in J(i)) A_(i, j(i))$

All connected components of $prod$ are

$ product_(i in I) A_(i, j(i)) : j in product_(i in I) J(i) $

_Proof_ Using #raw("#link(<dependent-distributive>)[]") $product_(i in I) ⨆_(j in J) A_(i,j(i)) = ⨆_(j in J) product_(i in I) A_(i,j(i))$ and the product being connected implies product connectedness, so $product_(i in I) A_(i, j(i))$ is connected, thus it can no longer be decomposed

Define (how?) the topology or limit point of $f in C(X -> Y)$ (should be something compact open topology?)

#tag("homotopy") homotopy or limit point homotopy := $C(X -> Y)$ is limit point connected

*Example* $ℝ^(n+1) ∖ 0$ is homotopic to $𝕊^(n)$

#tag("homotopy-class") := the connected component of $C(X -> Y)$

Since composition preserves continuity, composition induces an operation on $C(X -> Y)$. Prove whether it is well-defined. Sometimes it's invertible, making it a group operation