#import "../module/module.typ": *
#show: module

#let affine = "affine"

#tag("affine-space") 
#indent[
  The affine space of a finite-dimensional $ℝ$ vector space $V$ is origin selection + coordinate/vector space $(a, v) in (L, V)$
  
  where $L$ and $V$ are set-theoretically isomorphic, both isomorphic to $ℝ^n$
  
  Using addition to represent the position after traveling unit time along vector $v$ starting from origin $a$: $(a, v) ⇝ a + v in L$

  Using subtraction to represent the vector between two points $a, b in L$: $b - a in V$ corresponds to the unique $v in V$ such that $b = a + v$

  The affine space allows changing the origin. When origin $+ v$, coordinates $- v$

  Affine subspace is equivalent to origin + vector subspace
]
*Example* Parameterization of a 2D subspace in 3D ${x + y + z = 1}$: $(x, y, 1 - (x + y))$

#tag("affine-combination") 
#indent[
  Affine combination of points $x_0, x_1 ,…, x_N$
  $
    affine(x_0 ,…, x_N) = sum_(0 .. N) t_i ⋅ x_i \
    t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 1
  $
  
  is a well-defined affine point, meaning the coordinate definition does not depend on the choice of origin. Let the coordinates of $x_i$ be $v_i$, then the coordinates of point $sum_(0..N) t_i x_i$ are $sum_(0..N) t_i v_i$. If we change the origin $v_i' = v_i + Δ$, then the coordinates of point $sum_(0..N) t_i x_i$ will also be translated by $Δ$ along with the origin
  $
    sum t_i (v_i + Δ) = (sum t_i v_i) + (sum t_i) Δ = (sum t_i v_i) + Δ " by " sum t_i = 1
  $
  Intuition for affine combination: the simplest example is proportional points on a line determined by two points #image("../image/affine-combination-1.png", width: 40%)

  Nested affine combinations can be used
  
  For example, the linear combination $t_0 x_0 + t_1 x_1 + t_2 x_2, sum t_i = 1$ of points $x_0, x_1, x_2$ with the additional restriction $0 <= t_i <= 1$ forms a triangle
  
  #image("../image/affine-combination-2.png", width: 30%)
  
  It can be considered as $(s_0 y_0 + s_1 y_1), s_0, s_1 in ℝ, (s_0 + s_1) = 1$, where 
  - $y_0 = (t_0 x_0 + t_1 x_1), t_0, t_1 in ℝ, (t_0 + t_1) = 1$ is the affine combination of $x_0, x_1$, representing the side of the triangle formed by $x_0, x_1$, 
  - $y_1 = x_2$
  
  The nesting is denoted as $((x_0, x_1),x_2)$, and this operation should be associative
  $
    (x_0, x_1, x_2) = ((x_0, x_1),x_2) = (x_0, (x_1, x_2))
  $
]
#tag("affine-coordinate") The $t_i$ in the point $sum t_i x_i, sum t_i = 1$ can be considered as a kind of coordinate based on the points $x_i$. Called affine coordinates. *alias* barycentric coordinates #tag("barycentric-coordinate")

*Example* #tag("center-of-affine-point-set") Midpoint/centroid of affine combination $sum_(0..N) t_i x_i$ has affine coordinates $t_i ≡ 1/(N + 1)$

#tag("affine-independent") 
#indent[
  Affine independent := For each $k in 0 ,…, N$, vertex $x_k$ is not in the affine combination of $x_0 ,…, x_N ∖ x_k$, i.e.
  $
    forall t_i in ℝ, sum t_i = 1 \
    x_k != sum_(i = 0 .. N ∖ k) t_i x_i
  $
  This means each point $x_k$ in the affine combination is not redundant. Intuitively, $x_k$ is not in the affine subspace spanned by $x_0 ,…, x_N ∖ x_k$ 

  Affine dependent := There exists $k in 0 ,…, N$, vertex $x_k$ is in the affine combination of $x_0 ,…, x_N ∖ x_k$, i.e.
  $
    exists t_i in ℝ, sum t_i = 1 \
    x_k = sum_(i = 0 .. N without k) t_i x_i
  $
  This means there exists a point $x_k$ among the affine combination points that is redundant. Intuitively, $x_k$ is in the affine subspace spanned by $x_0 ,…, x_N ∖ x_k$ 

  Affine independent <==> After selecting one point e.g. $x_0$ as origin, $x_i - x_0$ are linearly independent

  If vertices $x_0 ,…, x_N$ are affine independent, any affine combination point $sum t_i x_i$ has a unique coordinate representation
  $
    sum t_i x_i = sum t'_i x_i ==> forall i, t_i = t'_i
  $
  
  In particular, the unique coordinates of point $x_k$ are $t_k = 1 and t_(1 ,…, N without k) = 0$

  An $n$-dimensional affine space has at most $n+1$ affinely independent points. This matches the count of $1$ origin + $n$ vectors numerically

  If $t_0 ,…, t_N in ℝ, sum_(0 .. N) t_i = 0$ instead of $sum_(0 .. N) t_i = 1$, although the coordinate $sum t_i v_i$ does not change with origin change, it is not an affine point
]
#tag("affine-map-point-ver") *alias* #tag("simplicial-map")
 Affine map := A map taking points $y_1 ,…, y_n$ of another affine space as vertices to points $f(x_i) = y_i$, for non-vertex cases $f(sum t_i x_i) = sum t_i f(x_i)$

Affine map <==> After choosing origins for two affine spaces, for the two linear spaces, linear map + translation

Note that linear maps and translations do not commute. Example: $(1,0)$ in $ℝ^2$ 
- Rotate by $90$ degrees first to get $(0,1)$, then translate by $(1,0)$ to get $(1,1)$
- Translate by $(1,0)$ first to get $(2,0)$, then rotate by $90$ degrees to get $(2,0)$

#let convex = "convex"

#tag("convex-hull") $convex(x_0 ,…, x_N)$ := the affine combination $affine(x_0 ,…, x_N)$ of $x_0 ,…, x_N$ with the additional restriction $0 <= t_i <= 1$

#tag("simplex") := convex hull formed by affinely independent points

#image("../image/simplex.png", width: 70%)

#tag("extreme-point-of-convex-hull")
#indent[
  Sometimes, among the points $x_0 ,…, x_N$ generating a convex hull, some points are redundant (note the restriction $0 <= t_i <= 1$), they can be generated by other points. Extreme points are those that cannot be generated by other points
]
*Prop* Extreme points already generate the original convex hull, and are the minimal generating set

_Proof_ Continuously eliminate redundant points from $x_0 ,…, x_N$ and $sum t_i x_i$. Extreme points belong to the convex hull and cannot be generated by other points, only by themselves, so they are necessary for generating the convex hull

*Prop* The extremum of an affine function $f$ with domain $S = convex(x_0 ,…, x_N)$ and codomain $ℝ$ can be attained at extreme points

_Proof_
#indent[
  Suppose the extremum is attained at $p$

  $p$ is generated by extreme points $p = sum t_i x_i, sum t_i = 1$

  Define the extremum of function values at extreme points
  $
    a &= cases(max_i (f(x_i)) " if " f(p) = max_(x in S) f(x), min_i (f(x_i)) " if " f(p) = min_(x in S) f(x)) \
    &= f(x_j)
  $

  $f$ is affine, so
  $
    f(p) 
    &= f(sum t_i x_i) \
    &= sum t_i f(x_i) \
    &<= sum t_i max_(i = 0 ,…, N) f(x_i) \
    "or " & >= sum t_i min_(i = 0 ,…, N) f(x_i) \
    &= a & space " by " sum t_i = 1 \
    &= f(x_j)
  $
  Thus $f(p) = a = f(x_j)$. Hence the extremum $f(p)$ can attain the extreme value $a = f(x_j)$ at the extreme point $x_j$
]

