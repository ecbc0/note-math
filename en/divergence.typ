#import "../module/module.typ": *
#show: module

#tag("orientation_of_real_linear_space") $ℝ^n$ orientation

$A in GL(n,ℝ), det A != 0$

$ℝ ∖ 0 = ℝ_(< 0) ⊔ ℝ_(> 0)$

$GL(n,ℝ) = det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$

There are two orientations. For a basis of $ℝ^n$, swapping two vectors $e_i <-> e_j$ once changes the orientation, introducing a factor $-1$. This is similar to alternating tensors. Orientation is defined as the quotient of bases by the same orientation, equivalent to the decomposition $GL(n,ℝ) = det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$.

*Def* #tag("orientation_of_boundary_of_convex_hull") 
#indent[
  The orientation of the oriented boundary of a convex hull $A$ is: for the $n-1$ affine subspace containing a facet $F$, define an orientation such that the exterior $A$ is in the positive $n$-dimensional direction, and the interior $A^∁$ is in the negative $n$-dimensional direction.

  Specifically, take an orientation of $ℝ^n$ (take a basis $e_1 ,…, e_n$), let $F$ lie in the $n-1$-dimensional hyperplane $H$. Let $v_0$ be a vector pointing from $F$ into the interior of the convex hull $A$. Then choose a basis $v_1 ,…, v_(n-1)$ in the $n-1$-dimensional $H$ such that $v_0, v_1 ,…, v_(n-1)$ is a positively oriented basis of $ℝ^n$ (the linear transformation from $e_1 ,…, e_n$ to $v_0, v_1 ,…, v_n$ has positive $det$). This assigns a positive orientation to the $n-1$-dimensional $F$ and $H$.

  One can continue to define orientations for the boundary of the boundary.
]

*Def* #tag("oriented_simplex")
#indent[
  Simplex has a better way to handle orientation.

  From the vertices $x_0 -> x_1 -> ⋯ -> x_n$, one can construct an oriented basis $(x_1 - x_0, x_2 - x_1 ,…, x_n - x_(n-1))$ of $ℝ^n$. Denote this as $[x_0 ,…, x_n]$.

  *Example* Tetrahedron, right-hand rule (indices of vertices in the picture start from $1$ instead of $0$)

  #image("../image/orientation_of_simplex.png", width: 100%)
]

*Prop* #tag("oriented_simplex_permutation") Swapping any two adjacent vertices of an oriented simplex $S = [x_0, x_1 ,…, x_n]$ multiplies its corresponding geometric orientation (determinant of the basis) strictly by $-1$. Consequently, for any permutation $μ$, the orientation changes by $sign(μ)$.

_Proof_
#indent[
  Let the initial path basis be $P = (w_1, w_2 ,…, w_n)$, where the step vectors are $w_k = x_k - x_(k-1)$.

  Now we want to swap adjacent vertices $x_i$ and $x_(i+1)$. This only affects $w_i, w_(i+1)$ and $w_(i+2)$.

  We discuss three cases:

  *Case 1: Swapping intermediate adjacent vertices $x_i$ and $x_(i+1)$ ($0 < i < n-1$)*
  #indent[
    After swapping, the local vertex sequence changes from $… -> x_(i-1) -> x_i -> x_(i+1) -> x_(i+2) -> …$ 
    to $… -> x_(i-1) -> x_(i+1) -> x_i -> x_(i+2) -> …$
    
    The corresponding new step vectors $w'$ change as follows:
    - $w'_i = x_(i+1) - x_(i-1) = (x_(i+1) - x_i) + (x_i - x_(i-1)) = w_(i+1) + w_i$
    - $w'_(i+1) = x_i - x_(i+1) = -w_(i+1)$
    - $w'_(i+2) = x_(i+2) - x_i = (x_(i+2) - x_(i+1)) + (x_(i+1) - x_i) = w_(i+2) + w_(i+1)$
    
    Extracting these three affected columns, we observe the local transition matrix:
    $
      (w'_i, w'_(i+1), w'_(i+2)) = (w_i, w_(i+1), w_(i+2))
      mat(
        1,  0, 0;
        1, -1, 1;
        0,  0, 1
      )
    $
    The determinant of this $3 times 3$ local matrix is $-1$.
  ]

  *Case 2: Swapping the start vertices $x_0$ and $x_1$ (i.e., $i=0$)*
  #indent[
    After swapping, the sequence starts with $x_1 -> x_0 -> x_2 -> …$.
    Only the first two step vectors $w'_1, w'_2$ are affected:
    - $w'_1 = x_0 - x_1 = -w_1$
    - $w'_2 = x_2 - x_0 = (x_2 - x_1) + (x_1 - x_0) = w_2 + w_1$
    
    The local transition matrix is:
    $
      (w'_1, w'_2) = (w_1, w_2)
      mat(
        -1, 1;
         0, 1
      )
    $
    The determinant of this $2 times 2$ matrix is $-1$.
  ]

  *Case 3: Swapping the end vertices $x_(n-1)$ and $x_n$ (i.e., $i=n-1$)*
  #indent[
    After swapping, the sequence ends with $… -> x_(n-2) -> x_n -> x_(n-1)$.
    Only the last two step vectors $w'_(n-1), w'_n$ are affected:
    - $w'_(n-1) = x_n - x_(n-2) = (x_n - x_(n-1)) + (x_(n-1) - x_(n-2)) = w_n + w_(n-1)$
    - $w'_n = x_(n-1) - x_n = -w_n$
    
    The local transition matrix is:
    $
      (w'_(n-1), w'_n) = (w_(n-1), w_n)
      mat(
        1,  0;
        1, -1
      )
    $
    The determinant of this $2 times 2$ matrix is $-1$.
  ]

  In summary, in the path basis, swapping any adjacent vertices makes the determinant of the transition matrix strictly equal to $-1$. Thus, for any permutation $μ$, after an even/odd number of adjacent swaps, the orientation changes by $sign(μ)$.
]

