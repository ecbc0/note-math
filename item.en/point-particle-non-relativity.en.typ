#import "/module/module.typ": *
#show: module

#let vel(x) = math.dot($#x$) // velocity
#let acc(x) = math.dot.double($#x$) // acceleration

Non-relativistic spacetime $ℝ × ℝ^3$ 

#tag("action-point-particle-non-relativity") Action of path $t ⇝ x(t)$ 

$ integral #d t (1/2 m vel(x)^2 - U(x)) $

let $X(t)$ be a time-varying vector field or time-varying δ diffeomorphism, or $(1,X(t,x_(1 .. 3)))$ is a special type of vector field of non-relativistic spacetime $ℝ × ℝ^3$

let $X(t)$ _is zero at the boundary_ --- fix the endpoints of the path

let the differential of the action be zero 

$ 0 = ∂ S ⋅ X(t) = integral #d t ((∂)/(∂ vel(x)) (1/2 m vel(x)^2) ⋅ vel(X) - (∂ U)/(∂ x) (x) ⋅ X) $

where $(∂)/(∂ vel(x)) (1/2 m vel(x)^2) = m vel(x)$

use product rule
$
  (#d)/(#d t) ((m vel(x)) ⋅ X) 
  
  = m acc(x) ⋅ X 
    + m vel(x) ⋅ vel(X)
$
and $X(t)$ is zero at the boundary, such that

$ integral #d t ((#d)/(#d t) (m vel(x)) ⋅ X) = 0 $

So the differential of the action is
$
  0 = - integral #d t ((m acc(x) + (#d U)/(#d x)) X)
$
holds for all δ diffeomorphism $X(t)$, thus giving the Lagrange-equation (*alias*: Euler--Lagrange-equation), for non-relativistic point particles, #tag("equation-point-particle-non-relativity") *alias* #tag("Newton-equation") 

$ m acc(x) + (∂ U)/(∂ x) = 0 $

The momentum part of the action $integral #d t (1/2 m vel(x)^2)$ does not use the volume-form of $ℝ^3$, but instead uses the quadratic form $|vel(x)|^2$ of $ℝ^3$ and the volume-form $\#d t$ of time $ℝ$

The Lagrangian can be written as a function $L(x,vel(x)) = 1/2 m vel(x)^2 - U(x)$ (a function on the tangent bundle)

#tag("Euler--Lagrange-point-particle") 
#indent[
  For a general $L$, repeat the above process. Action
  $
    integral #d t (L(x,vel(x)))
  $
  Differential of the action
  $
    integral #d t ((∂ L)/(∂ x) ⋅ X + (∂ L)/(∂ vel(x)) ⋅ vel(X))
  $
  use 
  $ 
    (#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X) 
    
    = ((#d)/(#d t) (∂ L)/(∂ vel(x))) ⋅ X + (∂ L)/(∂ vel(x)) ⋅ vel(X) 
  $
  is zero at the boundary + integral is zero for all δ diffeomorphism $X$ ==> Lagrange-equation
  $
    (∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ vel(x)) = 0
  $
]
Euclidean metric-manifold
#indent[
  Generalize to Euclidean metric-manifold

  Needs #link(<metric-connection>)[]

  Although the metric volume form is not used, due to the form of the kinetic energy part of the action, it is still related to the metric geodesic 
]
Symmetry and conserved quantity 

Handling the symmetry of non-relativistic spacetime $ℝ × ℝ^3$ *alias* the Galileo group, generated from the translation of $ℝ × ℝ^3$, rotation, non-relativistic boost

let $t ⇝ x(t)$ be the solution to the action equation

Note that the variation of $x(t)$ along the symmetry may make it no longer a solution to the equation, i.e., the symmetric δ diffeomorphism may not be zero at the boundary, i.e., it will change the endpoints of the path, so the relevant derivative of the action at the solution $x(t)$ may not be zero

- Time translation
#indent[  
  In non-relativity, the mapping that preserves the measure and direction of time $ℝ$ is the time translation $t ⇝ t + a$

  δ variation of the integral area #tag("calculation-1-action-point-particle-non-relativity")
  $ 
    (#d)/(#d s) integral_(t_0 + s a)^(t_1 + s a) #d t (L(t))

    &= (L(t_1) - L(t_0)) ⋅ a \

    &= integral_(t_0)^(t_1) #d t ((#d)/(#d t) L(t) ⋅ a)
  $ 
  The first equation can come from the fundamental theorem of calculus + derivative of composite functions

  In general, changing the region $I$ by $exp(a(t))$ is given by δ diffeomorphism $a(t)$
  $
    (#d)/(#d s) limits(integral)_(exp(s a(t)) I) #d t (f(t)) 
    
    = integral_(I) #d t ((#d)/(#d t) f(t) ⋅ a(t))
  $
  On the other side, use #link(<integral-change-of-variable-formula>)[change of variable formula] 
  $ 
    integral_(t_0 + s a)^(t_1 + s a) #d t (L(t)) = integral_(t_0)^(t_1) #d t (L(t + s a)) 
  $
  Apply it to
  $ 
    L(t) &= L(x(t),vel(x)(t))  
  $
  Then use the exchange of differential and integral
  $ 
    (#d)/(#d s) integral_(t_0)^(t_1) #d t 
    = integral_(t_0)^(t_1) #d t (#d)/(#d s) 
  $
  Derivative of composite function $(#d)/(#d s) L(x(t + s a),vel(x)(t + s a)) = (∂ L)/(∂ x) vel(x) a + (#d L)/(#d vel(x)) acc(x) a$
  
  is the variation of the action on the (changing endpoints) δ differentiation $(#d)/(#d s)(0) x(t + s a) = a vel(x)(t) = X(t)$ at the solution $x(t)$ #tag("calculation-2-action-point-particle-non-relativity")
  $
    (#d)/(#d s) integral_(t_0 + s a)^(t_1 + s a) #d t (L(t))
    &= integral #d t ((∂ L)/(∂ x) ⋅ X + (∂ L)/(∂ vel(x)) ⋅ vel(X)) \
    &= integral #d t (((∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ vel(x))) ⋅ X + (#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X)) \
    &quad "by product-rule of" (#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X) \
    &= integral #d t ((#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X)) \
    &quad "Lagrange-equation" (∂ L)/(∂ x) - (#d)/(#d t) (∂ L)/(∂ vel(x)) = 0
  $
  recall 
  $ 
    (#d)/(#d s) integral_(t_0 + s a)^(t_1 + s a) #d t (L(t))

    &= (L(t_1) - L(t_0)) ⋅ a \

    &= integral_(t_0)^(t_1) #d t ((#d)/(#d t) L(t) ⋅ a)
  $
  use $X = a vel(x)$, merge
  $ 
    integral_(t_0)^(t_1) (#d)/(#d t) #d t ((∂ L)/(∂ vel(x)) ⋅ X) 
    
    = ((∂ L)/(∂ vel(x)) ⋅ vel(x) ⋅ a) |_(t_0)^(t_1)
  $
  Get
  $
    ((∂ L)/(∂ vel(x)) ⋅ vel(x) - f) |_(t_0)^(t_1) ⋅ a = 0
  $
  Quantity
  $
    E = (∂ L)/(∂ vel(x)) ⋅ vel(x) - f
  $
  Called the energy of the action $L$, is invariant along time $t$, forall $a ∈ ℝ$, i.e. conserved

  For $f = 1/2 m vel(x)(t)^2 - U(x(t))$ the energy is
  #tag("energy-point-particle-non-relativity") 
  $
    E &= m vel(x)^2 - (1/2 m vel(x)^2 - U) \
    &= 1/2 m vel(x)^2 + U 
  $
  Homogeneity of Time ==> Conservation of Energy
]
- Spatial translation
#indent[
  Kinetic energy part of the action
  
  $ integral #d t (1/2 m vel(x)^2) $

  Although the spatial translation δ diffeomorphism is not zero at the boundary or changes the path endpoints, the time endpoints remain unchanged, and spatial translation does not change kinetic energy. with $x + s a$, $(#d)/(#d t)(x + s a) = vel(x)$
  $ 
    &quad (#d)/(#d s)(s = 0) integral_(t_0)^(t_1) #d t (1/2 m ((#d)/(#d t)(x + s a))^2) \
    
    &= (#d)/(#d s) integral_(t_0)^(t_1) #d t (1/2 m vel(x)^2) \
    
    &= 0
  $
  So similar to #link(<calculation-2-action-point-particle-non-relativity>)[the case of energy], with δ diffeomorphism $(#d)/(#d s) (x + s a) = a = X(t)$
  $
    0 = integral_(t_0)^(t_1) #d t ((#d)/(#d t) ((∂ L)/(∂ vel(x)) ⋅ X)) = (∂ L)/(∂ vel(x)) |_(t_0)^(t_1) ⋅ a
  $
  #tag("momentum-point-particle-non-relativity") The momentum of the action $integral #d t (1/2 m vel(x)^2)$ 
  
  $ m vel(x) ⋅ a $ 

  is invariant along time $t$, forall $a ∈ ℝ^3$, i.e. conserved

  More generally, let the action $integral #d t (L(x,vel(x)))$ with $(∂ L)/(∂ a) = 0$ such that the endpoints in this direction do not affect the action, then the momentum $ (∂ L)/(∂ vel(x)) ⋅ a $ is conserved

  Homogeneity of Space ==> Translation Invariance of $L$ ==> Conservation of Total Linear Momentum

  Lagrangian

  $ L(x,vel(x)) = 1/2 sum m_i vel(x)_i^2 - sum_(i < i') U(|x_i - x_i'|) $

  $(∂ L)/(∂ a) = 0$ forall $a ∈ ℝ^3$ (by $(x_i + a) - (x_i' + a) = x_i - x_i'$) so the momentum $ sum m vel(x)_i ⋅ a $ is conserved 
]
- Spatial rotation
#indent[
  Choose an origin. Lagrangian

  $ L(x,vel(x)) = 1/2 sum m vel(x)^2 - U(|x|) $

  $so(3)$ is represented as a rotation around axis $n$, cross product $n × x$ is δ rotation
  
  Rotation around axis ==> $(n × x) perp n$
  
  in $ℂ$, $e^(θ #i) z = z + θ #i z + o(z)$ with $θ #i ∈ Im(ℂ) = #u (1) = so(2)$, $z perp #i z$ and magnitude $|θ #i| = |n|$
  
  Length is invariant to direction $(∂|x|)/(∂ x) ⋅ (n × x) = 0$

  Similar to the case of momentum, if the Lagrangian is invariant to rotation, the δ diffeomorphism (tangent vector field) is $n × x$, thus

  #tag("rotation-momentum-point-particle-non-relativity") Rotation momentum rotation-momentum *alias* angular momentum angular-momentum 
  
  $ m vel(x) ⋅ (n × x) = n ⋅ (x × m vel(x)) $ 
  
  is invariant along time $t$, forall $n ∈ so(3)$

  quantity
  $
    x × m vel(x)
  $
  is also called rotation momentum

  More generally, $L(x,vel(x))$ with $n ⋅ (x × ∂) f = 0$ such that the Lagrangian is invariant under rotation about $n$, then the rotational momentum about $n$ is
  $
    x × (∂ L)/(∂ vel(x))
  $
  Isotropy of Space ==> Rotational Invariance of $L$ ==> Conservation of Total Angular Momentum

  $a ⋅ (b × c)$ = #link(<volume-of-parallelogram>)[parallelepiped directed volume] span by $a,b,c$ in Euclidean $ℝ^3$

  The rotational momentum $x × m vel(x)$ is constant with respect to time, so $span(x × vel(x))^⟂$ is a constant 2d plane. Since $(x × vel(x)) perp x,vel(x)$, $span(x,vel(x)) ⊂ span(x × vel(x))^⟂$, $x(t)$ is in the constant two-dimensional plane $span(x × vel(x))^⟂$

  For the Lagrangian of a system of point particles

  $ L(x,vel(x)) = 1/2 sum m_i vel(x)_i^2 - sum_(i < i') U(|x_i - x_i'|) $

  Total rotational momentum

  $ n ⋅ sum (x_i × m vel(x)_i) $

  is invariant along time $t$
]
- Non-relativistic boost
#indent[
  Non-relativistic boost $x ⇝ x + t ⋅ v$ 
  
  The conserved quantity of the action $integral 1/2 m vel(x)^2 #d t$ is

  $ m(t ⋅ vel(x) - x) ⋅ v $

  forall $v ∈ ℝ^3$
]
- The action $1/2 m vel(x)^2$ has all δ symmetries of non-relativistic spacetime $ℝ × ℝ^3$, a 10 dimensional conserved quantity

- The action $1/2 m vel(x)^2 - U(x)$ has conserved energy

- The action $sum 1/2 m_i vel(x)_i^2 - sum_(i < i') U(x_i - x_i')$ has conserved energy and momentum

- The action $1/2 m vel(x)^2 - U(|x|)$ has conserved energy and rotational momentum

- The action $sum 1/2 m_i vel(x)_i^2 - sum_(i < i') U(|x_i - x_i'|)$ has conserved energy, momentum, rotational momentum, 7 dimension

Non-relativistic potential $(V,A) ∈ ℝ × ℝ^3$

- Rigid body
#indent[
  Parameterized by $SO(3)$ (or $SO(2)$), so it can be regarded as a non-relativistic particle on the Euclidean manifold $SO(3)$. But the use of metric or the use of kinetic energy is not the #link(<Killing-form>)[] of $so(3)$, because for objects that are not uniformly mass-distributed spheres, rotations in different directions have different inertias. Moment of inertia i.e. metric $g$ may need to be calculated additionally
]