/// interval
#let intv = "intv"
/// open_interval
#let o_intv = "o_intv"

Let finite-dimensional real affine space $L$ and its vector space $V$

*Def* $intv(x,y)$ := interval of $x,y in L$ := convex hull generated by $x,y$

*Def* $#o_intv (x,y)$ := open interval := convex hull generated by $x,y$, with the additional condition $0 < t_x , t_y < 1$

*Def* #tag("convex") convex set $S$ := $forall x,y in S, intv(x,y) in S$

*Prop* Intersection of convex sets is convex

The following references @ref-34

#let core = "core"
/// linearly-accessible
#let lin_a = "lin_a"

*Def* #tag("core") Similar to topological interior. $x in core(S) := (x in S) and (forall v in V "with" v != 0, exists λ > 0, intv(x, x + λ v) ⊆ S)$

*Prop* #tag("finite-intersect-preserve-core") $core(S_1 ∩ S_2) = core(S_1) ∩ core(S_2)$. _Proof_ $⊆$ is obvious. $⊇$ uses $λ = min(λ_1, λ_2)$

*Def* #tag("linearly-accessible") Similar to topological closure. $y in #lin_a (S) := (y in S) or (exists v in V "with" v != 0, #o_intv (y, y + v) ⊆ S)$

*Prop* $core (S) ⊆ S ⊆ #lin_a (S)$

let $S$ convex

*Prop* let $p in S, x in core(S)$. then $#o_intv (p, x) ⊆ core(S)$. Corollary: $core(core(S)) = core(S)$

_Proof_
#indent[
  let $t in (0,1)$. let $v in V "with" v != 0$
  
  We need to show $(1 - t) p + t x in core(S)$
  
  Need to show there exists $λ > 0$ such that $intv((1 - t) p + t x, (1 - t) p + t x + λ v) ⊆ S$

  #image("../image/convex-open-interval-1.png")

  Since $x in core(S)$, there exists $λ_1 > 0$ such that $intv(x, x + λ_1 v) ⊆ S$

  $forall λ_2 in [0, λ_1], x + λ_2 v in S$

  Since $S$ is convex, $(1 - t) p + t (x + λ_2 v) in S$. Let $λ = t λ_1$ to conclude
]
*Prop* #tag("core-open-interval-core") let $y in #lin_a (S)$, let $x in core(S)$. then $#o_intv (x,y) ⊆ core(S)$

_Proof_
#indent[
  If $y in S$ then reduce to previous prop

  #image("../image/convex-open-interval-2.png")

  Since $y in #lin_a (S)$, there exists $v in V$ such that $#o_intv (y, y + v) ⊆ S$

  Since $x in core(S)$, there exists $λ > 0$ such that $intv(x, x - λ v) ⊆ S$

  let $t in (0,1)$. For $(1 - t) x + t y$, there exist $ρ_1, ρ_2$ such that 
  - $x - ρ_1 v in #o_intv (x, x - λ v)$
  - $x + ρ_2 v in #o_intv (y, y + v)$
  - $(1 - t) x + t y in #o_intv (x - ρ_1 v, y + ρ_2 v)$
  Since $S$ is convex, $x - ρ_1 v in S, y + ρ_2 v in S$, therefore $(1 - t) x + t y in S$

  Since this holds for all $t in (0,1)$, there exists a slightly larger $t_1$ such that 
  - $(1 - t_1) x + t_1 y) in S$ 
  - $(1 - t) x + t y in #o_intv (x, (1 - t_1) x + t_1 y)$

  Since $(1 - t_1) x + t_1 y in S, x in core(S)$, by the previous proposition, $#o_intv (x, (1 - t_1) x + t_1 y) ⊆ core(S)$, thus $(1 - t) x + t y in core(S)$
]
*Prop* $S$ convex ==> $core(S)$ convex

_Proof_ Follows from previous propositions

*Prop* $S$ convex ==> $#lin_a (S)$ convex 

_Proof_
#indent[
  let $x,y in #lin_a (S)$. We need to show $forall t in (0,1), (1 - t) x + t y in #lin_a (S)$ 

  #image("../image/convex-linearly-accessible.png")
  
  According to the definition of linearly-accessible, there exist $v, w in V$ such that $#o_intv (x, x + v), #o_intv (y, y + w) in S$

  $forall λ in (0,1), (x + λ v), (y + λ w) in S$

  By convexity, $(1 - t) (x + λ v) + t (y + λ w) in S$

  Either $(1 - t) (x + λ v) + t (y + λ w) = (1 - t) x + t y$, then $(1 - t) x + t y in S ⊆ #lin_a (S)$

  Or
  $
    (1 - t) (x + λ v) + t (y + λ w) 
    &= (1 - t) x + t y + ((1 - t) λ v + t λ w) \
    &= (1 - t) x + t y + λ ((1 - t) v + t w)
  $
  This implies there exists $(1 - t) v + t w in V$
  $
    #o_intv ((1 - t) x + t y, (1 - t) x + t y + (1 - t) v + t w) ⊆ S
  $
  Thus $(1 - t) x + t y in #lin_a (S)$
]
/// boundary
#let bd = "bd"

*Def* #tag("boundary") $bd (S) := #lin_a (S) ∖ core (S)$

Affine maps do not preserve boundaries. A simple counterexample is mapping a tetrahedron in $ℝ^3$ to a rectangle in $ℝ^2$ via an affine map determined by vertex correspondence

*Prop* Let $x in core(S), y in bd(S)$, then $f(t) = x + t (y - x)$ satisfies $f(t) ∉ S$ for $t > 1$

_Proof_ Otherwise, if there exists $t > 1$ such that $f(t) in S$, then $y in #o_intv (f(0), f(t)) ⊆ core(S)$ leading to a contradiction

*Prop* $S$ convex & $core(S) != ∅$ ==> $core(S) = core(#lin_a (S))$

_Proof_
#indent[
  $⊆$ is obvious

  $⊇$
  #indent[
    let $x in core(#lin_a (S))$
  
    Take $y in core(S)$
    
    let $v = y - x$

    Since $x in core(#lin_a (S))$, there exists $λ > 0$ such that $intv(x, x + λ v) ⊆ #lin_a (S)$

    Thus $x + λ v in #lin_a (S)$

    $x + λ v = y + (1 + λ) v$

    $1/(1 + λ) in (0,1)$

    Therefore $x in #o_intv (y, y + (1 + λ) v) ⊆ core(S)$
  ]
]

*Prop* $S$ convex & $core(S) != ∅$ ==> $#lin_a (S) = #lin_a (core(S))$

_Proof_
#indent[
  $⊇$ is obvious

  $⊆$
  #indent[
    let $x in #lin_a (S)$
    
    let $y in core(S)$

    Then $#o_intv (y, x) ⊆ core(S)$

    Take $v = y - x$. By the definition of $#lin_a$, $x in #lin_a (core(S))$
  ]
]

