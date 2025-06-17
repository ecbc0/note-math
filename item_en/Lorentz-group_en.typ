#import "../module/module.typ": *
#show: module

#tag("polar-decomposition-of-Lorentz-group") polar decomposition $SO(1,3)$ to rotation and boost (@ref-2, Vol.1, p.165)
#indent[
  let $A = mat(τ,v^⊺;u,a) ∈ SO(1,3)$ where $τ in ℝ, u,v ∈ ℝ^(1,3), a in "Matrix"(3,ℝ)$
  $
    A 
    &= mat(1;, R) mat((1 + v^⊺ v)^(1/2), v^⊺; v, (𝟙 + v v^⊺)^(1/2)) 
  $
  (Using $A in SO(1,3) ==> A^⊺ η A = η = A η A^⊺$ and polar decomposition of positive definite symmetric matrix) 
  
  where 
  $
    a &= R (a^⊺ a)^(1/2) & \
    a^⊺ a &= 𝟙 + v v^⊺ \
    τ^2 &= 1 + v^⊺ v = 1 + u^⊺ u \  
    a v &= τ u 
  $
  $B(v) = mat((1 + v^⊺ v)^(1/2), v^⊺; v, (𝟙 + v v^⊺)^(1/2))$ is boost, map $(1,0)$ to $(τ,v)$
  
  $τ = (1 + v^⊺ v)^(1/2)$, $𝟙 + v v^⊺ = a^⊺ a$ have diagonal form $(1 ,…, 1, e^α, e^(- α))$ where $α = cosh^(-1) τ$

  $B(v) = mat((1 + v^⊺ v)^(1/2), v^⊺; v, (𝟙 + v v^⊺)^(1/2)) = exp mat(,b^⊺;b)$ with $(sinh |b|)/(|b|) b = v, τ = cosh b$
]
#tag("Euler-angle-Lorentz-group") *Question* 

