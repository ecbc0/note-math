#import "../module/module.typ": *
#show: module

#let projective-cone = $"Cone-"ℙ$ // cone projective space

#tag("projective-cone") (Figure)

  - $"Cone"(p,q) := {x ∈ ℝ^(p,q) : g(x,x) = 0}$  
  - $#projective-cone (p,q) := {[x] ∈ ℝℙ^(p+q) : x ∈ "Cone"(p,q) }$

Can be equivalently understood as positive-cone & positive quotient 
$
  #projective-cone (p,q) ≃ {[λ x] : g(x,x) = 0 and λ > 0}
$
Since the metric is zero on the light cone, many analysis cannot be done. Also, the quotient of rays on the light cone corresponds to #link(<metric-cannot-distinguish-colinear-light-like>)[]

$SO(p,q)$ induce bijective of $#projective-cone (p,q)$

_Proof_ $#projective-cone ⊆ ℝℙ, SO ⊆ GL$, $GL$ induce bijective of set of 1d linear subspace

identity $𝟙 ∈ GL$ induce $𝟙 ∈ ℝℙ$

#tag("complex-struct-of-4d-projective-lightcone") Complex structure of 4d projective-lightcone (Figure)

  - Elliptic $#projective-cone (1,3) ≃ 𝕊^2 ≃ ℂℙ^1$
  - Hyperbolic $#projective-cone (1,3) ∖ #projective-cone (1,2) ≃ ℍ𝕪^2$ \ 
    The hyperbolic case has two separate branches. There is a singularity region $#projective-cone (1,2)$ between the future light cone section and the past light cone section. \
    Is there a $ℂℙ^1$ analogue? But $ℍ𝕪^2$ is a Euclidean manifold, which is not suitable for the $1,1$ signature of split complex numbers $ℂ_"split"$, and #link(<stereographic-projective-hyperbolic>)[stereographic projective hyperbolic projection] seems quite complicated \
    Since the light cone can intercept $𝕊^2$, it is reasonable to lose the symmetry of $ℍ𝕪^2 = ℚ^(1,2)(1)$ corresponding to $ℚ^(1,2)(-1)$
#let c_1 = ${λ vec(z,w) ∈ ℂ^2 : w != 0}$
#let c_2 = ${λ vec(z,w) ∈ ℂ^2 : z != 0}$
_Proof_ 
#indent[
  - $#projective-cone (1,3) ≃ 𝕊^2$ 
  #indent[
    Using $x_0 = 1$ to intercept the lightcone $"Cone"(1,3) = {x_0^2 - (x_1^2 + x_2^2 + x_3^2) = 0}$, we get $𝕊^2 = {x_1^2 + x_2^2 + x_3^2 = 1}$
    
    $1$ can be replaced with other non-zero real numbers, and the result is equivalent
  ]
  - $#projective-cone (1,3) ∖ #projective-cone (1,2) ≃ ℍ𝕪^2$
  #indent[
    Using $x_1 = 1$ to intercept the lightcone, we get space-like section $ℍ𝕪^2 = {x_0^2 - (x_2^2 + x_3^2) = 1}$. Divided into future and past two branches

    $"Cone"(1,2) = {x_0^2 - (x_2^2 + x_3^2) = 0}$'s projection cannot be intercepted by $x_1 = 1$
  ]
  - $𝕊^2 ≃ ℂℙ^1$
  #indent[
    #link(<stereographic-projection>)[Stereographic projection] transition-function is quadratic inversion
    $ map(ℝ^(n-1), ℝ^(n-1), ξ, (1 ± x_1)/(1 ∓ x_1) ξ = ξ/(|ξ|^2)) $ 
    $ℂℙ^1 = {λ vec(z,w) : vec(z,w) ∈ ℂ^2}$ and its coordinate
    
    coordinate 1 #c_1, coordinate map $vec(z,w) ⇝ z/w ∈ ℂ$ 
    
    coordinate 2 #c_2, coordinate map $vec(z,w) ⇝ w/z ∈ ℂ$

    transition-function $z/w ⇝ w/z = (z/w)^(-1)$, or $ξ ⇝ 1/ξ = (ξ^*)/(|ξ|^2)$, i.e. the multiplicative inverse of $ℂ$. $ℂℙ^1$ is a complex manifold
    
    vs $𝕊^2$ stereographic projection transition-function $ξ ⇝ 1/(ξ^*) = ξ/(|ξ|^2)$

    A more direct mapping between the coordinates of $ℂℙ^1 -> 𝕊^2$, cf. #link(<Hopf-bundle>)[] 
  ]
]
#tag("linear-fractional")  
#indent[
  The action of $GL(2,ℂ)$ on $ℂ^2$, $vec(z,w) ⇝ mat(a,b;c,d) vec(z,w) = vec(a z + b w , c z + d w)$, can be induced to $ℂℙ^1$ following the projectivization of $ℂ^2$, in coordinate 1 $#c_1$
  $ 
    ℂℙ^1 ,⟶, ℂℙ^1 \
    z/w ,⟿, (a z + b w)/(c z + d w) = (a z/w + b)/(c z/w + d) 
  $
  in coordinate 2 $#c_2$ 
  $ 
    ℂℙ^1 ,⟶, ℂℙ^1 \
    w/z ,⟿, (c z + d w)/(a z + b w) = (c + d w/z)/(a + b w/z) 
  $
]
$mat(d,c;b,a)$ has the same $det$

