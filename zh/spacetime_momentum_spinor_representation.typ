#import "../module/module.typ": *
#show: module

#let projective-cone = $"Cone-"ℙ$
#let p = spin($p$)

*Prop* 一般地, for $A ∈ SL(2,ℂ)$, $A,A^*$ 在换坐标的意义下不等价: 不存在 $B ∈ GL(2,ℂ)$, $A^* = B ⋅ A ⋅ B^(-1)$
#let j = bf("j")

_Proof_ 
#indent[
  特征值换坐标不变 

  一般地, $A,A^*$ 有不同的特征值
  
  *Example* $A = mat(2 #i ; , - 1/2 #i) , A^* = mat(-2 #i ; , 1/2 #i) $
]
*Prop* $A,(A^⊺)^(-1)$ 等价, $A^*,A^†$ 等价
#indent[
  use $#j = mat(,-1;1) , #j^2 = - 𝟙 ==> #j^(-1) = - #j$ 

  $ #j ⋅ A ⋅ #j^(-1) = (A^⊺)^(-1) $

  其复共轭 #tag("conjugate_representation")

  $ #j ⋅ A^* ⋅ #j^(-1) = (A^†)^(-1) $

  以上只对 $dim = 2$ 起作用
]
二重张量, 其中一个进行复共轭
$
  map((ℂ^2, ℂ^2), ⨂^(* 2) ℂ^2, (v,w), ⨂^(* 2) (v,w) = v ⊗ w^*)
$
can be decompose to

#tag("Hermitian_tensor") 
$
  ⨀^(* 2) (v,w) = 1/2 (v ⊗ w^* + w ⊗ v^*)
$
#tag("anti_Hermitian_tensor") 
$
  ⋀^(* 2) (v,w) = 1/2 (v ⊗ w^* - w ⊗ v^*)
$
对另一个方向的共轭修改 $v^* ⊗ w$ 同理

#tag("Hermitian_tensor_induced_linear_map") $A ∈ GL(2,ℂ)$ 在 $⨂^(* 2) ℂ^2$ 的导出作用 :=

$ A^(⊗ * 2) : ⨂^(* 2) (v,w) ⇝ ⨂^(* 2) (A v,A w) $

$(A v)^* = A^* v^*$

$⨂^(* 2) (λ v, λ w) = |λ|^2 ⨂^(* 2) (v,w)$

#tag("matrix_description_of_Hermitian_tensor") 
#indent[
  使用 tensor base
  $
    v ⊗ w^* 
    = (sum_i v_i e_i) ⊗ (sum_j w_j^* e_j) 
    = sum_(i,j) v_i w_j^* (e_i ⊗ e_j)
  $
  对应到矩阵表示 
  $
    mat(v_1 w_1^* , v_1 w_2^* ; v_2 w_1^* , v_2 w_2^*) 
    = mat(v_1;v_2) mat(w_1^*,w_2^*) 
    = v ⋅ w^†  
  $
  或者写为 Dirac 记号
  $
    ket(v) bra(w)
  $
  无复共轭的版本 $v ⊗ w <--> v ⋅ w^⊺$

  notation-overload: 矩阵表示的空间也记为 $⨂^(* 2) (v,w)$

  Hermitian 矩阵

  $ 
    ⨀^(* 2) (v,w) &= 1/2 (v w^† + w v^†) = Re(v ⋅ w^†) \
    ⨀^(* 2) (v,w) &=: Re(⨂^(* 2) (v,w))
  $ 

  anti-Hermitian 矩阵

  $ 
    ⋀^(* 2) (v,w) &= 1/2 (v w^† - w v^†) = Im(v ⋅ w^†) \
    ⋀^(* 2) (v,w) &=: Im(⨂^(* 2) (v,w))
  $ 
  
  对于 $ℍ,𝕆$, 由于 $dim Im(ℍ), dim Im(𝕆) > 1$, anti-Hermitian 的维数高于 Hermitian
]
#tag("Hermitian_tensor_induced_linear_map_matrix") $A^(⊗ * 2)$ 的矩阵表示
#indent[
  $ v ⋅ w^† ⇝ (A v) ⋅ (A w)^† = A (v ⋅ w^†) A^† $

  $A^(⊗ * 2)$ 保持分解到 Hermitian and anti-Hermitian
   
  $ ⨂^(* 2) ℂ^2 = (⨀^(* 2) ℂ^2) ⊕ (⋀^(* 2) ℂ^2) $ 

  对于一般的 $P in ⨂^(* 2) ℂ^2$, 也有

  $ A^(⊗ * 2) : P ⇝ A P A^† $
]
$𝕆$ 的 "矩阵" 表示需要另作处理, $Lin(2,𝕆)$ 复合不能表示为通常的矩阵乘法. 仍然能够让 $A P A^†$ 良定义

