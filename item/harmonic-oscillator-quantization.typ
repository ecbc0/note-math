#import "../module/module.typ": *
#show: module

#let H = text("H", fill: rgb("#d25b00"))
#let a = text("a", fill: rgb("#d25b00"))
#let x = text("x", fill: rgb("#006dea"))
#let p = text("p", fill: rgb("#d25b00"))

对于 Schrodinger eq, 谐振子 potential
$
  #i ∂_t ψ = (- (ℏ^2)/(2 m) ∂_x^2 + 1/2 m ω^2 x^2) ψ = ((#p^2)/(2m) + 1/2 m #x^2) ψ
$
算出所有 #link(<quamtum-operator-motivation>)[δ action Lie bracket]
$
  [#H, ω (#i/ℏ m #x)] &= ℏ ω ⋅ (-#i) #i/ℏ #p \
  [#H, #i/h #p] &= ℏ ω ⋅ #i ω (#i/ℏ m #x)
$
这种交换关系部分地类似 $so(3)$ 复化特征值化技术 (@ref-13, p.20--30) (角动量算子的处理中将会用到)

复化来得到 $[#H,*]$ 的特征算子, 得到 #tag("ladder-operator")
$
  #a _ ± &= #x ∓ #i/(m ω) #p = (#x ∓ ℏ/(m ω) (#d)/(#d x)) \
  #a _ ± ^† &= #a _ ∓ \
  [#H, #a _ ±] &= ± ℏ ω #a _ ±
$
这种交换关系说明 $#H$ 的有均匀间隔 $ℏ ω$ 的特征值
$
  #H ψ = E ψ 
  ==> #H #a _ ± ψ &= #a _ ± #H ψ ± ℏ ω #a _ ± ψ \
  &= (E ± ℏ ω) #a _ ± ψ
$
*Question* 尝试将这里的技术推广到 (如果可能的话) $ℂ$ 经典谐振子

$ℝ$ 谐振子量子化的升降算子给出的 $ℕ$ 个 $L^2$ 特征态的最低能量态 $ψ$ 满足 #tag("harmonic-oscillator-ground-state")
$
  #a _ - ψ = 0 &==> (#d ψ)/(#d x) = - (m ω)/ℏ x ψ \
  &==> ψ = ((m ω)/ℏ 1/π)^(1/4) exp(- 1/2 (m ω)/ℏ x^2) 
$
计算 $#H$ 算子的作用, 得到最低能量是 $1/2 ℏ ω$

高阶的能量态 (归一化)
$
  ψ_n = 1/(n!)^(1/2) (1/2 (m ω)/ℏ)^(n/2) #a _ + ^n ψ
$ 
能量是 $E_n = (1/2 + n) ℏ ω$

利用 $- e^(1/2 y^2) (#d^n)/(#d y^n) e^(- 1/2 y^2) ϕ(y) = (y - (#d)/(#d y)) ϕ(y) ∼ #a _ +$ 可以将特征态写为
$
  ψ_n 
  &= 1/(n!)^(1/2) 1/2^(n/2) H_n ((frac(m ω , ℏ π) x)^(1/2)) 
  ⋅ (frac(m ω , ℏ π))^(1/4) exp(-1/2 frac(m ω, ℏ) x^2) \
  H_n (y) &= (-1)^n e^(y^2) (#d^n)/(#d y^(n)) e^(- y^2)
$
$H_n$ 称为 Hermite 多项式 

对于量子谐振子, 即使是静态波函数, 也有 $ℕ$ 种可能的特征能量 $E_n = (1/2 + n) ℏ ω$

_Warning_ 不要认为最低能量是非零的 $1/2 ℏ ω$ 就认为有凭空的能量, 因为静电氢原子的能量还能是负数

可以证明这个 $ℕ$ 特征态系列正交展开了 $L^2$
#indent[
  例如用 Fourier 变换的方法证明 $y^n e^(- 1/2 y^2), n = 0 .. ∞$ 展开了 $L^2$
  
  假设正交 $integral_ ℝ y^n e^(- 1/2 y^2) f(y) #d y = 0$, 定义 $g(y) = e^(- 1/2 y^2) f(y)$ 
  
  Fourier 变换 $hat(g)(ξ) = integral_ ℝ e^(- #i ξ y) g(y) #d y$ 
  
  在 $ξ = 0$ 的所有阶微分等于零 $(#d^n )/(#d ξ^n) hat(g)(0) = integral_ ℝ y^n e^(- 1/2 y^2) f(y) #d y = 0$
]
$L^2$ 展开系数 $sum c_n ψ_n, sum |c_n|^2 = 1$ 的二次型解释为在 $ψ_n$ 的概率. 能量期望是 $⟨ #H ⟩ = sum |c_n|^2 E_n$

升降算子除了使得 $#H$ 特征值有均匀间隔, 还满足 $1/2 [#a _ + , #a _ -] = ℏ/(m ω) 𝟙$, 使得能对应到 
- metric 对称张量空间 $#a _ + (ϕ) = ϕ ⊙, #a _ - (ϕ) = (ϕ ⊙)^†, [#a _ + (ϕ), #a _ - (ϕ)] = ⟨ ϕ , ϕ ⟩ 𝟙$ 
- 对称多项式空间 $#a _ + = z, #a _ - = (#d)/(#d z)$
也满足 $1/2 {#a _ + , #a _ -} = (1/2 m ω^2)^(-1) #H$

由于不是 $[#a _ + , #a _ -] ∼ #H$, 所以不同态到 $so(3)$ 复化特征值化技术的情况

如果谐振子的解 $a(#i) e^(-#i ω t) + a(-#i) e^(#i ω t)$ 使用固定起始位置 $x_0,x_1$, 则 
$ 
  a(#i) = frac(
    x_1 e^(ω t_0 #i) - x_0 e^(ω t_1 #i),
    e^(ω (t_1 - t_0) (- #i)) - e^(ω (t_1 - t_0) #i)
  ) 
$
其中 $e^(ω (t_1 - t_0) #i) - e^(ω (t_1 - t_0) (- #i)) = 2 #i sin ω (t_1 - t_0)$

作用量
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
其中 $2 cos ω (t - t_0) = e^(ω (t_1 - t_0) #i) + e^(ω (t_1 - t_0) (- #i))$

对于时间只依赖于差值 $t_1 - t_0$

#tag("path-integral-quantization") 
#indent[
  propagator $K$ 表示用 Feynman 路径积分和 Lagrangian 来构造 unitary. 对于谐振子, 用 Fourier 变换方法. cf. #link("https://en.wikipedia.org/wiki/Path_integral_formulation#Simple_harmonic_oscillator")[wiki:Path_integral_formulation]

  let $T = t_1 - t_0$

  对端点固定但是偏移了经典的路径进行 Fourier 展开 $x - x_"cl" = sum_(n = 1)^(∞) b_n sin(n π t/T)$, action $S(b_1 ,…, b_n ,…) = S_"cl" + sum 1/2 |b_n|^2 m/2 T ((n^2 π^2)/T^2 - ω^2)$
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
  使用了 Gauss 积分 + 无穷乘积 $product_(n = 1)^(∞) (1 - x^2/n^2) = (sin π x)/(π x)$ 
]
#tag("eigen-decomposition") 
#indent[
  $e^(-E/h t #i) ψ(x)$ 给出的特征方程
  $
    #H ψ = E ψ
  $
  特征规范正交基 $ket(n)$ 给出的对 $#H, e^(- #i 1/ℏ #H t), K(t_0,t,x_0,x)$ 的分解
  $
    #H &= sum_(n) E_n ket(n) bra(n) \
    e^(- #i 1/ℏ #H t) &= sum_(n) e^(- #i 1/ℏ E_n t) ket(n) bra(n) \
    K &= sum_(n) e^(- #i 1/ℏ E_n t) ⟨ x ket(n) bra(n) x_0 ⟩ 
  $
  $K = ((m ω)/(π ℏ))^(1/2) e^(- #i 1/2 ω T) R(e^(- #i ω T))$ 再让 $R$ 进行 Taylor 展开, 其中 $e^(- #i 1/2 ω T) e^(- #i n ω T) = e^(- #i (1/2 + n) ω T)$ 对应能级 $E_n = (1/2 + n) ℏ ω$
]
*Question* Dirac 场是否有谐振子模型? 