#let out = "out"
#let geom = "geom"

*Prop* #tag("oriented_simplex_boundary") Using the path basis combined with the geometric convention "Outward Normal FIRST", deleting vertex $x_i$ results in an induced orientation coefficient of $(-1)^i$.

_Proof_
#indent[
  Let the path basis of simplex $S =[x_0, x_1 ,…, x_n]$ be $P = (w_1, w_2 ,…, w_n)$, where the step vectors are defined as $w_k = x_k - x_(k-1)$.
  
  Now we study the $n-1$-dimensional boundary $F_i = [x_0 ,…, hat(x_i) ,…, x_n]$ after deleting $x_i$.
  We consider three cases for its path basis and outward normal:

  *Case 1: Deleting an intermediate vertex $x_i$ ($0 < i < n$)*
  #indent[
    For $F_i$, the path sequence no longer goes through $x_i$, but instead takes a "shortcut" directly from $x_(i-1)$ to $x_(i+1)$.
    The vector for this step is: 
    $
      x_(i+1) - x_(i-1) = (x_(i+1) - x_i) + (x_i - x_(i-1)) = w_(i+1) + w_i
    $
    Thus, the path basis $P_i$ of $F_i$ merges the two original steps into one:
    $
      P_i = (w_1 ,…, w_(i-1), w_i + w_(i+1), w_(i+2) ,…, w_n)
    $
    (Note that $P_i$ now has $n-1$ vectors, with $w_i + w_(i+1)$ in the $i$-th position).

    Next, find the outward normal $n_(out)$. Since $x_i$ is the opposite vertex, the step $x_i - x_(i-1) = w_i$ from a point $x_(i-1)$ on $F_i$ to $x_i$ clearly points inward.
    Therefore, we can directly choose the outward normal $n_(out) = -w_i$.
    
    According to the "Outward Normal FIRST" rule, prepend $n_(out)$ to $P_i$ to construct the geometric determinant basis:
    $
      B_(geom) = (-w_i, w_1 ,…, w_(i-1), w_i + w_(i+1), w_(i+2) ,…, w_n)
    $
    
    We transform this back to the original basis $P = (w_1 ,…, w_n)$ via elementary column operations:
    1. Add the 1st column ($-w_i$) to the $(i+1)$-th column ($w_i + w_(i+1)$). This elementary column operation does not change the determinant. 
       After addition, the $(i+1)$-th column becomes $w_(i+1)$. The basis becomes:
       $(-w_i, w_1 ,…, w_(i-1), w_(i+1), w_(i+2) ,…, w_n)$
    2. Factor out the negative sign from the 1st column, multiplying the determinant by $-1$. The basis becomes:
       $(w_i, w_1 ,…, w_(i-1), w_(i+1), w_(i+2) ,…, w_n)$
    3. Move $w_i$ from the 1st column back to its original $i$-th position. 
       It needs to pass $w_1, w_2 ,…, w_(i-1)$, requiring $i - 1$ adjacent column swaps. Each swap multiplies by $-1$, so the determinant is multiplied by $(-1)^(i-1)$.
       
    The total determinant sign change is: $(-1) ⋅ (-1)^(i-1) = (-1)^i$.
  ]

  *Case 2: Deleting the start vertex $x_0$ (i.e., $i = 0$)*
  #indent[
    For $F_0 =[x_1, x_2 ,…, x_n]$, the sequence starts directly at $x_1$, so its path basis loses the first step:
    $
      P_0 = (x_2 - x_1, x_3 - x_2 ,…, x_n - x_(n-1)) = (w_2, w_3 ,…, w_n)
    $
    Find the outward normal. The vector from the new start $x_1 in F_0$ to the old start $x_0 in.not F_0$ is inward: $x_0 - x_1 = -w_1$.
    So the outward normal is $n_(out) = -(-w_1) = w_1$.
    
    The concatenated geometric determinant basis is simply:
    $
      B_(geom) = (w_1, w_2, w_3 ,…, w_n) = P
    $
    This is exactly the original basis! Hence, no sign change, the coefficient is $+1 = (-1)^0$.
  ]

  *Case 3: Deleting the end vertex $x_n$ (i.e., $i = n$)*
  #indent[
    For $F_n =[x_0, x_1 ,…, x_(n-1)]$, the sequence ends early at $x_(n-1)$. Its path basis loses the last step:
    $
      P_n = (w_1, w_2 ,…, w_(n-1))
    $
    The inward vector points from $x_(n-1) in F_n$ to $x_n in.not F_n$, i.e., $w_n$. 
    The outward normal is $n_(out) = -w_n$.
    
    Concatenate the geometric determinant basis:
    $
      B_(geom) = (-w_n, w_1, w_2 ,…, w_(n-1))
    $
    1. Factor the negative sign from the 1st column: multiply determinant by $-1$, yielding $(w_n, w_1 ,…, w_(n-1))$.
    2. Move $w_n$ from the 1st column all the way to the end ($n$-th column). It must pass the remaining $n-1$ vectors, requiring $n-1$ swaps. Multiply determinant by $(-1)^(n-1)$.
    
    Total sign change: $(-1) ⋅ (-1)^(n-1) = (-1)^n$.
  ]
]

