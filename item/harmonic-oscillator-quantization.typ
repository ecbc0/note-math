#import "../module/module.typ": *
#show: module

#let H = text("H", fill: rgb("#d25b00"))
#let a = text("a", fill: rgb("#d25b00"))
#let x = text("x", fill: rgb("#006dea"))
#let p = text("p", fill: rgb("#d25b00"))

Schrodinger eq 谐振子 ($ℝ$) 的量子化
#indent[
  升降算子 $#a (± #i) = 1/2 (#x ± 1/(#i m ω) #p)$ 和能量算子的交换关系
  $
    [#H,#a (#i)] &= - ℏ ω #a (#i) \
    [#H,#a (- #i)] &= ℏ ω #a (-#i) 
  $
  let $#a = #a (#i)$. $#a^† = #a (-#i)$

  将升降算子简化为 $#a (± #i) = #x ± 1/#i #p$

  能量算子的特征函数
  
  开始于基态 $#a ψ = 0 ==> ψ = ψ_0 = exp(-1/2 y^2)$
  
  通过升算子 $#a^†$ 得到下一能级的特征函数
  $ 
    ψ_(n) = #a^(† n) ψ 
    &= (-1)^n e^(1/2 y^2) (#d^n)/(#d y^n) e^(-1/2 y^2) ψ \
    &= H_(n)(y) exp(-1/2 y^2)
  $
  其中
  $ H_(n) (y) = (-1)^n e^(y^2) (#d^n)/(#d y^(n)) e^(- y^2) $ 

  是 Hermite 多项式

  特征函数归一化 

  $ (1/(2^n n!) (frac(m ω , ℏ π))^(1/2))^(1/2) e^(-1/2 frac(m ω, ℏ) x^2) H_n ((frac(m ω , ℏ π) x)^(1/2)) $
]
谐振子路径积分量子化

如果谐振子的解 $a(#i) e^(-#i ω t) + a(-#i) e^(#i ω t)$ 使用固定起始位置 $x_0,x_1$, 则 
$ 
  a(#i) = frac(
    x_1 e^(ω t_0 #i) - x_0 e^(ω t_1 #i),
    e^(ω (t_1 - t_0) (- #i)) - e^(ω (t_1 - t_0) #i)
  ) 
$
其中 $e^(ω (t_1 - t_0) #i) - e^(ω (t_1 - t_0) (- #i)) = 2 #i sin ω (t_1 - t_0)$

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
如果你感兴趣 *Question* $ℂ$ 谐振子和自旋谐振子的量子化