#let spacetime-momentum-spinor = $mat(p_0 + p_1 , p_2 + p_3 #i ; p_2 - p_3 #i , p_0 - p_1)$
#let spacetime-momentum = $vec(p_0,p_1,p_2,p_3)$

#tag("spacetime_momentum_spinor_representation") 
#indent[
  ($p$ 代表 "动量" or "速度" or 切向量)
  
  双射 
  $
    map(⨀^(* 2) ℂ^2, ℝ^(1,3), #spacetime-momentum-spinor, #spacetime-momentum)
  $
  metric
  $ 
    det #spacetime-momentum-spinor 
    &= (p_0^2 - p_1^2) - (p_2^2 + p_3^2) \
    &= |p|^2
  $
  let $#p := #spacetime-momentum-spinor$ and $A ∈ SL(2,ℂ)$, 作用 $#p ⇝ A #p A^†$
  
  $ det A^(⊙ * 2)(#p) = det A #p A^† = det #p $ 
]
由于乘法非交换, $ℍ,𝕆$ 的 $det$ 的一般定义有问题. 但是 $det #p$ 的定义不需要一般乘法交换性. 此时 $SL(2,𝕂)$ 就定义为 $A : det A #p A^† = det #p$. 这不是好的记号, 因为可能无法推广到 $dim > 3$ 

$SL(2,ℍ),SL(2,𝕆)$ 也是 $SO(1,5),SO(1,9)$ 的 spinor lift. 同理 $SU(2,𝕂)$ 也是 $SO(5),SO(9)$ 的 spinor lift

*Example* #tag("Pauli_matrix") *alias* #tag("sigma_matrix")

for $#spacetime-momentum-spinor$

- time-like $p_0 = 1 <--> mat(1 ; , 1) =: σ_0$
- light-like $p_0 = p_1 = 1 <--> mat(2 ; , 0) = σ_0 + σ_1$
- space-like 
#indent[
  $p_1 = 1 <--> mat(1 ; , -1) =: σ_1$
  
  $p_2 = 1 <--> mat( , 1 ; 1) =: σ_2$

  $p_3 = 1 <--> mat( , #i ; -#i) =: σ_3$ (推广到 $ℍ,𝕆$ 时, 对应全部虚数元)
]
- $#p = sum p_(μ) σ_(μ)$

- $det σ^0 = 1$
- $det σ^i = -1, i = 1,2,3$

- $σ^0,σ^1,σ^2,σ^3$ is orthonormal base

- $p_0 + p_1 #i-split ∈ ℂ_"split" ≃ ℝ^(1,1)$
- $p_2 + p_3 #i ∈ ℂ ≃ ℝ^2$ 

*Question* $⨀^(* 2) ℂ^2, #spacetime-momentum-spinor, det #p = |p|^2$ 这些构造的认知上的动机是什么? 

- $SO(1,3) ≃ SL(2,ℂ)/ℤ_2$ #link(<Lorentz_group_spinor_representation>)[作用在] $ℂℙ^1$ 提升到 $SL(2,ℂ)$ act on $ℂ^2$
#indent[
  - $A$ action, denoted as $(1/2,0)$ 
  - $A^*$ action, denoted as $(0,1/2)$

  #tag("square_root_of_Lorentz_group") 
  #indent[
    $SO(1,3)$ act on $ℝ^(1,3)$ 是 $A,A^*$ 的某种 "平方", i.e. $(1/2,0) ⊗ (0,1/2)$ or $(1/2,1/2)$ 表示的 "real part" or "symmetric part" 
    
    $ Re(⨂^(* 2) (v,w)) ⨀^(* 2) ℂ^2	 <-->	ℝ^(1,3) $
    
    从而 $A,A^*$ 是 $SO(1,3)$ act on $ℝ^(1,3)$ 的某种 "平方根"
  ]
]
#tag("square_root_of_spacetime_metric_1") (启发自 @ref-14, ch.11)
#indent[
  $det ∈ ⋀^2 (ℂ^2 -> ℂ), det(v_1,v_2) = w^⊺ #j v, #j = mat(,-1;1)$

  $det^(⊗ 2) (v_1 ⊗ w_1 , v_2 ⊗ w_2) := det(v_1,v_2) det(w_1,w_2)$. 注意它不是对 $v_1 ⊗ w_1 , v_2 ⊗ w_2$ 交错 
  
  metric $g ∈ (⨀^2 ℝ^(1,3) -> ℝ)$ with $ℝ^(1,3) ≃ ⨀^(* 2) ℂ^2$ 是 $det$ 的某种 "平方", i.e. $1/2 g ≃ det^(⊙ * 2)$ 
  $
    &quad det^(⊙ * 2)(⨀^(* 2)(v_1,w_1),⨀^(* 2)(v_2,w_2)) \

    &= 1/2^4 ( det(v_1,v_2) det(w_1^*,w_2^*) + det(w_1,v_2) det(v_1^*,w_2^*) \
    &quad + det(v_1,w_2) det(w_1^*,v_2^*) + det(w_1,w_2) det(v_1^*,v_2^*) )
  $
  quadratic-form is
  $
    det^(⊙ * 2)(⨀^(* 2)(v,w),⨀^(* 2)(v,w)) = - 1/2^3 |det(v,w)|^2
  $
  cf. #link(<Pauli_matrix>)[] 
  $
    mat(delim: #none, augment: #(hline: (1,2,3,4,5), vline : 2 , stroke: rgb("#1c1c1c")),
    v , w , ⨀^(* 2) (v,w) ;
    vec(1,0) , vec(0,1) , 1/2 σ_2 ;
    vec(1,0) , vec(0,#i) , 1/2 σ_3 ;
    vec(1,1) , vec(1,-1) , σ_1 ;
    vec(1,0) , vec(1,0) , mat(1;,0) ;
    vec(0,1) , vec(0,1) , mat(0;,1) 
    )
  $
  计算结果说明 $1/2 g = det^(⊙ * 2)$ 对于 $σ^(1,2,3)$ 是对的. 对于 $σ^0$, 使用 sum $⨀^(* 2)(vec(1,0),vec(1,0)) + ⨀^(* 2)(vec(0,1),vec(0,1))$
  $
    0 &= det^(⊙ * 2)(⨀^(* 2)(vec(1,0),vec(1,0)),⨀^(* 2)(vec(1,0),vec(1,0))) \

    0 &= det^(⊙ * 2)(⨀^(* 2)(vec(0,1),vec(0,1)),⨀^(* 2)(vec(0,1),vec(0,1))) \
  
   1/4 &= det^(⊙ * 2)(⨀^(* 2)(vec(1,0),vec(1,0)),⨀^(* 2)(vec(0,1),vec(0,1))) $

  orthogonal of sigma matrix 也可以通过计算得到, 从而 $det^(⊙ * 2) = 1/2 g$

  从而 $det$ 是 metric $g$ 的某种 "平方根"
]
*Question* 仍然没有直接给出计算等式 $det^(⊙ * 2)(sum p_μ σ_μ,sum p_μ σ_μ) = 1/2 det(sum p_μ σ_μ)$ 的直观吗 ...