Note: It is possible that $core(L)(S) = ∅$ in $L$ but $core(F)(S) != ∅$ in an affine subspace $F$ of $L$

*Prop* $S$ convex & $core(S) != ∅$ ==> $#lin_a (#lin_a (S)) = #lin_a (S)$

_Proof_
#indent[
  $
    #lin_a (#lin_a (S)) 
    &= #lin_a (core (#lin_a (S))) \
    &= #lin_a (core (S)) \
    &= #lin_a (S)
  $
]

*Prop* #tag("finite-intersect-preserve-convex-closed") $#lin_a (S_1) = S_1, #lin_a (S_2) = S_2 ==> #lin_a (S_1 ∩ S_2) = S_1 ∩ S_2$

_Proof_ It is easy to see $#lin_a (S_1 ∩ S_2) ⊆ #lin_a (S_1) ∩ #lin_a (S_2)$

*Def* convex open $core(S) = S$, convex closed $#lin_a (S) = S$

We can define convex hull for general sets 

*Def* $convex(S) := { sum t_i x_i, i in ℕ, t_i >= 0, sum t_i = 1, x_i in S }$

_Proof_ (of convex)
#indent[
  let $sum t_i x_i, sum s_j y_j in convex(S)$

  let $λ_1, λ_2 >= 0, λ_1 + λ_2 = 1$. Consider
  $
    λ_1 (sum t_i x_i) + λ_2 (sum s_j y_j) 
  $
  Sum of coefficients
  $
    λ_1 sum_i t_i + λ_2 sum_j s_j = λ_1 + λ_2 = 1
  $
]
If $S$ is convex then $convex(S) = S$. In particular, for general $S$, $convex(convex(S)) = convex(S)$

*Def* $dim S$ := the smallest dimension of an affine subspace containing $S$

*Prop* #tag("full-dim-iff-core-nonempty") $dim S = n <==> core(S) != ∅$

_Proof_ core nonempty <==> can span $n$ linearly independent directions

*Prop* $convex(S) = { sum t_i x_i, 0 <= i <= dim(S) + 1, t_i >= 0, sum t_i = 1, x_i in S }$

_Proof_ When number of points $> dim(S) + 1$, they are affinely dependent, and there are redundant points

*Prop* #tag("convex-of-union") Let $A, B$ be convex, then $convex(A ∪ B) = {(1 - λ) a + λ b : a in A, b in B, λ in [0,1]}$

_Proof_ 
#indent[
  Use block summation technique. For $1 = sum_(i) (sum_(j(i)) t_(i, j(i)))$, consider 
  $
    sum_i sum_(j(i)) t_(i, j(i)) x_(i, j(i)) 
    = sum_i (sum_(j(i)) t_(i, j(i))) ⋅ (sum_(j(i)) frac(t_(i, j(i)),sum_(j(i)) t_(i, j(i))) x_(i, j(i)))
  $
  where
  $
    sum_(j(i)) frac(t_(i, j(i)),sum_(j(i)) t_(i, j(i))) = 1
  $  
]
*Prop* Let $A_1,A_2$ be convex and $A_1 ∩ A_2 = ∅$. Then there exist $B_1,B_2$ convex such that $(B_1 ∩ B_2 = ∅) and (B_1 ∪ B_2 = L)$ (i.e., complements) and $A_1 ⊆ B_1, A_2 ⊆ B_2$

_Proof_
#indent[
  Define a partial order on convex set pairs containing $A_1,A_2$ respectively and disjoint: $(S_1,S_2) < (S'_1,S'_2) := (S_1 ⊆ S'_1) and (S_2 ⊆ S'_2)$
  
  By #link(<maximal-linear-order-exists>)[], take a maximal linearly ordered chain, take the union of the components of the pairs respectively, denote the result as $(C,D)$

  It is easy to prove $C ∩ D = ∅$. We also need to prove $C ∪ D = L$

  Suppose $p in L ∖ (C ∪ D)$

  #image("/image/convex-separate-1.png", width: 80%)

  Obviously $C ⊊ convex(C ∪ p)$, by the maximality of $(C,D)$ in the partial order, $convex(C ∪ p) ∩ D != ∅$
  
  Take $d_1 in convex(C ∪ p) ∩ D$. Since $C ∩ D = ∅$, $d_1 ∉ C$. By #link(<convex-of-union>)[], $convex(C ∪ p) = {λ C + (1 - λ) p : λ in [0,1]}$, thus there exists $c in C$ such that $d_1 in intv(c,p)$

  Similarly, take $c_1 in C ∩ convex(D ∪ p)$, $c_1 ∉ D$, there exists $d in D$ such that $c_1 in intv(d,p)$

  $c,d,p$ are three distinct points, forming a triangle. Within the triangle it is easy to prove $intv(c,c_1) ∩ intv(d,d_1) != ∅$. But $intv(c,c_1) ⊆ C, intv(d,d_1) ⊆ D$, leading to $C ∩ D != ∅$, a contradiction
]

Let $C,D$ be convex and complements. Let $H = #lin_a (C) ∩ #lin_a (D)$

*Prop* $H = bd(C) = bd(D)$

_Proof_ 
#indent[
  let $x in #lin_a (C) ∩ #lin_a (D)$
  
  Since $C,D$ are disjoint, $x in core(C)$ contradicts $x in #lin_a (D)$, $x in core(D)$ contradicts $x in #lin_a (C)$
  
  Thus $x ∉ core(C)$ and $x ∉ core(D)$
  
  Therefore $x in bd(C)$ and $x in bd(D)$

  Hence $H ⊆ bd(C), H ⊆ bd(D)$

  Since $C,D$ are complements, $x in bd(C) <==> x in bd(D)$, thus $bd(C) = bd(D)$

  $bd(C) ⊆ #lin_a (C), bd(D) ⊆ #lin_a (D)$

  Thus $bd(C) = bd(D) ⊆ #lin_a (C) ∩ #lin_a (D) = H$
]

*Prop* $L = core(C) ⊔ H ⊔ core(D)$

*Prop* $x in C, y in D ==> intv(x,y) ∩ H != ∅$

_Proof_ If $x in H$ or $y in H$ it is obvious. Assume $x in core(C), y in core(D)$. Define $z(t) = (1 - t) x + t y$. Take the supremum $t_0 in (0,1)$ of ${t in [0,1] : z(t) in C}$ to get $z(t_0) in H$

*Prop* If $core(C) ⊔ core(D) != ∅$, then $H$ is a hyperplane

_Proof_
#indent[
  - $H$ is flat

    Take $x,y in H$. We need to show $forall(t in ℝ), z(t) = (1 - t) x + t y in H$

    Suppose there exists $t > 1$ such that $z(t) ∉ H$. Assume $z(t) in core(C)$. Since $x in #lin_a (C)$, by #link(<core-open-interval-core>)[], $y in #o_intv (x,z) ⊆ core(C)$, contradicting $y in bd(C)$ 

  - $codim(H) = 1$
  
    Take $ϕ in H$ as origin. Take $p in core(C)$. Suppose $x in D$, then $intv(p,x) ∩ H != ∅$, there exists $v_1 in H$ and $α < 0$ such that $x = v_1 + α p$. If $x in C$, replace $p$ with $-p$

    #image("../image/convex-separate-2.png", width: 80%)
]

