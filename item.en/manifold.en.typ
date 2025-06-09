#import "/module/module.typ": *
#show: module

*Example* Euclidean analysis of manifolds, various coordinates of the sphere $𝕊^n$
- Function graph coordinates, function equations $|x|^2 = 1$ and implicit function theorem. e.g. $y = sqrt(1-x^2)$ for $𝕊^1 subset ℝ^2$
- #link(<stereographic-projection>)[stereographic projection]
- Polar coordinates. Starting from trigonometric functions of $𝕊^1$, construct new latitudes inductively
- Geodesic coordinates

#tag("orientable") Orientable := there exists a coordinate cover, each transition function differentiation $#d f in SO$

*Example* #link(<Mobius-strip>)[] is not directional
Send feedback
Translation results available

*Example* Parametric curves and surfaces of $ℝ^3$. analytic function $f : ℝ^2 -> ℝ^3$, $#d f != 0$ ==> for local parameter, it's local analytic isomorphism

#tag("manifold") minimal structure to define manifold, family of coordinate cards covering $M$ with the same dimension, transition functions using Euclidean or Minkowski or quadratic analysis

#tag("orientable") Orientable := can analytically define #link(<orientation>)[] in the tangent bundle 

Equivalent to decomposition of $"Diff"$ to the $det^(-1)(ℝ_(< 0)) ⊔ det^(-1)(ℝ_(> 0))$ 

Equivalent to the existence of a coordinate cover, each transition function differentiation $#d f in SO$

*Example* #link(<Mobius-strip>)[] Non-orientable

If the interior of a manifold with boundary is orientable, then the boundary is also orientable. Intuitively, the local of boundary has the same interior + the interior is orientable ==> local of boundary has the same orientation ==> the boundary orientation is determined

#tag("manifold-with-boundary") Manifold with boundaries. The coordinates can be the region enclosed by the $n-1$-dimensional hyperplane, and the transformation function need to be able to derives the transformation function in the $n-1$-dimensional subspace. Usually use almost everywhere analysis to deal with some singularities

#tag("metric-manifold") metric on manifold (*Abbreviation* metric) is to define metric in each tangent space, which is equivalent to choosing an orthonormal frame bundle on the manifold tangent bundle. For $SO(p,q)$ oritentable, we can choose $SO(p,q)$ orientable frame bundle

metric can be inherited from submanifold or quotient manifold of $ℝ^(p,q)$

*Example* ...

#tag("isometry") := diffeomorphism preserving metric $g$. It is usually also assumed to preserve the orientation of the orientable manifold

Diffeomorphism acts on metric space, isometry is the #link(<isotropy>)[] of this group action

Metrics with different curvatures cannot be in the same orbit. In particular, zero-curvature and non-zero-curvature metrics cannot be in the same oribt

#tag("δ-isometry") *alias* #tag("Killing-field")

  will be used for the momentum conservation flow on the manifold

*Question* dimension of δ-isometry and isometry group $<= dim (ℝ^(p,q) ⋊ SO(p,q))$