$𝕆$ needs to be handled separately, the composition of $Lin(2,𝕆)$ cannot be expressed as ordinary matrix multiplication

Scaling $λ ∈ ℂ ∖ 0 , λ mat(a,b;c,d) $ gives the same linear-fractional, so $GL(2,ℂ)$ can quotient to $SL(2,ℂ)$ or $SL(2,ℂ)/ℤ_2$

*Prop* (@ref-13, p.172--174)

- $SO(1,3)$ acts on $ℂℙ^1$ in coordinate can be expressed as $SL(2,ℂ)$ #link(<linear-fractional>)[] 

- $SL(2,ℂ)/ℤ_2 = SO(1,3)$ #tag("Lorentz-group-spinor-representation") 

_Proof_ 
#indent[
  in $ℝ^(1,3)$, 3 rotation $exp(θ_i #i)$, 3 boost $exph(φ_i #i-split)$, where $θ_i$ is rotation in $x_i$ direction, $φ_i$ is boost in $x_i$ direction

  #tag("rotation-boost-spinor-representation")

  3 rotation 3 boost acts on the $𝕊^2$ intercepted by $x_0 = 1$ of the projective light cone, calculate its representation in (one of) the stereographic projection coordinates $ℝ^2 ≃ ℂ$ 
  
  - rotation in $x_1$ 
  #indent[  - $e^(θ #i)$ act on $x_2 + x_3 #i ∈ ℂ ≃ ℝ^2$ 
    - $A = mat(e^(1/2 θ #i) ; , e^(- 1/2 θ #i))$ act on $ℂ^2$, generator $1/2 #i mat(1;,-1) ∈ su(2)$ (with eigenvalue $± 1/2 #i$ and eigenstate $vec(1,0),vec(0,1)$ as base of $ℂ^2$)
  ]
  - boost in $x_1$
  #indent[
    - $e^(φ #i-split)$ act on $x_0 + x_1 #i-split ∈ ℂ_"split" ≃ ℝ^(1,1)$ 
    - $A = mat(e^(1/2 φ) ; , e^(-1/2 φ))$ act on $ℂ^2$, generator $1/2 mat(1;,-1) ∈ #i su(2)$
  ]
  Because the $x_1$ direction was chosen to construct the stereographic projection, the cases in the $x_2, x_3$ directions will be more complicated (I have not done the calculation and verification below)

  - rotation in $x_2$  

    $mat(
      cos 1/2 θ, #i sin 1/2 θ;
      #i sin 1/2 θ, cos 1/2 θ
    )$
    act on $ℂ^2$, generator $1/2 #i mat(,1;1,) ∈ su(2)$

  - rotation in $x_3$ 

    $mat(
      cos 1/2 θ, - sin 1/2 θ;
      sin 1/2 θ, cos 1/2 θ
    )$
    act on $ℂ^2$, generator $1/2 mat(,-1;1,) ∈ su(2)$

  - boost in $x_2$ 

    $mat(
      cosh 1/2 θ, sinh 1/2 θ;
      sinh 1/2 θ, cosh 1/2 θ
    )$
    act on $ℂ^2$, generator $1/2 mat(,1;1,) ∈ #i su(2)$

  - boost in $x_3$ 

    $mat(
      cosh 1/2 θ, - #i sinh 1/2 θ;
      #i sinh 1/2 θ, cosh 1/2 θ
    )$
    act on $ℂ^2$, generator $1/2 #i mat(,-1;1,) ∈ #i su(2)$

  It can be prove that $sl(2,ℂ) = su(2) + #i su(2)$, It can be prove that $sl(2,ℂ) ≃ so(1,3)$

  Comparing $exp$ of $sl(2,ℂ)$ and $exp$ of $so(1,3)$, at least locally isomorphic $SL(2,ℂ) <-> SO(1,3)$ 
  
  - for $mat(a, b; c, -a) ∈ sl(2,ℂ)$ 
  
    $ exp mat(a, b; c, -a) = cosh ω 𝟙 + (sinh ω)/ω mat(a, b; c, -a) $ 
  
    where $ω^2 = - det mat(a, b; c, -a)$ 

  - $so(1,3)$ have form $mat(0,b^⊺;b,r)$ where $r ∈ so(3), b ∈ ℝ^3$ (@ref-2, Vol.1, p.180)

  - from $SO(1,3)$ to $SL(2,ℂ)$. Solve it from the following $SL(2,ℂ)$ to $SO(1,3)$. Or use $SO(1,3)$ #link(<polar-decomposition-of-Lorentz-group>)[Polar decomposition] to rotation boost + #link(<Euler-angle-Lorentz-group>)[Euler angle] 

  - from $A = mat(a,b;c,d) in SL(2,ℂ)$ to $Λ in SO(1,3)$, where $a d - b c = 1$ 
  #indent[
    Use #link(<spacetime-momentum-spinor-representation>)[] to directly calculate $A #spin($p$) A^† in ℝ^(1,3)$  
    $ 
      Λ^ μ _ ν = 1/2 tr (σ_ μ A σ_ ν A^†) = 1/2 tr (A σ_ ν A^† σ_  μ) = \
      mat( delim: #none ,
        |a|^2 + |b|^2 + |c|^2 + |d|^2, 2 Re(a b^* + c d^*), 2 Im(a b^* + c d^*), |a|^2 - |b|^2 + |c^2| - |d|^2;

        2 Re(a c^* + b d^*), 2 Re(a d^* + b c^*), 2 Im(a d^* + b c^*), 2 Re(a c^* - b d^*);

        - 2 Im(a c^* + b d^*), - 2 Im(a d^* + b c^*), 2 Re(a d^* - b c^*), - 2 Im(a c^* - b d^*);
        
        |a|^2 + |b|^2 - |c|^2 - |d|^2, 2 Re(a b^* - c d^*), 2 Im(a b^* - c d^*), |a|^2 - |b|^2 - |c|^2 + |d|^2
      ) 
    $
  ]
]
$ℂ^2,ℂℙ^1$ use Euclidean type topology, because $𝕊^2$ metric is inherited from space-like ${x_0 = 1} ≃ ℝ^3 ⊆ ℝ^(1,3)$ inherited from $ℝ^(1,3)$ metric

