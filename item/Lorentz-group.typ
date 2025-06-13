#import "../module/module.typ": *
#show: module

#tag("polar-decomposition-of-Lorentz-group") polar decomposition $SO(1,3)$ to rotation and boost (@ref-2, Vol.1, p.165)
#indent[
  let $A = mat(τ,v^⊺;u,a) ∈ SO(1,3)$ where $τ in ℝ, u,v ∈ ℝ^(1,3), a in "Matrix"(3,ℝ)$
  $
    A 
    &= mat(1;, R) mat((1 + v^⊺ v)^(1/2), v^⊺; v, (𝟙 + v v^⊺)^(1/2)) 
  $
  (使用 $A in SO(1,3) ==> A^⊺ η A = η = A η A^⊺$ 和 polar decomposition of positive definite symmetric matrix) 
  
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
  使用 $x_1,x_2$ 轴的旋转来生成 $SO(3)$

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
  使用 $x_1,x_2$ 轴的 boost

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
  其中 $×$ 模仿 $ℝ^3$ cross product. *Example* $b × b = vec([b_2,b_3],[b_3,b_1],[b_1,b_2])$
  
  其中 $⋅$ 模仿 $ℝ^3$ dot product. *Example* $b ⋅ r =  r ⋅ b$ ==> $b_1 r_1 = r_1 b_1$ or $[b_1, r_1] = 0$

  写为模仿 $ℂ^3$ cross product
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

#tag("isotropy-on-lightcone") *Prop* $SO(1,3)$ 作用于 lightcone 类似于 $SO(2) ⋊ ℝ^2$ (恰好是 $ℝ^2$ Euclidean 仿射群)

_Proof_ 使用 #link(<spacetime-momentum-aciton-spinor-representation>)[spinor 技术]
#indent[
  *Prop* $SL(2,ℂ)$ 作用在 lightcone (不是 projective-lightcone), #link(<isotropy>)[] 类似于 $#U (1) ⋊ ℂ$

  $SL(2,ℂ)$ 是 #link(<action-surjective>)[满射作用], orbit 数 $1$, 所以计算 isotropy #link(<isotropy-in-same-orbit-is-isom>)[只需要考虑] 一点

  使用光锥射影上的点 $p = (1,1,0,0) <-> #p = mat(2;,space) ∈ ℝ^(1,3)$, 计算 isotropy $A #p A^† = #p$, where $A #p A^† = mat(2 a a^*,2 a c^*; 2 a^* c, 2 c c^*)$
  
  ==> $A = mat(e^θ, b;, e^(- θ))$ where $θ ∈ Im(ℂ)$

  类似于 #link(<isotropy-on-projective-lightcone>)[] 的计算, 此处将类似于 $#U (1) ⋊ ℂ$
]

#tag("isotropy-on-lightcone-intuition") isotropy-group of orbit lightcone 的直观. 根据
#indent[
  $
    mat(e^(1/2 θ #i), 0;, e^(- 1/2 θ #i)) mat(1,b;,1) mat(e^(1/2 θ #i), 0;, e^(- 1/2 θ #i)) = mat(e^(θ #i), b;, e^(- θ #i)) 
  $
  分开讨论两种情况

  - $mat(e^(1/2 θ #i), 0;, e^(- 1/2 θ #i))$. is rotation in $p_1$

  - $mat(1,b;,1)$
  #indent[
    let $so(1,3)$ with boost and rotation decomposition $b + r = (φ_1 b_1 + φ_2 b_2 + φ_3 b_3) + (θ_1 r_1 + θ_2 r_2 + θ_3 r_3)$ (not the $b$ in $mat(e^(θ #i), b; , e^(- θ #i))$)
    
    线性同构到新的基
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
    - $b_2 - r_3$ and $b_3 - r_2$ 是 lightcone coordinate $p_0 ± p_1$ 类似物, 保持 $(1,1,0,0)$

    或者写为
    $
      b_1, r_1 \
      M_+ \
      M_-
    $
    where $b_1, M_+$ 将会改变 $(1,1,0,0)$, $r_1,M_-$ 则固定
    
    二维 Lie algebra $M_-$ is commutative, 对应 $#U (1) ⋊ ℂ$ 中的 $b ∈ ℂ$ or $mat(1,b;,1)$
  ]
  在光锥上 (图)
  - 一般 $b$ 生成双曲型 orbit 
  - 一般 $r$ 生成椭圆型 orbit
  - $M_+$ 可以推广到一般的 lightcone 组合 e.g. $p_0 ± p_2$, 将生成抛物型 orbit 
  
  $mat(1,b;,1)$ 作用的具体计算
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