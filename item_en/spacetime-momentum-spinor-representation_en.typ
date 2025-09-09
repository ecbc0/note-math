#import "../module/module.typ": *
#show: module

#let projective-cone = $"Cone-"ℙ$
#let p = spin($p$)

*Prop* Generally, for $A ∈ SL(2,ℂ)$, $A,A^*$ are not equivalent in the sense of changing coordinates: There does not exist $B ∈ GL(2,ℂ)$, $A^* = B ⋅ A ⋅ B^(-1)$
#let j = c-bf("j", rgb("#006dea"))

_Proof_ 
#indent[
  Eigenvalues remain unchanged under coordinate transformation 

  Generally, $A,A^*$ have different eigenvalues
  
  *Example* $A = mat(2 #i ; , - 1/2 #i) , A^* = mat(-2 #i ; , 1/2 #i) $
]
*Prop* $A,(A^⊺)^(-1)$ are equivalent, $A^*,A^†$ are equivalent
#indent[
  use $#j = mat(,-1;1) , #j^2 = - 𝟙 ==> #j^(-1) = - #j$ 

  $ #j ⋅ A ⋅ #j^(-1) = (A^⊺)^(-1) $

  Its complex conjugate #tag("conjugate-representation")

  $ #j ⋅ A^* ⋅ #j^(-1) = (A^†)^(-1) $

  The above only works for $dim = 2$
]
Second-order tensor, with one undergoing complex conjugation
$
  dmat( delim: #none ,
    (ℂ^2, ℂ^2) , ⟶, ⨂^(* 2) ℂ^2 ;
    (v,w) ,	⟿ , ⨂^(* 2) (v,w) , = , v ⊗ w^*
  )
$
can be decompose to

#tag("Hermitian-tensor") 
$
  ⨀^(* 2) (v,w) = 1/2 (v ⊗ w^* + w ⊗ v^*)
$
#tag("anti-Hermitian-tensor") 
$
  ⋀^(* 2) (v,w) = 1/2 (v ⊗ w^* - w ⊗ v^*)
$
The conjugate modification in the other direction $v^* ⊗ w$ is similar

#tag("Hermitian-tensor-induced-linear-map") The induced action of $A ∈ GL(2,ℂ)$ on $⨂^(* 2) ℂ^2$ :=

$ A^(⊗ * 2) : ⨂^(* 2) (v,w) ⇝ ⨂^(* 2) (A v,A w) $

$(A v)^* = A^* v^*$

$⨂^(* 2) (λ v, λ w) = |λ|^2 ⨂^(* 2) (v,w)$

#tag("matrix-description-of-Hermitian-tensor") 
#indent[
  Use tensor base
  $
    v ⊗ w^* 
    = (sum_i v_i e_i) ⊗ (sum_j w_j^* e_j) 
    = sum_(i,j) v_i w_j^* (e_i ⊗ e_j)
  $
  Corresponding to the matrix representation 
  $
    mat(v_1 w_1^* , v_1 w_2^* ; v_2 w_1^* , v_2 w_2^*) 
    = mat(v_1;v_2) mat(w_1^*,w_2^*) 
    = v ⋅ w^†  
  $
  Or written in Dirac notation
  $
    ket(v) bra(w)
  $
  The version without complex conjugation $v ⊗ w <--> v ⋅ w^⊺$

  notation-overload: The space of matrix representation is also denoted as $⨂^(* 2) (v,w)$

  Hermitian matrix

  $ 
    ⨀^(* 2) (v,w) &= 1/2 (v w^† + w v^†) = Re(v ⋅ w^†) \
    ⨀^(* 2) (v,w) &=: Re(⨂^(* 2) (v,w))
  $ 

  anti-Hermitian matrix

  $ 
    ⋀^(* 2) (v,w) &= 1/2 (v w^† - w v^†) = Im(v ⋅ w^†) \
    ⋀^(* 2) (v,w) &=: Im(⨂^(* 2) (v,w))
  $ 
  
  For $ℍ,𝕆$, since $dim Im(ℍ), dim Im(𝕆) > 1$, the dimension of anti-Hermitian is higher than Hermitian
]
#tag("Hermitian-tensor-induced-linear-map-matrix") The matrix representation of $A^(⊗ * 2)$
#indent[
  $ v ⋅ w^† ⇝ (A v) ⋅ (A w)^† = A (v ⋅ w^†) A^† $

  $A^(⊗ * 2)$ preserves the decomposition into Hermitian and anti-Hermitian
   
  $ ⨂^(* 2) ℂ^2 = (⨀^(* 2) ℂ^2) ⊕ (⋀^(* 2) ℂ^2) $ 

  For general $P in ⨂^(* 2) ℂ^2$, there is also

  $ A^(⊗ * 2) : P ⇝ A P A^† $
]
The "matrix" representation of $𝕆$ needs to be handled separately, the composition of $Lin(2,𝕆)$ cannot be represented as usual matrix multiplication. It can still make $A P A^†$ well-defined

