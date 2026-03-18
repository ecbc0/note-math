#import "../module/module.typ": *
#show: module

#tag("quadratic-form") $ℝ^n$ 二次型 *alias* #tag("metric") 度规 *alias* 内积 #tag("inner-product")
#indent[
  *Example* $ℝ^2,ℝ^3$ 距离 $vec(x,y,z) ⇝ x^2 + y^2 + z^2$

  *Example* $ℝ^(1,3)$ spacetime metric $vec(t,x,y,z) ⇝ c^2 ⋅ t^2 - (x^2 + y^2 + z^2)$

  双线性函数, 二次型

  metric 常用记号 $g(x,y),⟨ x,y ⟩$. 在坐标中记为 $g_(i j) x_i y_j$

  坐标下 metric $g$ 可以表示为矩阵 $G$ 和矩阵乘法 $(X,Y) ⇝ X^⊺ G Y$

  #tag("signature-inertia") signature $(p,q)$ 在 $GL(n,ℝ)$ 下不变. 对称矩阵 $G$ 的特征值和对角化 $mat(1; , 0; ,, -1)$ 其中 $n_+$ 个 $1$, $n_0$ 个 $0$, $n_-$ 个 $-1$. 
  
  不同 signature 可以理解为 $GL(n)$ 群作用在二次型空间的 orbit 的分类

  #tag("quadratic-form-non-degenerated") 非退化 := signature 中 $N_0 = 0$

  退化的二次型可以限制在 $n_+ + n_-$ 子空间中得到非退化

  以下等价
  - metric 非退化
  - #tag("quadratic-form-dual") 是双射 *alias* #tag("musical-isomorphism") 
    $
      map(V, Lin(V -> ℝ) "or" V^⊺, v, ⟨v, ⟩ "or" bra(v) "or" g(v,) "or" ♭(v))
    $
    相对于 metric dual 映射记为 $♭(v)$, metric dual 的逆映射记为 $♯(α)$
  - 二次型矩阵可逆
  - $det G != 0$

  固定一个非退化二次型时, 结构群 $≃ #O (p,q)$. 保持两个方向就得到 $SO(p,q)$
]
metric 矩阵 $g$ 的逆 $g^(-1)$. 在坐标中记为 $g ⇝ g_(i i')$ 和 $g^(-1) ⇝ g^(i i')$

