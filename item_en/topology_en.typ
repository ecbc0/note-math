#import "../module/module.typ": *
#show: module

#let B = c-bf("B", rgb("#919191"))
#let T = c-bf("T", rgb("#919191"))

#tag("topology") Topology := $X$ Every point has a #link(<net>)[point net] $#B (x)$. Such a point net system is denoted as $#T _X$, which is similar to Euclidean space

_*Todo*_ It's wrong here; it needs correction. This definition of topological space is insufficient to prove that the closure is a closed set. Further assumptions about limit points and closures are needed to simulate the condition that "the intersection of any closed sets in a topological space is a closed set."

*Example* The point net system composed of all spheres $𝔹(x,r)$ in Euclidean space

In #link(<Minkowski-space>)[], a point $x$ has multiple nets that are not limit-equivalent

#tag("continuous") Topological continuity := $f : X -> Y$ is #link(<hom-limit>)[] at every point

let $A ⊂ X$

#tag("limit-point") Limit point := $x in X : forall B in #B (x), A ∩ B ≠ ∅$

$x in A$ ==> $x$ is a limit point of $A$

For general nets, different types of limit points need to be classified

#tag("closure") Closure $closed(A)$ := $x in X$, $x$ is a limit point of $A$

The closure $closed(A)$ of $A$ is the set of all limit points of $A$

$A subset closed(A)$

*Example* Under $ℝ$ topology, the closure of the open interval $(a,b)$ is the closed interval $[a,b]$. The closure of $ℚ$ is $ℝ$

#tag("closed") $A$ is a closed set := $closed(A) = A$

$A$ is a closed set <==> $A$ contains all limit points of $A$

forall $A$, $closed(A)$ is a closed set. _Proof_ Other points do not satisfy $forall B in #B (x), A ∩ B != ∅$

$closed(closed(A)) = closed(A)$

$closed(A)$ is the smallest closed set surrounding $A$. _Proof_ $A subset B ==> closed(A) subset closed(B)$ and closed set $B = closed(B)$ ==> $closed(A) subset B$

Limit points $x in closed(A)$ can be classified as isolated points or accumulation points

Isolated point := $x in A and exists B_x in #B (x), A ∩ B_x = ∅$

Accumulation point := $forall B_x in #B (x), (A ∖ x) ∩ B_x ≠ ∅$

A continuous function does not guarantee that a closed set is mapped to a closed set. *Example* $1/(1+x^2)$ maps $ℝ$ to $(0,1]$

According to the definition of limit point

#tag("continuous-closed") Continuous <==> The inverse image of each $#T _Y$ topologically closed set is a $#T _X$ topologically closed set

#tag("open") Open set := complement of a closed set

#tag("continuous-open") Continuous <==> The inverse image of each $#T _Y$ topologically open set is a $#T _X$ topologically open set