#tag("spacetime_momentum_aciton_spinor_representation") 
#indent[
  let $f : SL(2,ℂ),⨀^(* 2) ℂ^2 ↠ SO(1,3),ℝ^(1,3)$. 
  
  其中 $f(A)$ 是 #link(<Lorentz_group_spinor_representation>)[]
  
  $f(#p) = p$ 是 #link(<spacetime_momentum_spinor_representation>)[] 

  则有同态 
  $ 
    & f( A^(⊙ * 2) #p ) \ 
    = & f(A) f( #p ) \
    = & f(A) p
  $
]
_Proof_ 使用 3 rotation, 3 boost 的 $SL(2,ℂ) ↠ SO(1,3)$ 对应


#tag("spinor_representation_adjoint") $f(A^†) = f(A)^⊺$ 

_Proof_ 
#indent[
  use 3 boost, 3 rotation
  
  use $(A B)^† = B^† A^†, (A B)^⊺ = B^⊺ A^⊺$

  $A ∈ SO(1,3) ==> A^⊺ η A = η = mat(
  1;
  ,-1;
  ,,-1;
  ,,,-1
  )$, $v^⊺ η w = g(v,w)$

  $A^⊺ = η A^(-1) η$

  $A^(-1) = η A^⊺ η$

  $
    f(A)^⊺ f(#p) &= f(A^†) f(#p) \
    &= f(A^† #p A)
  $
]
*Prop* 将 #link(<spacetime_momentum_spinor_representation>)[] 用于 $v ⋅ w^†$, $v = w$ + $ℂ$ 射影 $λ v$ 给出 projective-lightcone
$
  (exists v ∈ ℂ^2 ∖ 0 , #p = v v^† ) <==> (p_0 > 0, det (#p) = 0)
$
因此以下等价 
- $SL(2,ℂ)$ act on $ℂℙ^1$ via $ℂ^2$ 
- $SL(2,ℂ)$ act on $#projective-cone (1,3)$ via $⨀^(* 2) ℂ^2 ≃ ℝ^(1,3)$ 

_Proof_ 
#indent[
  - $==>$
  #indent[
    $v v^† = mat(v_1;v_2) mat(v_1^*,v_2^*) 
    = mat(v_1 v_1^* , v_1 v_2^* ; v_2 v_1^* , v_2 v_2^*)$ 
    with $det(v v^†) = v_1 v_1^* ⋅ v_2 v_2^* - v_1 v_2^* ⋅ v_2 v_1^* = 0$ (需要 $ℂ$ 乘法结合律?)

    $p_0 = 1/2 tr(v v^†) = 1/2 |v|^2 > 0$
  ]
  - $<==$
  #indent[
    给定 $#p = #spacetime-momentum-spinor ≃ #spacetime-momentum$

    in $ℂ$, $v_i = |v_i| e^(θ_i #i)$

    let \
    $|v_1|^2 = p_0 + p_1 $ \
    $|v_2|^2 = p_0 - p_1$

    还需要计算 $θ_1,θ_2$

    为了得到 $p_2 + p_3 #i = v_1 v_2^*$, 对比 norm, phase
    $
      p_2 + p_3 #i &= |p_2 + p_3 #i| (p_2 + p_3 #i)/(|p_2 + p_3 #i|) \
      v_1 v_2^* &= |v_1| |v_2| e^(#i (θ_1 - θ_2))
    $ 
    norm
    $
      |p_2 + p_3 #i|^2 &= p_2^2 + p_3^2 \
      &= p_0^2 - p_1^2 & ("use" |x|^2 = 0) \
      &= |v_1|^2 |v_2|^2 \
      &= |v_1 v_2^*|^2 \
    $
    phase
    
    $arg((p_2 + p_3 #i)/(|p_2 + p_3 #i|)) ∈ ℝ$
    
    so let $θ_1,θ_2 ∈ ℝ$ with $θ_1 - θ_2 = arg((p_2 + p_3 #i)/(|p_2 + p_3 #i|))$
  ]
]
一般地 $⨀^(* 2) (v,w) = mat(
  Re(v_1 w_1^*) , 1/2 (v_1 w_2^* + w_1 v_2^*) ; 
  (...)^* , Re(v_2 w_2^*)
)$. 比较 #spacetime-momentum-spinor 得到
$
  p_0 = 1/2 Re(v_1 w_1^* + v_2 w_2^*) \
  p_1 = 1/2 Re(v_1 w_1^* - v_2 w_2^*) \
  p_2 = 1/2 Re(v_1 w_2^* + v_2 w_1^*) \
  p_3 = 1/2 Im(v_1 w_2^* + v_2 w_1^*)
$
#tag("parity") 
#indent[  
  parity 对应到 $(1/2,0)$ vs $(0,1/2)$ representation, or $A$ vs $A^*,(A^†)^(-1)$, cf. #link(<conjugate_representation>)[]

  let $P ∈ ⨀^(* 2) ℂ^2$. $P^* = P^⊺$
    
  $ P^◊ := #j ⋅ P^* ⋅ #j^(-1) " with " #j = mat(,-1;1) $ 

  parity 对应到 space inversion
  
  $#spacetime-momentum-spinor ^◊
  = mat(p_0 - p_1 , -(p_2 + p_3 #i) ; -(p_2 - p_3 #i) , p_0 + p_1) 
  <--> vec(p_0,-p_2,-p_3,-p_1)$

  $- P^◊$ 对应到 time inversion
]
parity 对应到 trace or determinant reversal

#tag("determinant_reversal") 
#indent[  
  let $P = mat(a,b;c,d) ∈ "Matrix"(2,ℂ)$

  determinant reversal $P^◊ := mat(d,-b;-c,a)$ with
  
  $P P^◊ = P^◊ P = det(P) ⋅ 𝟙$

  $det P^◊ = det P$

  $P ∈ GL ==> P^◊ = (det P) P^(-1)$
]
#tag("trace_reversal") := $P + P^◊ = tr(P) ⋅ 𝟙$. or $P^◊ = mat(d,-b;-c,a)$. $tr P^◊ = tr P$

$dim = 2$ ==> determinant reversal 相同于 trace reversal

#tag("square_root_of_spacetime_metric_2") $1,3$ metric 的一种 "平方根" 
#indent[
  let $#p ∈ ⨀^(* 2) ℂ^2 ≃ ℝ^(1,3)$. $det(#p) = g(p,p) = |p|^2$
  $
    |p|^2 𝟙 &= det(#p) 𝟙 \
    &= #p^◊ #p \
    &= #p #p^◊
  $ 
  $2 g(p,p') = |p+p'|^2 - (|p|^2 + |p'|^2)$ give
  $
    g(p,p') 𝟙 &= 1/2 (#p^◊ #p' + #p'^◊ #p) \
    &= 1/2 (#p #p'^◊ + #p' #p^◊)
  $
  也有 $g(p,p') = 1/2 Re(tr(#p^◊ #p')) = 1/2 Re(tr(#p #p'^◊))$

  for #link(<Pauli_matrix>)[]

  - $σ_μ^◊ σ_ν + σ_ν^◊ σ_μ = 2 g_(μ ν) 𝟙$ or ${σ_(μ),σ_(ν)}_(◊) = 2 g_(μ ν) 𝟙$

  - $σ_0^◊ = σ_0$, $σ_i^◊ = - σ_i$ for $i = 1,2,3$ (因为 parity 是 spatial inversion)

  这种 "平方根" 的更好的解释? 

  没有 parity 时的直接的矩阵乘法将会给出 $ℝ^4$ metric 的平方根, with $σ_μ^2 = 𝟙$, $σ_μ^(-1) = σ_μ$
]
#tag("square_root_of_Lorentz_Lie_algebra") spacetime Lie-algebra 的 "平方根"
#indent[
  $ [1/2 σ_(μ), 1/2 σ_(ν)]_(◊) := 1/4(σ_(μ)^◊ σ_(ν) - σ_(ν)^◊ σ_(μ)) ≃ L_(μ ν) $ 

  where $L_(μ ν)$ is #link(<rotation_boost_spinor_representation>)[Lorentz-Lie-algebra]

  _Proof_
  
  - $[1/2 σ_(i), 1/2 σ_(i')]_(◊) = 1/2 #i σ_i'' ≃ L_(i i')$ is δ rotation in $p_i''$ where $i,i',i''$ is any cyclic $123$ 
  
  - $[1/2 σ_(0), 1/2 σ_(i)]_(◊) = 1/2 σ_i ≃ L_(0i)$ where $i = 1,2,3$

  *Question* 更好的解释? 表示?
]
#tag("property_of_parity") 

  - $forall a,b ∈ ℂ, (a A + b B)^◊ = a A^◊ + b B^◊$

  - $(A B)^◊ = B^◊ A^◊$

  - $𝟙^◊ = 𝟙$

  - $(A^†)^◊ = (A^◊)^†$
  
  - $◊ : ⨀^(* 2) ℂ^2 -> "self"$  i.e. parity 保持 Hermitian

  - $A ∈ GL(2,ℂ) ==> A^◊ = det(A) ⋅ A^(-1)$
  
  - $A ∈ SL(2,ℂ) ==> A^◊ = A^(-1), A A^◊ = 𝟙, (A^◊)^◊ = A$

#tag("parity_Euclidean_invariant") parity 和 spatial action $SU(2)$ 交换. 在 $ℝ^3$ 中表现为 $- 𝟙$ 和 $SO(3)$ 交换. let $p ∈ ℝ^3, A ∈ SU(2)$

  $A ∈ SU(2) ==> A^† = A^(-1) = A^◊ ==> (A^(⊙ * 2)(#p))^◊ = A^(⊙ * 2)(#p^◊)$

一般情况下不交换, 例如 $𝟙_(ℝ^3)$ 当然不交换于 $SO(1,3)$ 中的时间改变部分
#indent[
  let $#p = σ_0 = mat(1;,1) = 𝟙, A = mat(e^(φ/2);,e^(-φ/2)), A^† = A$

  $#p^◊ = #p$

  $A #p A^† = mat(e^(φ);,e^(-φ))$ or $cases(p_0 = cosh φ, p_1 = sinh φ, p_2 = p_3 = 0)$

  $(A #p A^†)^◊ = mat(e^(-φ);,e^(φ))$ or $cases(p_0 = cosh φ = cosh(-φ), p_1 = -sinh φ = sinh (-φ))$ 

  $(A #p A^†)^◊ != A #p A^† = A #p^◊ A^†$
]
#tag("parity_reverse_boost") parity 对 Lie-algebra 的影响是, 不改变 δ 旋转, 对 δ boost 乘 $-1$

#tag("Euclidean_spinor")
#indent[  replace lightcone $#projective-cone (1,3)$ with just sphere $𝕊^2 = ℂℙ^1$ acted by $SO(3)$ and $SU(2)$

  replace $SL(2,ℂ) ↠ SO(1,3)$ with $SU(2) ↠ SO(3)$, $mat(a,b;-b^*,a^*) ∈ SU(2)$ with $|a|^2 + |b|^2 = 1$

  use trace-free Hermitian $mat(p_3 , p_1 + p_2 #i ; p_1 - p_2 #i , -p_3) <--> vec(p_1,p_2,p_3)$
]