*Prop* #tag("simplex_boundary_of_boundary_is_zero") For a simplex, if two $n-1$-dimensional oriented boundaries $σ_1, σ_2$ share a common $n-2$-dimensional boundary $F$, then the orientations induced on $F$ by $σ_1$ and $σ_2$ are opposite (this is the famous $∂^2 = 0$ in algebraic topology).

_Proof_
#indent[
  Let the two $n-1$-dimensional facets be $F_i$ (obtained by removing $x_i$) and $F_j$ (obtained by removing $x_j$). Assume without loss of generality that the original indices satisfy $i < j$.
  
  Their common $n-2$-dimensional face is denoted $F_(i,j)$, consisting of the vertices with $x_i$ and $x_j$ removed. 
  
  We compute the orientation signs induced on $F_(i,j)$ from $F_i$ and $F_j$ respectively:
  
  *1. Inducing from $F_i$ to $F_(i,j)$:*
  The oriented sequence of $F_i$ itself is $(-1)^i [x_0 ,…, hat(x_i) ,…, x_j ,…, x_n]$. 
  In this new sequence, because $x_i$ (which was earlier) is removed, the *actual index position* of the later $x_j$ shifts forward by one, becoming $j - 1$.
  Therefore, when subsequently removing $x_j$ from $F_i$ to obtain $F_(i,j)$, the newly induced sign coefficient must be multiplied by $(-1)^(j - 1)$. 
  The final orientation reaching $F_(i,j)$ is:
  $
    (-1)^i ⋅ (-1)^(j - 1) [x_0 ,…, hat(x_i) ,…, hat(x_j) ,…, x_n] = (-1)^(i + j - 1) [x_0 ,…, hat(x_i) ,…, hat(x_j) ,…, x_n]
  $
  
  *2. Inducing from $F_j$ to $F_(i,j)$:*
  The oriented sequence of $F_j$ itself is $(-1)^j [x_0 ,…, x_i ,…, hat(x_j) ,…, x_n]$.
  In this sequence, since the removed vertex $x_j$ is later, it has *no effect* on the index position of the earlier $x_i$, which remains $i$.
  Hence, when subsequently removing $x_i$ from $F_j$ to obtain $F_(i,j)$, the newly induced sign coefficient is simply multiplied by $(-1)^i$.
  The final orientation reaching $F_(i,j)$ is:
  $
    (-1)^j ⋅ (-1)^i [x_0 ,…, hat(x_i) ,…, hat(x_j) ,…, x_n] = (-1)^(i + j) [x_0 ,…, hat(x_i) ,…, hat(x_j) ,…, x_n]
  $
  
  *Conclusion:*
  The orientation coefficient induced via the $F_i$ route is $(-1)^(i + j - 1)$, while the one via the $F_j$ route is $(-1)^(i + j)$.
  Clearly $(-1)^(i + j - 1) = - (-1)^(i + j)$. Since the underlying vertex orderings are identical, the geometric orientations strictly cancel each other out!
]

*Def* #tag("simplex_boundary_chain") 
$
  ∂[x_0, x_1, …, x_k] = sum_(i=0)^k (-1)^i [x_0, …, hat(x_i), …, x_k]
$

*Prop* #tag("boundary_of_simplex_boundary_chain_is_zero")
$
  ∂^2[x_0, x_1, …, x_k] = 0