#let spacetime-momentum-spinor = $mat(p_0 + p_1 , p_2 + p_3 #i ; p_2 - p_3 #i , p_0 - p_1)$
#let spacetime-momentum = $vec(p_0,p_1,p_2,p_3)$

#tag("spacetime-momentum-spinor-representation") 
#indent[
  ($p$ represents "momentum" or "velocity" or tangent vector)
  
  Bijection 
  $
    dmat( delim: #none ,
      ⨀^(* 2) ℂ^2	,⟶,	ℝ^(1,3) ;
      #spacetime-momentum-spinor ,⟿, #spacetime-momentum
    )
  $
  metric
  $ 
    det #spacetime-momentum-spinor 
    &= (p_0^2 - p_1^2) - (p_2^2 + p_3^2) \
    &= |p|^2
  $
  let $#p := #spacetime-momentum-spinor$ and $A ∈ SL(2,ℂ)$, action $#p ⇝ A #p A^†$
  
  $ det A^(⊙ * 2)(#p) = det A #p A^† = det #p $ 
]
Because multiplication is non-commutative, the general definition of $det$ for $ℍ,𝕆$ is problematic. However, the definition of $det #p$ does not require general multiplicative commutativity. At this time, $SL(2,𝕂)$ is defined as $A : det A #p A^† = det #p$. This is not a good notation because it may not be generalized to $dim > 3$ 

$SL(2,ℍ),SL(2,𝕆)$ are also the spinor lifts of $SO(1,5),SO(1,9)$. Similarly, $SU(2,𝕂)$ is also the spinor lift of $SO(5),SO(9)$

*Example* #tag("Pauli-matrix") *alias* #tag("sigma-matrix")

for $#spacetime-momentum-spinor$

- time-like $p_0 = 1 <--> mat(1 ; , 1) =: σ_0$
- light-like $p_0 = p_1 = 1 <--> mat(2 ; , 0) = σ_0 + σ_1$
- space-like 
#indent[
  $p_1 = 1 <--> mat(1 ; , -1) =: σ_1$
  
  $p_2 = 1 <--> mat( , 1 ; 1) =: σ_2$

  $p_3 = 1 <--> mat( , #i ; -#i) =: σ_3$ (when generalized to $ℍ,𝕆$, it corresponds to all imaginary elements)
]
- $#p = sum p_(μ) σ_(μ)$

- $det σ^0 = 1$
- $det σ^i = -1, i = 1,2,3$

- $σ^0,σ^1,σ^2,σ^3$ is orthonormal base

- $p_0 + p_1 #i-split ∈ ℂ_"split" ≃ ℝ^(1,1)$
- $p_2 + p_3 #i ∈ ℂ ≃ ℝ^2$ 

*Question* What is the cognitive motivation for these constructions of $⨀^(* 2) ℂ^2, #spacetime-momentum-spinor, det #p = |p|^2$? 

