#import "/module/module.typ": *
#show: module

#tag("integral-piecewise-constant-function") 
#indent[
  constant function $f_i$ support on simplex $σ_i$ + $f = sum f_i σ_i$ countable infinite combination + $integral_(σ) f = sum f_i (σ_i) Vol(σ_i)$ absolutely convergent
]
#tag("integral-simplicial-function") 
#indent[
  Or use continuous piecewise affine linear or simplicial function e.g. for simplex with vertices $x_0 ,…, x_n$, $f(sum t_i x_i) = t_i f(x_i)$. The integral is defined as the average of the values according to the vertices i.e. the result of the affine center mapping $f((x_0 + ⋯ + x_n)/(n+1)) Vol("simp"(x_1 ,…, x_n))$
]
According to the decomposition of simplex intersection and subtraction, the finite addition and subtraction of piecewise constant functions is still a piecewise constant function

Define the integral distance $‖f - g‖_1 = integral |f - g|$. Or use $2$ norm $‖f - g‖_2 = (integral |f - g|^2)^(1/2)$ 

#tag("Lebesgue-integrable") 
#indent[
  $ϕ ∈ L^1 $ := $forall ε > 0$ there exist piecewise constant functions $f,g$ such that $|ϕ - f| <= |g|$ and $‖g‖ = integral |g| < ε$

  Similarly for $L^2$

  In the piecewise constant space, similar to the definition of measurable sets, for integral distance, triangle inequality, the limit is unique
]
#tag("Lebesgue-integral") 
#indent[
So that we can define $f -> ϕ$ and $integral ϕ = lim_(f -> ϕ) integral f$

$ϕ ∈ L^1(ℝ^d,ℝ^d') <==> |ϕ| ∈ L^1(ℝ^d,ℝ)$

$ϕ ∈ L^2(ℝ^d,ℝ^d') <==> |ϕ| ∈ L^2(ℝ^d,ℝ) <==> |ϕ|^2 in L^1(ℝ^d,ℝ)$
]
*Example* But it should be noted that, although the integral distance Cauchy net is always integrally convergent, there exists an integral distance Cauchy net that does not converge pointwise to the limit function
#indent[
  The bisection walk sequence is Cauchy in integral distance, and the measure tends to $0$
  $ 
    f_1 &= 𝟙_([0,1/2]) \
    f_2 &= 𝟙_([1/2,1]) \
    f_3 &= 𝟙_([0,1/4]) \
    &⋯ \
    f_(2 + ⋯ + 2^k + p) &= 𝟙_([(p-1)/2^k, p/2^k])
  $ 
  It does not follow the definition of pointwise convergence

  $ forall x in [0,1] , forall N in ℕ , exists i,j > N \ f_i (x) = 0, f_j (x) = 1 $

  Although conceptually it converges to the empty set
]
#tag("integrable-exist-subnet-almost-everywhere-pointwise-convergence") 
#indent[
  But for all integral distances, there exists a subnet in the Cauchy net that converges almost everywhere pointwise to the target integrable function. This comes from the fact that there exists a set $A$ with arbitrarily small measure such that it converges absolutely and uniformly on $A^∁$. cf. p.129--130 of @ref-5 
]
The measurable set defined by $𝟙_A in L^1$ is a Lebesgue measurable set, which may be disconnected

What we define is absolutely integrable. Other integral operations, such as $integral_(-∞)^(∞)  e^(- #i x^2) $, are special limit operations based on absolute integrability, and are related to the environment of the problem

The linear change of coordinates $A in GL$ gives the integral change of variable formula formula $det A$. Or if it is considered as integrating an $n$ form, then the integral is $GL$ invariant

Almost everywhere analytic

#tag("integral-change-of-variable-formula") 
#indent[
  The change of variable formula formula for diffeomorphisms of integrals is $integral_(ℝ^n) f = integral_(ℝ^n) (f ∘ ϕ) |det #d ϕ|$ or $integral_(ℝ^n) #d y space f(y) = integral_(ℝ^n) #d x space (f ∘ ϕ)(x) |det #d ϕ (x)|$
  
  The differential of the coordinate transformation map $#d f$ at each simplex center as an affine map acting on the domain simplex is used to obtain the range simplex for approximation, and then the partition limit is taken
  
  It is necessary to first perform compact uniform control on the bounded region for the approximation of the differential mean value theorem
  
  Then the unbounded region is a countable approximation from the bounded region, using the $sum_(i = 1 .. ∞) ε_i < ε$ technique

  If it is considered as integrating an $n$ form, then the integral change of variable formula is equivalent to $n$ form integration is diffeomorphism invariant
]
The measures and integrals defined by rectangles and simplexes (without fixed coordinate axes) are equivalent, because rectangles and simplexes can be countably approximated to each other

#tag("Fubini-theorem") 

$ integral_X #d x integral_X' #d x' f(x,x') = integral_(X × X') #d (x,x') f(x,x') = integral_X' #d x' integral_X #d x f(x,x') $

Because the piecewise constant value of the rectangular region is product decomposable, and then use the absolutely convergent upper bound to control it

Fubini theorem 2 ... (@ref-5)

Fubini's theorem can be used to prove that the volume calculation below the graph of a function is the integral of the height function with respect to the volume of the base

area coarea formula

#tag("try-to-define-low-dim-integral") 
#indent[
  Try to define the integral for $k < n$ dimensional simplex or parallelepiped and $k$ form
  
  The action of a form on a simplex or parallelepiped is defined as the action of the form on the unit volume parallelepiped in the $k$ direction where the simplex is located (if it exists)

  simplicial map type $k$ form := Let $x_0 ,…, x_k$ simplex be the vertices, then $ω(sum t_i x_i) = sum t_i ω(x_i)$
  
  If a vertex of a $k$ chain is in adjacent $k$ simplexes with different $k$ directions, then the $k$ form on this vertex has different action values. or the $k$ chain is not continuous in the $k$ direction. This is different from the $n$-th order case, because the codimension is zero, so all $n$ chains have the same direction

  A good approximation should require the $k$ direction to have good regularity, but without extra structure, it seems difficult to define this concept (even the Grassmann manifold?)

  The differential submanifold structure can easily eliminate this $k$ direction discontinuity

  Different $n$-dimensional $k$ forms may have the same action value in a $k$ direction, but this layer of redundancy can be eliminated by considering the action in all $k$ directions

  Similar to the $n$-th order case, the simplicial map form on the $k$ chain defines the integral $integral_(σ) ω = sum ω("center of" σ_i) Vol(σ_i)$
]