$ 
_Proof_
#indent[
  By linearity of the boundary operator, we expand it twice consecutively:
  $
    ∂^2 [x_0, …, x_k] &= ∂ (sum_(i=0)^k (-1)^i [x_0, …, hat(x_i), …, x_k]) \
    &= sum_(i=0)^k (-1)^i (∂[x_0, …, hat(x_i), …, x_k])
  $
  
  Now expand the inner $∂$ carefully. For a fixed $i$, the simplex $[x_0, …, hat(x_i), …, x_k]$ is missing vertex $x_i$ and has $k$ vertices.
  When we subsequently remove a vertex $x_j$ ($j != i$), we must account for how the absence of $x_i$ changes the *absolute index* of $x_j$ in the *new sequence*:
  
  - *Case 1: $j < i$*

    $x_j$ appears before $x_i$. Removing $x_i$ does not affect the position of $x_j$; its index in the new sequence remains $j$. 
    The resulting term is: $(-1)^j [x_0, …, hat(x_j), …, hat(x_i), …, x_k]$.
    
  - *Case 2: $j > i$*

    $x_j$ appears after $x_i$. Because the earlier $x_i$ has been removed, the index of $x_j$ in the new sequence *shifts forward by one*, becoming $j - 1$.
    The resulting term is: $(-1)^(j - 1) [x_0, …, hat(x_i), …, hat(x_j), …, x_k]$.

  Substitute these two cases back into the double sum:
  $
    ∂^2 [x_0, …, x_k] &= sum_(i=0)^k (-1)^i ( 
      sum_(j=0)^(i-1) (-1)^j […, hat(x_j), …, hat(x_i), …] + 
      sum_(j=i+1)^k (-1)^(j-1) […, hat(x_i), …, hat(x_j), …] 
    ) \
    &= sum_(0 <= j < i <= k) (-1)^(i+j) […, hat(x_j), …, hat(x_i), …] 
     + sum_(0 <= i < j <= k) (-1)^(i+j-1) […, hat(x_i), …, hat(x_j), …]
  $

  Observe that both double sums range over the same set of index pairs: all pairs $(x_u, x_v)$ with $u < v$. 
  To see the cancellation clearly, perform a dummy variable substitution in the first sum: let $u = j, v = i$, so $u < v$.
  In the second sum, let $u = i, v = j$, again $u < v$.
  
  Substituting the renamed variables:
  $
    ∂^2[x_0, …, x_k] 
    &= sum_(0 <= u < v <= k) (-1)^(v+u) […, hat(x_u), …, hat(x_v), …] \
    &quad + sum_(0 <= u < v <= k) (-1)^(u+v-1)[…, hat(x_u), …, hat(x_v), …] \
    &= sum_(0 <= u < v <= k) ( (-1)^(u+v) + (-1)^(u+v-1) )[x_0, …, hat(x_u), …, hat(x_v), …, x_k]
  $

  Since the exponents $u+v$ and $u+v-1$ differ by exactly $1$, the terms $(-1)^(u+v)$ and $(-1)^(u+v-1)$ are opposite in sign and sum strictly to $0$.
  
  Therefore every term cancels perfectly, and the final result is $0$.
]

#tag("orientable_low_dim_polyhera") A polytope #link(<orientation_of_boundary_of_simplex>)[orientability] is defined as: when constructing a polytope using hulls, one can define compatible orientations for all $k$-hulls such that for two adjacent $k$-hulls $A, B$, the orientation of their common $k-1$-dimensional boundary hull is compatible, i.e., orientation $O$ corresponds to the interior of $A$ and the exterior of $B$. Orientation $-O$ corresponds to the interior of $B$ and the exterior of $A$.

*Example* #tag("Mobius_strip") Non-orientable Möbius-type polytope (image modified from wiki)

#image("../image/Moebius.svg", width: 50%)

No matter how one defines the orientation for each $k$-hull, there exists a pair of adjacent $k$-hulls $A, B$ whose common $k-1$-dimensional boundary hull has incompatible orientations.

Constructively, starting from an initial $k$-hull and repeatedly defining compatible orientations for adjacent $k$-hulls, going around a loop leads to an incompatibility on the boundary hull: orientation $O$ would correspond to the interior of both $A$ and $B$, while orientation $-O$ would correspond to the exterior of both $A$ and $B$.

#tag("hull_chain") $sum a_i c_i$. Due to geometric meaning, we only consider $ℤ$ coefficients here.

A hull chain can be represented as a simplex chain.

#tag("boundary_operator") 
#indent[
  Boundary operator $∂ (sum a_i c_i) := sum a_i ∂(c_i)$

  $c$ is a cycle := $∂ c = 0$

  $c$ is a boundary := $c = ∂ d$

  $∂^2 = 0$ or $∂_k ∂_(k+1) = 0$

  $im ∂ ⊆ ker ∂$ or $im ∂_(k+1) ⊆ ker ∂_k$
]

*Example* 

- boundary-op-not-injective (p. 405 of @ref-11, vol.1)

  #image("../image/boundary_op_not_injective_1.png", width: 70%)

  #image("../image/boundary_op_not_injective_2.png", width: 80%)

- #tag("tri_intersect_boundary")

  #image("../image/tri_intersect_boundary.png", width: 40%)

#tag("homology") 
#indent[
  k-th homology $H_k (ℝ^n) := (ker ∂_k)/(im ∂_(k+1))$

  where $ker ∂_k, im ∂_(k+1)$ are subspaces of the $k$-chain space.
]
#tag("real_linear_space_trivial_homology") 
#indent[
  $ℝ^n$ ($n > 0$) is simplicially homology trivial: $forall k = 1 ,…, n, H_k (ℝ^n) = 0$ or $ker ∂_k = im ∂_(k+1)$ or in $ℝ^n$, the boundary of $c$ is zero <==> $c$ is a boundary.

  That is, for a $k$-dimensional simplex chain $c$, if its boundary $∂ c = 0$, then $c$ must be a boundary, i.e., there exists a $k+1$-dimensional simplex chain $d$ such that $c = ∂ d$.

  For $k = 0$, the equivalent algebraic statement for trivial homology requires an additional reduced condition — namely, the sum of coefficients of the $0$-chain is $0$.)

  For $k = n$, intuitively, if an $n$-dimensional simplex chain $c$ has zero boundary $∂ c = 0$, then $c = 0$.
]