- rotation
#indent[
  Use the rotation of the $x_1,x_2$ axis to generate $SO(3)$

  in $SO(3)$, $θ ∈ [0,π], θ_1,θ_2 ∈ [0,2 π]$
  $
    &quad R(θ,θ_1,θ_2) \
    &= mat(
      1;
      , cos θ_1, - sin θ_1;
      , sin θ_1, cos θ_1
    )
    ⋅ mat(
      cos θ,, - sin θ;
      , 1;
      sin θ,, cos θ
    )
    ⋅ mat(
      1;
      , cos θ_2, - sin θ_2;
      , sin θ_2, cos θ_2
    )
  $
  in $SU(2)$
  $
    R(θ,θ_1,θ_2) 
    
    &= mat(e^(1/2 θ_1 #i) ; , e^(- 1/2 θ_1 #i)) 
    ⋅ mat(
    cos 1/2 θ, #i sin 1/2 θ;
    #i sin 1/2 θ, cos 1/2 θ
    ) 
    ⋅ mat(e^(1/2 θ_2 #i) ; , e^(- 1/2 θ_2 #i)) \
    
    &= mat(
      cos 1/2 θ ⋅ e^(1/2 (θ_1 + θ_2) #i), #i sin 1/2 θ ⋅ e^(1/2 (θ_1 - θ_2) #i);
      #i sin 1/2 θ ⋅ e^(- 1/2 (θ_1 - θ_2) #i), cos 1/2 θ ⋅ e^(- 1/2 (θ_1 + θ_2) #i)
    )
  $
]
- boost 
#indent[
  Use the boost of the $x_1,x_2$ axis

  in $SO(1,3)$
  $
    &quad B(φ,φ_1,φ_2) \
    &= mat(
      cosh φ_1, sinh φ_1;
      sinh φ_1, cosh φ_1;
      ,, 1;
      ,,, 1
    ) ⋅ mat(
      cosh φ,, sinh φ;
      , 1;
      sinh φ,, cosh φ;
      ,,, 1
    )
    ⋅ mat(
      cosh φ_2, sinh φ_2;
      sinh φ_2, cosh φ_2;
      ,, 1;
      ,,, 1
    )
  $
  in $SL(2,ℂ)$
  $
    B(φ,φ_1,φ_2) 
    
    &= mat(e^(1/2 φ_1) ; , e^(- 1/2 φ_1)) 
    ⋅ mat(
    cosh 1/2 φ, sinh 1/2 φ;
    sinh 1/2 φ, cosh 1/2 φ
    ) 
    ⋅ mat(e^(1/2 φ_2) ; , e^(- 1/2 φ_2)) \
    
    &= mat(
      cosh 1/2 φ ⋅ e^(1/2 (φ_1 + φ_2)), sinh 1/2 φ ⋅ e^(1/2 (φ_1 - φ_2));
      sinh 1/2 φ ⋅ e^(- 1/2 (φ_1 - φ_2)), cosh 1/2 φ ⋅ e^(- 1/2 (φ_1 + φ_2))
    )
  $
]

#tag("Lorentz-group-Lie-bracket") $so(1,3)$ with boost and rotation decomposition $b + r = (φ_1 b_1 + φ_2 b_2 + φ_3 b_3) + (θ_1 r_1 + θ_2 r_2 + θ_3 r_3)$ and Lie-bracket
#indent[
  $
    b × b &= - r \
    b × r &= b \
    r × b &= b \
    r × r &= r \
    b ⋅ r &= r ⋅ b
  $ 
  Where $×$ mimics $ℝ^3$ cross product. *Example* $b × b = vec([b_2,b_3],[b_3,b_1],[b_1,b_2])$
  
  Where $⋅$ mimics $ℝ^3$ dot product. *Example* $b ⋅ r =  r ⋅ b$ ==> $b_1 r_1 = r_1 b_1$ or $[b_1, r_1] = 0$

  Written to mimic $ℂ^3$ cross product
  $
    1/2 (r + b #i) × 1/2 (r + b #i) &= 1/2 #i (r + b #i) \
    (r + b #i) × (r - b #i) &= 0 \
    (r + b #i) ⋅ (r - b #i) &= r^2 + b^2
  $
]

$so(1,3)$ have form $mat(0,b^⊺;b,r)$ where $r ∈ so(3), b ∈ ℝ^3$ (@ref-2, Vol.1, p.180)

#tag("Lorentz-group-orbit-isotropy")

$SO(1,3)$ or $SL(2,ℂ)$ act on $ℝ^(1,3)$
  
  #table(
  columns: 2,
  [orbit type],[isotropy-group type],
  [$|x|^2 = 1$],[$SO(3)$ or $SU(2,ℂ)$],
  [$|x|^2 = -1$],[$SO(1,2)$ or $SL(2,ℝ)$],
  [$|x|^2 = 0$],[$SO(2) ⋊ ℝ^2$],
  [${0}$],[$SO(1,3)$ or $SL(2,ℂ)$]
  )
  
#let p = spin($p$)

#tag("isotropy-on-lightcone") *Prop* $SO(1,3)$ acting on lightcone is similar to $SO(2) ⋊ ℝ^2$ (exactly the $ℝ^2$ Euclidean affine group)

_Proof_ Using #link(<spacetime-momentum-aciton-spinor-representation>)[spinor technology]
#indent[
  *Prop* $SL(2,ℂ)$ acting on lightcone (not projective-lightcone), #link(<isotropy>)[] is similar to $#U (1) ⋊ ℂ$

  $SL(2,ℂ)$ is #link(<action-surjective>)[surjective action], orbit number $1$, so calculate isotropy #link(<isotropy-in-same-orbit-is-isom>)[only need to consider] one point

  - $c = 0, |a|^2 = 1$ is light cone isotropy
  - $c = 0, |a|^2 in ℝ$ is a scaling of $vec(1,1,0,0)$
  - $SU(2)$ is a spatial rotation of $vec(1,0,0) in ℝ^3$. It can give the entire light cone cross-section $𝕊^2$
  
  ==> isotropy $A = mat(e^θ, b;, e^(- θ))$ where $θ ∈ Im(ℂ)$

  Similar to the calculation of #link(<isotropy-on-projective-lightcone>)[] , here it will be similar to $#U (1) ⋊ ℂ$
]

#tag("isotropy-on-lightcone-intuition") Intuition of the isotropy-group of orbit lightcone. According to
#indent[
  $
    mat(e^(1/2 θ #i), 0;, e^(- 1/2 θ #i)) mat(1,b;,1) mat(e^(1/2 θ #i), 0;, e^(- 1/2 θ #i)) = mat(e^(θ #i), b;, e^(- θ #i)) 
  $
  Discuss the two situations separately

  - $mat(e^(1/2 θ #i), 0;, e^(- 1/2 θ #i))$. is rotation in $p_1$

  - $mat(1,b;,1)$
  #indent[
    let $so(1,3)$ with boost and rotation decomposition $b + r = (φ_1 b_1 + φ_2 b_2 + φ_3 b_3) + (θ_1 r_1 + θ_2 r_2 + θ_3 r_3)$ (not the $b$ in $mat(e^(θ #i), b; , e^(- θ #i))$)
    
    Linear isomorphism to a new basis
    $
      b_1 , r_1 \
      b_2 + r_3 ,
      b_3 + r_2 \
      b_2 - r_3 ,
      b_3 - r_2 
    $
    where 

    - $r_3$ is rotation in $p_1,p_2$
    - $b_2$ is boost in $p_0,p_2$
    - $b_2 - r_3$ and $b_3 - r_2$ are analogous to lightcone coordinate $p_0 ± p_1$, keeping $vec(1,1,0,0)$

    Or written as
    $
      b_1, r_1 \
      M_+ \
      M_-
    $
    where $b_1, M_+$ will change $vec(1,1,0,0)$, $r_1,M_-$ remains fixed
    
    Two-dimensional Lie algebra $M_-$ is commutative, corresponding to $b ∈ ℂ$ or $mat(1,b;,1)$ in $#U (1) ⋊ ℂ$
  ]
  On the light cone (figure)
  - Generally $b$ generates a hyperbolic orbit 
  - Generally $r$ generates an elliptical orbit
  - $M_+$ can be generalized to general lightcone combinations e.g. $p_0 ± p_2$, which will generate parabolic orbits 
  
  Specific calculation of the action of $mat(1,b;,1)$
  #indent[
    let $z = p_0 + p_1, z^*' = p_0 - p_1, w = p_2 + p_3 #i, w^* = p_2 - p_3 #i$. metric will be $|z|'^2 + |w|^2 = z z^*' + w w^*$
    $
      &quad mat(1,b;,1) mat(z,w;w^*,z^*') mat(1,;b^*,1) \

      &= mat(z + |b|^2 z^*' + 2 Re(b w), w + b z^*'; w^* + b^* z^*' , z^*')
    $
    in $ℝ^(1,3)$
    $
      vec(
        p_0 + 1/2 |b|^2 (p_0 - p_1) + Re(b (p_2 + p_3 #i)),
        p_1 + 1/2 |b|^2 (p_0 - p_1) + Re(b (p_2 + p_3 #i)),
        p_2 + Re(b (p_0 - p_1)),
        p_3 + Im(b (p_0 - p_1))
      )
    $
  ]
]