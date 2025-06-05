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