*Prop* #tag("hyperplane-separation") Hyperplane separation theorem. Let $A,B$ be convex and $(core(A), B != ∅) and (core(A) ∩ B = ∅)$, then there exists a hyperplane $H$ separating $A,B$

Note: Separation means $A ⊆ H_+, B ⊆ H_-$, not strict separation $A ⊊ H_+, B ⊊ H_-$

*Prop* $H$ separates $#lin_a (A), #lin_a (B)$

*Def* #tag("support-hyperplane") Supporting hyperplane: $S$ lies on one side of hyperplane $H$ and $bd(S) ∩ H != ∅$

*Prop* If $S ⊆ H_-$ and $x in S ∩ H$ then $x in bd(S)$ (i.e., $S ∩ H ⊆ bd(S)$) _Proof_ $x$ cannot be in $core(S)$, and $(S ∖ core(S)) ⊆ (#lin_a (S) ∖ core(S)) = bd(S)$

*Prop* let $x in bd(S)$, let $core(S) != ∅$, then there exists a supporting hyperplane $H$ with $x in H$

_Proof_ Apply the hyperplane separation theorem to ${x}, core(S)$, because $bd(S) ∩ core(S) = ∅$. Hence $x in H_+, S ⊆ H_-$. Take $y in core(S)$, then $#o_intv (x, y) ⊆ core(S) ⊆ H_-$, by contradiction we get $x in H_-$, thus $x in H_+ ∩ H_- = H$

*Prop* $H_+ ∩ core(S) = ∅$. _Proof_ Proof by contradiction: take $x in H_+ ∩ core(S)$, using the definition of $core$ and the definition of separating hyperplane leads to a contradiction

*Prop* Affine subspace $A$ with $A ∩ bd(S) != ∅$ and $A ∩ core(S) = ∅$, let $core(S) != ∅$. Then there exists a supporting hyperplane $H$ of $x$ with $A ⊆ H$

_Proof_ Let $A ⊆ H_+, S ⊆ H_-$. Let $x in A ∩ bd(S)$. Then $x in H$. If $not (A ⊆ H)$, take $y in A ∖ H$. Then $affine(x, y)$ spans the one-dimensional complement of $H$. But we have the following contradictions
- $affine(x,y) ⊆ A$
- The one-dimensional complement of $H$ is not $⊆ H_+$

The following references @ref-35

/// order of boundary
#let ord = "ord"

*Def* #tag("order-of-boundary") The intersection $F = ⋂ { H "support at" x }$ of all supporting hyperplanes at $x in bd(S)$ is an affine subspace, the order $ord(x) := dim F$ is defined as its dimension

*Def* #tag("vertex") Vertex := boundary point of order $0$

*Prop* #tag("bd-convex-hull-core") let $x,y in bd(S)$. if $exists t in (0,1), (1 - t) x + t y in core(S)$, then $#o_intv (x, y) ⊆ core(S)$

*Prop* #tag("bd-convex-hull-bd") let $x,y in bd(S)$. if $exists t in (0,1), (1 - t) x + t y in bd(S)$, then $#o_intv (x, y) ⊆ bd(S)$

_Proof_ $#lin_a (S)$ is convex and $x, y in #lin_a (S)$ so $#o_intv (x, y) ⊆ #lin_a (S)$. if not $#o_intv (x, y) ⊆ bd(S)$ then $exists t_0 in (0,1), (1 - t_0) x + t_0 y in core(S)$, hence $#o_intv (x,y) ⊆ core(S)$, contradicting $(1 - t) x + t y in bd(S)$

The above two propositions can be generalized to $x_0 ,…, x_N in bd(S)$ (assuming $x_0 ,…, x_N$ are already extreme points of $convex(x_0 ,…, x_N)$)

*Prop* #tag("support-hyperplane-at-core-of-convex-bd-subset") Let $B ⊆ bd(S)$ be convex, let $A$ be the affine subspace spanned by $B$, then any supporting hyperplane $H$ containing $x in core(B)$ (core in $A$) satisfies $B ⊆ H$, hence $A ⊆ H$

_Proof_
#indent[    
  Let $y in B$. If $y ∉ H$, then $y in core(H_-)$, thus $x - y$ spans the complement space of $H$, therefore
  $
    y + (1 + ε) (x - y) ∉ H_-
  $
  But $y + (1 + ε) (x - y) in A$ and for sufficiently small $ε$ near $x in core(B)$,
  $
    y + (1 + ε) (x - y) in B ⊆ H_-
  $
  $y ∉ H_-$ contradicts $y in H_-$ 
]
*Prop* $ord(x) >= dim B$

$ord(x) > dim B$ is possible. Consider the cube $S = [0,1]^3$ in $ℝ^3$. Consider $x_0 = (0, 0, 0), x_1 = (1, 1, 0) in bd(S)$. Consider $x = 1/2 (x_0 + x_1) = (1/2, 1/2, 0)$. Then $ord(x) = 2 > 1 = dim(B)$

*Prop* If there exists $H$ such that $B ⊆ H ∩ S$ (this property is called $B$ is an exposed face) then $ord(x) <= dim(A)$ and thus $ord(x) = dim(A)$

*Prop* Duality between vector space hyperplanes and linear functionals. Vector space hyperplane $H$ <==> there exists a linear functional $f : V -> ℝ$ such that $H = f^(-1)(0) = ker f$ 

Since $λ != 0 => (f(v) = 0 <==> λ f (v) = 0)$, the $dim = 1$ subspace ${ λ f }$ in the dual space $V^⊺ = Lin(V,ℝ)$ of $V$ corresponds to the $codim = 1$ subspace $H = ker λ f$ of $V$

*Prop* Duality between vector subspaces and subspaces of linear functionals. A $k$-dimensional vector subspace $F$ of $V$ <==> an $(n-k)$-dimensional vector subspace $F^⟂ := { f in V^⊺ : F ⊆ ker(f) }$ of $V^⊺$. The direct connection is $F = ⋂_(f in F^⟂) ker(f)$ 

_Proof_ Choose a basis $e_1 ,…, e_n$ of $V$. Then a basis $e_1 ,…, e_k$ of $F$ corresponds to $F^⟂ = span(e_(k+1)^⊺ ,…, e_n^⊺)$

*Prop* $F^(⟂ ⟂) ≃ F$. _Proof_ $e_i^(⟂ ⟂) ≃ e_i$

*Prop* The linear functionals $f_0 ,…, f_N$ corresponding to hyperplanes $H_0 ,…, H_N$ span an $(n-k)$-dimensional subspace in $V^⊺$ <==> $⋂_(i = 0..N) H_i$ is a $k$-dimensional subspace of $V$

*Prop* $x$ is a vertex <==> there exist hyperplanes $H_1 ,…, H_n$, the corresponding linear functionals $f_1 ,…, f_n$ are linearly independent, forming a basis of $V^⊺$, and $x = H_1 ∩ ⋯ ∩ H_n$

*Prop* If $f ∉ F^⟂$, then $dim(f + F^⟂) = dim(F^⟂) + 1$, thus $dim(ker(f) ∩ F) = dim(⋂_(g in (f + F^⟂)) ker(g)) = dim(F) - 1$

*Prop* $F_1 ⊆ F_2 ==> F_2^⟂ ⊆ F_1^⟂$

_Proof_ Let $f in F_2^⟂$, then $F_1 ⊆ F_2 ⊆ ker(f)$ thus $f in F_1^⟂$