$SO(1,3)$ is the conformal transformation group of $ℂℙ^1 ≃ 𝕊^2$, represented as linear-fractional in stereographic projection coordinates

To calculate the conformal transformation factor of the metric, use $ℂℙ^1$ coordinate and 3 rotation, 3 boost ...

#tag("isotropy-on-projective-lightcone") *Prop* $SL(2,ℂ)$ acts on projective-lightcone $ℂℙ^1$, #link(<isotropy>)[] is similar to $GL(1,ℂ) ⋊ ℂ$
#indent[
  $GL(2,ℂ),SL(2,ℂ)$ are #link(<action-surjective>)[surjective action], orbit number $1$, so calculate isotropy #link(<isotropy-in-same-orbit-is-isom>)[only need to consider] one point

  Use the points $z = 1, w = 0 in ℂ^2$, in coordinates #c_2, $w/z = 0$, corresponding to the point on the light cone projection $(1,1,0,0) ∈ ℝ^(1,3)$
  
  $mat(a,b;c,d)$ is isotropy $(c z + d w)/(a z + b w) = 0$ ==> $c = 0$

  So Isotropy
  $
    mat(a, b;, a^(-1))
  $
  is similar to $GL(1,ℂ) ⋊ ℂ$ because
  $
    mat(a, 0;, a^(-1)) mat(1,b;,1) mat(a, 0;, a^(-1))^† &= mat(1,a^2 b;,1) \

    mat(1,b;,1) mat(1,b';,1) &= mat(1,b + b';,1)
  $
  the group multiplication is 
  $
    mat(a, b;, a^(-1)) mat(a', b';, a'^(-1)) = mat(a a', a b' + a'^(-1) b ;, (a a')^(-1))) 
  $
  use the correspondence $a -> a^(1/2), b -> b a^(-1/2)$ i.e. $(a,b) -> mat(a^(1/2), b a^(-1/2);, a^(-1/2))$ will give the usual semi-direct product $#U (1) ⋊ ℂ$, i.e. $(a,b)(a',b') = (a' a, b' + b a')$
]