- $SO(1,3) ≃ SL(2,ℂ)/ℤ_2$ #link(<Lorentz-group-spinor-representation>)[acts on] $ℂℙ^1$ lifts to $SL(2,ℂ)$ act on $ℂ^2$
#indent[
  - $A$ action, denoted as $(1/2,0)$ 
  - $A^*$ action, denoted as $(0,1/2)$

  #tag("square-root-of-Lorentz-group") 
  #indent[
    $SO(1,3)$ act on $ℝ^(1,3)$ is some kind of "square" of $A,A^*$, i.e. $(1/2,0) ⊗ (0,1/2)$ or $(1/2,1/2)$ represents the "real part" or "symmetric part" 
    
    $ Re(⨂^(* 2) (v,w)) ⨀^(* 2) ℂ^2	 <-->	ℝ^(1,3) $
    
    Thus $A,A^*$ are some kind of "square root" of $SO(1,3)$ act on $ℝ^(1,3)$
  ]
]
#tag("square-root-of-spacetime-metric-1") (inspired by @ref-14, ch.11)
#indent[
  $det ∈ ⋀^2 (ℂ^2 -> ℂ), det(v_1,v_2) = w^⊺ #j v, #j = mat(,-1;1)$

  $det^(⊗ 2) (v_1 ⊗ w_1 , v_2 ⊗ w_2) := det(v_1,v_2) det(w_1,w_2)$. Note that it is not alternating for $v_1 ⊗ w_1 , v_2 ⊗ w_2$ 
  
  metric $g ∈ (⨀^2 ℝ^(1,3) -> ℝ)$ with $ℝ^(1,3) ≃ ⨀^(* 2) ℂ^2$ is some kind of "square" of $det$, i.e. $1/2 g ≃ det^(⊙ * 2)$ 
  $
    &quad det^(⊙ * 2)(⨀^(* 2)(v_1,w_1),⨀^(* 2)(v_2,w_2)) \

    &= 1/2^4 (det(v_1,v_2) det(w_1^*,w_2^*) + det(w_1,v_2) det(v_1^*,w_2^*) \
    &quad + det(v_1,w_2) det(w_1^*,v_2^*) + det(w_1,w_2) det(v_1^*,v_2^*))
  $
  quadratic-form is
  $
    det^(⊙ * 2)(⨀^(* 2)(v,w),⨀^(* 2)(v,w)) = - 1/2^3 |det(v,w)|^2
  $
  cf. #link(<Pauli-matrix>)[] 
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
  The calculation shows that $1/2 g = det^(⊙ * 2)$ is correct for $σ^(1,2,3)$. For $σ^0$, use sum $⨀^(* 2)(vec(1,0),vec(1,0)) + ⨀^(* 2)(vec(0,1),vec(0,1))$
  $
    0 &= det^(⊙ * 2)(⨀^(* 2)(vec(1,0),vec(1,0)),⨀^(* 2)(vec(1,0),vec(1,0))) \

    0 &= det^(⊙ * 2)(⨀^(* 2)(vec(0,1),vec(0,1)),⨀^(* 2)(vec(0,1),vec(0,1))) \
  
   1/4 &= det^(⊙ * 2)(⨀^(* 2)(vec(1,0),vec(1,0)),⨀^(* 2)(vec(0,1),vec(0,1))) $

  orthogonal of sigma matrix can also be obtained through calculation, thus $det^(⊙ * 2) = 1/2 g$

  Thus $det$ is some kind of "square root" of metric $g$
]
*Question* Still no direct intuitive calculation equation $det^(⊙ * 2)(sum p_μ σ_μ,sum p_μ σ_μ) = 1/2 det(sum p_μ σ_μ)$ ...

