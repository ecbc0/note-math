#import "../module/module.typ": *
#show: module

#let B = bf("B")
#let I = bf("I")

Topology doesn't seem to provide a sufficient motivation for using the concept of a net, but the definitions of measure and integral should.

net lies between partial and linear order. in a partial set $P$, add $forall a, b in P ==> exists c in P, c <= a and c <= b$

This is often also expressed as an equivalent set net.

#tag("set_net") 
#indent[
$#B$ a net of $A$ := $#B ⊆ Subset(A)$ (a collection of subset of $A$) with property 
  - $forall B ∈ #B, B != ∅$
  - $forall B_1 ,…, B_n ∈ #B, exists B ∈ #B, B ⊆ B_1 ∩ ⋯ ∩ B_n$ 
  - (Meaning: Non-empty before converging to the limit. If the number of $#B$ elements is infinite, then the finite intersection controls the direction of convergence, although possibly $∅ = ⋂ #B$. If $#B = {B_1 ,…, B_n}$ has a finite number of elements, then $∅ != B_1 ∩ ⋯ ∩ B_n ∈ #B$)
]
If a collection of sets have property that all finite intersection is non empty (net bases), then we can get a net by supplementing with all finite intersections

For a collection of sets, we can define all maximal sub collection of sets that having the property that that all finite intersection is non empty

*Example* $X = ℕ$, under $X(<=) := ℕ(>=)$ is a net. Or use a set net $#B = {n,n+1, ⋯}_(n = 0 .. ∞)$

Point net or net containing point $x in X$ $#B (x) := forall B in #B (x), x in B$

Net $#B$ is finer than $#B'$ := $forall B' in #B', exists B in #B, B ⊆ B'$ \
And this implies $⋂ #B ⊆ ⋂ #B'$

#tag("net_same_limit") $#B,#B'$ have the same limit := are mutually finer than each other

Not all nets with the same limit are useful. Set theoretically, $∪$ can be used to construct new nets with the same limit, but there is a lot of redundancy

Any net can be supplemented with all finite intersections ${B_1 ∩ ⋯ ∩ B_n : n in ℕ, B_1 ,…, B_n in #B}$ to become a new net, while maintaining the same limit

#tag("hom_limit") Limit homomorphism between nets := 
#indent[
  $f : X -> Y$. Net $f(#B _X)$ is finer than $#B _Y$
  $
    forall B_Y in #B _Y \ 
    exists B_X in #B _X \
    f(B_X) ⊆ B_Y "or" B_X subset f^(-1) (B_Y)
  $
  $⊆$ Describing it with points is $forall a in B_X, f(a) in B_Y$
]

*Example* 

- Sequence $ℕ -> ℝ$ converges $lim_(n -> ∞) a_n = a$
#indent[ 
  Using all open intervals containing $a$, $#B _ ℝ = #I (a)$ and $#B _ ℕ = {n, n+1, ⋯}_(n = 0 .. ∞)$, then $ℕ -> ℝ$ is a limit homomorphism
  $
    forall I(a) in #I (a) \
    exists {n,n+1, ⋯} in #B _ ℕ \
    {a_n, a_(n+1), ⋯} ⊆ I(a)
  $
]
- $ℝ -> ℝ$ Function limit
#indent[  
  let $f : ℝ -> ℝ, f(x) = y$, from $#I (x)$ to $#I (y)$
  $
    forall I_y in #I (y) \ 
    exists I_x in #I (x) \
    f(I_x) ⊆ I_y
  $
] 