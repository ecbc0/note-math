#import "../module/module.typ": *
#show: module

#let p = spin($p$)

recall Dirac 平面波的系数 #link(<squrae_root_of_spacetime_momentum_spinor_representation>)[] 

$ℂ^2 ⊕ ℂ^2$ 正定内积

$
  vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ)^† vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ) &= ξ^† (#p^◊ + #p) ξ \
  &= (2 p_0) |ξ|^2 \
  &= (tr #p) |ξ|^2
$ 

Hermitian 对称张量
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
看起来没什么特殊之处, 但如果考虑 $ξ = η = e_1 = vec(1,0)$ 和 $ξ = η = e_2 = vec(0,1)$ 的结果相加, 使用 $vec(1,0) vec(1,0)^† = mat(1; , 0), vec(0,1) vec(0,1)^† = mat(0;,1)$, 它们相加是 $mat(1;,1) = 𝟙$ 
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
共轭相位平面波的情况
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

#tag("square_root_of_harmonic_oscillator") 
#indent[
  启发自 KG 场量子化的处理
  $
    (∂_t^2 - ∂_x^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0 \
    (∂_t^2 + p^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0
  $
  我们也可以定义一种点粒子复谐振子的平方根

  Dirac 平面波 $vec(u,v) e^(- #i p x)$ with $p^2 = m^2$ and $(mat( #p ;,#p^◊) - m mat(,𝟙;𝟙)) vec(u,v) = 0$
  $
    (mat(#i #spin-d^◊;,#i #spin-d) - m mat(,𝟙;𝟙)) vec(u,v) e^(- #i p x) &= 0 \

    (mat(#i ∂_t ; , #i ∂_t) + mat(#p _x ;,- #p _x) - m mat(,𝟙;𝟙)) vec(u,v) e^(- #i p x) &= 0
  $
  如果我们不管平面波的话, 即使可能损失精度, 我们得到 ODE
  $
    ∂_t vec(ϕ,ψ)  = - #i mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) vec(ϕ,ψ)
  $
  解可以写为时空动量自旋表示的平方根的形式 $vec(#p^(◊ 1/2) ξ , #p^(1/2) ξ) e^(- #i E t)$. 使用 

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

  Dirac 共轭相位平面波 $vec(u,v) e^(#i p x)$ with $p^2 = m^2$ and $(mat( #p ;,#p^◊) + m mat(,𝟙;𝟙)) vec(u,v) = 0$

  $
    (mat(#i #spin-d^◊;,#i #spin-d) - m mat(,𝟙;𝟙)) vec(u,v) e^(#i p x) &= 0 \

    (mat(#i ∂_t ; , #i ∂_t) - mat(#p _x ;,- #p _x) - m mat(,𝟙;𝟙)) vec(u,v) e^(#i p x) &= 0
  $
   
  给出 ODE
  $
    ∂_t vec(ϕ,ψ)  = - #i mat(
      #p _x , m 𝟙 ;
      m 𝟙 , - #p _x
    ) vec(ϕ,ψ)
  $
  解 $vec(#p^(◊ 1/2) η , - #p^(1/2) η) e^(#i E t)$. 使用 

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
  
  如果不管 Dirac eq 的平面波的限制的话

  - $e^(- #i p x)$ 给出的 ODE 的解
    $
      vec(#p^(◊ 1/2) ξ , #p^(1/2) ξ) e^(- #i E t) 
      + vec(#p^(1/2) η , - #p^(◊ 1/2) η) e^(#i E t)
    $
  - $e^(#i p x)$ 给出的 ODE 的解
    $
      vec(#p^(1/2) ξ , #p^(◊ 1/2) ξ) e^(- #i E t) 
      + vec(#p^(◊ 1/2) η , - #p^(1/2) η) e^(#i E t)
    $
  用一般的 ODE 理论, 对常系数线性 ODE 
  $
    ∂_t vec(ϕ,ψ)  = - #i mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) vec(ϕ,ψ)
  $
  进行 $exp$ 化. 使用 $mat(
    - #p _x , m 𝟙 ;
    m 𝟙 , #p _x
  )^2 = (p_x^2 + m^2) mat(𝟙;,𝟙) = E^2 mat(𝟙;,𝟙)$
  级数规律是
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
  结果是
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
  写为复指数
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
  ODE 的 Lagrangian 
  $
    L(vec(ϕ,ψ), ∂_t vec(ϕ,ψ)) &= vec(ϕ,ψ)^† mat(#i ∂_t + #p, -m 𝟙 ; -m 𝟙 ,#i ∂_t - #p) vec(ϕ,ψ) \
    &= vec(ϕ,ψ)^† (mat(#i ∂_t ; , #i ∂_t) + mat(#p ;,- #p) - m mat(,𝟙;𝟙)) vec(ϕ,ψ) \
    &= (ϕ^† #i ∂_t ϕ + ψ^† #i ∂_t ψ) + (ϕ^† #p ϕ + ψ^† #p ψ) - m (ϕ^† ψ + ψ^† ϕ) 
  $
  能量
  $
    E 
    
    &= (∂ L)/(∂ ∂_t vec(ϕ,ψ)) ⋅ ∂_t vec(ϕ,ψ) \
    
    &= vec(ϕ,ψ)^† #i ∂_t vec(ϕ,ψ) \
    
    &= vec(ϕ,ψ)^† mat(
      - #p _x , m 𝟙 ;
      m 𝟙 , #p _x
    ) vec(ϕ,ψ)
  $
  动量 (如果有意义的话)
  $
    π = (∂ L)/(∂ ∂_t vec(ϕ,ψ)) = vec(ϕ,ψ)^† #i
  $
] 