_Proof_
#indent[
  Consider first the cases $k = 0 ,…, n-1$; the case $k = n$ will be treated afterwards.

  *1. Cone Operator*
  #indent[
    Arbitrarily choose a reference point $P$ in $ℝ^n$ as the cone apex. 
    
    For any $k$-dimensional simplex $σ =[x_0, …, x_k]$, define its cone with respect to $P$ as $P ⋅ σ$, which is a $k+1$-dimensional simplex formed by prepending $P$ to the vertex sequence:
    $
      P ⋅ σ := [P, x_0, x_1, …, x_k]
    $
    
    For a $k$-chain $c = sum a_j σ_j$ which is a finite linear combination of simplices, extend this operator linearly:
    $
      P ⋅ c := sum a_j (P ⋅ σ_j)
    $
  ]

  *2. Algebraic Boundary Identity for the Cone (Chain Homotopy)*
  #indent[
    Now compute $∂ (P ⋅ σ)$ using the definition:
    $
      ∂ (P ⋅ σ) = ∂[P, x_0, x_1, …, x_k]
    $
    Remove each vertex sequentially from this $k+1$-dimensional sequence:
    
    - When removing the vertex at position $0$ (i.e., $P$), the coefficient is $(-1)^0 = 1$, and the remaining sequence is exactly the original $σ$:
      $
        (-1)^0 [x_0, x_1, …, x_k] = σ
      $
    
    - When removing the vertex at position $i+1$ (which is $x_i$ from the original $σ$), the coefficient is $(-1)^(i+1)$. The sum over these terms is:
      $
        sum_(i=0)^k (-1)^(i+1) [P, x_0, …, hat(x_i), …, x_k]
      $
      Factor out a $-1$ from $(-1)^(i+1) = (-1) ⋅ (-1)^i$:
      $
        - sum_(i=0)^k (-1)^i [P, x_0, …, hat(x_i), …, x_k] = - P ⋅ ( sum_(i=0)^k (-1)^i [x_0, …, hat(x_i), …, x_k] )
      $
      The expression inside the parentheses is precisely $∂ σ$. Thus, this term equals $- P ⋅ (∂ σ)$.
      
    Combining these two parts yields a symmetric and elegant identity:
    $
      ∂ (P ⋅ σ) = σ - P ⋅ (∂ σ)
    $
    Since the boundary operator and the cone operator are linear, this identity also holds for any chain $c$:
    $
      ∂ (P ⋅ c) = c - P ⋅ (∂ c)
    $
  ]

  *3. Proving Triviality*
  #indent[
    If $c$ satisfies $∂ c = 0$ (when $k > 0$), substitute $∂ c = 0$ into the above identity, obtaining:
    $
      ∂ (P ⋅ c) = c - P ⋅ 0 = c
    $
    Let $d = P ⋅ c$. We have algebraically constructed a $k+1$-chain $d$ such that $∂ d = c$, proving homology triviality.
    
    *(Remark: For $k=0$, a $0$-chain $c = sum a_j [x_j]$, we have $∂ (P ⋅ c) = sum a_j [x_j] - (sum a_j)[P] = c - (sum a_j)[P]$. For $c = ∂ d$ to hold, the algebraic reduced condition $sum a_j = 0$ is necessary.)*
  ]

  *4. Supplementary Discussion on Affine Independence and Non-degenerate Simplices*
  #indent[
    By the strict definition of a simplex, its vertices must be *affinely independent*. The above algebraic derivation remains consistent with this geometric constraint:
    
    *When $k < n$*: The chain $c$ consists of only finitely many $k$-simplices, whose affine subspaces have dimension at most $k$. Since $k < n$, the union of finitely many proper $k$-dimensional subspaces cannot cover all of $ℝ^n$. Therefore, we can always choose a point $P$ in $ℝ^n$ such that $P$ does not belong to the affine subspace of any $σ_j$. This guarantees that the newly added $P$ is affinely independent from the vertices of each $σ_j$, and the generated $d = P ⋅ c$ consists entirely of strictly legal, non-degenerate simplices.
  ]

  The case $k = n$

  If $c$ is regarded as a formal chain, $c = 0$ is false; but if $c$ is regarded as a "signed geometric coverage (multiplicity)" of space, then its geometric sum is indeed zero everywhere.

  1. Algebraically $c != 0$

  #indent[ 
    (Example in $ℝ^1$): Take three distinct points $A < B < C$ on a line. Any two points are affinely independent, thus forming legal $1$-simplices. Define
    a $ℤ$-coefficient $1$-chain: $c = [A, C] - [A, B] - [B, C]$. Then $∂ c = 0$, but algebraically $c != 0$.

    Higher-dimensional generalization: In $ℝ^n$, choose $n+2$ points $v_0 ,…, v_(n+1)$ in general position, i.e., any $n+1$ of them are affinely independent. Any selection of $n+1$ points forms a legal $n$-simplex. Let $c = sum_(i=0)^(n+1) (-1)^i [v_0 ,…, hat(v_i) ,…, v_(n+1)]$. By a similar alternating cancellation principle as in #link(<simplex_boundary_of_boundary_is_zero>)[], we have $∂ c = 0$ and $c != 0$. 
  ]

  2. Geometrically $c = 0$

  #let core = "core"

  #indent[ 
    Although the formal combination is non-zero, if we interpret the $c$-chain $c = sum a_i σ_i$ as a signed coverage weight function on $ℝ^n$, i.e., a point $x$ accumulates weight $a_i$ when it lies in the $core(σ_i)$, we prove: when $∂ c = 0$, the corresponding spatial superposition weight is zero everywhere. 

    For any point $x$ in $ℝ^n$ in general position (not lying on any low-dimensional boundary of the $σ_i$), we show that the weight at $x$ is $0$. 

    Draw an arbitrary ray from $x$: $f(t) = x + t v, (t >= 0)$. Since all $σ_i$ are bounded convex hulls, as $t -> +∞$, the ray must eventually exit all simplices, where the external coverage weight is strictly $0$. 

    Now walk backwards along the ray from $f(+∞)$ to $f(0) = x$. The coverage weight of space only changes when the ray crosses the hyperplane $H$ containing an $n-1$-dimensional facet of some simplex. 

    The weight step $± a_i$ from entering or exiting a simplex is completely determined by the induced orientation of that facet and the coefficient $a_i$. 

    The algebraic premise $∂ c = 0$ means the sum of coefficients of all oriented $n-1$-dimensional faces forming $∂ c$ is strictly $0$. Specifically, on any local hyperplane $H$, the signed coefficients $a_i$ of adjacent $n$-simplices contributing to that $n-1$-dimensional face must perfectly cancel the step incurred when crossing $H$. 

    Since the total weight change when the ray crosses any boundary $H$ satisfies $Delta "weight" = 0$, and the initial weight at $f(+∞)$ is $0$, walking backwards along the ray to the starting point $f(0) = x$ shows that the total superposed weight at $x$ must be identically $0$. 

    Thus, from the perspective of geometric entities, the region represented by the chain $c$ is indeed completely canceled to zero by positive and negative contributions.  
  ]
]