*Prop* $F_1 ⊆ F_2 <==> F_2^⟂ ⊆ F_1^⟂$

*Def* Sum of subspaces $V + W := { v + w, v in V, w in W }$

*Prop* Dimension of intersection of subspaces $dim(V ∩ W) = dim(V) + dim(W) - dim(V + W)$

_Proof_ 
#indent[
  $
    V ∩ W ↪^(i) V ⊕ W ↠^(s) V + W
  $
  where 
  $
    i: map(V ∩ W, V ⊕ W, x, (x_V, x_W))
  $
  is the composition of two embeddings $V ∩ W ↪ V ↪ V ⊕ W$. Similarly for $W$
  $
    s: map(V ⊕ W, V + W, (v,w), v - w)
  $
  is surjective

  $i,s$ satisfy the exact sequence property: $i$ injective, $s$ surjective, $im(i) = ker(s)$

  By linear algebra
  $
    im(s) ≃ frac(V ⊕ W, ker(s))
  $
  Therefore 
  $
    dim(V ∩ W) 
    &= dim(im(i)) \
    &= dim(ker(s)) \
    &= dim(V ⊕ W) - dim(im(s)) \
    &= dim(V) + dim(W) - dim(V + W)
  $
]
*Prop* The two sides of an affine hyperplane $H = { x in L : f(x) = a }$ are $H_- = { f(x) <= a }, H_+ = { f(x) >= a }$

*Prop* (Similarly for $H_+$)
- $core (H_-) = { f(x) < a }$
- $#lin_a (H_-) = H_-$
- $bd (H_-) = H$

The following deals with the equivalence of two descriptions of polytopes
- Convex hull of a finite set of points $convex(x_0 ,…, x_N)$
- Bounded intersection of half-spaces $H_(0 -) ∩ ⋯ ∩ H_(M -)$
Assume $x_0 ,…, x_N$ are already extreme points. Assume $x_0 ,…, x_N$ already span $ℝ^n$; otherwise, work in the lower-dimensional affine subspace they span.

*Prop* For each hyperplane $H$ not containing the origin, there exists a unique $f in Lin(V, ℝ) = V^⊺$ such that $H = {a in V : f(a) = 1}$ 

_Proof_ A vector space hyperplane corresponds to a one-dimensional space spanned by $f$ in $V^⊺$

The equivalent equation is $λ f(a) = λ$, where $λ != 0$

#tag("pole") In a coordinate system, $f(a) = 1$ can be expressed as $f_1 a_1 + ⋯ + f_n a_n = 1$, corresponding to $H^† = (f_1 ,…, f_n) in ℝ^n ≃ V$

#tag("polar-hyperplane") Conversely, in a coordinate system, $(f_1 ,…, f_n) != 0$ gives the hyperplane $(f_1 ,…, f_n)^† = H = {a in V : f_1 a_1 + ⋯ + f_n a_n = 1}$

$
  (f_1 ,…, f_n)^(† †) &= (f_1 ,…, f_n) \
  H^(† †) &= H
$

There is a one-to-one correspondence between
- $V ∖ 0$
- Affine hyperplanes not containing the origin

*Prop* $a in H ==> H^† in a^†$

_Proof_

#indent[
  $a = (a_1 ,…, a_n)$

  $H^† = (h_1 ,…, h_n)$

  $a in H ==> h(a) = 1 ==> h_1 a_1 + ⋯ + h_n a_n = 1$

  $a^† = {b in V : a_1 b_1 + ⋯ + a_n b_n = 1}$

  $H^† in a^†$
]

#tag("polar-dual") let $A ⊆ V$. $A^* := {a' in V : forall(a in A), a ⋅ a' <= 1} = ⋂_(a in A) a^†_-$

*Prop* $A ⊆ A^(**)$

_Proof_
#indent[
  $A^(**) = {a'' in V : forall(a' in A^*), a' ⋅ a'' <= 1}$

  The definition of $A^*$ tells us that for $a in A$
  $
    forall(a' in A^*), a' ⋅ a <= 1
  $
  Hence $a in A^(**)$
]

*Prop* If for every $b ∉ A$ there exists a hyperplane $H$ with semi-strict separation $b in core(H_+), A ⊆ H_-$, then $A^(**) ⊆ A$ and thus $A^(**) = A$

_Proof_
#indent[
  We prove that if $b ∉ A ==> b ∉ A^(**)$

  $b in core(H_+) = { h ⋅ x > 1 }$ 

  $A ⊆ H_- ==> forall(a in A), h ⋅ a <= 1$

  But the definition of $A^(**)$ is
  $
    A^(**) &= {a'' in V : forall(a' in A^*), a' ⋅ a'' <= 1} \
    &= {a'' in V : forall(a' in V) "if" (forall(a in A), a ⋅ a' <= 1) "then" a' ⋅ a'' <= 1}
  $ 
  Let $a'$ correspond to $h$. In the "if" branch $forall(a in A), a ⋅ h <= 1$
  
  Let $a''$ correspond to $b$. In the "then" branch $h ⋅ b > 1$

  $exists(h in V)$
  - $forall(a in A), a ⋅ h <= 1$
  - $not (h ⋅ b <= 1)$

  Thus $b ∉ A^(**)$
]
*Prop* If
- $S$ is convex 
- $core(S) != ∅$
- $#lin_a (S) = S$ (convex closed)
then for every $y ∉ S$ there exists a hyperplane semi-strictly separating $y$ and $S$

_Proof_
#indent[  
  Take $x in core(S)$
  
  Consider $f(t) = x + t (y - x)$
  
  For $T = {t in [0,1] : f(t) in S}$ 

  - By definition of core, there exists $δ > 0$ such that $[0, δ] ⊆ T$
  - $1 ∉ T$
  $T$ has a supremum $r in (0,1]$

  $f(r) in #lin_a (S)$. Since $#lin_a (S) = S$ (convex closed), $f(r) in S$, thus $r != 1$, hence $r < 1$
  
  $forall(ε in (r, 1]), f(r + ε) ∉ S$
  
  There exists a hyperplane $H$ separating the convex set $S$ and the convex set $C = {f(t) : t in [r + ϵ, 1]}$

  The line segment $C$ can be linearly extended into the interior of $S$, so $C$ is not a subset of $H$; instead, $C$ lies in the direction of the complement space of $H$
  
  Thus $H$ semi-strictly separates $S$ and $f(1) = y$
]

*Prop* If $A = convex(S)$ then $A^* = S^*$

_Proof_
#indent[
  $S ⊆ A ==> A^* ⊆ S^*$

  let $x' in S^*$
  $
    forall(a in A) \
      a = sum t_i x_i, sum t_i = 1, 0 <= t_i <= 1, x_i in S \
      a ⋅ x' = sum t_i (x_i ⋅ x) \
      x_i ⋅ x <= 1 \
      t_i >= 0 \
      a ⋅ x' <= sum t_i = 1      
  $
  so $x' in A^*$
]

*Prop* $S = convex(x_0 ,…, x_n)$ satisfies
- $S$ convex 
- $core(S) != ∅$
- $#lin_a (S) = S$ (convex closed)

