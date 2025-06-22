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
  #a _ ± &= #x ∓ #i/(m ω) #p = (#x ∓ ℏ/(m ω) (#d)/(#d x)) \
  #a _ ± ^† &= #a _ ∓ \
  [#H, #a _ ±] &= ± ℏ ω #a _ ±
$
This commutation relation indicates that $#H$ has eigenvalues with uniform spacing $ℏ ω$
$
  #H ψ = E ψ 
  ==> #H #a _ ± ψ &= #a _ ± #H ψ ± ℏ ω #a _ ± ψ \
  &= (E ± ℏ ω) #a _ ± ψ
$
*Question* Try to generalize the technique here to (if possible) $ℂ$ classical harmonic oscillator and #link(<square-root-of-harmonic-oscillator>)[spin harmonic oscillator] quantization

The lowest energy state $ψ$ of the $ℕ$ $L^2$ eigenstates given by the ladder operator of $ℝ$ harmonic oscillator quantization satisfies #tag("harmonic-oscillator-ground-state")
$
  #a _ - ψ = 0 &==> (#d ψ)/(#d x) = - (m ω)/ℏ x ψ \
  &==> ψ = ((m ω)/ℏ 1/π)^(1/4) exp(- 1/2 (m ω)/ℏ x^2) 
$
Calculate the action of the $#H$ operator, obtaining the lowest energy of $1/2 ℏ ω$

high order energy states (normalized)
$
  ψ_n = 1/(n!)^(1/2) (1/2 (m ω)/ℏ)^(n/2) #a _ + ^n ψ
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

In addition to making the eigenvalues of $#H$ uniformly spaced, the raising operator also satisfies $1/2 [#a _ + , #a _ -] = ℏ/(m ω) 𝟙$, so that it can correspond to 
- metric symmetric tensor space $#a _ + (ϕ) = ϕ ⊙, #a _ - (ϕ) = (ϕ ⊙)^†, [#a _ + (ϕ), #a _ - (ϕ)] = ⟨ ϕ , ϕ ⟩ 𝟙$ 
- symmetric polynomial space $#a _ + = z, #a _ - = (#d)/(#d z)$
Also satisfies $1/2 {#a _ + , #a _ -} = (1/2 m ω^2)^(-1) #H$

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
  Used Gauss integral + infinite product $product_(n = 1)^(∞) (1 - x^2/n^2) = (sin π x)/(π x)$ 
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
$K = ((m ω)/(π ℏ))^(1/2) e^(- #i 1/2 ω T) R(e^(- #i ω T))$ then let $R$ perform Taylor expansion, where $e^(- #i 1/2 ω T) e^(- #i n ω T) = e^(- #i (1/2 + n) ω T)$ corresponds to energy level $E_n = (1/2 + n) ℏ ω$
]