#import "/module/module.typ": *
#show: module

#tag("action-point-particle-relativity") Action $ integral #d l (m c) = integral #d τ (m c|vel(x)|)  $ The result is a geodesic

Using the spacetime $ℝ^(1,3)$'s metric volume form $#d Vol = |det g|^(1/2) #d x$ restricted to a one-dimensional path, we obtain the length $#d l$, which uses the square root of the quadratic form, rather than the quadratic form alone 

For a path, in the "time coordinate" $x^0(t) = c t$, let $v = (#d)/(#d t) x."space"$. Action

$ #d l = m c^2 (1 - (v/c)^2)^(1/2) #d t $

#tag("equation-point-particle-relativity") let $L(x,v) = m c^2 (1 - (v/c)^2)^(1/2)$. Similar to #link(<point-particle-Lagrange-equation>)[the non-relativistic case], the equation of action 
$ 
  (∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ v) 
  
  <==> (#d)/(#d t) (m c^2 v)/((1 - (v/c)^2)^(1/2)) = 0 
$
#tag("point-particle-relativity-approximate-to-non-relativity") The relativistic action "approximates" to the non-relativistic action 
$
  m c^2 (1 - (v/c)^2)^(1/2) = m c^2 - 1/2 m v^2 + O(v/c)^2
$
Then the constant value $m c^2$ will vary to zero $0$

Symmetry and conserved quantities

The symmetry group of $ℝ^(1,3)$ spacetime is the isometry $SO(1,3) ⋊ ℝ^(1,3)$ *alias* Poincare group

- Translation
#indent[
  Using time coordinates. Similar to the non-relativistic case, the relativistic versions of #link(<energy-point-particle-non-relativity>)[energy] and #link(<momentum-point-particle-non-relativity>)[momentum] are #tag("energy-momentum-point-particle-relativity")
  $
    E &= (∂ f)/(∂ v) ⋅ v - f 
    &quad quad p &= (∂ f)/(∂ v) \

    E  &= (m c^2)/((1 - (v/c)^2)^(1/2)) 
    & p &= (m v)/((1 - (v/c)^2)^(1/2)) 
  $
  Denoted as 4-momentum 
  $
    m c vel(x) = (m (c,v))/((1 - (v/c)^2)^(1/2)) = vec(E/c,p) 
  $
]
The relativistic Lagrangian $|vel(x)|$ is invariant under $SO(1,3)$, but the boost still changes the time and space endpoints of the path i.e. changes the action $integral #d τ (m c|vel(x)|)$

- Rotation
#indent[
  Similar to the non-relativistic case, the relativistic version of #link(<rotation-momentum-point-particle-non-relativity>)[momentum-point-particle-non-relativity] is #tag("rotation-momentum-point-particle-relativity")
  $
    x × p = (x × m v)/((1 - (v/c)^2)^(1/2))
  $
]
- boost
#indent[
  boost by #link(<hyperbolic-angle>)[hyperbolic angle]
  $
    exph θ #i-split = mat(
      cosh θ, sinh θ; 
      sinh θ, cosh θ
    )
  $
  So δ boost by hyperbolic angle, is
  $
    θ #i-split = mat(
      ,θ;
      θ
    )
  $
  In a coordinate of $ℝ^(1,3)$, let the spatial vector $n ∈ ℝ^3$, $|n| = θ$, corresponding to δ boost, define the hyperbolic cross product $n × vec(c t,x) = vec(c t + n ⋅ x, x + c t n)$

  Similar to the case of energy, boost also changes the action
  
  The calculation result of boost momentum will have 4-momentum, thus energy $E$ will appear
  
  #tag("boost-momentum-point-particle-relativity")
  $
    vec(E/c,p) ⋅ (n × vec(c t,x)) 
    
    &= n ⋅ vec(E t - p ⋅ x, c t p - 1/c E x) \

    "spatial-part" &= n ⋅ vec(c t p - 1/c E x) 
  $
  Note that the $(1,3)$ spacetime metric has a negative definite spatial metric

  Spatial $ℝ^3$ vector
  $
    c t p - 1/c E x = (m c (t v - x))/((1 - (v/c)^2)^(1/2))
  $
  Also called boost momentum

  Because $ℝ^(1,3)$ coordinates are used to separate time and space, although rotational momentum and boost momentum are $SO(1,3)$ invariant, the representations $x × p$ and boost momentum $E x - t p$ are not invariant

  Combined, it can be written as angular momentum $L_(μ ν) = [x_μ, p_ν]$
]
Particle system

potential $U(|x|),sum_(i < i') U(x_i - x_i'),sum_(i < i') U(|x_i - x_i'|)$

potential $A(x) (vel(x)) = A_0 (x) vel(x)^0 + ⋯ + A_3 (x) vel(x)^3$

point particle in Lorentz-manifold 
#indent[
  For the action $integral #d l$ and conserved quantities, metric-connection and δ-isometry are needed
]