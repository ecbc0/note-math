#import "../module/module.typ": *
#show: module

#let A = c-bf("A", rgb("#919191"))
#let B = c-bf("B", rgb("#919191"))
#let T = c-bf("T", rgb("#919191"))

#let open(x) = math.circle(x)

the original inspiration of compactness: The intersection of closed interval nets of $ℝ$ is non-empty #link(<closed-interval-net-theorem>)[]

$0$ is a #link(<limit-point>)[limit point] of $#T _ ℝ$ of $(0,1)$. The #link(<net>)[net] $(0,1/n)$ seems to converge to $0$

But $⋂ (0,1/n) = ∅$

Compare the multiplicative inverse's $⋂ (n,∞) = ∅$

$ℝ$ does not have $∞$ corresponding to the possible limit $0$

Compare $⋂ [0,1/n) = {0}$

let $#T _X$ #link(<topology>)[topological space]. let $A subset X$

#tag("compact") $A$ compact := forall $#B$ net of $A$, exists $x in A$, forall $U in #T _X (x)$, forall $B in #B$, $U ∩ B != ∅$

Meaning: The elements of any #link(<net>)[net] $#B$ have a common limit point under the topology $#T _X$. Or, after $#T _X$ closure, the net $#B$ converges to a non-empty set or the intersection is non-empty, instead of converging to the empty set (e.g., Euclidean $ℝ^d$ converges to the empty set or converges to infinity, but there are many other complex situations)

By using the equivalent limit <==> image net finer, compact can also be represented by replacing any net $#B$ of $A$ with any source_net_space -> target_topology_space function. Although this introduces an "extra" domain source_net_space

According to the definitions of limit points and closed sets, $A$ compact is equivalent to: forall $#B$ net of $A$, $⋂_(B ∈ #B) closed(B) != ∅$

Any net can replenish all finite intersections and maintain #link(<net-same-limit>)[the same limit], so for compact, the equivalent description is 

$#T _X$ compact <==> 
$
  forall A_1 ,…, A_n in #A, closed(A)_1 ∩ ⋯ ∩ closed(A)_n != ∅ ==> ⋂_(A in #A) closed(A) != ∅
$
logically equivalent to
$
  ⋂_(A in #A) closed(A) = ∅ ==> exists A_1 ,…, A_n in #A, closed(A)_1 ∩ ⋯ ∩ closed(A)_n = ∅
$
logically equivalent to #tag("compact-finite-open-cover")
$
  ⋃_(A in #A) open(A) = X ==> exists A_1 ,…, A_n in #A, open(A)_1 ∩ ⋯ ∩ open(A)_n = X
$

#tag("compact-subset") $S subset X$ := #link(<topology-subspace>)[] $#T _S$ compact

recall #link(<closed-in-subspace>)[], $"closed"(A,#T _S) = S ∩ "closed"(A,#T _X)$, denoted as $S ∩ closed(A)$

compact-subset logically equivalent to
$
  forall A_1 ,…, A_n in #A, S ∩ closed(A)_1 ∩ ⋯ ∩ closed(A)_n != ∅ ==> S ∩ ⋂_(A in #A) closed(A) != ∅
$
logically equivalent to
$
  S ∩ ⋂_(A in #A) closed(A) = ∅ ==> exists A_1 ,…, A_n in #A, S ∩ closed(A)_1 ∩ ⋯ ∩ closed(A)_n = ∅
$
logically equivalent to
#tag("compact-subset-finite-open-cover")
$
  S subset ⋃_(A in #A) open(A) ==> exists A_1 ,…, A_n in #A, S subset open(A)_1 ∩ ⋯ ∩ open(A)_n
$
compact-subset is closed under finite unions. this is easy to proof

#tag("closed-set-in-compact-space-is-compact") $#T _X$ compact and $S$ closed ==> $S$ compact

_Proof_
#indent[
  $S$ closed in $#T _X$ ==> $forall A subset S, "closed"(A,#T _S) = "closed"(A,#T _X)$. by #link(<closed-in-subspace>)[]

  Reusing $#T _X$ compact to get $⋂_(A in #A) closed(A) != ∅$ and thus get $S$ compact
]
Hausdorff space := $forall x,x' in X, x != x' ==> exists B_x, B_x' in #T _X, B_x ∩ B_x' = ∅$

Hausdorff + compact ==> closed. At this time, compact is closed for any intersection

#tag("continous-preserve-compact") let $f : X -> Y$. $f(X)$ is compact-subset of $#T _Y$

_Proof_
#indent[
  
  Using topology-subspace, just need to handle the case $f(X) = Y$

  let $#A$ be net of $Y$. to prove $⋂_(A in #A) closed(A) != 0$

  ${f^(-1) (A) : A in #A}$ is net of $X$

  $#T _X$ compact ==> $⋂_(A in #A) Closed(f^(-1)(A)) != 0$

  The inverse image of a continuous function preserves closed $Closed(f^(-1)(A)) ⊆ f^(-1)(closed(A))$. Use the #link(<inverse-image>)[property] of inverse images on $∩$
  $
    ∅ != f(⋂_(A in #A) f^(-1)(closed(A))) subset ⋂_(A in #A) f(f^(-1)(closed(A)))
  $
  $f : X -> Y$ surjective ==> $f(f^(-1)(closed(A))) = closed(A)$
  
  so $⋂_(A in #A) closed(A) != ∅$, so $#T _Y$ compact
]
Contrapositive: Under a continuous function, the inverse image of non-compact is non-compact

#tag("quotient-topology-preserve-compact") For #link(<quotient-topology>)[] $π : X ⇝ X/∼$, source space $X$ compact ==> quotient space $X/∼$ compact. because the quotient map $π$ is continuous, it preserves compact

#let prod = $limits(product)_(i in I) X_i$ 

#tag("product-topology-preserve-compact") #link(<product-topology>)[] preserves compact

_Proof_
#indent[
  Take a net $\#A$ of $prod$, need to prove $⋂_(A in #A) closed(A) != ∅$ or $exists x in prod, x in ⋂_(A in #A) closed(A)$

  ${f_i (A) : A in #A}$ is net of $X_i$
  
  According to $X_i$ compact $⋂_(A in #A) Closed(f_i (A)) != ∅$
  
  ==> $forall "index" i in I, exists x_i in ⋂_(A in #A) Closed(f_i (A))$
  
  According to the definition of closure $Closed(f_i (A))$ 
  $
    forall B_(x_i) in #B _(i) (x_i) \ 
    f_i (A) ∩ B_(x_i) != ∅
  $
  ==> 
  $
    ∅ &!= (f_i "restrict to" A)^(-1) (f_i (A) ∩ B_(x_i)) \
    &= A ∩ f_i^(-1)(B_(x_i))
  $
  Defined by the point-net system of product topology and the definition of closure $closed(A)$

  ==> $exists x in prod, x in ⋂_(A in #A) closed(A)$
]