_Proof_ 
#indent[
  - $core(S) != ∅$
  #indent[
    $x = 1/(N+1) (x_0 + ⋯ + x_N) in core(S)$

    For $v in V$, let $x + v = sum (1/(N+1) + c_i) x_i$, with $v = sum c_i x_i$, with $sum c_i = 0$

    Then $x + λ v = sum (1/(N+1) + λ c_i) x_i$

    Choose $λ$ sufficiently small so that $1/(N+1) + λ c_i > 0$
  ]

  - $#lin_a (S) = S$ (convex closed)
  #indent[
    $y in #lin_a (S)$ ==> there exists $v in V$ such that $#o_intv (y, y + v) ⊆ S$, i.e., for every $λ in (0,1)$, $f(λ) = y + λ v in S$

    $convex(x_0 ,…, x_N)$ is composed of the union of simplices formed by taking $n+1$ points from $x_0 ,…, x_N$: $S = ⋃_(k = 1..m) Δ_k$

    The vertices of each simplex $Δ_k$ are affinely independent, and the line segment $f(λ)$ has a unique affine coordinate representation in it: $t(k,j,λ) = a(k,j) + b(k,j) λ$

    $f(λ) in S ⊆ ⋃_(k = 1..m) Δ_k$

    $f(λ) in Δ_k <==> forall(j = 0..n), t(k,j) >= 0$

    For a given $k$, the solution set of these $n + 1$ inequalities on $ℝ$ forms a closed interval $I_k$ 

    $f(λ) in Δ_k <==> λ in I_k$

    Hence $(0,1) ⊆ S ⊆ ⋃_(k = 1..m) Δ_k$ 

    $⋃_(k = 1..m) I_k$ is a closed interval in $ℝ$, hence the closure $[0,1]$ of $(0,1)$ also belongs to $⋃_(k = 1..m) I_k$, thus $0$ belongs to some $I_k$

    $0 in I_k$ also implies $t(k,j,0) >= 0$, thus $y = f(0) in Δ_k ⊆ ⋃_(k = 1..m) Δ_k = S$

    Therefore $y in S$, thus $#lin_a (S) = S$ (convex closed)
  ] 
]

*Prop* $A ⊆ B ==> B^* ⊆ A^*$

_Proof_
#indent[
  if $b' in b^*$, then $forall(b in B), b ⋅ b' <= 1$

  $A ⊆ B ==> forall(a in A), a in B$, then $a ⋅ b' <= 1$

  so $b' in A^*$
]

*Prop* $A^(***) = A$

_Proof_
$
  A^* ⊆ (A^*)^(**) \
  A ⊆ A^(**) ==> (A^(**))^* ⊆ A^*
$

*Prop* $S = H_- = {x in V : f(x) <= 1}$ satisfies
- $S$ convex 
- $core(S) != ∅$
- $#lin_a (S) = S$ (convex closed)

_Proof_
- $t_i >= 0 ==> f(sum t_i x_i) = sum t_i f(x_i) <= sum t_i = 1$
- $f(0) = 0 <= 1$. $f(0 + λ v) = λ f(v)$, choose $λ$ sufficiently small
- let $y in #lin_a (S)$. \
  $forall(λ in (0, ε)), f(y + λ v) = f(y) + λ f(v) in S$ \
  i.e., $f(y) + λ f(v) <= 1$ \
  This is a continuous function of $λ$ with values in $ℝ$, let $λ -> 0$ to get $f(y) <= 1$, hence $y in S$

let $A$ convex, $core(A) != ∅$, $#lin_a (A) = A$

*Prop* Let $b in bd(A)$. Then $b^†$ is a supporting hyperplane of $A^*$, supporting at the point $H^†$, which is the polar-dual $H^†$ of the supporting hyperplane $H$ of $A$ at $b$

_Proof_
#indent[
  $#lin_a (A) = A ==> bd(A) ⊆ A ==> b in A$

  $A^* = ⋂_(a in A) a^†_- ==> A^* ⊆ b^†_-$

  $b in H ==> H^† in b^†$

  $A ⊆ H_- ==> forall(a in A), H^† ⋅ a <= 1$

  By the definition of $A^*$, $H^† in A^*$

  Hence $b^†$ is a supporting hyperplane of $A^*$, supporting at $H^†$, and $H^† in bd(A^*)$
]

*Prop* These are all possible supporting hyperplanes of $A^*$

_Proof_ 
#indent[
  Let $H$ be a supporting hyperplane of $A^*$, supporting at $b in bd(A^*)$ 
  
  Then $b^†$ is a supporting hyperplane of $A^(**) = A$ supporting at $H^† in bd(A)$ 

  Hence $H^(††) = H$ is a supporting hyperplane of $A^*$, supporting at $b^(††) = b$
]

*Def* A polytope generated as the convex hull of a finite set of points is called a V-polytope (Vertex). A polytope generated as a bounded intersection of half-spaces is called an H-polytope (Hyperplane)

*Prop* An H-polytope $S$ satisfies 
- convex
- $#lin_a (S) = S$ (convex closed)
_Proof_ Each $H_(i -)$ satisfies the above two conditions, and a finite intersection also satisfies them

Analogous to extreme points of V-polytopes, H-polytopes have extreme hyperplanes. For $⋂_(i = 0..N) H_(i -)$, if $H_(i_1 -) ∩ ⋯ ∩ H_(i_m -) ⊆ H_(i_0 -)$, then $H_(i_0 -)$ is redundant and can be removed.

#tag("extreme-hyperplane") *Def* Extreme hyperplane := one that cannot be expressed as containing the region defined by the intersection of other half-spaces

*Prop* Extreme hyperplanes already generate the original H-polytope and are the minimal generating set

_Proof_ Similar to extreme points, continuously eliminate redundant hyperplanes

Let the H-polytope $S$ have $core(S) != ∅$. Assume the $H_(i -)$ are already extreme hyperplanes

#let facet = "facet"

*Def* #tag("facet") $facet(S, i) := H_i ∩ S$

*Prop* A facet is an $(n-1)$-dimensional H-polytope

_Proof_
#indent[
  For $i != j$, $H_i ∩ H_j = ∅$ or is an $(n-2)$-dimensional affine subspace. So it's easy to see that $H_i ∩ S$ is also an H-polytope

  We show that $facet(S,i)$ has nonempty core in $H_i$

  Define $S_i := ⋂_(j != i) H_(j -)$

  $H_i ∩ S_i = H_i ∩ S$. The proof uses $V = core(H_(i +)) ⊔ H_i ⊔ core(H_(i -)) = core(H_(i +)) ⊔ H_(i -)$

  Because it's an extreme hyperplane, $not (H_(i -) ⊆ S_i)$

  Hence there exists $x in S_i ∖ H_(i -)$

  Take $y in core(S)$, then $y in core(S_i)$

  Therefore $#o_intv (x,y) ⊆ core(S_i)$

  $x in core(H_(i +)) , a in core(H_(i -)) ==> #o_intv (x,y) ∩ H_i != ∅$

  The 1-dimensional $#o_intv (x,y)$ and the $(n-1)$-dimensional $H_i$ intersect at a point $z$

  $z in #o_intv (x,y) ==> z in core(S_i)$

  $S_i$ is $n$-dimensional, so $z in core(S_i)$ can emit in all $n$-dimensional directions, particularly in all directions within $H_i$, thus $z in core(H_i)$, hence $z in core(H_i ∩ S_i) = core(H_i ∩ S)$. Therefore $H_i ∩ S$ is $(n-1)$-dimensional
]

*Prop* $bd(S) = ⋃_(i = 0..N) facet(S,i)$ (thus facets of an H-polytope are supporting hyperplanes)

