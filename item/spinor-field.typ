#import "/module/module.typ": *
#show: module

#let p = spin($p$)
#let q = spin($q$)

#tag("co-vector-of-Hermitian-tensor") 
#indent[
  $ϕ$ 导出 co-vector of #link(<Hermitian-tensor>)[]
  $
    dmat( delim: #none ,
      ⨀^(* 2) ℂ^2 , ⟶ , ℝ ;
      #p , ⟿ , ϕ^† #p^⬨ ϕ
    )
  $
  其中 $#p^⬨$ 是 #link(<parity>)[]. 由于 $#p ∈ ⨀^(* 2) ℂ^2$ 是 Hermitian 矩阵, 所以 $(#p^⬨)^† = #p^⬨$, 所以 $(ϕ^† #p^⬨ ϕ)^† = ϕ^† #p^⬨ ϕ$, 所以 $ϕ^† #p^⬨ ϕ in ℝ$
  
  可以认为 $#p$ 作用对称地作用在两个 slot $ϕ^† (#p^⬨ ϕ) = (ϕ^† (#p^⬨ ϕ))^† = (#p^⬨ ϕ)^† ϕ$

  co-vector 空间的 base $σ^0,σ^1,σ^2,σ^3 ∈ Lin(ℝ^(1,3) -> ℝ)$ 给出 co-vector 的系数 $ϕ^† (σ^μ)^⬨ ϕ in ℝ$

  $(1/2,0)$ 作用导出到对 co-vector $ϕ$ 的作用
  $
    (A ϕ)^† #p^⬨ (A ϕ) 
    &= ϕ^† (A^† #p^⬨ A) ϕ \
    &= ϕ^† (A^(-1) #p^⬨ (A^†)^(-1))^⬨ ϕ & "use" #link(<property-of-paristy>)[] \
    &= ϕ^† ((A^(⊙ * 2))^(-1) #p)^⬨ ϕ 
  $

  $ϕ^† #p^⬨ ϕ$ 的 parity 对偶物, $ϕ$ 导出 co-vector

  $ #p ⟿ ϕ^† #p ϕ $

  $(0,1/2)$ 作用 $A^†$ 导出到对 co-vector 的作用

  类似地, 对于 anti-Hermitian 也可以定义 co-vector
  $
    dmat( delim: #none ,
      ⋀^(* 2) ℂ^2 , ⟶ , Im(ℂ) ;
      P , ⟿ , ϕ^† P^⬨ ϕ
    )
  $
  对于复共轭二重张量
  $
    dmat( delim: #none ,
      ⨂^(* 2) ℂ^2 , ⟶ , ℂ ;
      P , ⟿ , ϕ^† P^⬨ ϕ
    )
  $
]
#tag("spinor-field-motivation?") 
#indent[
  - formally 将动量 $p$ 对应到 gradient 动量 $#i ⋅ (∂_0,∂_1,∂_2,∂_3)$, 将 $#p$ 对应到 #link(<spacetime-momentum-spinor-representation>)[] $#i ⋅ mat(
      ∂_0 + ∂_1, ∂_2 + ∂_3 #i ;
      ∂_2 - ∂_3 #i, ∂_0 - ∂_1
    )$

  - formally 用于 $ϕ$ 生成的 co-vector 得到 $ℂ$ 场
    $
      &ϕ^† #i ⋅ mat(
      ∂_0 + ∂_1, ∂_2 + ∂_3 #i ;
      ∂_2 - ∂_3 #i, ∂_0 - ∂_1
      )^⬨ ϕ 
    $
  - action + product rule + 散度量 + 边界零 + 积分二次型 ==> self-adjoint 算子 $#i ⋅ mat(
      ∂_0 + ∂_1, ∂_2 + ∂_3 #i ;
      ∂_2 - ∂_3 #i, ∂_0 - ∂_1
    )$ 
    $
      ⟨ ϕ, #i #spin-d^⬨ ψ ⟩_(L^2) = ⟨ #i #spin-d^⬨ ϕ, ψ ⟩_(L^2)
    $
  ]