$g ⋅ g^(-1) = 𝟙 = g^(-1) ⋅ g$ ==> 在坐标中 $g_(i j) g^(i' j) = δ_i^i'= g^(i' j) g_(i j)$

let 向量空间的基 $e_1 ,…, e_n in V$ 的对偶基 $e^1 ,…, e^n in (V -> ℝ)$ := $e^i (e_j) = δ^i_j$

let $α = α_i e^i$ then 
$
  α(e_j) &= α_i e^i (e_j) \
  &= α_i δ^i_j \
  &= α_j
$

#tag("rasing-and-lowring-index") 升降指标
#indent[
  quadratic-form-dual 在坐标中的矩阵表示
  $
    g(v,) ⇝ v^⊺ g &= mat(v^1 , ⋯ , v^n) mat(
      g_(1 1), ⋯ , g_(1 n) ;
      ⋮ , ⋱ , ⋮ ;
      g_(n 1), ⋯ , g_(n n)
    ) \
    &= mat(v^j g_(j 1) , ⋯ , v^j g_(j n)) \
    &:= mat(v_1 , ⋯ , v_n)
  $
  其中 $v^j g_(i j) = v_i$ 是降指标. 或者
  $
    g(,v) ⇝ g v &= mat(
      g_(1 1), ⋯ , g_(1 n) ;
      ⋮ , ⋱ , ⋮ ;
      g_(n 1), ⋯ , g_(n n)
    ) vec(v^1 , ⋮ , v^n) \
    &= vec(v^j g_(1 j), ⋮ , v^j g_(n j)) := vec(v_(1), ⋮ , v_(n))
  $
  注意 metric 矩阵是对称 $g^⊺ = g$ or $g_(i j) = g_(j i)$

  $v_i$ 是 $♭(v)$ 的对偶基表示的系数, 因为 $♭(v)(e_i) = g(v,e_i) = v^j g_(i j) = v_i$, 或者用 $g_(i j)$ 是 $g$ 在对偶基 $e^i ⊗ e^j$ 的系数

  对于 metric 矩阵的逆, 定义 dual 空间 $V^⊺$ 的 metric 为 $g^(-1)$. 它满足以下式子
  $
    g^(-1)(♭(v),♭(w)) 
    &= (g v)^⊺ g^(-1) (g w) \
    &= v^⊺ (g g^(-1) g) w \
    &= v^⊺ g w \
    &= g(v,w) 
  $
  式子在坐标中表示为
  - $g^(i i') α_i β_i'$
  - $g_(i i') α^i β^i'$
  - $α_i β^i$
  - $α^i β_i$
  $g^(-1)$ 的 metric dual 就是 $g$ metric dual $♭$ 的逆, 从而也是 $♯$
  $
    v &⇝ g v && "dual of" g \
    &⇝ g^(-1) g v space && "dual of" g^(-1) \
    &= v && "mutally inverse"
  $
  因此也有升指标
  - $♭(v) = v_i e^i$ 
  - $g^(-1)(♭(v), ♭(e_j)) = v_j g^(i j) = v^i$
]
#tag("tensor") 多重线性 (兼容集合积的 `and` 逻辑) + 最小独立无关生成 (quotient 构造)
$
  map(V_1 × ⋯ × V_k, V_1 ⊗ ⋯ ⊗ V_k, (v_1 ,…, v_k), v_1 ⊗ ⋯ ⊗ v_k)
$
导出基 $e_(1,i_1) ⊗ ⋯ ⊗ e_(k,i_k)$, 导出基的系数 $T^(i_1 ⋯ i_k)$

由张量的性质
$
  v_1 ⊗ ⋯ ⊗ v_k 
  &= (v_1^(i_1) e_(1,i_1)) ⊗ ⋯ ⊗ (v_k^(i_k) e_(k,i_k)) \
  &= (v_1^(i_1) ⋯ v_k^(i_k)) e_(1,i_1) ⊗ ⋯ ⊗ e_(k,i_k)
$

#tag("tensor-induced-quadratic-form") 
#indent[
  将向量空间的二次型 $g$ 导出到张量空间 $V^(⊗ I) ⊗ V^(⊺ ⊗ J)$ 的二次型  
  $
    g ( ⨂_(i=1..I) v_i ⊗ ⨂_(j=1..j) α_j , ⨂_(i=1..I) w_i ⊗ ⨂_(j=1..j) β_j ) = product_(i=1..I) g(v_i,w_i) product_(i=1..J) g^(-1)(α_j,β_j) 
  $
  遍历所有正交基 $⨂_(i=1..I) e_(k_i) ⊗ ⨂_(j=1..J) e^(l_j)$ with 
  $
    ⟨ ⨂_(i=1..I) e_(k_i) ⊗ ⨂_(j=1..J) e^(l_j) ⟩^2 
    = product_(i=1..I) ⟨ e_(k_i) ⟩^2 product_(j=1..J) ⟨ e^(l_j) ⟩^2
  $
  得到 signature
]
#tag("rasing-and-lowring-index-tensor") 张量也可以 metric dual 升降指标

*Example* 降指标 $T^i_j ⇝ g_(i i') T^i'_j = T_(i j)$

$g^(-1) = g^(i j) e_i e_j$ 在 $V^(⊙ 2)$ 的导出 metric 的 metric dual 是 $g = g_(i j) e^i e^j in V^(⊺ ⊙ 2)$. 反过来也一样

记 $ℝ^(p,q)$ 为 $V$

记二次型为 $⟨ v,w ⟩, g_(i j)$

考虑 $V ⊗ V^⊺$ 的简单张量. 对于 $v,w in V, α,β in V^⊺$, 则 $(1,1)$ 张量 $V ⊗ V^⊺$ 的导出 metric 是 
$
  ⟨ v ⊗ α, w ⊗ β ⟩_(V ⊗ V^⊺) := ⟨ v,w ⟩_(V) ⋅ ⟨ α,β ⟩_(V^⊺)
$

*Prop* trace-identity duality $⟨ A,𝟙 ⟩_(V ⊗ V^⊺) = tr(A)$

_Proof_ 
#indent[
  *Question* 有没有更本质更无坐标的证明方法?

  第一种证明方法是, 使用一个规范正交基 $e_i$
  
  此时 $𝟙 = sum_k (e_k ⊗ e^k)$
  
  只需要证明 $A = e_i ⊗ e^j$ 的情况
  $
    ⟨ A,𝟙 ⟩_(V ⊗ V^⊺) 
    &= ⟨ e_i ⊗ e^j , sum_k e_k ⊗ e^k ⟩_(V ⊗ V^⊺) \
    &= sum_k ⟨ e_i, e_k ⟩_(V) ⋅ ⟨ e^j, e^k ⟩_(V^⊺) \
    &= sum_k (ε_i δ_(i k)) (ε_j δ^(j k)) \
    &= δ_(i)^(j) \
    &= tr(A)   
  $

  第二种证明是利用 $(0,2)$ 张量的结果, 然后转回 $(1,1)$ 张量
  $
    ⟨ A,𝟙 ⟩_(V ⊗ V^⊺) = ⟨ ♯(A), ♯(𝟙) ⟩_(V^⊺ ⊗ V^⊺) =  ⟨ ♯(A), g ⟩_(V^⊺ ⊗ V^⊺) 
  $
  在 $(0,2)$ 张量中, 作为 $map(ℝ, V^⊺ ⊗ V^⊺, s, g ⋅ s)$ 的对偶
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
_Proof_ 取一个规范正交基 $e_k$, 此时 $𝟙 = sum_k e_k ⊗ e^k$
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

_Proof_ 只需证明简单张量的情况 $⟨ v ⊗ α , w ⊗ β ⟩_(V ⊗ V^⊺) = tr((v ⊗ α)^† (w ⊗ β))$
$
  ⟨ v ⊗ α , w ⊗ β ⟩_(V ⊗ V^⊺) 
  &= ⟨ v,w ⟩_(V) ⋅ ⟨ α,β ⟩_(V^⊺) \
  &= ♭(v) (w) ⋅ tr(♯(α) ⊗ β) \
  &= tr(♭(v) (w) ♯(α) ⊗ β) 
$
但是 
$
  ♭(v) (w) ♯(α) 
  &= (♯(α) ⊗ ♭(v)) (w) \
  &= (v ⊗ α)^† (w)
$
所以
$
  ⟨ v ⊗ α , w ⊗ β ⟩_(V ⊗ V^⊺) 
  &= tr((v ⊗ α)^† (w) ⊗ β) \
  &= tr((v ⊗ α)^† (w ⊗ β)) \
$
最后一步可以再澄清一下. 对 $u in V$
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

_Proof_ 两边使用 $♯$
$
  ♯ ∘ (A^⊺ ∘ ♭) 
  &= ♯ ∘ (♭ ∘ A^†) \
  &= A^†
$

*Prop* 使用矩阵 $g$ 表示
- $♭(v)$ 对应 $g v$
- $♯(α)$ 对应 $g^(-1) α$
- 从而 $A^†$ 的矩阵表示是 $g^(-1) A^⊺ g$

*Prop* $tr(A^† B) = tr(g^(-1) A^⊺ g B)$

*Prop* 在规范正交基中 $g = η$ 且 $η^(-1) = η$. 此时
$
  tr(A^† B) = tr(η A^⊺ η B)
$

*Prop* $⟨ A,B ⟩_(V ⊗ V^⊺) = tr(g^(-1) A^⊺ g B)$

*Prop* $⟨ A,B ⟩_(V ⊗ V^⊺) = tr(η A^⊺ η B)$ (在规范正交基中)

*Prop* $A in so(p,q) ==> A^⊺ = - η A η$

_Proof_ $so(p,q) = { A^⊺ η + η A = 0 }$ and $η^(-1) = η$

*Prop* #tag("Killing-form-of-orthogonal-group") $A, B in so(p,q) ==> ⟨ A,B ⟩_(V ⊗ V^⊺) = - tr(A B)$ (Killing form of $so(p,q)$ up to a constant)

_Proof_ 根据 $η^2 = 1$
$
  ⟨ A,B ⟩_(V ⊗ V^⊺) 
  &= tr(η A^⊺ η B) \
  &= tr(η (- η A η) η B)
  &= - tr(η^2 A η^2 B) \
  &= - tr(A B)
$
