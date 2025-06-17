#import "../module/module.typ": *
#show: module

cf. #raw("#link(<metric.typ>)[]")

#tag("geodesic")  
#indent[
  Geodesics as possible "shortest length paths". Action 
  $ 
    &&integral #d l 
    &=&integral #d t |vel(x)| 
    = integral #d t |g(vel(x))^2|^(1/2) \ 

    "or " && 
    &=&integral #d t |g_(i i') ⋅ vel(x)^i ⋅ vel(x)^i'|^(1/2) \

    "or " &&
    &=&integral #d t |vel(x)^⊺ g vel(x)|^(1/2)
  $ 
  ODE initial value $x(0), vel(x)(0)$. The definition of geodesics does not depend on coordinate selection

  $#d l$ is the metric-volume-form $#d Vol = |g| #d x = |det g|^(1/2) #d x$ restricted to a 1 dimension path. $det g = det (g_(i j))$ is the induced quadratic-form $g(#d x^1 ∧ ⋯ ∧ #d x^n)^2 = det mat(
    g(#d x^1, #d x^1), ⋯ , g(#d x^1, #d x^n), ;
    ⋮ , ⋱ , ⋮ ;
    g(#d x^n, #d x^1), ⋯ , g(#d x^n, #d x^n)
  )$ 

  The Lagrange equation is 
  $
    (#d)/(#d t) ( frac(g vel(x) , |g(vel(x))^2|^(1/2)) ) 
    &=&1/2 (vel(x)^⊺ (∂ g) vel(x))/(|g(vel(x))^2|^(1/2))
      & "where" ∂ g ≃ vec(∂_1 g , ⋮ , ∂_n g) \ 

    "or " (#d)/(#d t) ((g_(j i') x^i')/(|g_(i i') vel(x)^i vel(x)^i'|^(1/2))) 
    &=&1/2 ((∂_j g_(i i')) vel(x)^i vel(x)^i')/(|g_(i i') vel(x)^i vel(x)^i'|^(1/2))
  $
  For unit length parameter of the path, $|vel(x)| = |g(vel(x))^2|^(1/2) = 1$, the equation becomes
  $
    (#d)/(#d t) (g vel(x)) 
    &=&1/2 vel(x)^⊺ (∂ g) vel(x) \

    "or " (#d)/(#d t) (g_(j i') x^i') 
    &=&1/2 (∂_j g_(i i')) vel(x)^i vel(x)^i' 
  $
  product-rule expansion $(#d)/(#d t) (g vel(x)) = (∂ (vel(x)) g) vel(x) + g acc(x)$, where $∂ (vel(x)) g = (∂)/(∂ vel(x)) g = (#d)/(#d t) g(x(t))$. Transposing terms and using $g^(-1)$, the equation becomes
  $
    acc(x) = g^(-1) (1/2 vel(x)^⊺ (∂ g) vel(x) - (∂ (vel(x)) g) vel(x))
  $
  Or written as
  $
    acc(x) + vel(x)^⊺ Gamma vel(x) &=&0 \

    "or " acc(x)^j + Gamma_(i i')^j ⋅ vel(x)^i ⋅ vel(x)^i' &=&0 
  $
]
where $Γ$ is #tag("metric-connection") *alias* #tag("Levi-Civita-connection")
#indent[
  $
    && v^⊺ Γ v
    &=&g^(-1) ((∂ (v) g) v - 1/2 v^⊺ (∂ g) v) in ℝ^(p,q) \

    "or "&& v'^⊺ Γ v 
    &=&1/2 g^(-1) ((∂ (v') g) v + (∂ (v) g) v' - v'^⊺ (∂ g) v) 
      &quad& ("cf. " #raw("#link(<difference-symmetric-tensor>)[difference]")) \

    "or "&& Gamma_(i i')^j 
    &=&1/2 sum_i'' g^(j i'') (∂_i g_(i' i'') + ∂_i' g_(i i'') - ∂_i'' g_(i i'))
  $
  metric-connection is not a tensor. The transformation of metric-connection #tag("connection-transformations")
  $
    Γ(y) 
    = (∂ y)/(∂ x) ⋅ Γ(x) ⋅ (∂ x)/(∂ y) + (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y)) 
  $
  by the transformation of metric $g$ in the definition of $Γ$
  - $g(y) = (∂ x)/(∂ y)#none ^⊺ ⋅ g(x) ⋅ (∂ x)/(∂ y)$

  - $g^(-1)(y) = (∂ y)/(∂ x) ⋅ g^(-1)(x) ⋅ (∂ y)/(∂ x)#none ^⊺ $ 
]
#tag("geodesic-exponential") ...

#tag("geodesic-coordinate") 
#indent[
  Geodesic $t ⇝ v t$ or $exp(v t)$ with $t = 1$ gives coordinate $v → exp(v)$

  It is a local diffeomorphism by $∂ exp = 𝟙$ at $p$, by 
  - The solution of the ODE analytically depends on the initial values $p,v$ 
  - $(∂)/(∂ v) exp = (∂)/(∂ t)(t = 0) x(t,p,v) = v$
]
In geodesic coordinates, the geodesic equation is $acc(x) = 0$. _Proof_ The geodesic is $t ⇝ v t$

In geodesic coordinates at point $p$, the connection at point $p$ is zero, $Γ(p) = 0$ 

_Proof_ 
#indent[  
  ODE $acc(x) + vel(x)^⊺ Γ vel(x) = 0$
  
  Initial value $acc(x) = 0$ and $vel(x) = v$
  
  Substitute the solution $t v$ of the ODE into the ODE to get $v^⊺ Γ v = 0$ 
  
  Thus, at point $p$, for all directions $v$, $v^⊺ Γ v = 0$ ==> $Γ = 0$ at $p$
]
#tag("Taylor-expansion-of-metric-in-geodesic-coordinate") 
#indent[
In geodesic coordinates, the Taylor expansion of the metric is $g(p + v) = sum 1/n! (∂^n g)(p) (v^n)$ 

  - The zeroth-order term is the standard metric $η$

  - The first-order term is zero i.e. the first derivative is zero

  Combining the two, $g(p + v) = η + o(v)$
]
_Proof_ 
#indent[
  In geodesic coordinates at point $p$

  - 0th. For geodesic coordinates, at point $p$, $∂ exp = 𝟙$, which copies the orthonormal basis $e_1 ,…, e_n$ of the origin in geodesic coordinates to the coordinate-frame $∂_1 ,…, ∂_n$ of the tangent space at point $p$ 

  - 1st. 
  #indent[
    #tag("differenial-of-metric-vs-connection") *Prop* $v^⊺ (∂(v'') g) v' = v'^⊺ g (v''^⊺ Γ v) + v'^⊺ g (v''^⊺ Γ v)$ _Proof_ Directly substitute the #raw("#link(<metric-connection>)[definition]") of $Γ$ into the formula

    Then use $Γ(p) = 0$ to get $∂ g (p) = 0$ at point $p$

    In coordinates $∂_i'' g_(i i') = Γ_(i'' i i') + Γ_(i'' i' i) = g_(i' j) Γ_(i'' i)#none ^j + g_(i j) Γ_(i'' i')#none ^j$

    Can also be written as $(∂(v'') g) (v,v') = g(Γ(v'',v),v') + g(v,Γ(v'',v'))$
  ]
]
For the inverse matrix, there is a similar one

#tag("differenial-of-metric-inverse-vs-connection") *Prop* $α^⊺ (∂(α'') g^(-1)) α' = - ( α'^⊺ g^(-1) (α''^⊺ Γ α) + α'^⊺ g^(-1) (α''^⊺ Γ α) )$

_Proof_ Using $g g^(-1) = 𝟙 ==> ∂ (g g^(-1)) = 0 ==> ∂ (g^(-1)) = - g^(-1) (∂ g) g^(-1) $ and $g = g g^(-1) g$

In coordinates $∂_(i'') g^(i i') = - Γ_i''#none ^(i i') - Γ_i''#none ^(i' i) = - g^(i j) Γ_(i'' j)#none ^i' - g^(i' j) Γ_(i'' j)#none ^i$

Can also be written as $(∂(α'') g^(-1)) (α,α') = g^(-1) (-Γ(α'',α),α') + g^(-1) (α,-Γ(α'',α'))$