_Proof_
#indent[
  $
    bd(S) 
    &= S ∖ core(S) \
    &= S ∖ core(⋂_(j = 0..N) H_(j -)) \
    &= S ∖ (⋂_(j = 0..N) core(H_(j -))) \
    &= S ∩ (⋂_(j = 0..N) core(H_(j -)))^∁ \
    &= S ∩ (⋃_(j = 0..N) core(H_(j -))^∁) \
    &= ⋃_(j = 0..N) (S ∩ core(H_(j -))^∁) 
  $
  Consider

  - $S =  ⋂_(i = 0..N) H_(i -) = (⋂_(i = 0..N ∖ j) H_(i -)) ∩ H_(j -) = S_j ∩ H_(j -)$

  - $core(H_(j -))^∁ = H_(j +)$

  - $H_(j -) ∩ H_(j +) = H_j$

  Therefore
  $
    ⋃_(j = 0..N) (S ∩ core(H_(j -))^∁) 
    &= ⋃_(j = 0..N) (S_j ∩ H_j)  \
    &= ⋃_(j = 0..N) (S ∩ H_j) \ 
    &= ⋃_(j = 0..N) facet(S,j)
  $
  i.e., $bd(S) = ⋃_(j = 0..N) facet(S,j)$
]

*Def* Recursively define the $k$-faces of $S$ as the facets of the $(k+1)$-faces of $S$

*Prop* Recursively, $k$-faces come from intersections of certain facets ($(n-1)$-faces)

*Def* Two $k$-faces are adjacent if their intersection is a $(k − 1)$-face

*Prop* Let $x in bd(S)$. Then the intersection of all supporting hyperplanes of $x$ equals the intersection of all facets containing $x$. _Proof_ Facets span the extreme hyperplanes, so if a supporting hyperplane is not spanned by a facet, it is redundant

*Def* #tag("extreme-point") An extreme point of a general convex set $S$ is defined as $x in bd(S)$ such that $S ∖ x$ is convex

*Prop* $x in #lin_a (S)$ and $S ∖ x$ convex ==> $x in bd(S)$. _Proof_ $x in core(S)$ ==> $S ∖ x$ is not convex

*Prop* $x in bd(S)$ is an extreme point <==> $forall(a, b in S), x ∉ #o_intv (a,b)$

*Prop* $x in bd(S)$ is an extreme point <==> $forall(a, b in bd(S)), x ∉ #o_intv (a,b)$

*Prop* Vertex ==> extreme point (for general convex set $S$)

_Proof_
#indent[
  We prove $x in bd(S)$ non-extreme ==> non-vertex
  
  Non-extreme ==> there exist $y_1, y_2$ such that $x in #o_intv (y_1, y_2)$
  
  By #link(<core-open-interval-core>)[], $y_1, y_2 in bd(S)$
  
  By #link(<bd-convex-hull-bd>)[], $intv(y_1, y_2) ⊆ bd(S)$
  
  By #link(<support-hyperplane-at-core-of-convex-bd-subset>)[], $ord(x) >= 1$, thus $x$ is not a vertex
]

*Prop* For an H-polytope $S$, if $ord(x) = k$, then $x$ lies in the core of some $k$-face

_Proof_ 
#indent[
  By #link(<support-hyperplane-at-core-of-convex-bd-subset>)[], if $k < n-1$, then $x$ is not in the core of an $(n-1)$-face, so it lies in a facet of an $(n-1)$-face
  
  Recursively, until $x$ lies in a facet of a $(k+1)$-face, then $x$ could be in
  - the core of a $k$-face, or 
  - a facet of a $k$-face
  But the latter recursively gives $ord(x) < k$
]

*Prop* The number of $k$-faces is finite. In particular, the number of $0$-faces, i.e., vertices, is finite

*Prop* For an H-polytope, vertices are exactly the extreme points

_Proof_
#indent[
  We prove that if $x in bd(S)$ is an extreme point, then it is a vertex. If it were not a vertex, then $x$ would lie in the core of some convex face with $k >= 1$, and faces are subsets of $bd(S)$, and $bd(S) ⊆ S$, so $x$ would not be an extreme point
]

In general, extreme point does not imply vertex. Consider the parabola $y = x^2$ in $ℝ^2$. At $O = (0,0)$, the only supporting hyperplane is $y = 0$, so $ord(O) = 1$, but $O$ is an extreme point

*Prop* For a V-polytope $S = convex(x_0 ,…, x_N)$, we have $S^* = ⋂_(i = 0..N) (x_i^†)_- = {x_0 ,…, x_N}^*$

_Proof_
#indent[
  ${x_0 ,…, x_N} ⊆ convex(x_0 ,…, x_N) = S$, so $S^* = ⋂_(a in S) a_-^† ⊆ ⋂_(i = 0..N) (x_i^†)_-$
  $
    S^* 
    &= ⋂_(a in S) a_-^† \
    &= {a' in V : forall(a in S), a ⋅ a' <= 1} \
    &= {a' in V : (sum t_i x_i) ⋅ a' <= 1 "with" sum t_i = 1, t_i >= 0}
  $
  Suppose $a' in ⋂_(i = 0..N) (x_i^†)_-$, then $And_(i = 0.. N) x_i ⋅ a' <= 1$, thus 
  $
    (sum t_i x_i) ⋅ a' 
    &= sum t_i (x_i ⋅ a') \
    &<= sum t_i = 1
  $
  Hence $a' in S^*$. Therefore $⋂_(a in S \ a != 0) a_-^† ⊇ ⋂_(i = 0..N) (x_i^†)_-$
]
We have already assumed $S = convex(x_0 ,…, x_N)$ is an $n$-dimensional region, but if it is of dimension $< n$, $S^*$ might not be bounded

*Def* #tag("bounded") Bounded := The intersection of every line with $S$ is a bounded interval

*Prop* The endpoints of the bounded intersection interval lie in $bd(S)$

*Prop* If bounded and $#lin_a (S) = S$ (convex closed), then the intersection of a line with $S$ is a closed bounded interval

Assume $S$ is bounded and convex closed from now on

*Prop* $S = convex(bd(S))$

_Proof_ Take $x in S$, take a line containing $x$, it intersects $S$ in a closed interval whose endpoints lie in $bd(S)$

*Prop* An affine subspace $F$ of $L$ is convex closed. _Proof_ Cases with dimension $>= n-1$ have been proven. For dimension $k < n-1$, it is the intersection of $n-k$ convex closed sets, hence by #link(<finite-intersect-preserve-convex-closed>)[], $F$ is also convex closed

#let extreme = "extreme"

*Prop* If there exists an affine subspace $F$ of $L$ such that $A ⊆ F$, then $#lin_a (A)$ in $L$ and in $F$ are the same, thus $#lin_a (A) ⊆ F$ 

_Proof_ Obviously $#lin_a (A)$ in $F$ implies $#lin_a (A)$ in $L$. Conversely, let $x$ be in $#lin_a (A)$ in $L$, then there exists $y in A ⊆ F$ such that $#o_intv (x,y) ⊆ F$, and since $F$ is convex closed, $x in F$, hence $x$ belongs to $#lin_a (A)$ in $F$

*Prop* If $A ⊆ F$, then the convex hull of $A$ in $L$ and in $F$ are the same 

