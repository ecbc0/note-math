#import "/module/module.typ": *
#show: module

metric on manifold (*Abbreviation* metric) is to define metric in each tangent space, which is equivalent to choosing an orthonormal frame bundle on the manifold tangent bundle. For $SO(p,q)$ oritentable, we can choose $SO(p,q)$ orientable frame bundle

metric can be inherited from submanifold or quotient manifold of $ℝ^(p,q)$

*Example* ...

$g$ as a symmetric matrix in $g(v,w) = v^⊺ g w$. metric #link(<quadratic-form-non-degenerated>)[] <==> there exists a matrix inverse $g^(-1)$. in coordinate denoted as $g ⇝ g_(i i')$ and $g^(-1) ⇝ g^(i i')$

$g_(i j) g^(i' j) = δ_i^i'= g^(i' j) g_(i j)$ _Proof_ by $g ⋅ g^(-1) = 𝟙 = g^(-1) ⋅ g$

metric-manifold performs #link(<quadratic-form-dual>)[] on the tangent space at each point
$
  dmat( delim: #none ,
    V , ⟶ , V^⊺ ;
    v , ⟿ , g(v,)
  )
$
in coordinate let $v = v^i e_i$. Orthonormal basis is not required

#tag("rasing-and-lowring-index") raising and lowering indices
#indent[
  - $g(v,) = v_i e^i$ dual basis representation with $e^i (e_j) = δ^i_j$
  #indent[
    where the definition of $v_i$
    $
      g(v,e_i) &= g(v^j e_j, e_i) = v^j g_(i j) \
      v_j e^j (e_i) &= v_i 
    $
    ==> 
    $v_i := g_(i j) v^j$
  ]
  - Conversely $v_i = g_(i j') v^j'$ ==>
  #indent[  
    $
      g^(i j) v_i &= g^(i j) g_(i j') v^j' \
      &= δ^j_j' v^j' = v^j 
    $
  ]
  - expressed as a basis is
  #indent[
    $
      g(e_i,) &= g_(i j) e^j \
      g^(-1)(e^j,) &= g^(i j) e_i
    $
  ]  
  - coordinate-free
  #indent[
    $
      (v ⇝ g(v,))^(-1) &= (v ⇝ g^(-1) (v,))
    $
  ] 
  - can be generalized to tensors, e.g. lowering the first index $T_i#none ^i' = g_(i j) T^(j i')$

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
#tag("isometry") := diffeomorphism preserving metric $g$. It is usually also assumed to preserve the orientation of the orientable manifold

Diffeomorphism acts on metric space, isometry is the #link(<isotropy>)[] of this group action

Metrics with different curvatures cannot be in the same orbit. In particular, zero-curvature and non-zero-curvature metrics cannot be in the same oribt

#tag("δ-isometry") *alias* #tag("Killing-field")

  will be used for the momentum conservation flow on the manifold

*Question* dimension of δ-isometry and isometry group $<= dim (ℝ^(p,q) ⋊ SO(p,q))$