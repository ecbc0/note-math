#import "../module/module.typ": *
#show: module

梯度和散度互为 $L^2$ adjoint

$integral #d Vol g (X, ∂ f) = integral #d Vol g(∂^† X, f)$ 

or 

$integral #d Vol g(X, grad f) = - integral #d Vol g(div X, f)$

推广到一般张量. 例如, 假设 "协变微分" 给第一个位置增加 $(⊤ M)^⊺$, i.e. 

$∇ : "tensor" -> (⊤ M)^⊺ ⊗ "tensor"$

则 adjoint 是

$∇^† : (⊤ M)^⊺ ⊗ "tensor" -> "tensor"$

let $⟨ , ⟩_(L^2) = integral d Vol g(,)$

adjoint := 
#indent[
  对每个 $S in "tensor"$, 线性函数 
  $
    (T ⇝ ⟨ ∇ T, S ⟩_(L^2)) ∈ "tensor"^⊺
  $
  有 metric-dual
  $
    ∇^† S ∈ "tensor"
  $
  使得线性函数可以表示为 
  $
    T ⇝ ⟨ T, ∇^† S ⟩
  $
]
Laplacian 的 Lagrangian 是哪个? 可以随意加上 action 质量项 $m^2 |T|^2$

- $|∇ T|^2 #d Vol$. eq $∇^† ∇ T$ or $∇^(† μ) ∇_(μ) T = 0$
- $|∇^† T|^2 #d Vol$. eq $∇ ∇^† T = 0$ or $∇_(μ) ∇^(† μ) T = 0$
- $(|∇ T|^2 + |∇^† T|^2) #d Vol$. eq $(∇^† ∇ + ∇ ∇^†) T = 0$ or $(∇^(† μ) ∇_(μ) + ∇_(μ) ∇^(† μ)) T = 0$

特殊情况

$ ∇ : ⨂^(k) (⊤ M)^⊺ -> ⨂^(k+1) (⊤ M)^⊺ $ 

adjoint

$ ∇^† : ⨂^(k+1) (⊤ M)^⊺ -> ⨂^(k) (⊤ M)^⊺ $

在坐标中
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

$⊙,∧$ 是构造 mix 对称性的基本构件

用代数技术, 定义 (@ref-24, p.34--35)
$
  ∇_(⊙) : ⨀^(k) (⊤ M)^⊺ -> ⨀^(k+1) (⊤ M)^⊺ \
  ∇_(∧) : ⋀^(k) (⊤ M)^⊺ -> ⋀^(k+1) (⊤ M)^⊺ 
$
用

$ "sym"(#d x^i ⊗ #d x^i') = #d x^i ⊙ #d x^i' $ 

定义 

$ ∇_(⊙) = "sym"∇ $

在坐标中

$ ∇_(⊙) (#d x^i) = - Γ^i_(i' i'') #d x^i' ⊙ #d x^i'' $

and
$
  ∇_(⊙) (a_i #d x^i) = (∂_i' a_i'' - a_i Γ^i_(i' i'')) #d x^i' ⊙ #d x^i''
$
"product rule"
$
  ∇_(⊙)(a_(i j) #d x^i ⊙ #d x^i') 
  &= ∇_(⊙) a_(i j) ⊙ #d x^i ⊙ #d x^i' \
  &quad + a_(i j) (∇_(⊙) #d x^i) ⊙ #d x^(i') \
  &quad + a_(i j) #d x^i ⊙ (∇_(⊙) #d x^i')
$ 

然后定义 adjoint $∇_(⊙)^†$. 也有 

$ ∇_(⊙)^† = "sym"∇^† $

"product rule" (*Question*)
$
  ∇_(⊙)^† (a_(i i') #d x^i ⊙ #d x^i') 
  = ∇^† (a_(i i') #d x^i) ⊙ #d x^i' 
  + #d x^i ⊙ ∇^† (a_(i i') #d x^i')
$
$∇_(∧) = "alt"∇$

但是 $∇_(∧) (#d x^i) = - Γ^i_(i' i'') #d x^i' ∧ #d x^i'' = 0$, 因为 $Γ$ 的对称性

所以 $∇_(∧) = #d$ 是外微分

在坐标中 $#d (a_i #d x^i) = ∂_i' a_i #d x^i' ∧ #d x^i$

$#d$ 也有 adjoint $#d^†$

$∇_(⊙), #d$ 的 Laplaician 的 Lagrangian?

- $|P(T)|^2$. eq $P^† P (T) = 0$
- $|P^†(T)|^2$. eq $P P^† (T) = 0$
- $|P(T)|^2 + |P^†(T)|^2$. eq $(P^† P + P P^†)(T) = 0$

Lagrangian 的变量可能应该用 $∇_(⊙) T, #d ω$ 代替 $∇ T$

Lagrangian 的微分可能应该用 $(∂ L)/(∂ (∇_(⊙) T)), (∂ L)/(∂ (#d ω))$ 代替 $(∂ L)/(∂ (∇ T))$

对于纯量场作为零阶张量场, 认为 $∂ = #d = ∇$ and $∂^† = #d^† = ∇^† = 0$. 此时 

- $∂ ∂^† = 0$
- $∂^† ∂ + ∂ ∂^† = ∂^† ∂$

在坐标中

- gradient $grad f = (g^(i j) ∂_i f) ∂_j$ 

- divergence $div X = 1/(|g|) ∂_i (|g| X^i) $

- Laplacian $∆ f = div grad f = 1/(|g|) ∂_i (|g| g^(i j) ∂_j f)$ 

在测地线坐标的原点, $g = η, ∂ g = 0$

- gradient $grad f = ε_i (∂_i f) ∂_i$ where $ε_i in {± 1}$ 是 $p,q$ 二次型的第 $i$ 个 

- divergence $div X = ∂_i X^i $

- harmonician $∆ f = div grad f = ε_i ∂_i^2 f$ 

在 flat metric 坐标也是如此