*Prop* #tag("uniqueness_of_n_hull_chain_with_boundary") 

_Proof_
#indent[
  $
    (c,c' in C_n) and (∂_n c = ∂_n c') &==> ∂_n (c-c') = 0 \
    &==> c - c' = 0 \
    &==> c = c'
  $
]

#tag("homology_hole") For the set $ℝ^n$ minus a finite or countable number of disjoint linear subspaces or polytopes, the homology is not zero.

#image("../image/homology_hole.png", width: 100%)

#tag("Stokes_theorem") 
#indent[
  Analogous to the one-dimensional #link(<fundamental_theorem_of_calculus>)[Fundamental Theorem of Calculus]. Intuitively, divergence and the divergence theorem = the higher-dimensional Fundamental Theorem of Calculus.

  Define in coordinates the #tag("exterior_differential") $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$, where $Vol$ is the coordinate volume, and the result is independent of the coordinate choice. 

  Then we have Stokes' theorem. 
  
  For an #link(<orientable>)[orientable] analytic manifold with boundary and an $(n-1)$-form $ω$:
  $
    integral_(∂ M) ω = integral_(M) #d ω
  $ 
  or $⟨ ∂ M , ω ⟩ = ⟨ M , #d ω ⟩$.
  
  If one uses a box in coordinates to compute $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$, partial derivatives $∂_i$ of certain quantities along coordinate directions will appear. The result will be:
  $
    #d ω 
    &= (sum_i (-1)^(i-1) ∂_i ω_i) #d x^1 ∧ ⋯ ∧ #d x^n \
    &= ∂_i ω_i #d x^i ∧ #d x^1 ∧ ⋯ hat(#d x^i) ⋯ ∧ #d x^n \
    &= #d (ω_i #d x^1 ∧ ⋯ hat(#d x^i) ⋯ ∧ #d x^n) 
  $
]
However, in the proof of the one-dimensional Fundamental Theorem of Calculus, the partition of the interval, the boundary of the interval, and the integral over the boundary of the interval all rely on the simplicity of being "straight". Higher-dimensional regions can be "curved", making the situation more difficult.

#tag("Stokes_theorem_simple") For higher dimensions, one can first handle straight objects, i.e., simplices/hulls/parallelotopes. Partitions using the same type of regions work, and boundary cancellation is simple. Then, analogous to the one-dimensional case, one can use the mean value theorem for approximation combined with compactness control. This proves Stokes' theorem for simplices/hulls/parallelotopes in $ℝ^n$.

