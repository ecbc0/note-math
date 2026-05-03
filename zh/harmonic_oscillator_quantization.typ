#import "../module/module.typ": *
#show: module

#let H = "H"
#let a = "a"
#let x = "x"
#let p = "p"

对于 Schrodinger eq, 谐振子 potential
$
  #i ∂_t ψ = (- (ℏ^2)/(2 m) ∂_x^2 + 1/2 m ω^2 x^2) ψ = ((#p^2)/(2m) + 1/2 m #x^2) ψ
$
算出所有 #link(<quamtum_operator_motivation>)[δ action Lie bracket]
$
  [#H, ω (#i/ℏ m #x)] &= ℏ ω ⋅ (-#i) #i/ℏ #p \
  [#H, #i/h #p] &= ℏ ω ⋅ #i ω (#i/ℏ m #x)
$
这种交换关系部分地类似 $so(3)$ 复化特征值化技术 (@ref-13, p.20--30) (角动量算子的处理中将会用到)

复化来得到 $[#H,*]$ 的特征算子, 得到 #tag("ladder_operator")
$
  #a _ ± &= (m ω)/ℏ #x ∓ #i/ℏ #p = ((m ω) / ℏ #x ∓ (#d)/(#d x)) \
  (#a _ ±) ^† &= #a _ ∓ \
  [#H, #a _ ±] &= ± ℏ ω #a _ ±
$
这种交换关系说明 $#H$ 的有均匀间隔 $ℏ ω$ 的特征值
$
  #H ψ = E ψ 
  ==> #H #a _ ± ψ &= #a _ ± #H ψ ± ℏ ω #a _ ± ψ \
  &= (E ± ℏ ω) #a _ ± ψ
$
*Question* 尝试将这里的技术推广到 (如果可能的话) $ℂ$ 经典谐振子

$ℝ$ 谐振子量子化的升降算子给出的 $ℕ$ 个 $L^2$ 特征态的最低能量态 $ψ$ 满足 #tag("harmonic_oscillator_ground_state")
$
  #a _ - ψ = 0 &==> (#d ψ)/(#d x) = - (m ω)/ℏ x ψ \
  &==> ψ = ((m ω)/ℏ 1/π)^(1/4) exp(- 1/2 (m ω)/ℏ x^2) 
$
计算 $#H$ 算子的作用, 得到最低能量是 $1/2 ℏ ω$

高阶的能量态 (归一化)
$
  ψ_n = 1/(n!)^(1/2) (2 (m ω)/ℏ)^(-n/2) #a _ + ^n ψ
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

升降算子除了使得 $#H$ 特征值有均匀间隔, 还满足 $1/2 [#a _ + , #a _ -] = (m ω)/ℏ 𝟙$, 使得能对应到 
- metric 对称张量空间 $#a _ + (ϕ) = ϕ ⊙, #a _ - (ϕ) = (ϕ ⊙)^†, [#a _ + (ϕ), #a _ - (ϕ)] = ⟨ ϕ , ϕ ⟩ 𝟙$ 
- 对称多项式空间 $#a _ + = z, #a _ - = (#d)/(#d z)$
也满足 $1/2 {#a _ + , #a _ -} = (ℏ/(2 m))^(-1) #H$

由于不是 $[#a _ + , #a _ -] ∼ #H$, 所以不同态到 $so(3)$ 复化特征值化技术的情况

#tag("Gaussian_integral")
#indent[
  $ integral_(-∞)^(∞) e^(- a x^2) #d x = (π/a)^(1/2) $

  对 $a > 0$ 成立. $a > 0$ 含有稠密点, 符合解析延拓唯一性. 解析延拓到 $a in ℂ ∖ 0$. 但是注意 $(π/a)^(1/2)$ 有二重分支

  在 Euclidean 型 $ℝ^n$ 上用规范正交基对二次型 $A$ 对角化 $"diag"(a_1 ,…, a_n)$
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
  这可能给出了线索之于为什么阶乘的 #link(<Stirling_approximation>)[Stirling 近似] $n! ≈ (2 π)^(1/2) n^(1/2) (n/e)^(n)$ 会出现 $π$.

  谐振子 ODE $acc(x) = - ω^2 x$ 的特征多项式是 $ξ^2 = - ω^2$, 原型是 $ξ^2 = -1$, 于是 $#i$ 和复数被引入, 于是有圆, 就有 $π$. $e^(- 1/2 x^2)$ 联系于量子谐振子的基态. 为了简化讨论, 省略 $ℏ$. 一般的动量算子 $- #i ∂_x$ 其实会对应到相位改变 $e^(#i) != 1$, 如果给动量算子加上 $π$ 伸缩因子, 则动量算子可以对应到相位改变 $e^(#i 2 π) = 1$. 此时, 基态可能也会变成 $e^(- a x^2)$ 其中 $a$ 含有 $π$ 因子, 并且其 $L^2$ 积分直接归一化, 而不需要加入 $π$ 伸缩因子. 同理, 对于 #link(<path_integral_quantization>)[Feynman 路径积分], 用这种方式就可能不再需要额外的归一化因子或者 Zeta function regularization

  Stirling 近似的 $π$ 的出现可能也是类似的, 应该问, 加上 $π$ 伸缩因子之后的阶乘 (或者其倒数) 来自哪里, 例如, 来自球和球面的体积计算

  另一个启示是, 谐振子的 Feynman #link(<path_integral_quantization>)[路径积分量子化] 的 kernel 中出现的 $frac(ω T, sin ω T)$ 对应到 #link(<factorial_function_1>)[阶乘函数] 的性质 $z!(-z)! = (π z)/(sin π z)$, 也出现了额外的 $π$ 伸缩因子, 因此修改后的阶乘函数应该满足 $z!(-z)! = (z)/(sin z)$?
]
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

#tag("path_integral_quantization") 
#indent[
  cf. (@ref-28, ch.path-integral-formalism)

  propagator $K$ 表示用 Feynman 路径积分和 Lagrangian 来构造 unitary
  
  对自由场
  $
    K(t_0,x_0,t_1,x_1) = integral_(x(t_0) = x_0)^(x(t_1) = x_1) #d x(t) exp(#i/ℏ integral_(t_0)^(t_1) #d t (1/2 m vel(x)^2))
  $
  分解为经典路径和差距 $x = x_"cl" + y$, $y(t_0) = y(t_1) = 0$ 
  $
    integral_(t_0)^(t_1) #d t (1/2 m (vel(x)_"cl" + vel(y))^2) 
    = integral_(t_0)^(t_1) #d t (1/2 m (vel(x)_"cl"^2 + vel(y)^2 + 2 vel(x)_"cl" vel(y)))
  $
  - $vel(x)_"cl" vel(y) = (#d)/(#d t) (vel(x)_"cl" y) - acc(x)_"cl" y$ 
  - 边界是零 $y(t_0) = y(t_1) = 0$ 
  - $acc(x)_"cl" = 0$ 
  ==> $integral_(t_0)^(t_1) #d t (vel(x)_"cl" vel(y)) = 0$

  现在
  $
    K(t_0,x_0,t_1,x_1) = exp(#i/ℏ S[x_"cl" (t)]) integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)])
  $
  其中, 由于自由粒子的经典路径是直线 $x_"cl" (t) = x_0 + (x_1 - x_0)/(t_1 - t_0) (t - t_0)$
  $
    S[x_"cl" (t)] 
    &= integral_(t_0)^(t_1) #d t (1/2 m vel(x)_"cl"^2) \
    &= 1/2 m frac((x_1 - x_0)^2,t_1 - t_0)
  $

  - $vel(y)^2 = (#d)/(#d t) (y vel(y)) - y acc(y)$ 
  - 边界是零 $y(t_0) = y(t_1) = 0$ 
  ==> $integral_(t_0)^(t_1) #d t (vel(y)^2) = - integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩$

  现在
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)]) 
    = integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(- (#i m)/(2 ℏ) integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩)
  $
  作为 Gaussian 积分的推广

  - 二次型 $⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩$ 
  - $y(t_0) = y(t_1) = 0$. 为简化记号, 用 $t_0 = 0, t_1 = T$
  ==> 特征值 $λ_n = (n π/T)^2$. $L^2$ 正交特征函数 $sin(n π/T t)$. $L^2$ 正交特征函数的展开 or Fourier 展开 $y(t) = sum_(n = 1 .. ∞) y_n sin(n π/T t)$

  用 $L^2$ 正交基进行对角化. 现在
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(- (#i m)/(2 ℏ) integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩)
    = product_(n = 1 .. ∞) integral_(∞)^(∞) e^(- a_n y_n^2)  #d y_n
  $
  使用 #link(<why_pi_in_Gaussian_integral>)[] 中的归一化, 无穷乘积的一部分变成 $product_(n = 1 .. ∞) 1 = 1$. 最终结果是
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(- (#i m)/(2 ℏ) integral_(t_0)^(t_1) #d t ⟨ y mid(|) (#d^2)/(#d t^2) mid(|) y ⟩) 
    = (frac(m,2 π #i ℏ T))^(1/2)
  $
  总的结果是
  $
    K(t_0,x_0,t_1,x_1) = (frac(m,2 π #i ℏ (t_1 - t_1)))^(1/2) exp((#i m)/(2 ℏ) frac((x_1 - x_0)^2,t_1 - t_0))
  $

  对于谐振子, 类似

  用分部积分的方法
  $
    K(t_0,x_0,t_1,x_1) = exp(#i/ℏ S[x_"cl" (t)]) integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)])
  $
  - 二次型 $⟨ y mid(|) (#d^2)/(#d t^2) + ω^2 mid(|) y ⟩$ 
  - $y(t_0) = y(t_1) = 0$. 为简化记号, 用 $t_0 = 0, t_1 = T$
  ==> 特征值 $λ_n = (n π/T)^2 - ω^2 = (n π/T)^2 (1 - ((ω T)/(π n))^2)$. $L^2$ 正交特征函数 $sin(n π/T t)$. $L^2$ 正交特征函数的展开 or Fourier 展开 $y(t) = sum_(n = 1 .. ∞) y_n sin(n π/T t)$

  用正交基进行对角化, 使用 Gaussian 积分的推广. 和自由场不同之处是, 出现新的无穷乘积 $product_(n = 1 .. ∞) (1 - ((ω T)/(π n))^2) = (sin ω T)/(ω T)$ (cf. #link(<Euler_reflection_formula>)[])

  结果是
  $
    integral_(y(t_0) = 0)^(y(t_1) = 0) #d y(t) exp(#i/ℏ S[y(t)]) 
    = (frac(m ω, 2 π ℏ #i sin ω T))^(1/2) 
  $
  总的结果是
  $
    K(t_0,x_0,t_1,x_1) \
    = (frac(m ω, 2 π ℏ #i sin ω (t_1 - t_0)))^(1/2) exp((#i m ω)/(2 ℏ) ⋅ 
      frac(
        (|x_1|^2 + |x_0|^2) cos ω (t_1 - t_0) - 2 x_1 x_0, 
        sin ω (t_1 - t_0)
      ) )
  $
]
这种方法是否无法推广到氢原子问题? 据说有方法能够将氢原子问题变为 $SO(4)$ 对称性下的谐振子的路径积分

*Question* 启发自 Stokes 定理的证明的讨论中对正则性的分类, 看起来 propagator 和 Sobolev 系的概念很亲和

#tag("eigen_decomposition") 
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
  根据 #link("https://en.wikipedia.org/wiki/Path_integral_formulation#Simple_harmonic_oscillator")[wiki:Path_integral_formulation], $K = ((m ω)/(π ℏ))^(1/2) e^(- #i 1/2 ω T) R(e^(- #i ω T))$ 再让 $R$ 进行 Taylor 展开, 其中 $e^(- #i 1/2 ω T) e^(- #i n ω T) = e^(- #i (1/2 + n) ω T)$ 对应能级 $E_n = (1/2 + n) ℏ ω$
]
应该有一种 "谱理论", "谱测度", 能够通过归一化技术来定义 $tr, det$

除了有限维 $⨁_1^N V(E_n)$, 离散可数无穷维的 $L^2$ 空间 $⨁_(n in ℕ) V(E_n)$, 还可以考虑积分无穷维的 $L^2$ 空间 $(integral #d E) V(E)$. 此时, "基" 也不要求是 $L^2$ 的, 例如 $exp(-#i E t)$. 但是, 函数对基的分解系数 $f(t) = integral_(ℝ) #d E hat(f)(E) exp(-#i E t)$ 应该是 $L^2$ 的, $integral_(ℝ) #d E |hat(f)(E)|^2 < ∞$

关于场量子化

一种观点是路径积分式的场量子化

#tag("field_path_integral_quantization") *Question* 既然谐振子可以路径积分 by 特征值对角化 & 推广 Gaussian 积分, 为什么类似谐振子 eq 的 KG eq (or Dirac eq) 不也进行 #link(<linear_superposition_of_KG_eq>)[特征值对角化] & 推广 Gaussian 积分的路径积分? 而且谐振子的 Lagrangian 很像 KG eq 的 Lagrangian. 然后时间 $t in ℝ$ 对应到时空 $x in ℝ^(1,3)$, 位置 $x in ℝ$ 对应到场值 $ϕ$. 但是我不支持用 $ℝ^(1,3)$ 的矩形来做路径积分, 应该用更加兼容 $SO(1,3)$ 的设置. 例如可能要将时间间隔 $t_1 - t_0$ 对应到时空二次型的间隔 $(x_1 - x_0)^2$? 不用 $x_1^2 - x_0^2$ 是因为它并不是平移不变的? 

另一种 (?) 观点是场算子式的场量子化

recall #link(<Klein__Gordon_equation>)[] 考虑平面波解
$
  (∂_t^2 - ∂_x^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0 \
  (∂_t^2 + p^2 + m^2) e^((p_0(p) t - p x) (± #i)) &= 0
$
但这样依赖于时间空间的分解, 不利于推广到一般时空流形

对于 Dirac 场的情况, 要用到别的结构. 用 $su(2), ℂ^2$ 的两个特征值 #link(<Pauli_matrix>)[] (@ref-18, p.305--308)

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

加上 parity 后, 是 $ℂ^2 ⊕ ℂ^(2 ◊)$

#let p = spin($p$)