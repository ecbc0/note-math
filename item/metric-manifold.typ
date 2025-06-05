#import "/module/module.typ": *
#show: module

流形上的 metric (*Abbreviation* metric) 是在每个切空间定义 metric, 等价于在流形切丛上选择 orthonormal frame bundle. 对 $SO(p,q)$ oritentable, 可以选择 $SO(p,q)$ 可定向的标架丛

metric 可以继承自 submanifold 或 quotient manifold of $ℝ^(p,q)$

*Example* ...

$g$ 作为对称矩阵 in $g(v,w) = v^⊺ g w$. metric #link(<quadratic-form-non-degenerated>)[] <==> 存在矩阵逆 $g^(-1)$. in coordinate 记为 $g ⇝ g_(i i')$ 和 $g^(-1) ⇝ g^(i i')$

$g_(i j) g^(i' j) = δ_i^i'= g^(i' j) g_(i j)$ _Proof_ by $g ⋅ g^(-1) = 𝟙 = g^(-1) ⋅ g$

metric-manifold 每点切空间进行 #link(<quadratic-form-dual>)[]
$
  dmat( delim: #none ,
    V , ⟶ , V^⊺ ;
    v , ⟿ , g(v,)
  )
$
in coordinate let $v = v^i e_i$. 不需要规范正交基

#tag("rasing-and-lowring-index") 升降指标
#indent[
  - $g(v,) = v_i e^i$ 对偶基表示 with $e^i (e_j) = δ^i_j$
  #indent[
    其中 $v_i$ 的定义
    $
      g(v,e_i) &= g(v^j e_j, e_i) = v^j g_(i j) \
      v_j e^j (e_i) &= v_i 
    $
    ==> 
    $v_i := g_(i j) v^j$
  ]
  - 反过来 $v_i = g_(i j') v^j'$ ==>
  #indent[  
    $
      g^(i j) v_i &= g^(i j) g_(i j') v^j' \
      &= δ^j_j' v^j' = v^j 
    $
  ]
  - 表示为基就是
  #indent[
    $
      g(e_i,) &= g_(i j) e^j \
      g^(-1)(e^j,) &= g^(i j) e_i
    $
  ]  
  - 无坐标
  #indent[
    $
      (v ⇝ g(v,))^(-1) &= (v ⇝ g^(-1) (v,))
    $
  ] 
  - 可以推广到 tensor, e.g 降第一个指标 $T_i#none ^i' = g_(i j) T^(j i')$

  - for tensor-induced-metric
  #indent[
    let $l,l' ∈ V^⊺$, $g^⊗ (l,l') = g^(-1)(l,l')$
    
    in coordinate 

      - $g^(i i') l_i l'_i'$

      - $g_(i i') l^i l'^i'$

      - $l_i l'^i$

      - $l^i l'_i$
  ]
]
#tag("isometry") := diffeomorphism 保持 metric $g$. 通常也假设保持可定向流形的方向

微分同胚作用于 metric space, isometry 是这个群作用的 #link(<isotropy>)[]

不同曲率的 metric 不能在相同的 orbit. 特别地, 零曲率和非零曲率的 metric 不能在相同的 oribt

#tag("δ-isometry") *alias* #tag("Killing-field")

  将会用于流形上的作用量守恒流

*Question* δ-isometry 和 isometry 群的维数 $<= dim (ℝ^(p,q) ⋊ SO(p,q))$