#tag("Stokes_theorem_proof") *Question*
#indent[
  Following the intuitive handling of integration on manifolds and Stokes' theorem, one should consider directly partitioning the manifold.
  
  Partitions in integration can directly use zero-order measurable sets (closed under diffeomorphisms), but this is too coarse to control the boundary. The regions used for partitioning in Stokes' theorem should be sets of finite perimeter (Caccioppoli sets) from geometric measure theory (#link(<ref_33>)[]), which are expected to be closed under finite unions, intersections, and differences, and also closed under diffeomorphisms.

  Prove that a manifold with boundary is locally such a set (find a polyhedral approximation using manifold properties), and that the integral over the boundary in this theory coincides with the integral over the boundary in manifold theory (similar to the reduced boundary theory in geometric measure theory). Prove that well-behaved manifolds with singularities (e.g., polytopes, cones, well-behaved singularities of codimension $> 1$) also belong to such sets.
  
  The proof of Stokes' theorem would then be: finitely cover the compact support of the form with such regions, subtract overlaps, partition, apply Stokes' theorem on the partitioned regions, cancel integrals on interior boundaries, leaving only the genuine boundary of the manifold.

  Although I wish to avoid compactly supported smooth forms, some care is needed. The strict inclusions $"continuous differential" ⊊^(|x|) "Lipschitz" ⊊^(sqrt(x)) "absolutely continuous" ≃ "Sobolev" W^(1,1)$ on $[0,1]$ suggest that (local) Sobolev or absolute continuity of an $(n-1)$-form and its exterior derivative, lacking a mean value theorem, is not suitable for geometrically defining the exterior derivative as the limit of boundary integral over volume and then using the mean value theorem and barycentric subdivision to geometrically prove that simplices satisfy Stokes' theorem. Sobolev or absolute continuity still implies that each sufficiently small local simplex satisfies Stokes' theorem. If boundedness is added to the exterior derivative, then the mean value theorem can indeed be used for control. However, the mean value theorem essentially defines Lipschitz continuity (with respect to simplex volume), and mere (local) Lipschitz continuity will also imply almost everywhere existence of the derivative which is (locally) $L^1$.
  
  The meaning of an $L^1$ $k$-form. As long as a $k$-dimensional affine subspace is viewed as a manifold (e.g., choose a $k$-basis to establish coordinates), it has its own volume. After choosing a basis for the $k$-subspace, a pointwise-defined $k$-form on $ℝ^n$ becomes a real-valued function on it. Integrability over the boundary of any simplex requires that the $k$-form become an integrable function in every $k$-direction. By linearity of forms and integration, it suffices that its components become integrable functions with respect to a basis of the space of $k$-directions (corresponding to the $k$-alternating tensor space on $ℝ^n$), i.e., that the "components of the $k$-form on $ℝ^n$ are locally $L^1$". Such $L^1$ forms are preserved under diffeomorphisms, just as Lebesgue measurable sets are. In principle, one can say that the real-valued function induced by a $k$-form on a $k$-subspace in each $k$-direction can be approximated by piecewise constant functions supported on simplices, in the sense of the usual integral of an $n$-form on $ℝ^n$. Without assuming differentiability, we haven't even defined the exterior derivative, nor proven Stokes' theorem on simplices.

  Attempt to define differentiation starting from integration, as a way to combine measure theory and differentials. First, define what it means for an $(n-1)$-form to satisfy a local infinitesimal Stokes' theorem — an integrable version of an exterior-differentiable form — then use polyhedral approximations of forms satisfying the local infinitesimal Stokes' theorem on simplex regions to define what it means for a region to globally satisfy Stokes' theorem.

  Then define the exterior derivative of an $(n-1)$-form using the average derivative $#d ω (x) = lim_(σ -> x) frac(integral_(∂ σ) ω,Vol(σ)) Vol$.

  Next, one needs to prove Stokes' theorem for simplices. Using barycentric subdivision techniques, the proof for smooth forms uses estimates provided by the mean value theorem.
  
  Then one can attempt to define "regions where Stokes' theorem holds", similar to sets of finite perimeter. The required restrictions are, intuitively, that among all measurable sets, some possess boundary properties allowing the global Stokes' theorem. Intuitively, the restriction conditions for such regions should be similar to the existence of a subnet in the net of approximating polytopes that well-uniformly controls the integrals of all normalized or projected integrable exterior-differentiable forms (or something more general) on the boundaries of the approximating polytopes.

  The relationship between functions of bounded variation and sets of finite perimeter in geometric measure theory is analogous to the relationship between integrable functions and measurable sets in zero-order measure theory.

  Since exterior differentiation involves only first-order derivatives, not infinite-order derivatives, the $L^2$ norm $|ω|_(L^2) + |#d ω|_(L^2)$ of a form on a metric manifold is suitable for Banach/Hilbert space theory (infinite-order derivatives are not suitable for Banach space theory).

  Because the topology of a manifold may have non-trivial homology, some cohomologically non-zero forms $ω$ may have an exterior derivative $#d ω$ whose integral cannot be fully canceled by interior boundaries, leading to an additional "residue" similar to complex analysis. For example, #tag("cohomology_hole") *Example* in $ℝ^2 ∖ 0$, $#d 1/r$ or $(-x_2)/(|x|^2) #d x_1 + (x_1)/(|x|^2) #d x^2$, satisfies $#d ^2 1/r = 0$, so its integral over $𝔹 ∖ 0$ is zero, but the integral of $#d 1/r$ over the boundary $𝕊^1$ of $𝔹 ∖ 0$ is non-zero. *Example* $𝕊^1$ has homology isomorphic to $ℝ^2 ∖ 0$.

  Another example where boundary cancellation fails in integration: a vector field or form that satisfies Stokes' theorem on a closed ball $𝔹$ may no longer satisfy it after removing a region similar to a closed disk from the interior of $𝔹$. Intuitively, after removing a closed disk, the flux leaks out, indicating that the new boundary does not enclose the manifold's interior. If an open disk is removed instead of a closed one, the result is not a manifold with boundary; it has a boundary of codimension $> 1$, and the boundary of that boundary is not zero.

  One might need to consider some compactness constraint, as non-compactness can introduce some kind of failure of boundary cancellation due to infinity, potentially resulting in a residue term relative to infinity.
]

