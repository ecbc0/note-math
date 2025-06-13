#import "../module/module.typ": *
#show: module

Gradient and divergence are $L^2$ adjoint to each other.

$integral #d Vol g (X, ∂ f) = integral #d Vol g(∂^† X, f)$ 

or 

$integral #d Vol g(X, grad f) = - integral #d Vol g(div X, f)$

Generalize to general tensors. For example, suppose "covariant differentiation" adds $(⊤ M)^⊺$ to the first position, i.e. 

$∇ : "tensor" -> (⊤ M)^⊺ ⊗ "tensor"$

Then the adjoint is 

$∇^† : (⊤ M)^⊺ ⊗ "tensor" -> "tensor"$

let $⟨ , ⟩_(L^2) = integral d Vol g(,)$

adjoint := 
#indent[
  For every $S in "tensor"$, the linear function 
  $
    (T ⇝ ⟨ ∇ T, S ⟩_(L^2)) ∈ "tensor"^⊺
  $
  has a metric-dual
  $
    ∇^† S ∈ "tensor"
  $
  Such that the linear function can be expressed as 
  $
    T ⇝ ⟨ T, ∇^† S ⟩
  $
]
Which is the Lagrangian for Laplacian? We can arbitrarily add the action mass term $m^2 |T|^2$.

- $|∇ T|^2 #d Vol$. eq $∇^† ∇ T$ or $∇^(† μ) ∇_(μ) T = 0$
- $|∇^† T|^2 #d Vol$. eq $∇ ∇^† T = 0$ or $∇_(μ) ∇^(† μ) T = 0$
- $(|∇ T|^2 + |∇^† T|^2) #d Vol$. eq $(∇^† ∇ + ∇ ∇^†) T = 0$ or $(∇^(† μ) ∇_(μ) + ∇_(μ) ∇^(† μ)) T = 0$

Special case

$ ∇ : ⨂^(k) (⊤ M)^⊺ -> ⨂^(k+1) (⊤ M)^⊺ $ 

adjoint

$ ∇^† : ⨂^(k+1) (⊤ M)^⊺ -> ⨂^(k) (⊤ M)^⊺ $

In coordinates
$
  ∇ (#d x^i) &= - Γ^i_(i' i'') #d x^i' ⊗ #d x^i'' \

  ∇ (a_i #d x^i) &= (∂_i' a_i'' - a_i Γ^i_(i' i'')) #d x^i' ⊗ #d x^i''
$
adjoint
$
  ∇^† (#d x^i) &= - g^(i i') Γ^i_(i' i) \

  ∇^† (a_i #d x^i) &= g^(i i')(∂_i' a_i - Γ^i_(i' i))
$
$- g^(i i') Γ_(i i')^j = 1/(|g|) ∂_i (|g| g^(i j))$

$⊙,∧$ are the basic building blocks for constructing mixed symmetry.

Using algebraic techniques, define
$
  ∇_(⊙) : ⨀^(k) (⊤ M)^⊺ -> ⨀^(k+1) (⊤ M)^⊺ \
  ∇_(∧) : ⋀^(k) (⊤ M)^⊺ -> ⋀^(k+1) (⊤ M)^⊺ 
$
Using

$ "sym"(#d x^i ⊗ #d x^i') = #d x^i ⊙ #d x^i' $ 

Define 

$ ∇_(⊙) = "sym"∇ $

In coordinates

$ ∇_(⊙) (#d x^i) = - Γ^i_(i' i'') #d x^i' ⊙ #d x^i'' $

and
$
  ∇_(⊙) (a_i #d x^i) = (∂_i' a_i'' - a_i Γ^i_(i' i'')) #d x^i' ⊙ #d x^i''
$
"product rule"
$
  ∇_(⊙)(a_(i j) #d x^i ⊙ #d x^i') 
  &= quad ∇_(⊙) a_(i j) ⊙ #d x^i ⊙ #d x^i' \
  &quad + a_(i j) (∇_(⊙) #d x^i) ⊙ #d x^(i') \
  &quad + a_(i j) #d x^i ⊙ (∇_(⊙) #d x^i')
$ 

Then define the adjoint $∇_(⊙)^†$. Also there is 

$ ∇_(⊙)^† = "sym"∇^† $

"product rule" (*Question*)
$
  ∇_(⊙)^† (a_(i i') #d x^i ⊙ #d x^i') 
  = ∇^† (a_(i i') #d x^i) ⊙ #d x^i' 
  + #d x^i ⊙ ∇^† (a_(i i') #d x^i')
$
$∇_(∧) = "alt"∇$

But $∇_(∧) (#d x^i) = - Γ^i_(i' i'') #d x^i' ∧ #d x^i'' = 0$, due to the symmetry of $Γ$.

So $∇_(∧) = #d$ is the exterior derivative.

In coordinates $#d (a_i #d x^i) = ∂_i' a_i #d x^i' ∧ #d x^i$

$#d$ also has an adjoint $#d^†$

The Lagrangian for the Laplacian of $∇_(⊙), #d$?

- $|P(T)|^2$. eq $P^† P (T) = 0$
- $|P^†(T)|^2$. eq $P P^† (T) = 0$
- $|P(T)|^2 + |P^†(T)|^2$. eq $(P^† P + P P^†)(T) = 0$

The variables in the Lagrangian should probably use $∇_(⊙) T, #d ω$ instead of $∇ T$

The differentiation of the Lagrangian should probably use $(∂ L)/(∂ (∇_(⊙) T)), (∂ L)/(∂ (#d ω))$ instead of $(∂ L)/(∂ (∇ T))$

For scalar fields as zeroth-order tensor fields, assume $∂ = #d = ∇$ and $∂^† = #d^† = ∇^† = 0$. At this time 

- $∂ ∂^† = 0$
- $∂^† ∂ + ∂ ∂^† = ∂^† ∂$

In coordinates

- gradient $grad f = (g^(i j) ∂_i f) ∂_j$ 

- divergence $div X = 1/(|g|) ∂_i (|g| X^i) $

- Laplacian $∆ f = div grad f = 1/(|g|) ∂_i (|g| g^(i j) ∂_j f)$ 

At the origin of geodesic coordinates, $g = η, ∂ g = 0$

- gradient $grad f = ε_i (∂_i f) ∂_i$ where $ε_i in {± 1}$ is the $i$-th component of the quadratic form of $p,q$. 

- divergence $div X = ∂_i X^i $

- harmonician $∆ f = div grad f = ε_i ∂_i^2 f$ 

The same is true in flat metric coordinates.