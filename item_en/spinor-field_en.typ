#import "../module/module.typ": *
#show: module

#let p = spin($p$)
#let q = spin($q$)

#tag("co-vector-of-Hermitian-tensor") 
#indent[
  $ϕ$ induces the co-vector of #link(<Hermitian-tensor>)[]
  $
    dmat( delim: #none ,
      ⨀^(* 2) ℂ^2 , ⟶ , ℝ ;
      #p , ⟿ , ϕ^† #p ϕ
    )
  $
  Since $#p ∈ ⨀^(* 2) ℂ^2$ is a Hermitian matrix, then $(ϕ^† #p ϕ)^† = ϕ^† #p ϕ$, so $ϕ^† #p ϕ in ℝ$
  
  Because $#p$ is Hermitian or self-adjoint with respect to the inner product of $ℂ^2$, $#p$ can be considered to act symmetrically on the two slots $ϕ^† (#p ϕ) = (ϕ^† (#p ϕ))^† = (#p ϕ)^† ϕ$

  The base of the vector space $σ^0,σ^1,σ^2,σ^3 ∈ ℝ^(1,3)$ gives the coefficients of the co-vector $ϕ^† σ^μ ϕ in ℝ$

  The action of $(1/2,0)$ on the co-vector $ϕ$ is
  $
    (A ϕ)^† #p (A ϕ) 
    &= ϕ^† (A^† #p A) ϕ \
    &= ϕ^† (f(A^†) #p) ϕ &quad "by" #link(<property-of-parity>)[] \
    &= ϕ^† (f(A)^⊺ #p) ϕ 
  $
  
  It also corresponds to the transformation of the dual base, i.e., the base of the co-vector space $(ℝ^(1,3))^⊺$, which is $f(A)^⊺$

  #link(<parity>)[] dual and $(0,1/2)$ induced action
  $
    #p ⇝ ϕ^† #p^◊ ϕ ⇝ (A^(† -1) ϕ)^† #p^◊ (A^(† -1) ϕ) 
    &= ϕ^† (A^(-1) #p^◊ A^(† -1)) ϕ \
    &= ϕ^† (A #p A^†)^◊ ϕ &quad "by" #link(<property-of-parity>)[] \
    &= ϕ^† (f(A) #p)^◊ ϕ 
  $
  Similarly, co-vectors can also be defined for anti-Hermitian tensors
  $
    dmat( delim: #none ,
      ⋀^(* 2) ℂ^2 , ⟶ , Im(ℂ) ;
      P , ⟿ , ϕ^† P ϕ
    )
  $
  For complex conjugate two-tensors
  $
    dmat( delim: #none ,
      ⨂^(* 2) ℂ^2 , ⟶ , ℂ ;
      P , ⟿ , ϕ^† P ϕ
    )
  $
]
#tag("spinor-field-motivation") 
#indent[
  - formally corresponds momentum $p$ to gradient momentum $#i ⋅ (∂_0,-∂_1,-∂_2,-∂_3) = #i ⋅ (∂_0,∂_1,∂_2,∂_3)^◊$, and $#p$ to #link(<spacetime-momentum-spinor-representation>)[] 
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

  - formally used for co-vector generated by $ϕ$ to obtain $ℂ$ field
    $
      &ϕ^† #i #spin-d^◊ ϕ 
    $
  - action + product rule + divergence + zero boundary + integral quadratic form ==> self-adjoint operator $#i #spin-d^◊$ 
    $
      ⟨ ϕ, #i #spin-d^◊ ψ ⟩_(L^2) = ⟨ #i #spin-d^◊ ϕ, ψ ⟩_(L^2)
    $
  ]
#tag("massless-spinor-Lagrangian") *alias* #tag("Weyl-Lagrangian")
#indent[
  $ ϕ^† #i #spin-d ^◊ ϕ $

  or $ϕ^† (σ^◊ ⋅ #i ∂) ϕ$ or $ϕ^† (σ^(μ ◊) #i ∂_μ) ϕ$

  where $L^2$ is integrated using $ℝ^(1,3)$ + quadratic form of $ℂ^2$ as $ϕ^† ψ$

  The only one that works is $Re ϕ^† (σ^(μ ◊) #i ∂_μ) ϕ = - #i Im ϕ^† (σ^(μ ◊) #i ∂_μ)$, because $Im ϕ^† (σ^(μ ◊) #i ∂_μ) ϕ = #i Re ϕ^† (σ^(μ ◊) ∂_μ) ϕ = #i ∂_μ (ϕ^† σ^(μ ◊) ϕ) = #i div(ϕ^† σ ϕ)$ is a divergence quantity, using Stokes' theorem + zero boundary

  variation gives linear part $integral 2 Re (Δ ϕ)^† #i #spin-d^◊ ϕ$ 
]
#tag("massless-spinor-equation") *alias* #tag("Weyl-equation")
#indent[
  $ #spin-d^◊ ϕ = 0 $

  or $(σ ⋅ ∂^◊) ϕ = 0$ or $(σ^μ ∂_μ^◊) ϕ = 0$

  Similar to $ℂ^2 ≃ ℝ^2$ via $x ± y #i$, varying with respect to $ℂ$-valued $ϕ$ is equivalent to varying with respect to $ℝ$-valued $ϕ,ϕ^†$

  $#spin-d ϕ^◊ = (σ ⋅ ∂^◊) ϕ = (σ^μ ∂_μ^◊) ϕ$ can be interpreted as the gradient momentum of the field (after metric-dual) $#i ⋅ (∂_0,-∂_1,-∂_2,-∂_3) ϕ ∈ ℝ^(1,3) ⊗ ℂ^2$, compounded to, the multiplication of momentum and spinor $(#p ⊗ ϕ ⇝ #p ϕ) ∈ ℝ^(1,3) ⊗ ℂ^2 -> ℂ^2$
]
#tag("Weyl-parity")
#indent[
  parity dual action uses $(0,1/2)$ spinor

  $ ϕ^† #i #spin-d ϕ $

  parity dual eq

  $ #spin-d ϕ = 0 $

  or $(σ ⋅ ∂) ϕ = 0$ or $(σ^μ ∂_μ) ϕ = 0$
]
#tag("Weyl-eq-plane-wave")
#indent[
  Plane wave solution $Φ e^(- #i p x)$ with $p^2 = m^2$ and $#p Φ = 0$
  
  A linear equation with $det #p = p^2 = 0$ indicates non-zero solutions. The solution space is one-dimensional, and the solution can be written as $Φ = #p^◊ ξ$ with $dim(im(#p^◊)) = 1$
]
#tag("massive-spinor-Lagrangian") action for mass-coupled spinors, *alias* #tag("Dirac-Lagrangian")
#indent[
  couple Weyl spinors and their parity $(1/2,0),(0,1/2)$ to $(1/2,0) ⊕ (0,1/2)$

  $mat(A;,(A^†)^(-1)) vec(ϕ,ψ) = mat(A ϕ; (A^†)^(-1) ψ)$

  $#p in ⨀^(* 2) ℂ^2$, $#p ⇝ mat(#p^◊;,#p)$

  $ vec(ϕ,ψ)^† (mat(#i #spin-d^◊;, #i #spin-d) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) $

  invariant non couple term $vec(ϕ,ψ)^† mat(#i #spin-d^◊;,#i#spin-d) vec(ϕ,ψ) = #i ϕ^† #spin-d^◊ ϕ + #i ψ^† #spin-d ψ$

  non-couple term variation with respect to $ϕ$ gives $integral 2 Re (Δ ϕ)^† #i #spin-d^◊ ϕ$ 

  according to cancelation by parity $A^(† -1 †) A = 𝟙$

  invariant couple term $- vec(ϕ,ψ)^† m mat(,𝟙;𝟙) vec(ϕ,ψ) = - m (ϕ^† ψ + ψ^† ϕ) = - 2 Re m ϕ^† ψ$

  couple term variation with respect to $ϕ$ gives $integral 2 Re (Δ ϕ)^† (- m ψ)$

  - overall variation with respect to $ϕ$ gives $#i #spin-d^◊ ϕ - m ψ = 0$
  - overall variation with respect to $ψ$ gives $#i #spin-d ψ - m ϕ = 0$
  - when $m = 0$, decouples into two parity-dual massless-spinors

  These two PDEs imply 
  $
    #spin-d #spin-d^◊ ϕ + m^2 ϕ = 0 \
    #spin-d^◊ #spin-d ψ + m^2 ψ = 0
  $
  and $∆ = #spin-d #spin-d^◊ = #spin-d^◊ #spin-d$ as "square root of $∆$" #tag("square-root-of-spacetime-Laplacian") 

  Overall $(∆ + m^2) vec(ϕ,ψ) = 0$, square root of KG. If a field satisfies the Dirac eq, then it satisfies the KG eq. Therefore, Dirac eq can approximate to KG eq, or further approximate to Schrodinger eq. But note that compared to the case of $ℂ$ value, the difference from $ℂ^2 ⊕ ℂ^(2 ◊)$ is that the angular momentum operator represented by $so(1,3)$ or $so(3)$ will have a spin part that affects the range space, similar to #link(<spinor-angular-momentum>)[]

  All partial derivatives of the action $S$ is zero $(∂ S)/(∂ ϕ) = (∂ S)/(∂ ψ) = 0$, giving #tag("massive-spinor-equation"), *alias* #tag("Dirac-equation")

  $ (mat(#i #spin-d^◊;,#i #spin-d) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0 $
]
Similar to $ℂ^2 ≃ ℝ^2$ via $x ± y #i$, variation with respect to $ℂ^2$ valued $ϕ,ψ$ is equivalent to variation with respect to $ℝ^2$ valued $vec(ϕ,ψ),vec(ϕ,ψ)^†$

If the couple term $-m mat(,𝟙;𝟙), m ∈ ℝ$ is replaced by $-mat(,n 𝟙;m 𝟙),m,n ∈ ℂ$, the action is still invariant. However, the eq can no longer be decomposed into that simpler form

*Question* For any $A ∈ SL(2,ℂ)$, the invariant matrix $mat(A ;, (A^†)^(-1))^† mat(M_1,M_2;M_3,M_4) mat(A ;, (A^†)^(-1)) = mat(A^† M_1 A, A^† M_2 (A^†)^(-1); A^(-1) M_3 A, A^(-1) M_4 (A^†)^(-1)) = mat(M_1,M_2;M_3,M_4)$ is probably only $mat(,n 𝟙;m 𝟙),m,n ∈ ℂ$

#tag("Dirac-eq-plane-wave") 
#indent[
  Plane wave solution $vec(Φ, Ψ) e^(- #i p x)$ with $p^2 = m^2$ and $(mat( #p ;,#p^◊) - m mat(,𝟙;𝟙)) vec(Φ,Ψ) = 0$ 
  
  The latter is a linear equation, so the solution is not difficult. The solution space is two-dimensional, and the solution can be written as $vec(Φ,Ψ) = vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ), ξ ∈ ℂ^2$ (@ref-17, p.100)
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
  The conjugate phase plane wave $vec(u,v) e^(#i p x)$ satisfies the condition $(mat( #p ;,#p^◊) + m mat(,𝟙;𝟙)) vec(u,v) = 0$, and the solution can be written as $vec(Φ,Ψ) = vec(#p^(◊ 1/2) ξ, - #p^(1/2) ξ), ξ ∈ ℂ^2$

  Similar to #link(<linear-superposition-of-KG-eq>)[the scalar field case], $L^2$ superposition can be performed on the hyperboloid $ℍ𝕪^3$ where the momentum lies. #tag("linear-superposition-of-Dirac-eq")
  $
    limits(integral)_(ℍ𝕪^3) #d p
      (vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ)(p) e^(- p x #i) + vec(#p^(◊ 1/2) η, - #p^(1/2) η)(p) e^(p x #i))
  $
]
#tag("squrae-root-of-spacetime-momentum-spinor-representation") 
#indent[
  Although it might be possible to use the eigenvalues of the Hermite matrix $#p$ ($p_0 ± (p_0^2 - m^2)^(1/2)$), we will calculate it directly here. let $#p = #q^2$ or
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
  ==> Use $p_1^2 + p_2^2 + p_3^2 = p_0^2 - m^2$
  $
    p_0 = q_0^2 + 1/(4 q_0^2) (p_0^2 - m^2)
  $
  ==> Quadratic equation for $q_0^2$: $(q_0^2)^2 - p_0 (q_0^2) + 1/4 (p_0^2 - m^2)$, solution
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
  Still Hermite. Calculation yields
  $
    #p^(1/2) #p^(◊ 1/2) = m = #p^(◊ 1/2) #p^(1/2)
  $

  *Example* 
  #indent[
    $p = (p_0,p_1,0,0), p_0 > 0$ then $#p^(1/2) = mat((p_0 + p_1)^(1/2);,(p_0 - p_1)^(1/2)), #p^(◊ 1/2) = mat((p_0 - p_1)^(1/2);,(p_0 + p_1)^(1/2))$
    
    If $p_1 = 0$, then $vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ) = (p_0)^(1/2) vec(ξ,ξ)$
  ]
]

1,3 metric square root or $∆$ square root $mat(#p^◊;,#p) mat(#p ;,#p^◊) = (det #p) mat(𝟙;,𝟙)$. But you can also use $#p ⇝ mat(,#p^◊;#p)$ to get the true square $mat(,#p^◊;#p)^2 = (det #p) 𝟙$

Since $mat(#p ;,#p^◊)^2 != (det #p) 𝟙$, the transformation $mat(#p ;,#p^◊) ⇝ mat(,#p ; #p^◊)$ does not come from $GL(4,ℂ)$ coordinate change $T^(-1) ⋅ M ⋅ T$

#tag("motivation-of-gauge-field") 
#indent[
  Ignored some issues

  Tangent projective light cone bundle is well-defined

  But is a $ℂ^2$ field or a $ℂℙ^1$ field needed? There are too many choices to lift a $ℂℙ^1$ field to a $ℂ^2$ field (or to a $ℂ^2 ∖ 0$ field); all lifting choices form a $GL(1,ℂ) = ℝ_(>0) × #U (1)$ field

  And there are only two ways to lift $SO(1,3)$ to $SL(2,ℂ)$

  On a curved manifold, there may not even be a global single-valued lift.

  The change in the lifting method from a $ℂℙ^1$ field to a $ℂ^2$ field corresponds to "changing the gauge", by multiplying the spinor $ϕ(x)$ by $a(x) = |a(x)| exp(θ #i)$ to change the gauge.

  If the conserved current of the action is to be simpler, then use $#U (1)$ gauge transformation instead of $GL(1,ℂ) = #U (1) × ℝ_(> 0)$. $#U (1)$ does not change the Lagrangian action, which simplifies the calculation of conserved currents (cf. the case of scalar field calculating 4-current for $#U (1)$ symmetry).

  Changing the gauge is not compatible with taking derivatives of tangent spaces in bundle coordinates, so an additional structure --- #link(<principal-bundle-connection>)[connection] --- must be introduced.
  
  There are many possible connections. A good connection is one with the smallest curvature cf. #link(<electromagnetic-field>)[]

  The $ℂ^2$ bundle in curved spacetime can be directly defined in the bundle coordinates of the $SO(1,3)$ principal bundle (orthonormal frame bundle). Using the #link(<Lorentz-group-spinor-representation>)[$SL(1,ℂ) ↠ SO(1,3)$ correspondence], changing $SO(1,3)$ bundle coordinates automatically corresponds to changing $SL(2,ℂ)$ bundle coordinates.

  In curved spacetime, one needs to deal with the covariant derivative of the spinor field with respect to the metric, which is derived from the #link(<metric-connection>)[] of the tangent vector field. 
  
  For spinors, one might need to use an orthonormal frame instead of a coordinate frame, i.e., use $SO(1,3),SL(2,ℂ)$ principal bundle. Does this introduce new difficulties for calculating covariant derivatives?
  
  Even if the topology of the spacetime base manifold is non-trivial, there might exist different bundle types for gauge fields.

  One problem is that, unlike spinor fields, gauge bundles do not seem to be directly related to tangent bundles.
  
  It seems that all types of $#U (1)$ bundle types based on the base manifold must be considered simultaneously.

  In the homotopy sense, $ℝ^(p,q)$ has only one type of $#U (1)$ bundle type.
]
#tag("spinor-field-gauge-imaginary-automorphism")
#indent[
  Although the cost is using $1 + 9$ dimensional spacetime, tangent space $ℝ^(1,9)$, but if we consider octonions $𝕆$, and if we choose a unit imaginary element $#i$ to construct the spinor Lagrangian, then the octonion's #link(<imaginary-automorphism>)[imaginary automorphism group] $G_2$'s isotropy on $#i$ leads to the decomposition $ℂ + ℂ^3$, the isotropy group is isomorphic to $SU(3)$, and it derives the action of $SU(3)$ on $ℂ^3$. cf. (@ref-19, th.4)

  Note that the octonion imaginary automorphism group $G_2$ is not $#U (1,𝕆) ≃ 𝕊^7$. So this is not a group of gauge connection in the traditional sense.

  It is said that $SU(3)$ is the gauge group of strong interaction. The advantage of the octonion method here is that there is no longer a need to additionally assume the separate existence of $ℂ^3$ and $SU(3)$ and perform tensor operations on $ℂ^3$ and Dirac spinor out of thin air. The tensor from $ℂ^3$ comes from the connection of $#u (1,𝕆) ≃ Im(𝕆) = #i + ℂ^3$ acting on the spinor $𝕆^2$ or $𝕆^2 + 𝕆^(2 ◊)$.

  The isotropy in $G_2$ isomorphic to $SU(3)$ will change the $#u (1,𝕆)$ phase or the $#u (1,𝕆)$ gauge field of the $#U (1,𝕆)$ gauge transformation, leading to the $SU(3)$ action on the $ℂ^3$ part. Should it be said that there is a $su (3)$ gauge field of the $SU(3) ↪ G_2$ gauge transformation for the $#u (1,𝕆)$ or $ℂ^3$ gauge field of a $#U (1,𝕆)$ gauge transformation, and then introduce the Yang--Mills eq of minimal curvature again like the electromagnetic field?

  also cf. (@ref-20, th.6)

  *Question* What about the case of quaternions $ℍ$?
]
#tag("spin-connection")
#indent[
  The #link(<principal-bundle>)[frame bundle] of $SO(1,3)$ derived from the tangent bundle metric and the #link(<principal-bundle-connection>)[connection] of the $SO(1,3)$ frame bundle derived from #link(<metric-connection>)[] behave as $Γ$ is locally type $(ℝ^(1,3))^⊺ ⊗ so(1,3)$, acting on $ℝ^(1,3)$ tangent vector fields by $∂ + Γ$

  The way to derive the spin-connection is to #link(<square-root-of-Lorentz-Lie-algebra>)[map the $so(1,3)$ part of the induced metric-connection $Γ$ to $sl(2,ℂ)$] in the orthonormal-frame, yielding the connection of the $SL(2,ℂ)$ bundle, locally type $(ℝ^(1,3))^⊺ ⊗ ℂ^2$, acting on the spinor field $ℂ^2$ by $∂ + ω$ with $ω = ω^(μ ν) 1/4 [σ_(μ),σ_(ν)]_(◊)$

  Although the definition of the Pauli matrix $σ$ for spin representation requires $g$, both $g$ and Lie algebra can be expressed by the "square" of $σ$ thereafter.
]
spin-connection also denoted by $∇$

#tag("motivation-of-scalar-field") can scalar field be related to tautological bundle of projective-lightcone $ℂℙ^1$?

According to the concept of spinor fields in $ℝ^(1,3)$ spacetime manifold, "rotation by 720 degrees" and "parity" should occur in the tangent space construction, not in the spacetime manifold.

Since the tangent spaces of the spacetime manifold are all $ℝ^(1,3)$, can spinor fields be generalized to general spacetime manifolds?

#tag("spinor-on-Lorentz-manifold") *Question*
#indent[
  massless-spinor-action
  $
    integral #d Vol(g) (ψ^† #i #spin-connection^◊ ψ)
  $
  massless-spinor-equation
  $
    #spin-connection^◊ ψ = 0
  $
  I haven't verified if this definition is conceptually reasonable. Compare with flat spacetime, try to prove or disprove it.
  - $#i #spin-connection^◊$ is self-adjoint 
  - Only $Re (ψ^† #spin-connection^◊ ψ)$ contributes to the variation of the action.
  - $#spin-connection^◊ #spin-connection = #spin-connection #spin-connection^◊ = 1/2 (∇^† ∇ + ∇ ∇^†)$ i.e. square-root-of spacetime Laplacian (closer to the Laplacian of tangent vector fields rather than scalar fields)

  massive-spinor-Lagrangian
  $
    integral #d Vol(g) vec(ϕ,ψ)^† (mat(#i #spin-connection^◊ ;,#i #spin-connection) + m mat(,𝟙;𝟙)) vec(ϕ,ψ)
  $
  massive-spinor-equation
  $
    (mat(#i #spin-connection^◊ ;,#i #spin-connection) + m mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0
  $
]
*Question* As long as it locally quotients back from $ℂ^2$ to $ℂℙ^1$, it can avoid the problem of continuous global single-valued lift to $ℂ^2$.

We know that the KG eq has a non-relativity approximation limit $lim_(c -> ∞)$. Does the massive-spinor construction have a non-relativity approximation limit $lim_(c -> ∞)$?

Static doesn't need a non-relativity approximation limit $lim_(c -> ∞)$, despite the presence of $c$, just like static electromagnetic field equations don't need a non-relativity approximation limit $lim_(c -> ∞)$. This is also true for the KG equation.

let $ϕ(t,x) = ϕ(x)$ static

static massless spinor eq
$
  σ^i ∂_i ϕ = 0
$
static massive spinor eq
$
  (mat(- #i σ^i ∂_i ;, #i σ^i ∂_i) + (m c) / (ℏ) mat(,𝟙;𝟙)) vec(ϕ,ψ) = 0
$
They can couple to static electromagnetic gauge potential $(V(x),A_(1,2,3)(x))$ or just static electric $V(x)$ or just static magnetic $A_(1,2,3)(x)$

In the presence of electromagnetic potential, the parity dual of massless particles might be different, for example, just static electric $σ^i ∂_i ϕ ± #i V ϕ = 0$ 

When electromagnetic potential = 0, the parity dual eq is the same.