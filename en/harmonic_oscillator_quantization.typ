#import "../module/module.typ": *
#show: module

#let H = "H"
#let a = "a"
#let x = "x"
#let p = "p"

For Schrodinger eq, harmonic oscillator potential
$
  #i ∂_t ψ = (- (ℏ^2)/(2 m) ∂_x^2 + 1/2 m ω^2 x^2) ψ = ((#p^2)/(2m) + 1/2 m #x^2) ψ
$
Calculate all #link(<quamtum_operator_motivation>)[δ action Lie bracket]
$
  [#H, ω (#i/ℏ m #x)] &= ℏ ω ⋅ (-#i) #i/ℏ #p \
  [#H, #i/h #p] &= ℏ ω ⋅ #i ω (#i/ℏ m #x)
$
This commutation relation is partially similar to $so(3)$ complexification eigenvalue technique (@ref-13, p.20--30) (will be used in the treatment of angular momentum operator)

Complexify to get the characteristic operator of $[#H,*]$, obtaining #tag("ladder_operator")
$
  #a _ ± &= (m ω)/ℏ #x ∓ #i/ℏ #p = ((m ω) / ℏ #x ∓ (#d)/(#d x)) \
  (#a _ ±) ^† &= #a _ ∓ \
  [#H, #a _ ±] &= ± ℏ ω #a _ ±
$
This commutation relation indicates that $#H$ has eigenvalues with uniform spacing $ℏ ω$
$
  #H ψ = E ψ 
  ==> #H #a _ ± ψ &= #a _ ± #H ψ ± ℏ ω #a _ ± ψ \
  &= (E ± ℏ ω) #a _ ± ψ
$
*Question* Try to generalize the technique here to (if possible) $ℂ$ classical harmonic oscillator

The lowest energy state $ψ$ of the $ℕ$ $L^2$ eigenstates given by the ladder operator of $ℝ$ harmonic oscillator quantization satisfies #tag("harmonic_oscillator_ground_state")
$
  #a _ - ψ = 0 &==> (#d ψ)/(#d x) = - (m ω)/ℏ x ψ \
  &==> ψ = ((m ω)/ℏ 1/π)^(1/4) exp(- 1/2 (m ω)/ℏ x^2) 
$
Calculate the action of the $#H$ operator, obtaining the lowest energy of $1/2 ℏ ω$

high order energy states (normalized)
$
  ψ_n = 1/(n!)^(1/2) (2 (m ω)/ℏ)^(-n/2) #a _ + ^n ψ
$ 
Energy is $E_n = (1/2 + n) ℏ ω$

Using $- e^(1/2 y^2) (#d^n)/(#d y^n) e^(- 1/2 y^2) ϕ(y) = (y - (#d)/(#d y)) ϕ(y) ∼ #a _ +$ the eigenstate can be written as
$
  ψ_n 
  &= 1/(n!)^(1/2) 1/2^(n/2) H_n ((frac(m ω , ℏ π) x)^(1/2)) 
  ⋅ (frac(m ω , ℏ π))^(1/4) exp(-1/2 frac(m ω, ℏ) x^2) \
  H_n (y) &= (-1)^n e^(y^2) (#d^n)/(#d y^(n)) e^(- y^2)
$
$H_n$ is called Hermite polynomial 

For quantum harmonic oscillator, even for static wave function, there are $ℕ$ possible characteristic energies $E_n = (1/2 + n) ℏ ω$

_Warning_ Don't assume that since the lowest energy is non-zero $1/2 ℏ ω$, there is energy out of nowhere, because the energy of a static hydrogen atom can still be negative

It can be proven that this $ℕ$ eigenstate series orthogonally expands $L^2$
#indent[
  For example, prove that $y^n e^(- 1/2 y^2), n = 0 .. ∞$ expands $L^2$ using Fourier transform method
  
  Assume that the orthogonal $integral_ ℝ y^n e^(- 1/2 y^2) f(y) #d y = 0$, define $g(y) = e^(- 1/2 y^2) f(y)$ 
  
  Fourier transform $hat(g)(ξ) = integral_ ℝ e^(- #i ξ y) g(y) #d y$ 
  
  All order derivatives at $ξ = 0$ are equal to zero $(#d^n )/(#d ξ^n) hat(g)(0) = integral_ ℝ y^n e^(- 1/2 y^2) f(y) #d y = 0$
]
The quadratic form interpretation of the $L^2$ expansion coefficients $sum c_n ψ_n, sum |c_n|^2 = 1$ is the probability in $ψ_n$. The expected energy is $⟨ #H ⟩ = sum |c_n|^2 E_n$

In addition to causing the eigenvalues of $#H$ to be uniformly spaced, the ladder operators also satisfy $1/2 [#a _ + , #a _ -] = (m ω)/ℏ 𝟙$, which allows them to correspond to 
- metric symmetric tensor space $#a _ + (ϕ) = ϕ ⊙, #a _ - (ϕ) = (ϕ ⊙)^†, [#a _ + (ϕ), #a _ - (ϕ)] = ⟨ ϕ , ϕ ⟩ 𝟙$ 
- symmetric polynomial space $#a _ + = z, #a _ - = (#d)/(#d z)$
They also satisfy $1/2 {#a _ + , #a _ -} = (ℏ/(2 m))^(-1) #H$

Since it is not $[#a _ + , #a _ -] ∼ #H$, the situation for different states to $so(3)$ complexified eigenvalue technique

#tag("Gaussian_integral")
#indent[
  $ integral_(-∞)^(∞) e^(- a x^2) #d x = (π/a)^(1/2) $

  Holds for $a > 0$. $a > 0$ contains dense points, consistent with the uniqueness of analytic continuation. Analytically continued to $a in ℂ ∖ 0$. But note that $(π/a)^(1/2)$ has a double branch.

  Diagonalize the quadratic form $A$ into $"diag"(a_1 ,…, a_n)$ on Euclidean type $ℝ^n$ using an orthonormal basis.
  $
    integral_(ℝ^n) e^(- ⟨ x mid(|) A mid(|) x ⟩) #d x 
    &= integral_(ℝ^n) e^(-(a_1 x_1^2 + ⋯ + a_n x_n^2)) #d x \
    &= integral_(-∞)^(∞) e^(- a_1 x_1^2) #d x_1 ⋯ integral_(-∞)^(∞) e^(- a_n x_n^2) #d x_n \
    &= (π/a_1)^(1/2) ⋯ (π/a_n)^(1/2) \
    &= (π^(n/2))/(a_1 ⋯ a_n)^(1/2) \
    &= (π^(n/2))/(det A)^(1/2)
  $
]
#tag("why_pi_in_Gaussian_integral") 
#indent[
  This might provide a clue as to why $π$ appears in the #link(<Stirling_approximation>)[Stirling approximation] of the factorial $n! ≈ (2 π)^(1/2) n^(1/2) (n/e)^(n)$.

  The characteristic polynomial of the harmonic oscillator ODE $acc(x) = - ω^2 x$ is $ξ^2 = - ω^2$, the prototype is $ξ^2 = -1$, so $#i$ and complex numbers are introduced, which leads to circles, and thus $π$. $e^(- 1/2 x^2)$ is related to the ground state of the quantum harmonic oscillator. For simplicity, $ℏ$ is omitted. The general momentum operator $- #i ∂_x$ actually corresponds to a phase change $e^(#i) != 1$. If we add a $π$ scaling factor to the momentum operator, then the momentum operator can correspond to a phase change $e^(#i 2 π) = 1$. At this time, the ground state may also become $e^(- a x^2)$ where $a$ contains a $π$ factor, and its $L^2$ integral is directly normalized, without needing to add a $π$ scaling factor. Similarly, for #link(<path_integral_quantization>)[Feynman path integrals], using this method may no longer require additional normalization factors or Zeta function regularization.

  The appearance of $π$ in Stirling's approximation might also be similar. One should ask where the factorial (or its reciprocal) with the scaling factor $π$ comes from, for example, from the volume calculation of spheres and spherical surfaces.

  Another revelation is that the $frac(ω T, sin ω T)$ appearing in the kernel of the Feynman #link(<path_integral_quantization>)[path integral quantization] of the harmonic oscillator corresponds to the property of the #link(<factorial_function_1>)[factorial function] $z!(-z)! = (π z)/(sin π z)$, where an additional $π$ scaling factor also appears. Therefore, should the modified factorial function satisfy $z!(-z)! = (z)/(sin z)$?
]
If the solution of the harmonic oscillator $a(#i) e^(-#i ω t) + a(-#i) e^(#i ω t)$ uses fixed starting positions $x_0,x_1$, then 
$ 
  a(#i) = frac(
    x_1 e^(ω t_0 #i) - x_0 e^(ω t_1 #i),
    e^(ω (t_1 - t_0) (- #i)) - e^(ω (t_1 - t_0) #i)
  ) 
$
where $e^(ω (t_1 - t_0) #i) - e^(ω (t_1 - t_0) (- #i)) = 2 #i sin ω (t_1 - t_0)$

Action
$
  S_"cl" (t_0, t_1, x_0,x_1) 
  &= integral_(t_0)^(t_1) #d t space
    1/2 m ω^2 ⋅ 4 Re ⟨ a(- #i) e^(ω t #i), a(#i) e^(ω t (- #i)) ⟩ \
  &= 1/2 m ω^2 ⋅ 4 ⋅ 1/ω
    (Im ⟨ a(- #i) e^(ω t #i), a(#i) e^(ω t (- #i)) ⟩) |_(t_0)^(t_1) \
  &= 1/2 m ω ⋅ 
    frac(
      (|x_1|^2 + |x_0|^2) cos ω (t - t_0) - 2 Re ⟨ x_1, x_0 ⟩, 
      sin ω (t - t_0)
    ) 
$
where $2 cos ω (t - t_0) = e^(ω (t_1 - t_0) #i) + e^(ω (t_1 - t_0) (- #i))$

For time only depending on the difference $t_1 - t_0$

#tag("path_integral_quantization") 
#indent[
  cf. (@ref-28, ch.path-integral-formalism)

  Propagator $K$ represents constructing unitary using Feynman path integrals and Lagrangian.
  
  For free field
  $
    K(t_0,x_0,t_1,x_1) = integral_(x(t_0) = x_0)^(x(t_1) = x_1) #d x(t) exp(#i/ℏ integral_(t_0)^(t_1) #d t (1/2 m vel(x)^2))
  $
  Decomposed into classical path and gap $x = x_"cl" + y$, $y(t_0) = y(t_1) = 0$ 
  $
    integral_(t_0)^(t_1) #d t (1/2 m (vel(x)_"cl" + vel(y))^2) 
    = integral_(t_0)^(t_1) #d t (1/2 m (vel(x)_"cl"^2 + vel(y)^2 + 2 vel(x)_"cl" vel(y)))
  $
  - $vel(x)_"cl" vel(y) = (#d)/(#d t) (vel(x)_"cl" y) - acc(x)_"cl" y$ 
  - Boundary is zero $y(t_0) = y(t_1) = 0$ 
  - $acc(x)_"cl" = 0$ 
  ==> $integral_(t_0)^(t_1) #d t (vel(x)_"cl" vel(y)) = 0$

  Now
  $
    K(t_0,x_0,t_1,x_1) = exp(#i/ℏ S[x_"cl" (t)]) integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)])
  $
  Where, due to the classical path of a free particle being a straight line $x_"cl" (t) = x_0 + (x_1 - x_0)/(t_1 - t_0) (t - t_0)$
  $
    S[x_"cl" (t)] 
    &= integral_(t_0)^(t_1) #d t (1/2 m vel(x)_"cl"^2) \
    &= 1/2 m frac((x_1 - x_0)^2,t_1 - t_0)
  $

  - $vel(y)^2 = (#d)/(#d t) (y vel(y)) - y acc(y)$ 
  - Boundary is zero $y(t_0) = y(t_1) = 0$ 
  ==> $integral_(t_0)^(t_1) #d t (vel(y)^2) = - integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩$

  Now
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)]) 
    = integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(- (#i m)/(2 ℏ) integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩)
  $
  As a generalization of Gaussian integral

  - Quadratic form $⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩$ 
  - $y(t_0) = y(t_1) = 0$. To simplify notation, use $t_0 = 0, t_1 = T$
  ==> Eigenvalues $λ_n = (n π/T)^2$. $L^2$ orthogonal eigenfunctions $sin(n π/T t)$. Expansion of $L^2$ orthogonal eigenfunctions or Fourier expansion $y(t) = sum_(n = 1 .. ∞) y_n sin(n π/T t)$

  Diagonalize with $L^2$ orthogonal basis. Now
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(- (#i m)/(2 ℏ) integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩)
    = product_(n = 1 .. ∞) integral_(∞)^(∞) e^(- a_n y_n^2)  #d y_n
  $
  Using the normalization from #link(<why_pi_in_Gaussian_integral>)[], part of the infinite product becomes $product_(n = 1 .. ∞) 1 = 1$. The final result is
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(- (#i m)/(2 ℏ) integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩) 
    = (frac(m,2 π #i ℏ T))^(1/2)
  $
  The total result is
  $
    K(t_0,x_0,t_1,x_1) = (frac(m,2 π #i ℏ (t_1 - t_1)))^(1/2) exp((#i m)/(2 ℏ) frac((x_1 - x_0)^2,t_1 - t_0))
  $

  For the harmonic oscillator, similar to

  Using integration by parts
  $
    K(t_0,x_0,t_1,x_1) = exp(#i/ℏ S[x_"cl" (t)]) integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)])
  $
  - Quadratic form $⟨ y mid(|) (#d^2)/(#d t^2) + ω^2 mid(|) y ⟩$ 
  - $y(t_0) = y(t_1) = 0$. For simpler notation, use $t_0 = 0, t_1 = T$
  ==> Eigenvalues $λ_n = (n π/T)^2 - ω^2 = (n π/T)^2 (1 - ((ω T)/(π n))^2)$. $L^2$ orthogonal eigenfunctions $sin(n π/T t)$. $L^2$ orthogonal eigenfunction expansion or Fourier expansion $y(t) = sum_(n = 1 .. ∞) y_n sin(n π/T t)$

  Diagonalize using an orthogonal basis and a generalization of the Gaussian integral. The difference from the free field is the emergence of a new infinite product $product_(n = 1 .. ∞) (1 - ((ω T)/(π n))^2) = (sin ω T)/(ω T)$ (cf. #link(<Euler_reflection_formula>)[])

  The result is
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)]) 
    = (frac(m ω, 2 π ℏ #i sin ω T))^(1/2) 
  $
  The total result is
  $
    K(t_0,x_0,t_1,x_1) \
    = (frac(m ω, 2 π ℏ #i sin ω (t_1 - t_0)))^(1/2) exp((#i m ω)/(2 ℏ) ⋅ 
      frac(
        (|x_1|^2 + |x_0|^2) cos ω (t_1 - t_0) - 2 x_1 x_0, 
        sin ω (t_1 - t_0)
      ) )
  $
]
Is this method not generalizable to the hydrogen atom problem? It is said that there is a method to transform the hydrogen atom problem into the path integral of the harmonic oscillator under the $SO(4)$ symmetry.

*Question* Inspired by the classification of regularity in the discussion of the proof of Stokes' theorem, it seems like the concepts of propagator and Sobolev systems are quite compatible

#tag("eigen_decomposition") 
#indent[
  Characteristic equation given by $e^(-E/h t #i) ψ(x)$
  $
    #H ψ = E ψ
  $
  Decomposition of $#H, e^(- #i 1/ℏ #H t), K(t_0,t,x_0,x)$ given by characteristic orthonormal basis $ket(n)$
  $
    #H &= sum_(n) E_n ket(n) bra(n) \
    e^(- #i 1/ℏ #H t) &= sum_(n) e^(- #i 1/ℏ E_n t) ket(n) bra(n) \
    K &= sum_(n) e^(- #i 1/ℏ E_n t) ⟨ x ket(n) bra(n) x_0 ⟩ 
  $
  According to #link("https://en.wikipedia.org/wiki/Path_integral_formulation#Simple_harmonic_oscillator")[wiki:Path_integral_formulation], $K = ((m ω)/(π ℏ))^(1/2) e^(- #i 1/2 ω T) R(e^(- #i ω T))$ then let $R$ perform Taylor expansion, where $e^(- #i 1/2 ω T) e^(- #i n ω T) = e^(- #i (1/2 + n) ω T)$ corresponds to energy level $E_n = (1/2 + n) ℏ ω$
]
There should be a kind of "spectral theory", "spectral measure", that can define $tr, det$ through normalization techniques

In addition to finite-dimensional $⨁_1^N V(E_n)$ and discrete countably infinite-dimensional $L^2$ spaces $⨁_(n in ℕ) V(E_n)$, one can also consider integral infinite-dimensional $L^2$ spaces $(integral #d E) V(E)$. In this case, the "basis" is not required to be in $L^2$, for example $exp(-#i E t)$. However, the decomposition coefficients of the function with respect to the basis $f(t) = integral_(ℝ) #d E hat(f)(E) exp(-#i E t)$ should be in $L^2$, $integral_(ℝ) #d E |hat(f)(E)|^2 < ∞$

Regarding field quantization

One perspective is path integral quantization of fields.

#tag("field_path_integral_quantization") *Question* Since the harmonic oscillator can perform path integration by eigenvalue diagonalization & generalized Gaussian integration, why don't KG eq (or Dirac eq) which are similar to harmonic oscillator eq also perform #link(<linear_superposition_of_KG_eq>)[eigenvalue diagonalization] & generalized Gaussian integration for path integration? Moreover, the Lagrangian of the harmonic oscillator is very similar to the Lagrangian of KG eq. Then time $t in ℝ$ corresponds to spacetime $x in ℝ^(1,3)$, and position $x in ℝ$ corresponds to field value $ϕ$. But I don't support using a rectangle in $ℝ^(1,3)$ for path integration; a setting more compatible with $SO(1,3)$ should be used. For example, perhaps the time interval $t_1 - t_0$ should correspond to the spacetime quadratic interval $(x_1 - x_0)^2$? Not using $x_1^2 - x_0^2$ because it is not translation invariant?

Another (?) viewpoint is field quantization using field operators

recall #link(<Klein__Gordon_equation>)[] Consider plane wave solutions
$
  (∂_t^2 - ∂_x^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0 \
  (∂_t^2 + p^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0
$
But this depends on the decomposition of time and space, which is not conducive to generalization to general spacetime manifolds

For the Dirac field, other structures need to be used. Use two eigenvalues of $su(2), ℂ^2$ #link(<Pauli_matrix>)[] (@ref-18, p.305--308)

- $#H = 1/2 σ_1 = 1/2 mat(1 ;, -1) \ 
  #i #H in su(2)$
  
- $#H vec(1,0) &= 1/2 vec(1,0) \
  #H vec(0,1) &= - 1/2 vec(0,1)$
  
- $#a _(±) &= 1/2 (σ_2 ± 1/#i σ_3) \ 
  #a _+ &= mat(,1;0) \ 
  #a _- &= mat(,0;1)$

- $(#a _(±))^† = a_(∓)$

- $(#a _(±))^2 = 0$

- $#a _+ vec(0,1) = vec(1,0) \
  #a _- vec(1,0) = vec(0,1)$

- $1/2 {#a _+,#a _-} = 𝟙$

- $1/2 [#a _+,#a _-] = #H$

- $[#H, #a _(±)] = ± #a _(±)$

After adding parity, it is $ℂ^2 ⊕ ℂ^(2 ◊)$