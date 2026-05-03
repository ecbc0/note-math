#import "../module/module.typ": *
#show: module

#let B = bf("B")
#let T = bf("T")

A net system := $X$ where each point has a #link(<net>)[net] $#B (x)$. 

*Example* The point net system composed of all spheres $𝔹(x,r)$ in Euclidean space

A net system is not sufficient as a definition of a topological space. For example, it cannot be proven that the closure is a closed set i.e. $closed(closed(A)) = closed(A)$. Example: Let $X = {1, 2, 3}$. Let the net of $2$ have only one element ${1, 2, 3}$. Let the net of $3$ have only one element ${2, 3}$. Then the closure of ${1}$ is ${1, 2}$, and its closure again is ${1, 2, 3}$ 

#tag("topology") defined as a net system + limit separation of interior and exterior of any set $A$
- Interior $x in "int"(A):= exists B in #B (x), B ⊆ A$
- Exterior $x in "ext"(A) := exists B in #B (x), B ⊆ A^∁$ 
- Limit separation 
  - $forall x in "int"(A), exists B(x) in #B (x), B(x) ⊆ "int"(A)$
  - $forall y in "ext"(A), exists B(y) in #B (y), B(y) ⊆ "ext"(A)$

Boundary defined as $"bd"(A) := X ∖ ("int"(A) ∪ "ext"(A))$. Its points may belong to $A$ or to $A^∁$

Only need to prove the case of $"int"$, then we can obtain the case of $"ext"$. This is also equivalent to prove that all interiors are open sets ($"int" ∘ "int" = "int"$), or all closures are closed sets.

The proof of topology generation for open interval net of $ℝ$ is to use a distance function and an infimum, proving that a point is in interior ==> exists $δ > 0$ such that $x in B(x, δ) ⊆ "int"(A)$.

In #link(<Minkowski_space>)[], a point $x$ has multiple nets that are not limit-equivalent

#tag("continuous") Topological continuity := $f : X -> Y$ for every open set $V$ with $f(x) in V$, there exists an open set $U$ with $x in U$ such that $f(U) ⊆ V$ 

*Note*: It's not enough to only preserve limit #link(<hom_limit>)[]. It seems that preserving the limit is not as strong as continuity. Only preserving the limit cannot prove that the inverse image of a continuous function preserves the closure (preserve in the sense of subset $overline(f^(-1)(A)) ⊆ f^(-1)(closed(A))$).

let $A ⊆ X$

#tag("limit_point") Limit point := $x in X : forall B in #B (x), A ∩ B ≠ ∅$

$x in A$ ==> $x$ is a limit point of $A$

The set of limit points of $A$ is the interior $"int"(A)$ + boundary $"bd"(A)$

Exterior limit points := $x in X : forall B in #B (x), A^∁ ∩ B ≠ ∅$, which is the exterior $"ext"(A)$ + boundary $"bd"(A)$

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

#tag("continuous_closed") Continuous <==> The inverse image of each $#T _Y$ topologically closed set is a $#T _X$ topologically closed set

#tag("open") Open set := The interior is itself $"int"(A) = A$

$"int"(A)$ is the largest open set in $A$ _Proof_ $A ⊆ B ==> "int"(A) ⊆ "int"(B)$

#tag("union_preserve_open") Let $C$ be a family of open sets, then $⋃ C$ is also an open set. 

_Proof_ For $x in ⋃ C$, take $S in C$ such that $x in S$. $S$ is an open set, take $B(x) in #B (x)$, $B (x) ⊆ S$. Thus, since the union $S ⊆ ⋃ C$, it follows that $B(x) ⊆ ⋃ C$, so $x in "int"(⋃ C)$, so $⋃ C ⊆ "int"(⋃ C)$, so $⋃ C = "int"(⋃ C)$ is an open set.

#tag("finite_intersection_preserve_open") $A, B$ are open sets ==> $A ∩ B$ is an open set.

_Proof_ Let $x in U ∩ V$. Take $S_U, S_V in #B (x), S_U ⊆ U, S_V ⊆ V$. By the definition of a net, $exists S in #B (x), S ⊆ S_U ∩ S_V$. And $S ⊆ U ∩ V$. Therefore $x in "int"(U ∩ V)$. 

#tag("continuous_open") Continuous <==> The inverse image of each $#T _Y$ topologically open set is a $#T _X$ topologically open set

From open set version to net version of the topology: Supplement the open set with all finite intersections to obtain the net at each point. The open set can be recovered using the open set construction method of the net.

_Proof_ ==>. For an open set in $#T _Y$, for each $x in X$ and $f(x) in V$, take an open set $U(x) ⊆ f^(-1)(V)$ such that $x in U(x)$. Then the union of open sets is an open set $⋃_(x in f^(-1)(V)) U(x) = f^(-1)(V)$.

Since this is no longer the inverse image description version, the open set here cannot be changed to a closed set. Counterexample: Discontinuous function $f(x) = cases(0 "if" x < 0, 1 "if" x >= 0)$. Then the intersection of the inverse image of a closed set $C$ containing $1$ and the closed set $(-∞, 0]$ is also an inverse image, and $f(C ∩ (-∞, 0)) = {1} ⊆ C$. 

#tag("continuous_imp_inv_image_closure_subset_closure_inv_image") Continuous ==> $overline(f^(-1)(A)) ⊆ f^(-1)(closed(A))$

A counterexample to $=$. Using $f: ℝ → ℝ^2, f(x) = (x, 0)$. Let $A = { (x, y) in ℝ^2 : y > 0 }$, then $f(x) ∉ A$, therefore $f^(-1)(A) = ∅$, and thus $overline(f^(-1)(A)) = ∅$. However, $closed(A) = { (x,y) in ℝ^2 : y >= 0}$, therefore $f^(-1)(closed(A)) = ℝ$.

$f$ is an analytic function, not just a continuous function.

#tag("continuous_imp_interior_inv_image_subset_inv_image_interior") Continuous ==> $f^(-1)("int"(A)) ⊆ "int"(f^(-1)(A))$

A counterexample to $=$. Let $f: ℝ -> ℝ$ be a constant function $f(x) ≡ 0$. Let $A = {0}$, then $"int"(A) = ∅$, $f^(-1)("int"(A)) = ∅$. However, $f^(-1)(A) = ℝ$, therefore $"int"(f^(-1)(A)) = ℝ$

Topology from open set version to net version: supplement all finite intersections to the open sets to get a net at each point. The open sets can be recovered using the construction method of open sets for nets.