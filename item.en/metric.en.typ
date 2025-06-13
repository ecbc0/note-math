#import "/module/module.typ": *
#show: module

#tag("quadratic-form") $ℝ^n$ Quadratic form *alias* #tag("metric") Metric *alias* Inner product #tag("inner-product")
#indent[
  *Example* $ℝ^2,ℝ^3$ Distance $vec(x,y,z) ⇝ x^2 + y^2 + z^2$

  *Example* $ℝ^(1,3)$ spacetime metric $vec(t,x,y,z) ⇝ c^2 ⋅ t^2 - (x^2 + y^2 + z^2)$

  Bilinear function, Quadratic form

  The commonly used notation for metric is $g(x,y),⟨ x,y ⟩$. In coordinates, it is denoted as $g_(i j) x_i y_j$

  Under coordinates, metric $g$ can be represented as matrix $G$ and matrix multiplication $(X,Y) ⇝ X^⊺ G Y$

  #tag("signature-inertial") signature $(p,q)$ is invariant under $GL(n,ℝ)$. The eigenvalues and diagonalization of symmetric matrix $G$ are $mat(1; , 0; ,, -1)$ where there are $n_+$ ones, $n_0$ zeros, and $n_-$ negative ones. This can be understood as orbit classification of group action

  #tag("quadratic-form-non-degenerated") Non-degenerate := $N_0 = 0$ in signature

  Degenerate quadratic forms can be restricted to the $n_+ + n_-$ subspace to become non-degenerate

  The following are equivalent
  - metric is non-degenerate
  - #tag("quadratic-form-dual") is a bijection
    $
      dmat( delim: #none ,
        V, ⟶, Lin(V -> ℝ) "or" V^⊺;
        v, ⟿, ⟨v, ⟩ "or" bra(v) "or" g(v,) "or" v^flat
      )
    $
    The dual map relative to the metric is denoted as $v^♭$, and the inverse map of the metric dual is denoted as $α^♯$
  - The quadratic form matrix is invertible
  - $det G != 0$

  When a non-degenerate quadratic form is fixed, the structure group $≃ #O (p,q)$. Keeping two directions yields $SO(p,q)$
]
The inverse of the metric matrix $g$ is $g^(-1)$. In coordinates, it is denoted as $g ⇝ g_(i i')$ and $g^(-1) ⇝ g^(i i')$

