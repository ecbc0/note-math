#import "../module/module.typ": *
#show: module

#let H = c-Lie-algebra("H")
#let a = c-Lie-algebra("a")
#let x = c-Lie-algebra("x")
#let p = c-Lie-algebra("p")

Quantization of Schrodinger eq harmonic oscillator ($ℝ$)
#indent[
  Commutation relation of raising and lowering operators $#a (± #i) = 1/2 (#x ± 1/(#i m ω) #p)$ and energy operator
  $
    [#H,#a (#i)] &= - ℏ ω #a (#i) \
    [#H,#a (- #i)] &= ℏ ω #a (-#i) 
  $
  let $#a = #a (#i)$. $#a^† = #a (-#i)$

  let $y = (frac(m ω, ℏ))^(1/2) x, λ = (1/2 ℏ ω)^(-1)$, raising and lowering operators simplify to $#a (± #i) = #x ± 1/#i #p$

  Eigenfunctions of the energy operator
  
  Starting from the ground state $#a ψ = 0 ==> ψ = ψ_0 = exp(-1/2 y^2)$
  
  Obtain the eigenfunctions of the next energy level through the raising operator $#a^†$
  $ 
    ψ_(n) &= #a^(† n) ψ &&= (-1)^n e^(1/2 y^2) (#d^n)/(#d y^n) e^(-1/2 y^2) ψ
  $
  where
  $ H_(n) (y) = (-1)^n e^(y^2) (#d^n)/(#d y^(n)) e^(- y^2) $ 

  is the Hermite polynomial

  Eigenfunction normalization 

  $ (1/(2^n n!) (frac(m ω , ℏ π))^(1/2))^(1/2) e^(-1/2 frac(m ω, ℏ q^2)) H_n ((frac(m ω , ℏ π) q)^(1/2)) $
]
Harmonic oscillator path integral quantization

If the solution of the harmonic oscillator $a(#i) e^(-#i ω t) + a(-#i) e^(#i ω t)$ uses fixed starting positions $x_0,x_1$, then 
$ 
  a(#i) = frac(
    x_1 e^(ω t_0 #i) - x_0 e^(ω t_1 #i),
    e^(ω (t_1 - t_0) (- #i)) - e^(ω (t_1 - t_0) #i)
  ) 
$
where $e^(ω (t_1 - t_0) #i) - e^(ω (t_1 - t_0) (- #i)) = 2 #i sin ω (t_1 - t_0)$

action ($z = Re(z) + #i Im(z)$)
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
  Propagator $K$ represents constructing a unitary using the path integral Lagrangian. For the harmonic oscillator, use the Fourier transform method. cf. #link("https://en.wikipedia.org/wiki/Path_integral_formulation#Simple_harmonic_oscillator")[wiki:Path_integral_formulation]

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
Decomposition of $#H, e^(- #i 1/ℏ #H t), K(t_0,t,x_0,q)$ given by characteristic orthonormal basis $ket(n)$
$
  #H &= sum_(n) E_n ket(n) bra(n) \
  e^(- #i 1/ℏ #H t) &= sum_(n) e^(- #i 1/ℏ E_n t) ket(n) bra(n) \
  K &= sum_(n) e^(- #i 1/ℏ E_n t) ⟨ x ket(n) bra(n) x_0 ⟩ 
$
$K = ((m ω)/(π ℏ))^(1/2) e^(- #i 1/2 ω T) R(e^(- #i ω T))$ then let $R$ perform Taylor expansion, where $e^(- #i 1/2 ω T) e^(- #i n ω T) = e^(- #i (1/2 + n) ω T)$ corresponds to energy level $E_n = (1/2 + n) ℏ ω$
]
If you are interested *Question* Quantization of $ℂ$ harmonic oscillator and spin harmonic oscillator