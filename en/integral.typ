#import "../module/module.typ": *
#show: module

#tag("integral_of_piecewise_constant_function") 
#indent[
  (constant function $f_i$ supported on simplex $σ_i$) + ($f = sum f_i σ_i$ countable infinite combination) + ($integral_(σ) f = sum f_i (σ_i) Vol(σ_i)$ absolutely convergent)
]

According to the decomposition of simplex intersections and differences, finite addition and subtraction of piecewise constant functions remain piecewise constant functions.

Define the integral distance $‖f - g‖_1 = integral |f - g|$. Or use the $2$ norm $‖f - g‖_2 = (integral |f - g|^2)^(1/2)$.

#tag("Lebesgue_integrable") 
#indent[
  $ϕ ∈ L^1 $ := $forall ε > 0$ there exist piecewise constant $f,g$ such that $|ϕ - f| <= |g|$ and $‖g‖ = integral |g| < ε$.

  Similarly for $L^2$.

  In the space of piecewise constant functions, similar to the definition of measurable sets, for the integral distance, triangle inequality, uniqueness of limits.
]
#tag("Lebesgue_integral") 
#indent[
  Allows defining $f -> ϕ$ and $integral ϕ = lim_(f -> ϕ) integral f$.

  $ϕ ∈ L^1(ℝ^d,ℝ^d') <==> |ϕ| ∈ L^1(ℝ^d,ℝ)$.

  $ϕ ∈ L^2(ℝ^d,ℝ^d') <==> |ϕ| ∈ L^2(ℝ^d,ℝ) <==> |ϕ|^2 in L^1(ℝ^d,ℝ)$.
]
*Example* But note that there exists a net convergent in integral distance but not pointwise convergent to the limit function.
#indent[
  The sequence of bisection walks converges in integral distance, with measure tending to $0$.
  $ 
    f_1 &= 𝟙_([0,1/2]) \
    f_2 &= 𝟙_([1/2,1]) \
    f_3 &= 𝟙_([0,1/4]) \
    &⋯ \
    f_(2 + ⋯ + 2^k + p) &= 𝟙_([(p-1)/2^k, p/2^k])
  $ 
  It does not satisfy the definition of pointwise convergence.

  $ forall x in [0,1] , forall N in ℕ , exists i,j > N \ f_i (x) = 0, f_j (x) = 1 $.

  Although intuitively the concept converges to the empty set.
]
#tag("integrable_exist_subnet_almost_everywhere_pointwise_convergence") (@ref-5, p.129--130)
#indent[
  However, for every net convergent in $L^1, L^2$ integral distance, there exists a subnet that converges pointwise almost everywhere to the target integrable function. The key point is to prove that there exists a set $A$ of arbitrarily small measure such that on $A^∁$ the convergence is absolutely uniform.
]
$𝟙_A in L^1, L^2$ defines measurable sets as Lebesgue measurable sets, which may be disconnected.

What we define is absolute integrability. Other integral operations, e.g., $integral_(-∞)^(∞)  e^(- #i x^2) $, are special limiting operations based on absolute integrability and depend on the context of the problem.

Linear change of coordinates $A in GL$ gives the integral change of variables formula $det A$.

#tag("integral_on_form") For integration over an $n$-region, integration of a function with respect to volume is equivalent to integration of an $n$-form. If considered as integration of an $n$-form, then the integral is $GL$ invariant.

#tag("integral_change_of_variable_formula") 
#indent[
  let $f$ be almost everywhere analytic.

  Change of variables formula for diffeomorphisms for integrals: $integral_(ℝ^n) f = integral_(ℝ^n) (f ∘ ϕ) |det #d ϕ|$ or $integral_(ℝ^n) #d y space f(y) = integral_(ℝ^n) #d x space (f ∘ ϕ)(x) |det #d ϕ (x)|$.

  Apply the differential $#d f$ of the coordinate change map at each simplex center as an affine map acting on the domain simplex to obtain the codomain simplex for approximation. For bounded regions, use the #link(<mean_value_theorem_analytic>)[mean value theorem] (higher order) approximation to perform compact uniform control, then take the partition limit (@ref-12, p.92--99).

  Then unbounded regions are a countable approximation from bounded regions, using the $sum_(i = 1 .. ∞) ε_i < ε$ technique.

  If considered as integration of an $n$-form, then the change of variables for integrals is equivalent to the integration of $n$-forms (cf. #link(<integral_on_form>)[]) being diffeomorphism invariant.
]
#tag("integral_on_manfold") *Question* 
#indent[
  According to the change of variables formula, the integral of an $n$-form in coordinates on a manifold is invariant (cf. #link(<integral_on_form>)[]).

  But if one wants to integrate an $n$-form defined on an entire #link(<orientable>)[orientable] manifold, how should it be done?

  To define the integral, some kind of countability assumption is needed, e.g., the manifold can be covered by countably many coordinate charts.

  The integral is duplicated on the overlaps of coordinate charts, and the duplication needs to be removed.
]
The measures and integrals defined using rectangles and simplices are equivalent, because rectangles and simplices can be countably approximated by each other.

#tag("Fubini_theorem") 

$ integral_X #d x integral_X' #d x' f(x,x') = integral_(X × X') #d (x,x') f(x,x') = integral_X' #d x' integral_X #d x f(x,x') $.

Because piecewise constant functions on rectangular regions are product-decomposable, with absolute convergence bounds controlling them.

Fubini theorem 2 ... (@ref-5)

Fubini's theorem can be used to prove that the computation of the volume under the graph of a function is the integral of the height function over the base area.

*Example* Polar coordinates, 2d, 3d, hyperbolic ...

Area coarea formula ...

#tag("low_dim_integral") 
#indent[
  The integral of a $k$-form over a $k$-simplex in $n$-dimensional space is invariant, and there is no need to define volume for low-dimensional simplices.

  Two simplices of order $k < n$, even if adjacent, may lie in different $k$-subspaces of the $n$-dimensional space, so the $k$-direction may be discontinuous, and the $k$-form may take different values. This differs from the $n$-dimensional case, where the codimension is zero so all $n$-simplices share the same orientation.

  A well-behaved $k$-dimensional region should require good regularity of the $k$-direction, e.g., a $k$-dimensional submanifold, using the tangent space of the submanifold.
]