#show "Δ": it => text(it, fill: rgb("#0056e1"))
#tag("massless-spinor-Lagrangian") (cf. #link(<Lagrangian>)[]), *alias* #tag("Weyl-Lagrangian")
#indent[
  $ ϕ^† #i #spin-d ^⬨ ϕ $

  or $ϕ^† (σ^⬨ ⋅ #i ∂) ϕ$ or $ϕ^† (σ^(μ ⬨) #i ∂_μ) ϕ$

  where $L^2$ 是用 $ℝ^(1,3)$ 积分 + $ℂ^2$ 的二次型 $ϕ^† ψ$

  起作用的只有 $Re ϕ^† (σ^(μ ⬨) #i ∂_μ) ϕ = - #i Im ϕ^† (σ^(μ ⬨) #i ∂_μ)$, 因为 $Im ϕ^† (σ^(μ ⬨) #i ∂_μ) ϕ = #i Re ϕ^† (σ^(μ ⬨) ∂_μ) ϕ = #i ∂_μ (ϕ^† σ^(μ ⬨) ϕ) = #i div(ϕ^† σ ϕ)$ 是散度量, 用 Stokes 定理 + 边界零

  变分给出 linear part $integral 2 Re (Δ ϕ)^† #i #spin-d^⬨ ϕ$ 
]
#tag("massless-spinor-equation"), *alias* #tag("Weyl-equation")
#indent[
  $ #spin-d^⬨ ϕ = 0 $

  or $(σ^⬨ ⋅ ∂) ϕ = 0$ or $(σ^(μ ⬨) ∂_μ) ϕ = 0$

  类似于 $ℂ^2 ≃ ℝ^2$ via $x ± y #i$, 对 $ℂ$ 值 $ϕ$ 变分等价于对 $ℝ$ 值 $ϕ,ϕ^†$ 变分

  $#spin-d ϕ = (σ ⋅ ∂) ϕ = (σ^μ ∂_μ) ϕ$ 可以解释为 (metric-adjoint 后) 梯度 $∂ ϕ ∈ ℝ^(1,3) ⊗ ℂ^2$ spacetime-momentum-spinor + 旋量的乘法 $(#p ⊗ ψ ⇝ #p ψ) ∈ ℝ^(1,3) ⊗ ℂ^2 -> ℂ^2$
]
#tag("Weyl-parity")
#indent[
  parity 对偶作用量使用 $(0,1/2)$ 旋量

  $ ϕ^† #i #spin-d ϕ $

  parity 对偶的 eq

  $ #spin-d ϕ = 0 $

  or $(σ ⋅ ∂) ϕ = 0$ or $(σ^μ ∂_μ) ϕ = 0$
]
#tag("Weyl-eq-plane-wave")
#indent[
  平面波解 $Φ e^(- #i p x)$ with $p^2 = m^2$ and $#p Φ = 0$
  
  线性方程 with $det #p = p^2 = 0$ 说明有非零解, 解空间是一维的, 解可以写为 $Φ = #p^⬨ ξ$ with $dim(im(#p^⬨)) = 1$
  
   
]
#tag("massive-spinor-Lagrangian") mass couple 旋量的作用量, *alias* #tag("Dirac-Lagrangian")
#indent[
  couple $(1/2,0),(0,1/2)$ to $(1/2,0) ⊕ (0,1/2)$

  $mat(A;,(A^†)^(-1)) vec(ϕ,ψ) = mat(A ϕ; (A^†)^(-1) ψ)$

  $#p in ⨀^(* 2) ℂ^2$, $#p ⇝ mat(#p^⬨;,#p)$

  $ Im vec(ϕ,ψ)^† (mat(#i #spin-d^⬨;, #i #spin-d) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) $

  invariant non couple term $vec(ϕ,ψ)^† mat(#i #spin-d^⬨;,#i#spin-d) vec(ϕ,ψ) = #i ϕ^† #spin-d^⬨ ϕ + #i ψ^† #spin-d ψ$

  invariant couple term $- vec(ϕ,ψ)^† m mat(,𝟙;𝟙) vec(ϕ,ψ) = - m (ϕ^† ψ + ψ^† ϕ) = - 2 m Re ϕ^† ψ = 2 m Im ψ^† ϕ$

  couple term 对 $ϕ$ 变分给出 $integral - 2 m Re (Δ ϕ)^† ψ$

  - 整体对 $ϕ$ 变分给出 $#i #spin-d^⬨ ϕ - m ψ = 0$
  - 整体对 $ψ$ 变分给出 $#i #spin-d ψ - m ϕ = 0$

  $m = 0$ 时 decouple 到两个 parity 对偶的 massless-spinor


  它们 imply 
  $
    #spin-d #spin-d^⬨ ϕ + m^2 ϕ = 0 \
    #spin-d^⬨ #spin-d ψ + m^2 ψ = 0
  $
  and $∆ = #spin-d #spin-d^⬨ = #spin-d^⬨ #spin-d$ as "square root of $∆$" #tag("square-root-of-spacetime-Laplacian") 

  整体 $(∆ + m^2) vec(ϕ,ψ) = 0$, square root of KG

  全部偏导数 $(∂ S)/(∂ ϕ) = (∂ S)/(∂ ψ) = 0$, 给出 #tag("massive-spinor-equation"), *alias* #tag("Dirac-equation")

  $ (mat(#i #spin-d^⬨;,#i #spin-d) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0 $
]
类似于 $ℂ^2 ≃ ℝ^2$ via $x ± y #i$, 对 $ℂ^2$ 值 $ϕ,ψ$ 变分等价于对 $ℝ^2$ 值 $vec(ϕ,ψ),vec(ϕ,ψ)^†$ 变分

couple term $-m mat(,𝟙;𝟙), m ∈ ℝ$ 换成 $-mat(,n 𝟙;m 𝟙),m,n ∈ ℂ$, 作用量仍然 invariant. 但是 eq 不再能分解为那种更简单的形式

*Question* forall $A ∈ SL(2,ℂ)$ invariant 的矩阵 $mat(A ;, (A^†)^(-1))^† mat(M_1,M_2;M_3,M_4) mat(A ;, (A^†)^(-1)) = mat(A^† M_1 A, A^† M_2 (A^†)^(-1); A^(-1) M_3 A, A^(-1) M_4 (A^†)^(-1)) = mat(M_1,M_2;M_3,M_4)$ 大概只有 $mat(,n 𝟙;m 𝟙),m,n ∈ ℂ$

#tag("Dirac-eq-plane-wave") 平面波解 $vec(Φ, Ψ) e^(- #i p x)$ with $p^2 = m^2$ and $(mat( #p ;,#p^⬨) - m mat(,𝟙;𝟙)) vec(Φ,Ψ) = 0$ 
  
后者是线性方程所以解是不难的, 解空间是二维, 解可以写为 $vec(Φ,Ψ) = vec(#p^(⬨ 1/2) ξ, #p^(1/2) ξ), ξ ∈ ℂ^2$

#tag("squrae-root-of-spacetime-momentum-spinor-representation") 
#indent[
  虽然可能可以用 Hermite 矩阵 $#p$ 的特征值 ($p_0 ± (p_0^2 - m^2)^(1/2)$), 但这里还是直接计算. let $#p = #q^2$ or
  $
    mat(
      p_0 + p_1 , p_2 + #i p_3 ;
      p_2 - #i p_3 , p_0 - p_1
    )
    = mat(
      (q_0 + q_1)^2 + q_2^2 + q_3^2 , 2 q_0 (q_2 + #i q_3) ;
      2 q_0 (q_2 - #i q_3) , (q_0 - q_1)^2 + q_2^2 + q_3^2
    )
  $
  ==>
  $
    p_0 &= q_0^2 + q_1^2 + q_2^2 + q_3^2 \
    p_1 &= 2 q_0 q_1 \
    p_2 + #i p_3 &=  2 q_0 (q_2 + #i q_3) 
  $
  ==> 使用 $p_1^2 + p_2^2 + p_3^2 = p_0^2 - m^2$
  $
    p_0 = q_0^2 + 1/(4 q_0^2) (p_0^2 - m^2)
  $
  $q_0^2$ 的二次方程 $(q_0^2)^2 - p_0 (q_0^2) + 1/4 (p_0^2 - m^2)$, 解
  $
    q_0^2 = 1/2 (p_0 ± m)
  $
  ==>
  $
    q_0 &= (1/2 (p_0 ± m))^(1/2) \
    &= frac(p_0 + m,(2 (p_0 ± m))^(1/2)) \

    i = 1,2,3 => q_i &= frac(p_i,(2 (p_0 ± m))^(1/2))
  $
  or 
  $
    #p^(1/2) &= frac(
      #p ± m 𝟙 ,
      (2 (p_0 ± m))^(1/2)
    ) \
    "and " 
    #p^(⬨ 1/2) &= frac(
      #p^⬨ ± m 𝟙 ,
      (2 (p_0 ± m))^(1/2)
    )
  $
  仍然 Hermite. 计算可得
  $
    #p^(1/2) #p^(⬨ 1/2) = m = #p^(⬨ 1/2) #p^(1/2)
  $

  *Example* 
  #indent[
    $p = (p_0,p_1,0,0), p_0 > 0$ 则 $#p^(1/2) = mat((p_0 + p_1)^(1/2);,(p_0 - p_1)^(1/2)), #p^(⬨ 1/2) = mat((p_0 - p_1)^(1/2);,(p_0 + p_1)^(1/2))$. 如果再 $p_1 = 0$ 则 $vec(#p^(1/2) ξ, #p^(⬨ 1/2) ξ) = p_0^(1/2) vec(ξ,ξ)$
  ]

  $vec(#p^(1/2) ξ, #p^(⬨ 1/2) ξ)^† vec(#p^(1/2) ξ, #p^(⬨ 1/2) ξ) &= ξ^† (#p + #p^⬨) ξ \
  &= (2 p_0) |ξ|^2 \
  &= (tr #p) |ξ|^2$ 
]

1,3 metric 平方根 or $∆$ 平方根 $mat(#p^⬨;,#p) mat(#p ;,#p^⬨) = (det #p) mat(𝟙;,𝟙)$. 但你也可以用 $#p ⇝ mat(,#p^⬨;#p)$ 得到真正的平方 $mat(,#p^⬨;#p)^2 = (det #p) 𝟙$. 由于 $mat(#p ;,#p^⬨)^2 != (det #p) 𝟙$ 所以 $mat(#p ;,#p^⬨),mat(,#p ; #p^⬨)$ 之间的变换不是 $GL(4,ℂ)$ 换坐标 $T^(-1) ⋅ M ⋅ T$

#tag("motivation-of-gauge-field?") 
#indent[
  忽略了一些问题

  切射影光锥丛是良定义的

  究竟需要 $ℂ^2$ 场还是 $ℂℙ^1$ 场? $ℂℙ^1$ 场提升到 $ℂ^2$ 场的选择太多了 (or 提升到 $ℂ^2 ∖ 0$ 场), 不同于 $SO(1,3)$ 提升到 $SL(2,ℂ)$ 只有两种. 在弯曲流形上, 可能都没有连续的单值化提升

  弯曲时空的 $ℂ^2$ 丛可以直接在 $SO(1,3)$ principal bundle (正交标架丛) 的丛坐标中定义, 换坐标时, 自动从 $SO(1,3)$ 导出 $SL(2,ℂ)$

  在弯曲时空, 需要处理旋量场的协变导数, 且需要导出自 #link(<metric-connection>)[] 
  
  对求导数要用 orthonormal frame 而不是 coordinate frame i.e. 用 $SO(1,3),SL(2,ℂ)$ principal bundle

  虽然我们已经有 $ℂ^2$ 丛, 但是 lift $ℂℙ^1$ to $ℂ^2$ 还有额外的对称性. 我们可以给旋量 $ϕ(x)$ 乘上 $a(x) = |a(x)| exp(θ #i) ∈ GL(1,ℂ) = ℝ_(> 0) × #U (1)$ 来改变规范 $a(x) ϕ(x)$, 在射影 $ℂℙ^1$ 中仍然相同

  改变规范不兼容于在丛坐标中求切空间的导数, 所以要引入额外的结构 --- #link(<principal-bundle-connection>)[connection]
  
  有很多可能的联络
  
  有无法 local flat 的联络, 在每一个规范中, 都无法消去联络场
  
  类似于 gravity, 需要用 local flat connection <==> local curvature 0 的概念, 用曲率最小来选择 connection
  
  甚至如果时空底流形的拓扑非平凡, 还可能存在不同的 bundle type

  如果需要作用量的简单的守恒流, 用 $#U (1)$ 规范变换而不是 $ℂ ∖ 0 = #U (1) × ℝ_(> 0)$. $#U (1)$ 不改变 Lagrangian 作用量, 这使得在计算守恒流时变得简单 (cf. 纯量场的情况)

  一个问题是, 规范丛似乎不能直接联系到切丛
  
  似乎要同时考虑基于底流形的所有类型的 $#U (1)$ bundle type

  在 homotopy 意义下, $ℝ^(p,q)$ 只有一种类型的 $#U (1)$ bundle type
]
#tag("spin-connection")
#indent[
  在切丛 metric 导出的 $SO(1,3)$ #link(<principal-bundle>)[frame bundle] 和 #link(<metric-connection>)[] 导出的 #link(<principal-bundle-connection>)[connection] 表现为 $Γ$ is locally type $(ℝ^(1,3))^⊺ ⊗ so(1,3)$, 作用于 tangent field $ℝ^(1,3)$ by $∂ + Γ$

  导出到 spin-connection 的方式是, 在 orthonormal-frame 将 induced metric-connection $Γ$ 的 #link(<square-root-of-Lorentz-Lie-algebra>)[$so(1,3)$ 部分对应到 $sl(2,ℂ)$] , 得到 $SL(2,ℂ)$ 丛的 connection, locally type $(ℝ^(1,3))^⊺ ⊗ ℂ^2$, 作用于 spinor field $ℂ^2$ by $∂ + ω$ with $ω = ω^(μ ν) 1/4 [σ_(μ),σ_(ν)]_(⬨)$
]
spin-connection also denoted by $∇$

#tag("motivation-of-scalar-field?") can scalar field be related to tautological bundle of projective-lightcone $ℂℙ^1$?

根据 $ℝ^(1,3)$ 时空流形的旋量场的概念, "旋转 720 度", "parity" 应该发生在切空间构造而不是发生在时空流形

因为时空流形的切空间都是 $ℝ^(1,3)$, 所以旋量场可以推广到一般时空流形?

#tag("spinor-on-Lorentz-manifold") *Question*
#indent[
  massless-spinor-action
  $
    integral #d Vol(g) (ψ^† #i #spin-connection^⬨ ψ)
  $
  massless-spinor-equation
  $
    #spin-connection^⬨ ψ = 0
  $
  可能是概念上错误的定义? 对比平直时空, 尝试证明或证否
  - $#i #spin-connection^⬨$ 是 self-adjoint 
  - 只有 $Re (ψ^† #spin-connection^⬨ ψ)$ 对作用量变分起作用
  - $#spin-connection^⬨ #spin-connection = #spin-connection #spin-connection^⬨ = 1/2 (∇^† ∇ + ∇ ∇^†)$ i.e. square-root-of-spacetime-Laplacian

  massive-spinor-Lagrangian
  $
    integral #d Vol(g) Re vec(ϕ,ψ)^† (mat(#i #spin-connection^⬨ ;,#i #spin-connection) + m mat(,𝟙;𝟙)) vec(ϕ,ψ)
  $
  massive-spinor-equation
  $
    (mat(#i #spin-connection^⬨ ;,#i #spin-connection) + m mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0
  $
]
*Question* 只要局部从 $ℂ^2$ quotient 回到 $ℂℙ^1$, 就能回避连续全局单值 lift to $ℂ^2$ 的问题

我们知道 KG eq 有 non-relativity 近似极限 $lim_(c -> ∞)$. massive-spinor 构造存在 non-relativity 近似极限 $lim_(c -> ∞)$ 吗?

static 不需要 non-relativity 近似极限 $lim_(c -> ∞)$, 尽管有 $c$ 的存在, 就像 static 电磁场方程那样也不需要 non-relativity 近似极限 $lim_(c -> ∞)$. 这对 KG 方程也是如此

let $ϕ(t,x) = ϕ(x)$ static

static massless spinor eq
$
  σ^i ∂_i ϕ = 0
$
static massive spinor eq
$
  (mat(- #i σ^i ∂_i ;, #i σ^i ∂_i) + (m c) / (ℏ) mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0
$
它们可以 couple 到 static electromagnetic gauge potential $(V(x),A_(1,2,3)(x))$ or just static electric $V(x)$ or just static magnetic $A_(1,2,3)(x)$

在存在 electromagnetic potential 时, massless 的 parity dual 可能不同, 例如 just static electric $σ^i ∂_i ϕ ± #i V ϕ = 0$ 

electromagnetic potential = 0 时, parity dual eq 是相同的