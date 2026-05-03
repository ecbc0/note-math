#import "../module/module.typ": *
#show: module

#let p = spin($p$)
#let q = spin($q$)

#tag("co_vector_of_Hermitian_tensor") 
#indent[
  $ϕ$ 导出 co-vector of #link(<Hermitian_tensor>)[]
  $
    map(⨀^(* 2) ℂ^2, ℝ, #p, ϕ^† #p ϕ)
  $
  由于 $#p ∈ ⨀^(* 2) ℂ^2$ 是 Hermitian 矩阵, 所以 $(ϕ^† #p ϕ)^† = ϕ^† #p ϕ$, 所以 $ϕ^† #p ϕ in ℝ$
  
  因为 $#p$ 的 Hermitian or 对 $ℂ^2$ 内积的 self-adjoint, 可以认为 $#p$ 作用对称地作用在两个 slot $ϕ^† (#p ϕ) = (ϕ^† (#p ϕ))^† = (#p ϕ)^† ϕ$

  vector 空间的 base $σ^0,σ^1,σ^2,σ^3 ∈ ℝ^(1,3)$ 给出 co-vector 的系数 $ϕ^† σ^μ ϕ in ℝ$

  $(1/2,0)$ 作用导出到对 co-vector $ϕ$ 的作用是
  $
    (A ϕ)^† #p (A ϕ) 
    &= ϕ^† (A^† #p A) ϕ \
    &= ϕ^† (f(A^†) #p) ϕ &quad "by" #link(<property_of_parity>)[] \
    &= ϕ^† (f(A)^⊺ #p) ϕ 
  $
  
  也对应 dual base i.e. base of co-vector space $(ℝ^(1,3))^⊺$ 的变换 $f(A)^⊺$

  #link(<parity>)[] 对偶与 $(0,1/2)$ 导出作用
  $
    #p ⇝ ϕ^† #p^◊ ϕ ⇝ (A^(† -1) ϕ)^† #p^◊ (A^(† -1) ϕ) 
    &= ϕ^† (A^(-1) #p^◊ A^(† -1)) ϕ \
    &= ϕ^† (A #p A^†)^◊ ϕ &quad "by" #link(<property_of_parity>)[] \
    &= ϕ^† (f(A) #p)^◊ ϕ 
  $
  类似地, 对于 anti-Hermitian 也可以定义 co-vector
  $
    map(⋀^(* 2) ℂ^2, Im(ℂ), P, ϕ^† P ϕ)
  $
  对于复共轭二重张量
  $
    map(⨂^(* 2) ℂ^2, ℂ, P, ϕ^† P ϕ)
  $
]
#tag("spinor_field_motivation") 
#indent[
  - formally 将动量 $p$ 对应到 gradient 动量 $#i ⋅ (∂_0,-∂_1,-∂_2,-∂_3) = #i ⋅ (∂_0,∂_1,∂_2,∂_3)^◊$, 将 $#p$ 对应到 #link(<spacetime_momentum_spinor_representation>)[] 
    $
      #i ⋅ mat(
        ∂_0 + (-∂_1), -(∂_2 + ∂_3) #i ;
        -(∂_2 - ∂_3) #i, ∂_0 - (-∂_1)
      ) &= #i ⋅ mat(
        ∂_0 + ∂_1, ∂_2 + ∂_3 #i ;
        ∂_2 - ∂_3 #i, ∂_0 - ∂_1
      )^◊ \
      &= #i σ^μ ∂_ μ ^◊ = #i σ^(μ ◊) ∂_ μ \
      &=: #i #spin-d^◊
    $

  - formally 用于 $ϕ$ 生成的 co-vector 得到 $ℂ$ 场
    $
      &ϕ^† #i #spin-d^◊ ϕ 
    $
  - action + product rule + 散度量 + 边界零 + 积分二次型 ==> self-adjoint 算子 $#i #spin-d^◊$ 
    $
      ⟨ ϕ, #i #spin-d^◊ ψ ⟩_(L^2) = ⟨ #i #spin-d^◊ ϕ, ψ ⟩_(L^2)
    $
  ]
#tag("massless_spinor_Lagrangian") *alias* #tag("Weyl_Lagrangian")
#indent[
  $ ϕ^† #i #spin-d ^◊ ϕ $

  or $ϕ^† (σ^◊ ⋅ #i ∂) ϕ$ or $ϕ^† (σ^(μ ◊) #i ∂_μ) ϕ$

  where $L^2$ 是用 $ℝ^(1,3)$ 积分 + $ℂ^2$ 的二次型 $ϕ^† ψ$

  起作用的只有 $Re ϕ^† (σ^(μ ◊) #i ∂_μ) ϕ = - #i Im ϕ^† (σ^(μ ◊) #i ∂_μ)$, 因为 $Im ϕ^† (σ^(μ ◊) #i ∂_μ) ϕ = #i Re ϕ^† (σ^(μ ◊) ∂_μ) ϕ = #i ∂_μ (ϕ^† σ^(μ ◊) ϕ) = #i div(ϕ^† σ ϕ)$ 是散度量, 用 Stokes 定理 + 边界零

  变分给出 linear part $integral 2 Re (Δ ϕ)^† #i #spin-d^◊ ϕ$ 
]
#tag("massless_spinor_equation") *alias* #tag("Weyl_equation")
#indent[
  $ #spin-d^◊ ϕ = 0 $

  or $(σ ⋅ ∂^◊) ϕ = 0$ or $(σ^μ ∂_μ^◊) ϕ = 0$

  类似于 $ℂ^2 ≃ ℝ^2$ via $x ± y #i$, 对 $ℂ$ 值 $ϕ$ 变分等价于对 $ℝ$ 值 $ϕ,ϕ^†$ 变分

  $#spin-d ϕ^◊ = (σ ⋅ ∂^◊) ϕ = (σ^μ ∂_μ^◊) ϕ$ 可以解释为 (metric-dual 后) 场的 gradient 动量 $#i ⋅ (∂_0,-∂_1,-∂_2,-∂_3) ϕ ∈ ℝ^(1,3) ⊗ ℂ^2$, 复合到, 动量与旋量的乘法 $(#p ⊗ ϕ ⇝ #p ϕ) ∈ ℝ^(1,3) ⊗ ℂ^2 -> ℂ^2$
]
#tag("Weyl_parity")
#indent[
  parity 对偶作用量使用 $(0,1/2)$ 旋量

  $ ϕ^† #i #spin-d ϕ $

  parity 对偶的 eq

  $ #spin-d ϕ = 0 $

  or $(σ ⋅ ∂) ϕ = 0$ or $(σ^μ ∂_μ) ϕ = 0$
]
#tag("Weyl_eq_plane_wave")
#indent[
  平面波解 $Φ e^(- #i p x)$ with $p^2 = m^2$ and $#p Φ = 0$
  
  线性方程 with $det #p = p^2 = 0$ 说明有非零解, 解空间是一维的, 解可以写为 $Φ = #p^◊ ξ$ with $dim(im(#p^◊)) = 1$
]
#tag("massive_spinor_Lagrangian") mass couple 旋量的作用量, *alias* #tag("Dirac_Lagrangian")
#indent[
  couple Weyl 旋量及其 parity $(1/2,0),(0,1/2)$ to $(1/2,0) ⊕ (0,1/2)$

  $mat(A;,(A^†)^(-1)) vec(ϕ,ψ) = mat(A ϕ; (A^†)^(-1) ψ)$

  $#p in ⨀^(* 2) ℂ^2$, $#p ⇝ mat(#p^◊;,#p)$

  $ vec(ϕ,ψ)^† (mat(#i #spin-d^◊;, #i #spin-d) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) $

  invariant non couple term $vec(ϕ,ψ)^† mat(#i #spin-d^◊;,#i#spin-d) vec(ϕ,ψ) = #i ϕ^† #spin-d^◊ ϕ + #i ψ^† #spin-d ψ$

  non couple term 对 $ϕ$ 变分给出 $integral 2 Re (Δ ϕ)^† #i #spin-d^◊ ϕ$ 

  根据 parity 之间相互抵消 $A^(† -1 †) A = 𝟙$

  invariant couple term $- vec(ϕ,ψ)^† m mat(,𝟙;𝟙) vec(ϕ,ψ) = - m (ϕ^† ψ + ψ^† ϕ) = - 2 Re m ϕ^† ψ$

  couple term 对 $ϕ$ 变分给出 $integral 2 Re (Δ ϕ)^† (- m ψ)$

  - 整体对 $ϕ$ 变分给出 $#i #spin-d^◊ ϕ - m ψ = 0$
  - 整体对 $ψ$ 变分给出 $#i #spin-d ψ - m ϕ = 0$
  - $m = 0$ 时 decouple 到两个 parity 对偶的 massless-spinor

  这两个 PDE 蕴含 
  $
    #spin-d #spin-d^◊ ϕ + m^2 ϕ = 0 \
    #spin-d^◊ #spin-d ψ + m^2 ψ = 0
  $
  and $∆ = #spin-d #spin-d^◊ = #spin-d^◊ #spin-d$ as "square root of $∆$" #tag("square_root_of_spacetime_Laplacian") 

  整体 $(∆ + m^2) vec(ϕ,ψ) = 0$, square root of KG. 如果一个场满足 Dirac eq, 则它满足 KG eq. 从而 Dirac eq 可以近似到 KG eq, 或者继续近似到 Schrodinger eq. 但是注意, 此时相比于 $ℂ$ 值的情况, $ℂ^2 ⊕ ℂ^(2 ◊)$ 的不同之处在于, $so(1,3)$ or $so(3)$ 表示的角动量算子会有影响值域的自旋部分, 情况类似于 #link(<spinor_angular_momentum>)[]

  作用量 $S$ 的全部偏导数是零 $(∂ S)/(∂ ϕ) = (∂ S)/(∂ ψ) = 0$, 给出 #tag("massive_spinor_equation"), *alias* #tag("Dirac_equation")

  $ (mat(#i #spin-d^◊;,#i #spin-d) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0 $
]
类似于 $ℂ^2 ≃ ℝ^2$ via $x ± y #i$, 对 $ℂ^2$ 值 $ϕ,ψ$ 变分等价于对 $ℝ^2$ 值 $vec(ϕ,ψ),vec(ϕ,ψ)^†$ 变分

couple term $-m mat(,𝟙;𝟙), m ∈ ℝ$ 换成 $-mat(,n 𝟙;m 𝟙),m,n ∈ ℂ$, 作用量仍然 invariant. 但是 eq 不再能分解为那种更简单的形式

*Question* forall $A ∈ SL(2,ℂ)$ invariant 的矩阵 $mat(A ;, (A^†)^(-1))^† mat(M_1,M_2;M_3,M_4) mat(A ;, (A^†)^(-1)) = mat(A^† M_1 A, A^† M_2 (A^†)^(-1); A^(-1) M_3 A, A^(-1) M_4 (A^†)^(-1)) = mat(M_1,M_2;M_3,M_4)$ 大概只有 $mat(,n 𝟙;m 𝟙),m,n ∈ ℂ$

#tag("Dirac_eq_plane_wave") 
#indent[
  平面波解 $vec(Φ, Ψ) e^(- #i p x)$ with $p^2 = m^2$ and $(mat( #p ;,#p^◊) - m mat(,𝟙;𝟙)) vec(Φ,Ψ) = 0$ 
  
  后者是线性方程所以解是不难的, 解空间是二维, 解可以写为 $vec(Φ,Ψ) = vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ), ξ ∈ ℂ^2$ (@ref-17, p.100)
  $
    mat( #p ;,#p^◊) vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ) 
    
    &= vec( 
      #p^(1/2) (#p^(1/2) #p^(◊ 1/2)) ξ ,
      #p^(◊ 1/2) (#p^(◊ 1/2) #p^(1/2)) ξ 
    ) \

    &= m vec( 
      #p^(1/2) ξ ,
      #p^(◊ 1/2) ξ 
    ) \

    &= m mat(,𝟙;𝟙) vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ) 
  $
  共轭相位平面波 $vec(u,v) e^(#i p x)$ 满足的条件是 $(mat( #p ;,#p^◊) + m mat(,𝟙;𝟙)) vec(u,v) = 0$, 解可以写为 $vec(Φ,Ψ) = vec(#p^(◊ 1/2) ξ, - #p^(1/2) ξ), ξ ∈ ℂ^2$

  类似 #link(<linear_superposition_of_KG_eq>)[纯量场的情况], 可以对动量所在的双曲面 $ℍ𝕪^3$ 进行 $L^2$ 叠加 #tag("linear_superposition_of_Dirac_eq")
  $
    limits(integral)_(ℍ𝕪^3) #d p
      (vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ)(p) e^(- p x #i) + vec(#p^(◊ 1/2) η, - #p^(1/2) η)(p) e^(p x #i))
  $
]
#tag("squrae_root_of_spacetime_momentum_spinor_representation") 
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
  ==> $q_0^2$ 的二次方程 $(q_0^2)^2 - p_0 (q_0^2) + 1/4 (p_0^2 - m^2)$, 解
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
    #p^(◊ 1/2) &= frac(
      #p^◊ ± m 𝟙 ,
      (2 (p_0 ± m))^(1/2)
    )
  $
  仍然 Hermite. 计算可得
  $
    #p^(1/2) #p^(◊ 1/2) = m = #p^(◊ 1/2) #p^(1/2)
  $

  *Example* 
  #indent[
    $p = (p_0,p_1,0,0), p_0 > 0$ 则 $#p^(1/2) = mat((p_0 + p_1)^(1/2);,(p_0 - p_1)^(1/2)), #p^(◊ 1/2) = mat((p_0 - p_1)^(1/2);,(p_0 + p_1)^(1/2))$
    
    如果再 $p_1 = 0$ 则 $vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ) = (p_0)^(1/2) vec(ξ,ξ)$
  ]
]

1,3 metric 平方根 or $∆$ 平方根 $mat(#p^◊;,#p) mat(#p ;,#p^◊) = (det #p) mat(𝟙;,𝟙)$. 但你也可以用 $#p ⇝ mat(,#p^◊;#p)$ 得到真正的平方 $mat(,#p^◊;#p)^2 = (det #p) 𝟙$

由于 $mat(#p ;,#p^◊)^2 != (det #p) 𝟙$ 所以变换 $mat(#p ;,#p^◊) ⇝ mat(,#p ; #p^◊)$ 不来自 $GL(4,ℂ)$ 换坐标 $T^(-1) ⋅ M ⋅ T$

#tag("motivation_of_gauge_field") 
#indent[
  忽略了一些问题

  切射影光锥丛是良定义的

  但究竟需要 $ℂ^2$ 场还是 $ℂℙ^1$ 场? $ℂℙ^1$ 场提升到 $ℂ^2$ 场的选择太多了 (or 提升到 $ℂ^2 ∖ 0$ 场), 全部提升的选择形成 $GL(1,ℂ) = ℝ_(>0) × #U (1)$ 场

  而 $SO(1,3)$ 提升到 $SL(2,ℂ)$ 只有两种

  在弯曲流形上, 甚至可能都没有全局的单值化提升

  $ℂℙ^1$ 场提升到 $ℂ^2$ 场的提升方式的改变对应 "改变规范", 给旋量 $ϕ(x)$ 乘上 $a(x) = |a(x)| exp(θ #i)$ 来改变规范

  如果需要作用量的守恒流更简单, 则用 $#U (1)$ 规范变换而不是 $GL(1,ℂ) = #U (1) × ℝ_(> 0)$. $#U (1)$ 不改变 Lagrangian 作用量, 这使得在计算守恒流时变得简单 (cf. 纯量场计算 $#U (1)$ 对称性的 4 电流的情况)

  改变规范不兼容于在丛坐标中求切空间的导数, 所以要引入额外的结构 --- #link(<principal_bundle_connection>)[connection]
  
  有很多可能的联络. 性质好的联络是曲率最小的 cf. #link(<electromagnetic_field>)[]

  弯曲时空的 $ℂ^2$ 丛可以直接在 $SO(1,3)$ principal bundle (正交标架丛) 的丛坐标中定义. 使用 #link(<Lorentz_group_spinor_representation>)[$SL(1,ℂ) ↠ SO(1,3)$ 对应], 换 $SO(1,3)$ 丛坐标时, 自动对应到换 $SL(2,ℂ)$ 丛坐标

  在弯曲时空, 需要处理旋量场的对 metric 的协变导数, 它导出自对切向量场的 #link(<metric_connection>)[] 
  
  对于旋量, 可能要用 orthonormal frame 而不是 coordinate frame i.e. 用 $SO(1,3),SL(2,ℂ)$ principal bundle. 这对计算协变导数引入了新的麻烦?
  
  甚至如果时空底流形的拓扑非平凡, 对于规范场还可能存在不同的 bundle type

  一个问题是, 不同于旋量场, 规范丛似乎不能直接联系到切丛
  
  似乎要同时考虑基于底流形的所有类型的 $#U (1)$ bundle type

  在 homotopy 意义下, $ℝ^(p,q)$ 只有一种类型的 $#U (1)$ bundle type
]
#tag("spinor_field_gauge_imaginary_automorphism")
#indent[
  虽然代价是使用 $1 + 9$ 维时空, 切空间 $ℝ^(1,9)$, 但如果考虑八元数 $𝕆$, 如果选取一个单位虚数元 $#i$ 来构造 spinor Lagrangian, 那么八元数的 #link(<imaginary_automorphism>)[虚数元对称群] $G_2$ 对 $#i$ 的 isotropy 导出分解 $ℂ + ℂ^3$, isotropy 群同构到 $SU(3)$, 且导出在 $SU(3)$ 在 $ℂ^3$ 上的作用. cf. (@ref-19, th.4)

  注意八元数虚数元对称群 $G_2$ 不是 $#U (1,𝕆) ≃ 𝕊^7$. 所以这不是传统意义上的 group of gauge connection
  
  据说 $SU(3)$ 是强相互作用的规范群. 这里的八元数方法的优势是, 不再需要额外假设 $ℂ^3$ 和 $SU(3)$ 的单独存在且凭空而来地对 $ℂ^3$ 和 Dirac spinor 进行张量操作. 和 $ℂ^3$ 的张量来自 $#u (1,𝕆) ≃ Im(𝕆) = #i + ℂ^3$ 的 connection 作用于旋量 $𝕆^2$ or $𝕆^2 + 𝕆^(2 ◊)$.
  
  $G_2$ 中同构到 $SU(3)$ 的 isotropy 会改变 $#u (1,𝕆)$ 相位 or $#U (1,𝕆)$ 规范变换的 $#u (1,𝕆)$ 规范场, 导出 $SU(3)$ 作用在 $ℂ^3$ 部分. 是否应该说, 有一种 $#U (1,𝕆)$ 规范变换的 $#u (1,𝕆)$ or $ℂ^3$ 规范场的 $SU(3) ↪ G_2$ 规范变换的 $su (3)$ 规范场, 然后再次像电磁场那样引入最小曲率的 Yang--Mills eq?

  *Question* 四元数 $ℍ$ 的情况如何? $ℍ$ 的情况的虚数元对称群是 $SO(3)$. 固定一个虚数元 $#i$ 之后, 是什么? $ℂ$ 的情况的虚数元对称群是 $ℤ_2$. 显然固定一个虚数元就变成 $𝟙$

  在八元数旋量理论中, 仍然有 $𝕆^2$ 作为旋量场所在空间, $ℝ^(1, 9)$ 射影光锥是 $𝕊^8 ≃ 𝕆ℙ^1$, $SL(2, 𝕆)$ 给出 $SO(1, 9)$ 的二重覆盖, $1 + 9$ 时空对应于二阶 Hermitian 八元数矩阵 $h_2(𝕆) = mat(t - a, α; α^*, t + a)$, $det$ 对应时空 metric. 而且可以将时空, 旋量 $vec(ϕ, ψ)$, 和一个实数嵌入三阶 Hermitian 八元数矩阵 $h_3(𝕆) ≃ h_2(𝕆) + 𝕆^2 + ℝ = mat(r, 𝕆^*; 𝕆, h_2(𝕆))$ (且 $h_3(𝕆)$ 的射影化 $𝕆ℙ^2$ 是 $ℝ^(1,9)$ 射影光锥 $𝕆ℙ^1$ 的推广), 保持 $h_3(𝕆)$ 的 $det$ 的群是 $E_6$, 能够良好地嵌入 $SL(2, 𝕆) ↠ SO(1, 9)$ 和旋量规范理论和 $(SU(3) × SU(2) × #U (1)) / ℤ_6$ cf. (@ref-20, th.6)

  #let GSM = $"S" (#U (2) #U (3))$

  标准模型的 quark lepton fermion 模型可以写为 $GSM$ 作用在 $⋀ (ℂ^5)$, 于是有人将 $GSM$ 嵌入 $Spin(4) × Spin(6)$ (大概可以通过 $#U (2) ↪ Spin(4) ≃ SU(2) × SU(2)$, $U(3) ↪ Spin(6) ≃ SU(4)$), 然后再嵌入到 $Spin(10)$, 再把 $⋀(ℂ^5)$ 和 $"Cliff"(10)$ 对应起来. 这些嵌入被称为 "GUT". $Spin(10)$ 破缺到 $Spin(4) × Spin(6)$

  数学上, 我觉得可以考虑一下 $Spin(1,3) × Spin(6)$ 有没有类似 GUT quark lepton 模型那样的东西, 注意是是类似而不是相同

  考虑这种模型的动机是 $Spin(1,9) = SL(2,O) ⊆ SL(3,O) = E_(6(-26))$, 且旋量 $𝕆^2$ 和 $⋀(ℂ^5)$, $"Cliff"(10)$ 很接近, 使得不需要额外假设 $⋀(ℂ^5)$, 且破缺可能是通过固定一个单位虚数元来完成的, 或者等价地固定 $ℂ ⊆ 𝕆$. 
]
#tag("spin_connection")
#indent[
  在切丛 metric 导出的 $SO(1,3)$ #link(<principal_bundle>)[frame bundle] 和 #link(<metric_connection>)[] 导出的 $SO(1,3)$ frame bundle 的 #link(<principal_bundle_connection>)[connection] 表现为 $Γ$ is locally type $(ℝ^(1,3))^⊺ ⊗ so(1,3)$, 作用于 $ℝ^(1,3)$ 切向量场 by $∂ + Γ$

  导出到 spin-connection 的方式是, 在 orthonormal-frame 将 induced metric-connection $Γ$ 的 #link(<square_root_of_Lorentz_Lie_algebra>)[$so(1,3)$ 部分对应到 $sl(2,ℂ)$] , 得到 $SL(2,ℂ)$ 丛的 connection, locally type $(ℝ^(1,3))^⊺ ⊗ ℂ^2$, 作用于 spinor field $ℂ^2$ by $∂ + ω$ with $ω = ω^(μ ν) 1/4 [σ_(μ),σ_(ν)]_(◊)$

  虽然自旋表示的 Pauli matrix $σ$ 的定义需要 $g$, 但是这之后 $g$ 和 Lie algebra 都可以 $σ$ 的 "平方" 来表示
]
spin-connection also denoted by $∇$

#tag("motivation_of_scalar_field") can scalar field be related to tautological bundle of projective-lightcone $ℂℙ^1$?

根据 $ℝ^(1,3)$ 时空流形的旋量场的概念, "旋转 720 度", "parity" 应该发生在切空间构造而不是发生在时空流形

因为时空流形的切空间都是 $ℝ^(1,3)$, 所以旋量场可以推广到一般时空流形?

#tag("spinor_on_Lorentz_manifold") *Question*
#indent[
  massless-spinor-action
  $
    integral #d Vol(g) (ψ^† #i #spin-connection^◊ ψ)
  $
  massless-spinor-equation
  $
    #spin-connection^◊ ψ = 0
  $
  我还没验证这种定义在概念上是否合理. 对比平直时空, 尝试证明或证否
  - $#i #spin-connection^◊$ 是 self-adjoint 
  - 只有 $Re (ψ^† #spin-connection^◊ ψ)$ 对作用量变分起作用
  - $#spin-connection^◊ #spin-connection = #spin-connection #spin-connection^◊ = 1/2 (∇^† ∇ + ∇ ∇^†)$ i.e. square-root-of spacetime Laplacian (更接近切向量场的 Laplacian 而不是纯量场的)

  massive-spinor-Lagrangian
  $
    integral #d Vol(g) vec(ϕ,ψ)^† (mat(#i #spin-connection^◊ ;,#i #spin-connection) + m mat(,𝟙;𝟙)) vec(ϕ,ψ)
  $
  massive-spinor-equation
  $
    (mat(#i #spin-connection^◊ ;,#i #spin-connection) + m mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0
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