$g ⋅ g^(-1) = 𝟙 = g^(-1) ⋅ g$ ==> In coordinates $g_(i j) g^(i' j) = δ_i^i'= g^(i' j) g_(i j)$

let the dual basis $e^1 ,…, e^n in (V -> ℝ)$ of the basis $e_1 ,…, e_n in V$ of the vector space be defined as $e^i (e_j) = δ^i_j$

let $α = α_i e^i$ then 
$
  α(e_j) &=& α_i e^i (e_j) \
  &=& α_i δ^i_j \
  &=& α_j
$

#tag("rasing-and-lowring-index") Raising and lowering indices
#indent[
  quadratic-form-dual Matrix representation in coordinates
  $
    g(v,) ⇝ v^⊺ g &=& mat(v^1 , ⋯ , v^n) mat(
      g_(1 1), ⋯ , g_(1 n) ;
      ⋮ , ⋱ , ⋮ ;
      g_(n 1), ⋯ , g_(n n)
    ) \
    &=& mat(v^j g_(j 1) , ⋯ , v^j g_(j n)) := mat(v_1 , ⋯ , v_n)
  $
  where $v^j g_(i j) = v_i$ is the lowered index. Or
  $
    g(,v) ⇝ g v &=& mat(
      g_(1 1), ⋯ , g_(1 n) ;
      ⋮ , ⋱ , ⋮ ;
      g_(n 1), ⋯ , g_(n n)
    ) vec(v^1 , ⋮ , v^n) \
    &=& vec(v^j g_(1 j), ⋮ , v^j g_(n j)) := vec(v_(1), ⋮ , v_(n))
  $
  Note that the metric matrix is symmetric $g^⊺ = g$ or $g_(i j) = g_(j i)$

  $v_i$ are the coefficients of $v^♭$ represented by the dual basis, because $g(v,e_i) = v^j g_(i j) = v_i$, or using $g_(i j)$ are the coefficients of $g$ in the dual basis $e^i ⊗ e^j$

  For the inverse of the metric matrix, define the metric $g^(-1)$ of the dual space $V^⊺$, satisfying 
  $
    g^(-1)(v^♭,w^♭) 
    &=& (g v)^⊺ g^(-1) (g w) \
    &=& v^⊺ (g g^(-1) g) w \
    &=& v^⊺ g w \
    &=& g(v,w) 
  $
  In coordinates
  - $g^(i i') α_i β_i'$
  - $g_(i i') α^i β^i'$
  - $α_i β^i$
  - $α^i β_i$
  The metric dual of $g^(-1)$ is the inverse $♯$ of the metric dual $♭$ of $g$
  $
    v &⇝& g v \
    &⇝& g^(-1) g v \
    &=& v
  $
  Therefore, there is also a raised index $g^(-1)(v^♭,e_j) = v_j g^(i j) = v^i$

  Conversely, starting from the inverse $♯$ of $♭$, it can be proven that it is the metric dual of some metric in $V^⊺$, and this metric is $g^(-1)$ in matrix representation

  The metric dual of the metric $g^(-1) = g^(i j) e_i e_j$ under the metric of $(V^(⊺ ⊙ 2))^⊺$ is $g = g_(i j) e^i e^j in (V^(⊙ 2))^⊺$. The reverse is also true
]
#tag("tensor") Multilinearity (compatible with `and` logic of Cartesian product) + minimally independent (generating basis)
$
  dmat( delim: #none ,
    V_1 × ⋯ × V_k ,⟶, V_1 ⊗ ⋯ ⊗ V_k ;
    (v_1 ,…, v_k) ,⟿, v_1 ⊗ ⋯ ⊗ v_k
  )
$
Derived basis $e_(1,i_1) ⊗ ⋯ ⊗ e_(k,i_k)$ and coefficients of derived basis $T^(i_1 ⋯ i_k)$

From the properties of tensors
$
  v_1 ⊗ ⋯ ⊗ v_k 
  &=& (v_1^(i_1) e_(1,i_1)) ⊗ ⋯ ⊗ (v_k^(i_k) e_(k,i_k)) \
  &=& (v_1^(i_1) ⋯ v_k^(i_k)) e_(1,i_1) ⊗ ⋯ ⊗ e_(k,i_k)
$

#tag("tensor-induced-quadratic-form") 
#indent[
  derive the quadratic form $g$ of the vector space to the quadratic form of the tensor space $V^(⊗ I) ⊗ V^(⊺ ⊗ J)$  
  $
    g ( ⨂_(i=1..I) v_i ⊗ ⨂_(j=1..j) α_j , ⨂_(i=1..I) w_i ⊗ ⨂_(j=1..j) β_j ) = product_(i=1..I) g(v_i,w_i) product_(i=1..J) g^(-1)(α_j,β_j) 
  $
  Traverse all orthogonal bases $⨂_(i=1..I) e_(k_i) ⊗ ⨂_(j=1..J) e^(l_j)$ with 
  $
    ⟨ ⨂_(i=1..I) e_(k_i) ⊗ ⨂_(j=1..J) e^(l_j) ⟩^2 
    = product_(i=1..I) ⟨ e_(k_i) ⟩^2 product_(j=1..J) ⟨ e^(l_j) ⟩^2
  $
  get signature
]
#tag("rasing-and-lowring-index-tensor") Tensors can also metric dual raise/lower indices

*Example* Lowering index $T^i_j ⇝ g_(i i') T^i'_j = T_(i j)$

