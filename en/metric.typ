#import "../module/module.typ": *
#show: module

#tag("quadratic-form") $ℝ^n$ quadratic form *alias* #tag("metric") metric *alias* inner product #tag("inner-product")
#indent[
  *Example* $ℝ^2,ℝ^3$ distance $vec(x,y,z) ⇝ x^2 + y^2 + z^2$

  *Example* $ℝ^(1,3)$ spacetime metric $vec(t,x,y,z) ⇝ c^2 ⋅ t^2 - (x^2 + y^2 + z^2)$

  Bilinear function, quadratic form

  metric common notations $g(x,y),⟨ x,y ⟩$. In coordinates written as $g_(i j) x_i y_j$

  In coordinates metric $g$ can be expressed as matrix $G$ and matrix multiplication $(X,Y) ⇝ X^⊺ G Y$

  #tag("signature-inertia") signature $(p,q)$ invariant under $GL(n,ℝ)$. Eigenvalues and diagonalization of symmetric matrix $G$ $mat(1; , 0; ,, -1)$ with $n_+$ $1$'s, $n_0$ $0$'s, $n_-$ $-1$'s.

  Different signatures can be understood as classification of orbits of the $GL(n)$ group action on the space of quadratic forms

  #tag("quadratic-form-non-degenerated") non-degenerate := $N_0 = 0$ in signature

  Degenerate quadratic form can be restricted to $n_+ + n_-$ subspace to become non-degenerate

  The following are equivalent
  - metric is non-degenerate
  - #tag("quadratic-form-dual") is a bijection *alias* #tag("musical-isomorphism")
    $
      map(V, Lin(V -> ℝ) "or" V^⊺, v, ⟨v, ⟩ "or" bra(v) "or" g(v,) "or" ♭(v))
    $
    Dual mapping relative to metric denoted $♭(v)$, inverse of metric dual mapping denoted $♯(α)$
  - The quadratic form matrix is invertible
  - $det G != 0$

  When fixing a non-degenerate quadratic form, the structure group $≃ #O (p,q)$. Preserving both orientations yields $SO(p,q)$
]
The inverse $g^(-1)$ of the metric matrix $g$. In coordinates, denoted as $g ⇝ g_(i i')$ and $g^(-1) ⇝ g^(i i')$

