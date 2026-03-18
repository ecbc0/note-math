#import "../module/module.typ": *
#show: module

#let p = spin($p$)

recall the coefficient of Dirac plane wave #link(<squrae-root-of-spacetime-momentum-spinor-representation>)[] 

$ℂ^2 ⊕ ℂ^2$ positive definite inner product

$
  vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ)^† vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ) &= ξ^† (#p^◊ + #p) ξ \
  &= (2 p_0) |ξ|^2 \
  &= (tr #p) |ξ|^2
$ 

Hermitian symmetric tensor
$
  & 1/2 ( 
    vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ) vec(#p^(◊ 1/2) η, #p^(1/2) η)^† 
    
    + vec(#p^(◊ 1/2) η, #p^(1/2) η) vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ)^† 
  ) \
  =& 1/2 mat(
    #p^(◊ 1/2) (ξ η^† + η ξ^†) #p^(◊ 1/2) , #p^(◊ 1/2) (ξ η^† + η ξ^†) #p^(1/2) ;
    #p^(1/2) (ξ η^† + η ξ^†) #p^(◊ 1/2) , #p^(1/2) (ξ η^† + η ξ^†) #p^(1/2)
  )
$
It doesn't look special, but if we consider the sum of the results for $ξ = η = e_1 = vec(1,0)$ and $ξ = η = e_2 = vec(0,1)$, using $vec(1,0) vec(1,0)^† = mat(1; , 0), vec(0,1) vec(0,1)^† = mat(0;,1)$, their sum is $mat(1;,1) = 𝟙$ 
$
  sum_(s = 1,2) vec(#p^(◊ 1/2) e_s, #p^(1/2) e_s) vec(#p^(◊ 1/2) e_s, #p^(1/2) e_s)^†

  &= mat(
    #p^(◊ 1/2) #p^(◊ 1/2) , #p^(◊ 1/2) #p^(1/2) ;
    #p^(1/2) #p^(◊ 1/2) , #p^(1/2) #p^(1/2)
  ) \
  &= mat(
    #p^◊ , m ;
    m , #p
  ) \ 
  &= mat(
    #p^◊ , ;
    , #p
  ) + m mat(, 𝟙 ; 𝟙)
$
Conjugate phase plane wave case
$
  sum_(s = 1,2) vec(#p^(◊ 1/2) e_s, - #p^(1/2) e_s) vec(#p^(◊ 1/2) e_s, - #p^(1/2) e_s)^† 
  
  &= mat(
    #p^(◊ 1/2) #p^(◊ 1/2) , - #p^(◊ 1/2) #p^(1/2) ;
    - #p^(1/2) #p^(◊ 1/2) , #p^(1/2) #p^(1/2)
  ) \
  &= mat(
    #p^◊ , - m ;
    - m , #p
  ) \ 
  &= mat(
    #p^◊ , ;
    , #p
  ) - m mat(, 𝟙 ; 𝟙)
$

#tag("square-root-of-harmonic-oscillator") 
#indent[
  Inspired by the treatment of KG field quantization
  $
    (∂_t^2 - ∂_x^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0 \
    (∂_t^2 + p^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0
  $
  We can also define the square root of a point particle complex harmonic oscillator

  Dirac plane wave $vec(u,v) e^(- #i p x)$ with $p^2 = m^2$ and $(mat( #p ;,#p^◊) - m mat(,𝟙;𝟙)) vec(u,v) = 0$
  $
    (mat(#i #spin-d^◊;,#i #spin-d) - m mat(,𝟙;𝟙)) vec(u,v) e^(- #i p x) &= 0 \

    (mat(#i ∂_t ; , #i ∂_t) + mat(#p _x ;,- #p _x) - m mat(,𝟙;𝟙)) vec(u,v) e^(- #i p x) &= 0
  $
  If we ignore the plane wave, even if there is a loss of precision, we get an ODE
  $
    ∂_t vec(ϕ,ψ)  = - #i mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) vec(ϕ,ψ)
  $
  The solution can be written in the form of the square root of the spacetime momentum spinor representation $vec(#p^(◊ 1/2) ξ , #p^(1/2) ξ) e^(- #i E t)$. Using 

  - $
    - #i mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) &= - #i mat(
      - (E 𝟙 + #p _x) + E 𝟙 , m 𝟙 ;
      m 𝟙 , - (E 𝟙 - #p _x) + E 𝟙
    ) \
    &= - #i mat(
      - #p  , m 𝟙 ;
      m 𝟙 , - #p^◊
    ) - #i E mat(
      𝟙 , ;
      , 𝟙
    )
  $

  - $mat(
      - #p  , m 𝟙 ;
      m 𝟙 , - #p^◊
    ) vec(#p^(◊ 1/2) ξ , #p^(1/2) ξ) = 0$

  - $∂_t e^(- #i E t) = - #i E e^(- #i E t)$

  Dirac conjugate phase plane wave $vec(u,v) e^(#i p x)$ with $p^2 = m^2$ and $(mat( #p ;,#p^◊) + m mat(,𝟙;𝟙)) vec(u,v) = 0$

  $
    (mat(#i #spin-d^◊;,#i #spin-d) - m mat(,𝟙;𝟙)) vec(u,v) e^(#i p x) &= 0 \

    (mat(#i ∂_t ; , #i ∂_t) - mat(#p _x ;,- #p _x) - m mat(,𝟙;𝟙)) vec(u,v) e^(#i p x) &= 0
  $
   
  gives the ODE
  $
    ∂_t vec(ϕ,ψ)  = - #i mat(
      #p _x , m 𝟙 ;
      m 𝟙 , - #p _x
    ) vec(ϕ,ψ)
  $
  Solution $vec(#p^(◊ 1/2) η , - #p^(1/2) η) e^(#i E t)$. Using 

  - $
    - #i mat(
      #p _x , m 𝟙 ;
      m 𝟙 , - #p _x
    ) &= - #i mat(
      (E 𝟙 + #p _x) - E 𝟙 , m 𝟙 ;
      m 𝟙 , (E 𝟙 - #p _x) - E 𝟙
    ) \
    &= - #i mat(
      #p  , m 𝟙 ;
      m 𝟙 , #p^◊
    ) + #i E mat(
      𝟙 , ;
      , 𝟙
    )
  $
  - $mat(
      #p  , m 𝟙 ;
      m 𝟙 , #p^◊
    ) vec(#p^(◊ 1/2) η , - #p^(1/2) η) = 0$
    
  - $∂_t e^(#i E t) = #i E e^(#i E t)$
  
  If we ignore the plane wave restriction of Dirac eq

  - Solution of the ODE given by $e^(- #i p x)$
    $
      vec(#p^(◊ 1/2) ξ , #p^(1/2) ξ) e^(- #i E t) 
      + vec(#p^(1/2) η , - #p^(◊ 1/2) η) e^(#i E t)
    $
  - Solution of the ODE given by $e^(#i p x)$
    $
      vec(#p^(1/2) ξ , #p^(◊ 1/2) ξ) e^(- #i E t) 
      + vec(#p^(◊ 1/2) η , - #p^(1/2) η) e^(#i E t)
    $
  Using general ODE theory, for constant coefficient linear ODEs 
  $
    ∂_t vec(ϕ,ψ)  = - #i mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) vec(ϕ,ψ)
  $
  perform $exp$ification. Use $mat(
    - #p _x , m 𝟙 ;
    m 𝟙 , #p _x
  )^2 = (p_x^2 + m^2) mat(𝟙;,𝟙) = E^2 mat(𝟙;,𝟙)$
  The series rule is
  $
    2n &-> ((- #i E t)^(2n))/((2n)!) mat(𝟙;,𝟙) \ 
    &-> cos(E t) mat(𝟙;,𝟙) \

    2n+1 &-> ((- #i E t)^(2n+1))/((2n+1)!) 1/E mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) \
    &-> - #i sin(E t) 1/E mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    )
  $
  The result is
  $
    & cos(E t) mat(𝟙;,𝟙) - #i sin(E t) 1/E mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) \
    
    =& dmat(
      augment: #(hline: 1, vline: 1, stroke: rgb("#676767")),
      cos(E t) 𝟙 + #i sin(E t) #p _x/E , - #i sin(E t) m/E 𝟙 ;
      - #i sin(E t) m/E 𝟙 , cos(E t) 𝟙 - #i sin(E t) #p _x/E
    )
  $
  Written as complex exponential
  $
    & 1/2 (mat(𝟙;,𝟙) - 1/E mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    )) e^(#i E t) 
    + 1/2 (mat(𝟙;,𝟙) + 1/E mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    )) e^(- #i E t) \

    =& 1/(2 E) (
      mat(
      E 𝟙 + #p _x , - m 𝟙 ;
      - m 𝟙 , E 𝟙 - #p _x
      ) e^(#i E t)
      + mat(
        E 𝟙 - #p _x , m 𝟙 ;
        m 𝟙 , E 𝟙 + #p _x
      ) e^(- #i E t)
    ) \

    =& 1/(2 E) (mat(
        #p , - m 𝟙 ;
        - m 𝟙 , #p^◊
      ) e^(#i E t)
      + mat(
        #p^◊ , m 𝟙 ;
        m 𝟙 , #p
      ) e^(- #i E t)
    )
  $
  Lagrangian of the ODE 
  $
    L(vec(ϕ,ψ), ∂_t vec(ϕ,ψ)) &= vec(ϕ,ψ)^† mat(#i ∂_t + #p, -m 𝟙 ; -m 𝟙 ,#i ∂_t - #p) vec(ϕ,ψ) \
    &= vec(ϕ,ψ)^† (mat(#i ∂_t ; , #i ∂_t) + mat(#p ;,- #p) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) \
    &= (ϕ^† #i ∂_t ϕ + ψ^† #i ∂_t ψ) + (ϕ^† #p ϕ + ψ^† #p ψ) - m (ϕ^† ψ + ψ^† ϕ) 
  $
  Energy
  $
    E 
    
    &= (∂ L)/(∂ ∂_t vec(ϕ,ψ)) ⋅ ∂_t vec(ϕ,ψ) \
    
    &= vec(ϕ,ψ)^† #i ∂_t vec(ϕ,ψ) \
    
    &= vec(ϕ,ψ)^† mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) vec(ϕ,ψ)
  $
  Momentum (if it makes sense)
  $
    π = (∂ L)/(∂ ∂_t vec(ϕ,ψ)) = vec(ϕ,ψ)^† #i
  $
] 