#tag("spacetime-momentum-aciton-spinor-representation") 
#indent[
  let $f : SL(2,ℂ),⨀^(* 2) ℂ^2 ↠ SO(1,3),ℝ^(1,3)$. 
  
  where $f(A)$ is #link(<Lorentz-group-spinor-representation>)[]
  
  $f(#p) = p$ is #link(<spacetime-momentum-spinor-representation>)[] 

  Then there is a homomorphism 
  $ 
    & f( A^(⊙ * 2) #p ) \ 
    = & f(A) f( #p ) \
    = & f(A) p
  $
]
_Proof_ Use the $SL(2,ℂ) ↠ SO(1,3)$ correspondence of 3 rotations, 3 boosts


#tag("spinor-representation-adjoint") $f(A^†) = f(A)^⊺$ 

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
*Prop* Use #link(<spacetime-momentum-spinor-representation>)[] for $v ⋅ w^†$, $v = w$ + $ℂ$ projection $λ v$ gives projective-lightcone
$
  (exists v ∈ ℂ^2 ∖ 0 , #p = v v^† ) <==> (p_0 > 0, det (#p) = 0)
$
Therefore the following are equivalent 
- $SL(2,ℂ)$ act on $ℂℙ^1$ via $ℂ^2$ 
- $SL(2,ℂ)$ act on $#projective-cone (1,3)$ via $⨀^(* 2) ℂ^2 ≃ ℝ^(1,3)$ 

_Proof_ 
#indent[
  - $==>$
  #indent[
    $v v^† = mat(v_1;v_2) mat(v_1^*,v_2^*) 
    = mat(v_1 v_1^* , v_1 v_2^* ; v_2 v_1^* , v_2 v_2^*)$ 
    with $det(v v^†) = v_1 v_1^* ⋅ v_2 v_2^* - v_1 v_2^* ⋅ v_2 v_1^* = 0$ (requires $ℂ$ associative law of multiplication?)

    $p_0 = 1/2 tr(v v^†) = 1/2 |v|^2 > 0$
  ]
  - $<==$
  #indent[
    Given $#p = #spacetime-momentum-spinor ≃ #spacetime-momentum$

    in $ℂ$, $v_i = |v_i| e^(θ_i #i)$

    let \
    $|v_1|^2 = p_0 + p_1 $ \
    $|v_2|^2 = p_0 - p_1$

    Also need to calculate $θ_1,θ_2$

    In order to get $p_2 + p_3 #i = v_1 v_2^*$, compare norm, phase
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
Generally $⨀^(* 2) (v,w) = mat(
  Re(v_1 w_1^*) , 1/2 (v_1 w_2^* + w_1 v_2^*) ; 
  (...)^* , Re(v_2 w_2^*)
)$. Compare #spacetime-momentum-spinor to get
$
  p_0 = 1/2 Re(v_1 w_1^* + v_2 w_2^*) \
  p_1 = 1/2 Re(v_1 w_1^* - v_2 w_2^*) \
  p_2 = 1/2 Re(v_1 w_2^* + v_2 w_1^*) \
  p_3 = 1/2 Im(v_1 w_2^* + v_2 w_1^*)
$
#tag("parity") 
#indent[  
  parity corresponds to $(1/2,0)$ vs $(0,1/2)$ representation, or $A$ vs $A^*,(A^†)^(-1)$, cf. #link(<conjugate-representation>)[]

  let $P ∈ ⨀^(* 2) ℂ^2$. $P^* = P^⊺$
    
  $ P^◊ := #j ⋅ P^* ⋅ #j^(-1) " with " #j = mat(,-1;1) $ 

  parity corresponds to space inversion
  
  $#spacetime-momentum-spinor ^◊
  = mat(p_0 - p_1 , -(p_2 + p_3 #i) ; -(p_2 - p_3 #i) , p_0 + p_1) 
  <--> vec(p_0,-p_2,-p_3,-p_1)$

  $- P^◊$ corresponds to time inversion
]
parity corresponds to trace or determinant reversal

#tag("determinant-reversal") 
#indent[  
  let $P = mat(a,b;c,d) ∈ "Matrix"(2,ℂ)$

  determinant reversal $P^◊ := mat(d,-b;-c,a)$ with
  
  $P P^◊ = P^◊ P = det(P) ⋅ 𝟙$

  $det P^◊ = det P$

  $P ∈ GL ==> P^◊ = (det P) P^(-1)$
]
#tag("trace-reversal") := $P + P^◊ = tr(P) ⋅ 𝟙$. or $P^◊ = mat(d,-b;-c,a)$. $tr P^◊ = tr P$

$dim = 2$ ==> determinant reversal is the same as trace reversal

#tag("square-root-of-spacetime-metric-2") a "square root" of $1,3$ metric 
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
  Also have $g(p,p') = 1/2 Re(tr(#p^◊ #p')) = 1/2 Re(tr(#p #p'^◊))$

  for #link(<Pauli-matrix>)[]

  - $σ_μ^◊ σ_ν + σ_ν^◊ σ_μ = 2 g_(μ ν) 𝟙$ or ${σ_(μ),σ_(ν)}_(◊) = 2 g_(μ ν) 𝟙$

  - $σ_0^◊ = σ_0$, $σ_i^◊ = - σ_i$ for $i = 1,2,3$ (because parity is spatial inversion)

  A better explanation of this "square root"? 

  Direct matrix multiplication without parity will give the square root of the $ℝ^4$ metric, with $σ_μ^2 = 𝟙$, $σ_μ^(-1) = σ_μ$
]
#tag("square-root-of-Lorentz-Lie-algebra") "square root" of spacetime Lie-algebra
#indent[
  $ [1/2 σ_(μ), 1/2 σ_(ν)]_(◊) := 1/4(σ_(μ)^◊ σ_(ν) - σ_(ν)^◊ σ_(μ)) ≃ L_(μ ν) $ 

  where $L_(μ ν)$ is #link(<rotation-boost-spinor-representation>)[Lorentz-Lie-algebra]

  _Proof_
  
  - $[1/2 σ_(i), 1/2 σ_(i')]_(◊) = 1/2 #i σ_i'' ≃ L_(i i')$ is δ rotation in $p_i''$ where $i,i',i''$ is any cyclic $123$ 
  
  - $[1/2 σ_(0), 1/2 σ_(i)]_(◊) = 1/2 σ_i ≃ L_(0i)$ where $i = 1,2,3$

  *Question* A better explanation? Representation?
]
#tag("property-of-parity") 

  - $forall a,b ∈ ℂ, (a A + b B)^◊ = a A^◊ + b B^◊$

  - $(A B)^◊ = B^◊ A^◊$

  - $𝟙^◊ = 𝟙$

  - $(A^†)^◊ = (A^◊)^†$
  
  - $◊ : ⨀^(* 2) ℂ^2 -> "self"$ i.e. parity preserve Hermitian

  - $A ∈ GL(2,ℂ) ==> A^◊ = det(A) ⋅ A^(-1)$
  
  - $A ∈ SL(2,ℂ) ==> A^◊ = A^(-1), A A^◊ = 𝟙, (A^◊)^◊ = A$

#tag("parity-Euclidean-invariant") parity commutes with spatial action $SU(2)$. In $ℝ^3$, it manifests as $- 𝟙$ and commutes with $SO(3)$. let $p ∈ ℝ^3, A ∈ SU(2)$

  $A ∈ SU(2) ==> A^† = A^(-1) = A^◊ ==> (A^(⊙ * 2)(#p))^◊ = A^(⊙ * 2)(#p^◊)$

Generally, they do not commute, for example, $𝟙_(ℝ^3)$ certainly does not commute with the time-changing part in $SO(1,3)$
#indent[
  let $#p = σ_0 = mat(1;,1) = 𝟙, A = mat(e^(φ/2);,e^(-φ/2)), A^† = A$

  $#p^◊ = #p$

  $A #p A^† = mat(e^(φ);,e^(-φ))$ or $cases(p_0 = cosh φ, p_1 = sinh φ, p_2 = p_3 = 0)$

  $(A #p A^†)^◊ = mat(e^(-φ);,e^(φ))$ or $cases(p_0 = cosh φ = cosh(-φ), p_1 = -sinh φ = sinh (-φ))$ 

  $(A #p A^†)^◊ != A #p A^† = A #p^◊ A^†$
]
#tag("parity-reverse-boost") The effect of parity on the Lie-algebra is that it does not change δ rotation, but multiplies δ boost by $-1$

#tag("Euclidean-spinor")
#indent[  replace lightcone $#projective-cone (1,3)$ with just sphere $𝕊^2 = ℂℙ^1$ acted by $SO(3)$ and $SU(2)$

  replace $SL(2,ℂ) ↠ SO(1,3)$ with $SU(2) ↠ SO(3)$, $mat(a,b;-b^*,a^*) ∈ SU(2)$ with $|a|^2 + |b|^2 = 1$

  use trace-free Hermitian $mat(p_3 , p_1 + p_2 #i ; p_1 - p_2 #i , -p_3) <--> vec(p_1,p_2,p_3)$
]