I have not handled Stokes' theorem for manifolds without boundary, nor defined $∂ M := ∅ and integral_(∂ M) ω := integral_(∅) ω = 0$. *Example* of a manifold without boundary: $ℝ^n$.

Given counterexamples like the Cantor set, almost-everywhere analyticity is not the correct way to handle singularities.

Correspondence between boundary operator and exterior derivative.

Homology.

Cohomology.

#tag("coboundary_operator") 
#indent[
  Coboundary $ω_k = #d _(k-1) ω_(k-1)$

  Cocycle $#d ω = 0$. Intuitively, the divergence of the form at a point is zero.

  $#d^2 = 0$ or $#d _k #d _(k-1) = 0$. Intuitively, the divergence field is divergence-free.

  $im #d ⊆ ker #d$ or $im #d _(k-1) ⊆ ker #d _k$
]
#tag("de_Rham_cohomolgy") k-th de Rham cohomology $H^k (M) = (ker #d _k)/(im #d _(k-1))$

in $ℝ^n$, cohomology trivial $forall k = 1 ,…, n, H^k = 0$

The case of metric manifolds

The integral of the $k$ form $ω$ is equivalent to the integral of $⟨ ω , Vol_k ⟩ Vol_k$

#tag("Hodge_star") 
#indent[
  Hodge star operator as the orthogonal complement dual of the form

  $⋆ : (⋀^k ℝ^n)^⊺ -> (⋀^(n-k) ℝ^n)^⊺$ 

  $⋆ ω$ with $ω ∧ ⋆ ω = ⟨ ω , ω ⟩ Vol_n$ ==> $ω ∧ ⋆ η = ⟨ ω , η ⟩ Vol_n$

  $⋆^2 = 𝟙$ ==> $⟨ ω , η ⟩ = ⟨ ⋆ ω , ⋆ η ⟩$

  $⋆ Vol_k = Vol_(n-k)$
]
#tag("flux") 
#indent[
  Integral of $k$ form $ω$ -> Integral of $⟨ ω , Vol_k ⟩ Vol_k$ -> Integral of $⟨ ⋆ ω, ⋆ Vol_(n-k) ⟩ Vol_k$, interpreted as the quantity $⟨ ⋆ ω , Vol_(n-k) ⟩$ of the orthogonal complement $⋆ Vol_k = Vol_(n-k)$ of $Vol_k$ integrated over $Vol_k$, i.e. flux

  Represent the flux $n-k$ alternating tensor using the inner product duality $(⋆ ω)^♯, (Vol_(n-1))^♯ in ⋀^(n-k) ℝ^n$, the inner product represents the orthogonal projection of the quantity $(⋆ ω)^♯$ onto the flux direction $(Vol_(n-1))^♯$ (image)
]
*Example* in Euclidean $ℝ^3$, $⋀^1 ℝ^3 ≃ ⋀^2 ℝ^3 ≃ ℝ^3$.

- $0$ form
#indent[
  $#d ω in (⋀^1 ℝ^3)^⊺ <--> (⋆ #d ω)^♯ = grad ω in ⋀^2 ℝ^3$

  Coordinates $ grad f = vec(∂_1 f, ∂_2 f, ∂_3 f) $

  Stokes' theorem #tag("gradient")
  $
    ω(x_1) - ω(x_0) 
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_l ⟨ grad ω , #d l ⟩
  $
]
- $1$ form
#indent[  
  Note that at this time, you can add a directional two-dimensional "rotation 90 degrees" to change the two-dimensional divergence into a two-dimensional curl, and the normal flux to the boundary becomes the tangent flow to the boundary.

  $#d ω in ⋀^2 ℝ^3 <--> (⋆ #d ω)^♯ = curl ω^♯ in ⋀^1 ℝ^3$

  Coordinates $ curl vec(v_1,v_2,v_3) = vec(∂_2 v_3 - ∂_3 v_2, ∂_3 v_1 - ∂_1 v_3, ∂_1 v_2 - ∂_2 v_1) $

  $ω^♯ in ⋀^1 ℝ^3$

  Stokes' Theorem #tag("curl")
  $
    integral_(∂ S) ⟨ ω^♯ , #d l ⟩ 
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_S ⟨ curl ω^♯ , #d S ⟩
  $
  where $n = ⋆ Vol_2 = Vol_1$
]
- $2$ form
#indent[  
  $#d ω in ⋀^3 ℝ^3 <--> (⋆ #d ω)^♯ = ω^♯ in ⋀^0 ℝ^3$

  Coordinates $ div vec(v_1,v_2,v_3) = ∂_1 v_1 + ∂_2 v_2 + ∂_3 v_3 $

  $bra(ω) in ⋀^2 ℝ^3$

  Stokes' Theorem #tag("divergence")
  $
    integral_(∂ V) ⟨ ω^♯ , #d S ⟩
    &= integral_(∂ M) ω \
    &= integral_M #d ω \
    &= integral_V ⟨ div ω^♯ , #d V ⟩
  $
]
in Minkowski $ℝ^(1,3)$, $⋀^2 ℝ^(1,3) ≃ ⋀^(4-2) ℝ^(1,3)$