$g ⋅ g^(-1) = 𝟙 = g^(-1) ⋅ g$ ==> In coordinates $g_(i j) g^(i' j) = δ_i^i'= g^(i' j) g_(i j)$

let the dual basis $e^1 ,…, e^n in (V -> ℝ)$ of the basis $e_1 ,…, e_n in V$ := $e^i (e_j) = δ^i_j$

let $α = α_i e^i$ then
$
  α(e_j) &= α_i e^i (e_j) \
  &= α_i δ^i_j \
  &= α_j
$

#tag("rasing-and-lowring-index") Raising and lowering indices
#indent[
  quadratic-form-dual Matrix representation in coordinates
  $
    g(v,) ⇝ v^⊺ g &= mat(v^1 , ⋯ , v^n) mat(
      g_(1 1), ⋯ , g_(1 n) ;
      ⋮ , ⋱ , ⋮ ;
      g_(n 1), ⋯ , g_(n n)
    ) \
    &= mat(v^j g_(j 1) , ⋯ , v^j g_(j n)) \
    &:= mat(v_1 , ⋯ , v_n)
  $
  where $v^j g_(i j) = v_i$ is lowering an index. Or
  $
    g(,v) ⇝ g v &= mat(
      g_(1 1), ⋯ , g_(1 n) ;
      ⋮ , ⋱ , ⋮ ;
      g_(n 1), ⋯ , g_(n n)
    ) vec(v^1 , ⋮ , v^n) \
    &= vec(v^j g_(1 j), ⋮ , v^j g_(n j)) := vec(v_(1), ⋮ , v_(n))
  $
  Note the metric matrix is symmetric $g^⊺ = g$ or $g_(i j) = g_(j i)$

  $v_i$ are the coefficients of the dual basis representation of $♭(v)$, because $♭(v)(e_i) = g(v,e_i) = v^j g_(i j) = v_i$, or using that $g_(i j)$ are the coefficients of $g$ in the dual basis $e^i ⊗ e^j$

  For the inverse of the metric matrix, define the metric of the dual space $V^⊺$ as $g^(-1)$. It satisfies the following equation
  $
    g^(-1)(♭(v),♭(w))
    &= (g v)^⊺ g^(-1) (g w) \
    &= v^⊺ (g g^(-1) g) w \
    &= v^⊺ g w \
    &= g(v,w)
  $
  The equation is expressed in coordinates as
  - $g^(i i') α_i β_i'$
  - $g_(i i') α^i β^i'$
  - $α_i β^i$
  - $α^i β_i$
  The metric dual of $g^(-1)$ is the inverse of the metric dual $♭$ of $g$, and thus is also $♯$
  $
    v &⇝ g v && "dual of" g \
    &⇝ g^(-1) g v space && "dual of" g^(-1) \
    &= v && "mutally inverse"
  $
  Therefore, there is also raising of indices
  - $♭(v) = v_i e^i$
  - $g^(-1)(♭(v), ♭(e_j)) = v_j g^(i j) = v^i$
]
#tag("tensor") Multilinear (compatible with the `and` logic of set product) + minimal independent generation (quotient construction)
$
  map(V_1 × ⋯ × V_k, V_1 ⊗ ⋯ ⊗ V_k, (v_1 ,…, v_k), v_1 ⊗ ⋯ ⊗ v_k)
$
Derived basis $e_(1,i_1) ⊗ ⋯ ⊗ e_(k,i_k)$, coefficients of the derived basis $T^(i_1 ⋯ i_k)$

From the properties of tensors
$
  v_1 ⊗ ⋯ ⊗ v_k
  &= (v_1^(i_1) e_(1,i_1)) ⊗ ⋯ ⊗ (v_k^(i_k) e_(k,i_k)) \
  &= (v_1^(i_1) ⋯ v_k^(i_k)) e_(1,i_1) ⊗ ⋯ ⊗ e_(k,i_k)
$

#tag("tensor-induced-quadratic-form")
#indent[
  Extend the quadratic form $g$ of the vector space to the quadratic form of the tensor space $V^(⊗ I) ⊗ V^(⊺ ⊗ J)$
  $
    g ( ⨂_(i=1..I) v_i ⊗ ⨂_(j=1..j) α_j , ⨂_(i=1..I) w_i ⊗ ⨂_(j=1..j) β_j ) = product_(i=1..I) g(v_i,w_i) product_(i=1..J) g^(-1)(α_j,β_j)
  $
  Iterate over all orthogonal bases $⨂_(i=1..I) e_(k_i) ⊗ ⨂_(j=1..J) e^(l_j)$ with
  $
    ⟨ ⨂_(i=1..I) e_(k_i) ⊗ ⨂_(j=1..J) e^(l_j) ⟩^2
    = product_(i=1..I) ⟨ e_(k_i) ⟩^2 product_(j=1..J) ⟨ e^(l_j) ⟩^2
  $
  Obtain the signature
]
#tag("rasing-and-lowring-index-tensor") Tensors can also raise and lower indices via metric dual

*Example* Lowering an index $T^i_j ⇝ g_(i i') T^i'_j = T_(i j)$

$g^(-1) = g^(i j) e_i e_j$ in $V^(⊙ 2)$, the metric dual of the induced metric is $g = g_(i j) e^i e^j in V^(⊺ ⊙ 2)$. The converse also holds

Denote $ℝ^(p,q)$ as $V$

Denote the quadratic form as $⟨ v,w ⟩, g_(i j)$

Consider simple tensors of $V ⊗ V^⊺$. For $v,w in V, α,β in V^⊺$, the induced metric on the $(1,1)$ tensor $V ⊗ V^⊺$ is
$
  ⟨ v ⊗ α, w ⊗ β ⟩_(V ⊗ V^⊺) := ⟨ v,w ⟩_(V) ⋅ ⟨ α,β ⟩_(V^⊺)
$

*Prop* trace-identity duality $⟨ A,𝟙 ⟩_(V ⊗ V^⊺) = tr(A)$

_Proof_
#indent[
  *Question* Is there a more intrinsic, coordinate-free proof method?

  The first proof method is to use an orthonormal basis $e_i$

  Then $𝟙 = sum_k (e_k ⊗ e^k)$

  It suffices to prove the case for $A = e_i ⊗ e^j$
  $
    ⟨ A,𝟙 ⟩_(V ⊗ V^⊺)
    &= ⟨ e_i ⊗ e^j , sum_k e_k ⊗ e^k ⟩_(V ⊗ V^⊺) \
    &= sum_k ⟨ e_i, e_k ⟩_(V) ⋅ ⟨ e^j, e^k ⟩_(V^⊺) \
    &= sum_k (ε_i δ_(i k)) (ε_j δ^(j k)) \
    &= δ_(i)^(j) \
    &= tr(A)
  $

  The second proof uses the result for $(0,2)$ tensors, then converts back to $(1,1)$ tensors
  $
    ⟨ A,𝟙 ⟩_(V ⊗ V^⊺) = ⟨ ♯(A), ♯(𝟙) ⟩_(V^⊺ ⊗ V^⊺) =  ⟨ ♯(A), g ⟩_(V^⊺ ⊗ V^⊺)
  $
  For $(0,2)$ tensors, as the dual of $map(ℝ, V^⊺ ⊗ V^⊺, s, g ⋅ s)$
  $
    ⟨ ♯(A), g ⟩_(V^⊺ ⊗ V^⊺)
    &= g^(i j) (♯(A))_(i j) \
    &= g^(i j) g_(i i') A^(i')_(j) \
    &= δ_(i')^(j) A^(i')_(j) \
    &= sum_k A^(k)_(k) \
    &= tr(A)
  $
]
*Prop* let $Φ_(α): β ⇝ ♯(α) ⊗ β = (v ⇝ β(v) ♯(α))$, then
$
  ⟨ α,β ⟩_(V^⊺) = tr(♯(α) ⊗ β)
$
_Proof_ Take an orthonormal basis $e_k$, then $𝟙 = sum_k e_k ⊗ e^k$
$
  tr(♯(α) ⊗ β)
  &= ⟨ ♯(α) ⊗ β , 𝟙 ⟩_(V^⊺ ⊗ V^⊺)  \
  &= sum_k ⟨ ♯(α) ⊗ β , e_k ⊗ e^k ⟩_(V^⊺ ⊗ V^⊺)  \
  &= sum_k ⟨ ♯(α), e_k ⟩_(V) ⋅ ⟨ β, e^k ⟩_(V^⊺) \
  &= sum_k α_k (ε_k β_k) \
  &= ⟨ α, β ⟩_(V^⊺)
$
let $A^†$ defined as $⟨ A v , w ⟩_(V) = ⟨ v, A^† w ⟩_(V)$

*Prop* $(v ⊗ α)^† = ♯(α) ⊗ ♭(v)$

_Proof_
$
  ⟨ w , (v ⊗ α)^† u ⟩
  &= ⟨ (v ⊗ α) w , u ⟩ \
  &= ⟨ α(w) v , u ⟩ \
  &= α(w) ⟨ v, u ⟩_V \
  &= α(w) ♭(v) (u) \
  &= ⟨ w, ♯(α) ⟩ ♭(v) (u) \
  &= ⟨ w, ♭(v) (u) ♯(α) ⟩  \
  &= ⟨ w, (♯(α) ⊗ ♭(v)) u ⟩
$

*Prop* $⟨ A,B ⟩_(V ⊗ V^⊺) = tr(A^† B)$

_Proof_ It suffices to prove the case for simple tensors $⟨ v ⊗ α , w ⊗ β ⟩_(V ⊗ V^⊺) = tr((v ⊗ α)^† (w ⊗ β))$
$
  ⟨ v ⊗ α , w ⊗ β ⟩_(V ⊗ V^⊺)
  &= ⟨ v,w ⟩_(V) ⋅ ⟨ α,β ⟩_(V^⊺) \
  &= ♭(v) (w) ⋅ tr(♯(α) ⊗ β) \
  &= tr(♭(v) (w) ♯(α) ⊗ β)
$
But
$
  ♭(v) (w) ♯(α)
  &= (♯(α) ⊗ ♭(v)) (w) \
  &= (v ⊗ α)^† (w)
$
Therefore
$
  ⟨ v ⊗ α , w ⊗ β ⟩_(V ⊗ V^⊺)
  &= tr((v ⊗ α)^† (w) ⊗ β) \
  &= tr((v ⊗ α)^† (w ⊗ β)) \
$
The last step can be clarified further. For $u in V$
$
  ((v ⊗ α)^† (w) ⊗ β) (u)
  &= (v ⊗ α)^† (w) β (u) \
  &= (v ⊗ α)^† (β (u) w) \
  &= (v ⊗ α)^† (w ⊗ β) (u)
$

*Prop* $(A^⊺ ∘ ♭) = (♭ ∘ A^†)$

_Proof_
$
  (A^⊺ ∘ ♭) (v) (w)
  &= A^⊺ (♭(v)) (w) \
  &= ♭(v) (A w) \
  &= ⟨ v, A w ⟩ \
  &= ⟨ A^† v, w ⟩ \
  &= ♭(A^† v) (w)
$

*Prop* $A^† = ♯ ∘ A^⊺ ∘ ♭$

_Proof_ Apply $♯$ to both sides
$
  ♯ ∘ (A^⊺ ∘ ♭)
  &= ♯ ∘ (♭ ∘ A^†) \
  &= A^†
$

*Prop* Using matrix $g$ to represent
- $♭(v)$ corresponds to $g v$
- $♯(α)$ corresponds to $g^(-1) α$
- Thus the matrix representation of $A^†$ is $g^(-1) A^⊺ g$

*Prop* $tr(A^† B) = tr(g^(-1) A^⊺ g B)$

*Prop* In an orthonormal basis $g = η$ and $η^(-1) = η$. In this case
$
  tr(A^† B) = tr(η A^⊺ η B)
$

*Prop* $⟨ A,B ⟩_(V ⊗ V^⊺) = tr(g^(-1) A^⊺ g B)$

*Prop* $⟨ A,B ⟩_(V ⊗ V^⊺) = tr(η A^⊺ η B)$ (in an orthonormal basis)

*Prop* $A in so(p,q) ==> A^⊺ = - η A η$

_Proof_ $so(p,q) = { A^⊺ η + η A = 0 }$ and $η^(-1) = η$

*Prop* #tag("Killing-form-of-orthogonal-group") $A, B in so(p,q) ==> ⟨ A,B ⟩_(V ⊗ V^⊺) = - tr(A B)$ (Killing form of $so(p,q)$ up to a constant)

_Proof_ According to $η^2 = 1$
$
  ⟨ A,B ⟩_(V ⊗ V^⊺)
  &= tr(η A^⊺ η B) \
  &= tr(η (- η A η) η B)
  &= - tr(η^2 A η^2 B) \
  &= - tr(A B)
$