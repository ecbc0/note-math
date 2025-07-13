#import "../module/module.typ": *
#show: module

#let H = text("H", fill: rgb("#d25b00"))
#let a = text("a", fill: rgb("#d25b00"))
#let x = text("x", fill: rgb("#006dea"))
#let p = text("p", fill: rgb("#d25b00"))

For Schrodinger eq, harmonic oscillator potential
$
  #i ∂_t ψ = (- (ℏ^2)/(2 m) ∂_x^2 + 1/2 m ω^2 x^2) ψ = ((#p^2)/(2m) + 1/2 m #x^2) ψ
$
Calculate all #link(<quamtum-operator-motivation>)[δ action Lie bracket]
$
  [#H, ω (#i/ℏ m #x)] &= ℏ ω ⋅ (-#i) #i/ℏ #p \
  [#H, #i/h #p] &= ℏ ω ⋅ #i ω (#i/ℏ m #x)
$
This commutation relation is partially similar to $so(3)$ complexification eigenvalue technique (@ref-13, p.20--30) (will be used in the treatment of angular momentum operator)

Complexify to get the characteristic operator of $[#H,*]$, obtaining #tag("ladder-operator")
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

The lowest energy state $ψ$ of the $ℕ$ $L^2$ eigenstates given by the ladder operator of $ℝ$ harmonic oscillator quantization satisfies #tag("harmonic-oscillator-ground-state")
$
  #a _ - ψ = 0 &==> (#d ψ)/(#d x) = - (m ω)/ℏ x ψ \
  &==> ψ = ((m ω)/ℏ 1/π)^(1/4) exp(- 1/2 (m ω)/ℏ x^2) 
$
Calculate the action of the $#H$ operator, obtaining the lowest energy of $1/2 ℏ ω$

high order energy states (normalized)
And $(exp v) (x)$ or $(exp t v) (x)$ is a local diffeomorphism. This is the relationship between ODEs and symmetries, i.e. Lie theory

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

#tag("why-pi-in-Gaussian-integral") This may give a clue as to why the factorial #link(<Stirling-approximation>)[Stirling approximation] $n! ≈ (2 π)^(1/2) n^(1/2) (n/e)^(n)$ has $π$.

The characteristic polynomial of the harmonic oscillator ODE $acc(x) = - ω^2 x$ is $ξ^2 = - ω^2$, and the prototype is $ξ^2 = -1$, so $#i$ and complex numbers are introduced, so there is a circle, and there is $π$. $e^(- 1/2 x^2)$ is related to the ground state of the quantum harmonic oscillator. To simplify the discussion, $ℏ$ is omitted. The normal momentum operator $- #i ∂_x$ actually corresponds to the phase change $e^(#i) != 1$. If $π$ is added to the momentum operator, the momentum operator will corresponds to the phase change $e^(#i 2 π) = 1$, and then the ground state may also become $e^(- a x^2)$, where $a$ contains the $π$ factor, and its $L^2$ integral is directly normalized without adding the $π$ scaling factor

The appearance of $π$ in the Stirling approximation may be similar. We should ask where the factorial (or its reciprocal) after adding the $π$ scaling factor comes from, for example, from the volume calculation of the sphere and the spherical surface

Another hint is that the $frac(ω T, sin ω T)$ that appears in the kernel of the Fourier transform ver. of the oscillator Feynman #link(<path-integral-quantization>)[path integral quantization] corresponds to the property of the #link(<factorial-function-1>)[factorial function] $z!(-z)! = (π z)/(sin π z)$, with an additional $π$ scaling factor, so the modified factorial function should satisfy $z!(-z)! = (z)/(sin z)$?

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

#tag("path-integral-quantization") 
#indent[
  Propagator $K$ represents constructing a unitary using the Feynman path integral with Lagrangian. For the harmonic oscillator, use the Fourier transform method. cf. #link("https://en.wikipedia.org/wiki/Path_integral_formulation#Simple_harmonic_oscillator")[wiki:Path_integral_formulation]

  let $T = t_1 - t_0$

  For endpoints fixed but offset from the classical path, perform Fourier expansion $x - x_"cl" = sum_(n = 1)^(∞) b_n sin(n π t/T)$, action $S(b_1 ,…, b_n ,…) = S_"cl" + sum 1/2 |b_n|^2 m/2 T ((n^2 π^2)/T^2 - ω^2)$
  $
    K(T, x_0, x) 
    &= lim_(n -> ∞) ("unitary-factor")(n) ⋅ integral_(ℝ^n) #d b_n ⋯ #d b_1 space 
    e^(#i/ℏ S(b_1 ,…, b_n)) \
    &= (frac(m ω, 2 π ℏ #i T))^(1/2) 
    e^(#i/ℏ S_"cl") 
    product_(n = 1)^(∞) (n π)/2^(1/2) integral_(ℝ) #d b_n exp(#i/(2ℏ) |b_n|^2 m/2 T ((n^2 π^2)/T^2 - ω^2)) \
    &= (frac(m ω,2 π ℏ #i sin ω T))^(1/2) exp((#i m ω)/(2 ℏ) ⋅ 
      frac(
        (|x_1|^2 + |x_0|^2) cos ω T - 2 Re ⟨ x_1, x_0 ⟩, 
        sin ω T
      ) )
  $
  Used Gauss integral + Euler infinite product $product_(n = 1)^(∞) (1 - z^2/n^2) = (sin π z)/(π z) = 1/(z! (-z)!)$ 
]
#tag("eigen-decomposition") 
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
  $K = ((m ω)/(π ℏ))^(1/2) e^(- #i 1/2 ω T) R(e^(- #i ω T))$ then let $R$ perform Taylor expansion, where $e^(- #i 1/2 ω T) e^(- #i n ω T) = e^(- #i (1/2 + n) ω T)$ corresponds to energy level $E_n = (1/2 + n) ℏ ω$. This shows that the path integral can directly give the energy level, without using the raising and lowering operator method?
]
Regarding field quantization

One perspective is path integral quantization of fields.

#tag("field-path-integral-quantization") *Question* Since the harmonic oscillator can perform Foureir transform path integral, why don't KG eq (or Dirac eq) similar to the harmonic oscillator eq also perform #link(<linear-superposition-of-KG-eq>)[Foureir transform] path integral?

Another (?) perspective is field operator quantization of fields.

recall #link(<Klein--Gordon-equation>)[] Consider the plane wave solution
$
  (∂_t^2 - ∂_x^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0 \
  (∂_t^2 + p^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0
$
If we ignore plane waves, even if we might lose accuracy, we get an ODE
$
  (∂_t^2 + p^2 + m^2) ϕ = 0
$
This is the $ℂ$-valued point particle harmonic oscillator equation, with frequency $ω = E = p_0 = (p^2 + m^2)^(1/2)$

Then the point particle harmonic oscillator can be quantized

recall #link(<linear-superposition-of-KG-eq>)[] $L^2$ superposition of KG plane waves on the hyperboloid $ℍ𝕪^3 = {p^2 = m^2}$
$ 
  ϕ(t, x) = integral_(ℍ𝕪^3) #d p  
  (
    a(p,#i) e^(E t #i) e^(- p x #i) 
    + a(p,-#i) e^(- E t #i) e^(p x #i)
  )
$
*Question* Homomorphize the quantum harmonic oscillator of point particles to the quantum harmonic oscillator of the KG field, with $L^2 (ℍ𝕪^3,ℂ)$ coefficient constraint (Sobolev), the coefficient constraint of multiple升降 corresponds to $L^2$ symmetric tensors, the entire space is $⨁_(n in ℕ) ⨀^n L^2 (ℍ𝕪^3, L^2(ℂ,ℂ))$ (where $L^2(ℂ,ℂ)$ is the space of $ℂ$ harmonic oscillator quantization)

*Question* Is this tensor based on the $L^2 (ℍ𝕪^3,ℂ)$ module? 

Vacuum $0$ is something lower than zero order

The energy operator of the KG field quantum harmonic oscillator can also be expressed in the form of KG field operator + energy of the KG field, even if this is not calculating the energy of the KG field (field operator after differential plane wave expansion) 
$
  integral_(ℍ𝕪^3 \ 𝕊(Im(ℂ))) #d p #d #i 1/2 (#a (p,#i)^† #a (p,#i) + #a (p,#i) #a (p,#i)^†) 

  = integral_(ℝ^3) #d x 1/2 (∂_t ϕ^† ∂_t ϕ + ∂_x ϕ^† ∂_x ϕ + m^2 ϕ^† ϕ)
$
For the Dirac field, it seems that there is no need to do what the KG field does, because "once" quantization already exists, but it is finite-dimensional, a representation comes from the two eigenvalues of $su(2), ℂ^2$ #link(<Pauli-matrix>)[] (@ref-18, p.305--308)

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

#let p = spin($p$)

recall #link(<linear-superposition-of-Dirac-eq>)[] $L^2$ superposition of Dirac plane waves on $ℍ𝕪^3$
$
  limits(integral)_(ℍ𝕪^3) #d p
    (vec(#p^(◊ 1/2) ξ, #p^(1/2) ξ)(p) e^(- p x #i) + vec(#p^(◊ 1/2) η, - #p^(1/2) η)(p) e^(p x #i))
$
*Question* Homomorphically map it to the quantum field of the Dirac field, plus $L^2 (ℍ𝕪^3,ℂ^2 ⊕ ℂ^(2 ◊))$ coefficient restriction (Sobolev), the coefficient restriction of multiple raising and lowering corresponds to $L^2$ alternating tensor, the entire space is $⨁_(n in ℕ) ⋀^n L^2 (ℍ𝕪^3,ℂ^2 ⊕ ℂ^(2 ◊))$

*Question* Is this tensor based on the $L^2 (ℍ𝕪^3,ℂ)$ module? 

Vacuum $0$ is something lower than zero order

The energy operator of the Dirac field quantum field can also be expressed in the form of Dirac field operator + energy of the Dirac field, even if this is not calculating the energy of the Dirac field
$
  integral_(ℍ𝕪^3 \ 𝕊(Im(ℂ))) #d p #d #i 1/2 (#a (p,#i)^† #a (p,#i) - #a (p,#i) #a (p,#i)^†) 

  &= integral_(ℝ^3) #d x vec(ϕ,ψ)^† #i ∂_0 vec(ϕ,ψ) \

  &= integral_(ℝ^3) #d x vec(ϕ,ψ)^† mat(
      #i #spin-d _x , m 𝟙 ;
      m 𝟙 , - #i #spin-d _x
    ) vec(ϕ,ψ)
$