*Prop* $extreme(A)$ in $L$ and in $F$ are the same, thus $extreme(A) ⊆ F$

*Prop* Let $H$ be a supporting hyperplane, then $extreme(S ∩ H) = extreme(S) ∩ H$

_Proof_
#indent[
  $⊆$:
  #indent[
    let $x in extreme(S ∩ H)$. Since $S,H$ are convex closed, $S ∩ H$ is also convex closed, thus $extreme(S ∩ H) ⊆ S ∩ H$

    Hence $x in #lin_a (S)$ and $x in H$

    Need to show $x in extreme(S)$

    let $y_1,y_2 in S ⊆ H_-$
    
    If $y_1 ∉ H$ then $y_1 in core(H_-)$ 
    
    Then $#o_intv (y_1,y_2) ⊆ core(H_-)$ 
    
    Thus $#o_intv (y_1,y_2) ∩ H = ∅$ 
    
    Hence $x ∉ #o_intv (y_1,y_2)$

    The case $y_2 ∉ H$ is similar

    If $y_1,y_2 in H$, then $y_1,y_2 in S ∩ H$, and since $x in extreme(S ∩ H)$, we have $x ∉ #o_intv (y_1,y_2)$

    Therefore $x in extreme(S)$
  ]
  $⊇$:
  #indent[
    let $x in extreme(S) ∩ H$

    Since $S,H$ are convex closed, $S ∩ H$ is also convex closed 
    
    Thus $extreme(S) ⊆ S$, so $x in S ∩ H$, hence $x in #lin_a (S ∩ H)$

    Need to show $x in extreme(S ∩ H)$

    let $y_1,y_2 in S ∩ H$. Since $y_1,y_2 in S$ and $x in extreme(S)$, we have $x ∉ #o_intv (y_1,y_2)$

    Thus $x in extreme(S ∩ H)$
  ]
]
*Prop* Extreme points exist, i.e., $extreme(S) != ∅$, and $S = convex(extreme(S))$

_Proof_
#indent[
  Induction on dimension. In one dimension, it is a closed bounded interval, extreme points are the endpoints

  We have already proven $S = convex(bd(S))$ and $convex ∘ convex = convex$, so we only need to prove $bd(S) ⊆ convex(extreme(S))$

  Let $x in bd(S)$. Take a supporting hyperplane $H$ of $x$

  $S$ is convex closed and bounded, thus $S ∩ H$ is convex closed and bounded in $H$. Moreover $x in S ∩ H$

  $dim H = n-1$, by induction, $S ∩ H = convex(extreme(S ∩ H))$

  However
  $
    convex(extreme(S ∩ H)) 
    &= convex(extreme(S) ∩ H) \
    &⊆ convex(extreme(S)) ∩ H \
    &⊆ convex(extreme(S))
  $
  Thus $x in convex(extreme(S))$, hence $bd(S) ⊆ convex(extreme(S))$
]
*Prop* Bounded H-polytope ==> V-polytope

_Proof_ 
#indent[
  Finite number of vertices ==> finite number of extreme points, $extreme(S) = {x_0 ,…, x_N}$
  
  Bounded ==> extreme points generate $S$, i.e., $S = convex(extreme(S)) = convex(x_0 ,…, x_N)$
]

*Prop* $n$-dimensional bounded H-polytope ==> $n$-dimensional V-polytope

*Prop* If $S$ is a V-polytope, then $S$ is bounded

_Proof_
#indent[
  let $y in S$
  
  let $y = sum t_i x_i, sum t_i = 1, 0 <= t_i <= 1$

  let $y + λ v = sum (t_i + λ c_i) x_i, sum c_i = 0$

  Since $y + λ v in S <==> 0 <= (t_i + λ c_i) <= 1$, $λ$ has lower and upper bounds, as well as a supremum and infimum
]

*Prop* In spaces of dimension $>= 2$, if $I$ is a
+ line segment
+ ray
+ line
not passing through the origin, then its polar-dual $I^*$ is:
+ the intersection of two half-spaces defined by hyperplanes not passing through the origin
+ the intersection of a half-space defined by a hyperplane not passing through the origin and a half-space defined by a hyperplane passing through the origin
+ degenerate to dimension $< n$
_Proof_
#indent[
  + Let $I = convex(x_0, x_1)$. Then $I^* = {y: x_0 ⋅ y <= 1} ∩ {y: x_1 ⋅ y <= 1}$
  + Let $I = {x_0 + t v : t >= 0}$
  
    $y in I^* <==> forall(t >= 0), (x_0 + t v) ⋅ y <= 1$

    Expanding gives $x_0 ⋅ y + t (v ⋅ y) <= 1$ 

    For this inequality to hold for all $t -> ∞$, we need $v ⋅ y <= 0$. And for $t = 0$, we need $x_0 ⋅ y <= 1$

    $x_0 ⋅ y <= 1$ is a half-space defined by a hyperplane not passing through the origin. $v ⋅ y <= 0$ is a half-space defined by a hyperplane passing through the origin
  + Let $I = {x_0 + t v : t in ℝ}$

    For $x_0 ⋅ y + t (v ⋅ y) <= 1$ to hold for all $t in ℝ$, we need $v ⋅ y = 0$, which is an $(n-1)$-dimensional hyperplane passing through the origin
]

*Prop* Let $S$ be an $n$-dimensional V-polytope. Choose a point in $core(S)$ as origin to establish a coordinate system. Then
+ the polar-dual $S^*$ is bounded, hence $S^*$ is a bounded H-polytope
+ $core(S^*)$ contains the origin, hence by #link(<full-dim-iff-core-nonempty>)[], $S^*$ is $n$-dimensional

_Proof_
#indent[
  + Let $I = {y + λ v in S^*}$, then $I ⊆ S^*$, thus $S ⊆ I^*$. 

    $I$ is a line segment, ray, or line, but $core(S)$ contains the origin, so $S ⊆ I^*$ forces $I^*$ to be the intersection of two half-spaces defined by hyperplanes not passing through the origin, hence $I$ is a line segment
    
  + $S^* = ⋂_(i = 0..N) (x_i^†)_-$ and each $core(x_i^†)_-$ contains the origin
]

*Prop* $n$-dimensional V-polytope ==> $n$-dimensional bounded H-polytope

_Proof_ $S$ is an $n$-dimensional V-polytope ==> Choose a point in $core(S)$ as origin to establish a coordinate system. $S^*$ is an $n$-dimensional bounded H-polytope and $core(S^*)$ contains the origin ==> $S^*$ is an $n$-dimensional V-polytope ==> $S = (S^*)^(*)$ is an $n$-dimensional bounded H-polytope

*Prop* $n$-dimensional V-polytope <==> $n$-dimensional bounded H-polytope

*Prop* Let $S$ be a bounded polytope, let $f : L -> L'$ be an affine function, then $f(S)$ is a bounded polytope. _Proof_ Use V-polytope representation

Similar to the V-polytope case, the extremum of an $ℝ$-valued affine function can be attained at extreme points, according to $convex(extreme(S)) = {sum_(i = 0..m) t_i y_i : m in ℕ, sum t_i = 1, t_i >= 0, y_i in extreme(S)}$

More generally, the maximum of a continuous convex function ($forall(t in [0,1]), f((1 - t) a + t b) <= (1 - t) f(a) + t f(b)$) or the minimum of a continuous concave function ($-f$ is convex) can be attained at extreme points