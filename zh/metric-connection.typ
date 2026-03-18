#import "../module/module.typ": *
#show: module

cf. #link(<metric.typ>)[]

#tag("geodesic")  
#indent[
  测地线作为可能的 "最小长度路径". 作用量 
  $ 
    &&integral #d l 
    &= integral #d t |vel(x)| 
    = integral #d t |g(vel(x))^2|^(1/2) \ 

    "or " && 
    &= integral #d t |g_(i i') ⋅ vel(x)^i ⋅ vel(x)^i'|^(1/2) \

    "or " &&
    &= integral #d t |vel(x)^⊺ g vel(x)|^(1/2)
  $ 
  ODE 初值 $x(0), vel(x)(0)$. 测地线的定义不依赖于坐标选取

  $#d l$ 是 metric-volume-form $#d Vol = |g| #d x = |det g|^(1/2) #d x$ 限制在 1 dimension path. $det g = det (g_(i j))$ 是 induced quadratic-form $g(#d x^1 ∧ ⋯ ∧ #d x^n)^2 = det mat(
    g(#d x^1, #d x^1), ⋯ , g(#d x^1, #d x^n), ;
    ⋮ , ⋱ , ⋮ ;
    g(#d x^n, #d x^1), ⋯ , g(#d x^n, #d x^n)
  )$ 

  Lagrange 方程是 
  $
    (#d)/(#d t) ( frac(g vel(x) , |g(vel(x))^2|^(1/2)) ) 
    &= 1/2 (vel(x)^⊺ (∂ g) vel(x))/(|g(vel(x))^2|^(1/2))
      & "where" ∂ g ≃ vec(∂_1 g , ⋮ , ∂_n g) \ 

    "or " (#d)/(#d t) ((g_(j i') x^i')/(|g_(i i') vel(x)^i vel(x)^i'|^(1/2))) 
    &= 1/2 ((∂_j g_(i i')) vel(x)^i vel(x)^i')/(|g_(i i') vel(x)^i vel(x)^i'|^(1/2))
  $
  对于路径的单位长度参数, $|vel(x)| = |g(vel(x))^2|^(1/2) = 1$, 方程变成
  $
    (#d)/(#d t) (g vel(x)) 
    &= 1/2 vel(x)^⊺ (∂ g) vel(x) \

    "or " (#d)/(#d t) (g_(j i') x^i') 
    &= 1/2 (∂_j g_(i i')) vel(x)^i vel(x)^i' 
  $
  product-rule 展开 $(#d)/(#d t) (g vel(x)) = (∂ (vel(x)) g) vel(x) + g acc(x)$, where $∂ (vel(x)) g = (∂)/(∂ vel(x)) g = (#d)/(#d t) g(x(t))$. 移项并使用 $g^(-1)$, 方程变成
  $
    acc(x) = g^(-1) (1/2 vel(x)^⊺ (∂ g) vel(x) - (∂ (vel(x)) g) vel(x))
  $
  或者写为
  $
    acc(x) + vel(x)^⊺ Gamma vel(x) &= 0 \

    "or " acc(x)^j + Gamma_(i i')^j ⋅ vel(x)^i ⋅ vel(x)^i' &= 0 
  $
]
其中 $Γ$ 是 #tag("metric-connection") *alias* #tag("Levi-Civita-connection") *alias* #tag("Christoffel-symbols")
#indent[
  $
    && v^⊺ Γ v
    &= g^(-1) ((∂ (v) g) v - 1/2 v^⊺ (∂ g) v) in ℝ^(p,q) \

    "or "&& v'^⊺ Γ v 
    &= 1/2 g^(-1) ((∂ (v') g) v + (∂ (v) g) v' - v'^⊺ (∂ g) v) 
      &quad ("cf. " #link(<difference-symmetric-tensor>)[difference]) \

    "or "&& Gamma_(i i')^j 
    &= 1/2 sum_i'' g^(j i'') (∂_i g_(i' i'') + ∂_i' g_(i i'') - ∂_i'' g_(i i'))
  $
  metric-connection 不是 tensor. metric-connection 的变换方式 #tag("connection-transformations")
  $
    Γ(y) 
    = (∂ y)/(∂ x) ⋅ Γ(x) ⋅ (∂ x)/(∂ y) + (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y)) 
  $
  by $Γ$ 的定义中的 metric $g$ 的变换方式
  - $g(y) = (∂ x)/(∂ y)#none ^⊺ ⋅ g(x) ⋅ (∂ x)/(∂ y)$

  - $g^(-1)(y) = (∂ y)/(∂ x) ⋅ g^(-1)(x) ⋅ (∂ y)/(∂ x)#none ^⊺ $ 
]
#tag("geodesic-exponential") ...

#tag("geodesic-coordinate") 
#indent[
  测地线 $t ⇝ v t$ or $exp(v t)$ with $t = 1$ 给出坐标 $v → exp(v)$

  它是局部微分同胚 by $∂ exp = 𝟙$ at $p$, by 
  - ODE 的解解析地依赖于初值 $p,v$ 
  - $(∂)/(∂ v) exp = (∂)/(∂ t)(t = 0) x(t,p,v) = v$
]
在测地线坐标, 测地线方程是 $acc(x) = 0$. _Proof_ 测地线是 $t ⇝ v t$

在 $p$ 点测地线坐标, $p$ 点联络是零, $Γ(p) = 0$ 

_Proof_ 
#indent[  
  ODE $acc(x) + vel(x)^⊺ Γ vel(x) = 0$
  
  初值 $acc(x) = 0$ and $vel(x) = v$
  
  将 ODE 的解 $t v$ 代入 ODE 得到 $v^⊺ Γ v = 0$ 
  
  从而在 $p$ 点对所有方向 $v$, $v^⊺ Γ v = 0$ ==> $Γ = 0$ at $p$
]
#tag("Taylor-expansion-of-metric-in-geodesic-coordinate") 
#indent[
在测地线坐标, metric 的 Taylor 展开 $g(p + v) = sum 1/n! (∂^n g)(p) (v^n)$ 

  - 零阶项是标准 metric $η$

  - 一阶项是零 i.e. 一阶微分是零

  结合两者, $g(p + v) = η + o(v)$
]
_Proof_ 
#indent[
  在 $p$ 点测地线坐标

  - 0th. 对测地线坐标, 在 $p$ 点 $∂ exp = 𝟙$, 将测地线坐标里的原点的正交规范基 $e_1 ,…, e_n$ 复制地映射到 $p$ 点切空间 coordinate-frame $∂_1 ,…, ∂_n$ 

  - 1st. 
  #indent[
    #tag("differenial-of-metric-vs-connection") *Prop* $v^⊺ (∂(v'') g) v' = v'^⊺ g (v''^⊺ Γ v) + v'^⊺ g (v''^⊺ Γ v)$ _Proof_ 直接把 $Γ$ 的 #link(<metric-connection>)[定义] 代入式子

    然后用 $Γ(p) = 0$ 得到 $p$ 点 $∂ g (p) = 0$

    在坐标中 $∂_i'' g_(i i') = Γ_(i'' i i') + Γ_(i'' i' i) = g_(i' j) Γ_(i'' i)#none ^j + g_(i j) Γ_(i'' i')#none ^j$

    也可以写为 $(∂(v'') g) (v,v') = g(Γ(v'',v),v') + g(v,Γ(v'',v'))$
  ]
]
对于逆矩阵, 有类似的

#tag("differenial-of-metric-inverse-vs-connection") *Prop* $α^⊺ (∂(α'') g^(-1)) α' = - ( α'^⊺ g^(-1) (α''^⊺ Γ α) + α'^⊺ g^(-1) (α''^⊺ Γ α) )$

_Proof_ 使用 $g g^(-1) = 𝟙 ==> ∂ (g g^(-1)) = 0 ==> ∂ (g^(-1)) = - g^(-1) (∂ g) g^(-1) $ 以及 $g = g g^(-1) g$

在坐标中 $∂_(i'') g^(i i') = - Γ_i''#none ^(i i') - Γ_i''#none ^(i' i) = - g^(i j) Γ_(i'' j)#none ^i' - g^(i' j) Γ_(i'' j)#none ^i$

也可以写为 $(∂(α'') g^(-1)) (α,α') = g^(-1) (-Γ(α'',α),α') + g^(-1) (α,-Γ(α'',α'))$