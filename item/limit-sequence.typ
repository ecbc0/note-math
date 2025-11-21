#import "../module/module.typ": *
#show: module

#tag("sequence-real") 实数列 := $ℕ -> ℝ$. 通常记为 $a_n$. 根据情况, 设置从 $0$ 开始或从 $1$ 开始

#tag("limit-sequence-real") 数列 $a_n$ 极限

$ lim_(n -> ∞) a_n = a := forall ε > 0, exists N ∈ ℕ, forall n ∈ ℕ, |a_n - a| < ε $

极限的运算
- $lim_(n -> ∞) (a_n + b_n) = lim_(n -> ∞) a_n + lim_(n -> ∞) b_n$
- $lim_(n -> ∞) a_n ⋅ b_n = lim_(n -> ∞) a_n ⋅ lim_(n -> ∞) b_n$

#tag("rational-dense-in-real") $ℚ$ 在 $ℝ$ 的稠密性. $forall x,y ∈ ℝ, exists m/n ∈ ℚ, x < m/n < y$

_Proof_
#indent[
  $x < y$ #link(<order-real>)[等价于]

  $ℚ_(< x) ⊊ ℚ_(< y) \ 
  ℚ_(> x) ⊋ ℚ_(> y)$

  精确到最多差一点之下, 有
  
  $ℚ &≈ ℚ_(< x) ⊔ ℚ_(> x) \
  &≈ ℚ_(< y) ⊔ ℚ_(> y)$

  so $ℚ_(> x) ∩ ℚ_(< y) != ∅$
]
==> $forall ε > 0, exists m/n ∈ ℚ, 0 < m/n < ε$

==> 
- $lim_(n -> ∞) m/n = 0$

- $forall ε > 0, forall m in ℕ, exists n in ℕ, n ε > m$ or $lim_(n -> ∞) n ε = ∞$

$a > 1 ==> lim_(n -> ∞) a^n = ∞$

_Proof_ $x > 0 ==> (1 + x)^n = 1 + n x + ⋯ > 1 + n x$ and $lim_(n -> ∞) n x = ∞$

==> $0 < a < 1 ==> lim_(n -> ∞) a^n = 0$

#tag("geometric-series") 几何级数 $x_n = 1 + a + a^2 + ⋯ + a^n$. $0 < a < 1 ==> lim_(n ->  ∞) x_n = 1/(1 - a)$

_Proof_ $(1 - a)(1 + a + a^2 + ⋯ + a^n) = 1 - a^(n + 1)$, $x_n = (1 - a^(n + 1))/(1 - a)$

#tag("geometric-series-test") 几何级数收敛判别. let $a_n > 0$. $a_(n + 1)/a_n < q < 1 ==> lim_(n ->  ∞) a_n = 0$

_Proof_ $a_n = a_n/a_(n - 1) ⋯ a_0/a_1 a_0 ⋯  < q^n a_0$

#tag("exponential-vs-power") 指数增长快于幂. $a > 1 , p ∈ ℕ ==> lim_(n -> ∞) n^p/a^n = 0$

_Proof_ define $b_n = n^p/a_n$ 
  
  use 几何级数收敛判别 $b_(n + 1)/b_n = ((n + 1)/n)^p 1/a -->_(n -> ∞) 1/a < 1$

#tag("exponential-root-of-power-function") $lim_(n -> ∞) n^(1/n) = 1$

_Proof_ 
#indent[
  $forall a > 1, lim_(n -> ∞) n/a^n = 0 \
  exists N ∈ ℕ, forall n > N, n < a^n \
  1 <= n^(1/n) < a$
]
==> $a > 0 ==> lim_(n -> ∞) a^(1/n) = 1$

_Proof_ 
#indent[
  $a > 1$ 时 by $lim_(n -> ∞) a^(1/n) < lim_(n ->  ∞) n^(1/n)$
  
  $a < 1$ 时用 $1/a >  1$ 
]
#tag("factorial-vs-exponential-1") 阶乘增长快于指数. $a ∈ ℝ ==> lim_(n -> ∞) a^n/n! = 0$

_Proof_ define $b_n = a^n/n!$. use 几何级数收敛判别 $b_(n+1)/b_n = a/n -> 0 < 1$

$n!$ 对应 ${1 ,…, n}$ 自双射数量, $n^n$ 对应 ${1 ,…, n}$ 自映射数量. $n^(n^n)$ 等类似

#tag("iterated-power-vs-factorial") $lim_(n -> ∞) n!/n^n = 0$

_Proof_ define $b_n = ⋯$. use 几何级数收敛判别 $b_(n+1)/b_n = (n/(n + 1))^n -> 1/e < 1$

增长速度比较, 实数版本

- $a > 1, p ∈ ℝ_(> 0) ==> lim_(x -> +∞) x^p/a^x = 0$

- $a ∈ ℝ ==> lim_(x -> +∞) a^x/x! = 0$ with $x! = Γ(x + 1)$

- $lim_(x -> +∞) x!/x^x = 0$

#tag("mean-inequality") 均值不等式 *alias* #tag("AM-GM-inequality") 
#indent[
  $ product_(i = 1 .. n) a_i <= (1/n sum_(i = 1 .. n) a_i)^n $

  $<=$ 取得 $=$ <==> $a_1 = ⋯ = a_n = 1/n sum_(i = 1 .. n) a_i$

  无量纲
]
_Proof_ 
#indent[
  <==> $product_(i = 1 .. n) (a_i)^(1/n) <= 1/n sum_(i = 1 .. n) a_i$

  <==> $product_(i = 1 .. n) a_i <= 1/n sum_(i = 1 .. n) (a_i)^n$

  用微分方法计算最值. 考虑证明

  $ f = (a_1)^n + ⋯ + (a_n)^n - n a_1 ⋯ a_n >= 0$

  由于问题是齐次的, 只需要考虑 $a_1 ⋯ a_n = 1$ 的情况. 设 $g(a_1 ,…, a_n) = n a_1 ⋯ a_n$

  如果某个 $a_i >= root(n, n)$ 则 $f >= 0$. 所以只需考虑 $0 <= a_1 ,…, a_n <= root(n, n)$

  $0 <= a_1 ,…, a_n <= root(n, n)$ 和 $a_1 ⋯ a_n = 1$ 的交集的边界就是某个 $a_i = root(n, n)$, 此时也是 $f >= 0$. 只需考虑微分零处的点
  
  用 Lagrangian 乘数法. 让 $f$ 的微分在曲面 $a_1 ⋯ a_n = 1$ 的切空间上是零, 等价于梯度 $∇ f$ 和 $∇ g$ 共向
  
  一阶微分

  $ 
    ∂_i f = n ( a_i^(n-1) - a_1 ⋯ a_n without a_i) 
    = n/a_i (a_i^n - a_1 ⋯ a_n) = n/a_i (a_i^n - 1) 
  $
  $
    ∂_i g = n a_1 ⋯ a_n without a_i = n/a_i
  $
  共向 $∂_i f = λ ∂_i g$ 蕴含 
  $
    a_i^n - 1 = λ \
    a_1 = ⋯ = a_n = root(n, 1 + λ)
  $
  此时 $f = 0$

  $f$ 的二阶微分
  $
    ∂_i ∂_i &= n (n-1) a_i^(n-2) \
    ∂_i ∂_j &= - n a_1 ⋯ a_n without a_i a_j
  $
  判断二次型 $∂_i ∂_j$ 的正定性

  $n$ 乘法因子可以提取出来

  都是 $a_1 ,…, a_n$ 的 $n-2$ 阶项多项式, 且一阶微分零使得 $a_1 = ⋯ = a_n$ 所以对于判断正定性来说只需考虑 $a_1 = ⋯ = a_n = 1$, 二次型 
  $
    mat(
      ∂_1 ∂_1 , ⋯ , ∂_1 ∂_n ;
      ⋮, ⋱, ⋮; ;
      ∂_n ∂_1 , ⋯ , ∂_n ∂_n 
    ) = mat(
      n-1, -1, ⋯, -1;
      -1, n-1, ⋯, -1;
      ⋮, ⋮, ⋱, ⋮;
      -1, -1, ⋯, n-1
    )
  $
  $
    vec(b_1 , ⋮ , b_n)^⊺ mat(
      n-1, -1, ⋯, -1;
      -1, n-1, ⋯, -1;
      ⋮, ⋮, ⋱, ⋮;
      -1, -1, ⋯, n-1
    ) vec(b_1 , ⋮ , b_n) 
    &=(n-1) (b_1^2 + ⋯ + b_n^2) - 2 sum_(i < j) b_i b_j \
    &= sum_(i < j) (b_i^2 + b_j^2) - 2 sum_(i < j) b_i b_j \
    &= sum_(i < j) (b_i - b_j)^2 
  $
  所以 $a_1 = ⋯ = a_n$ 处一阶微分零 and 二阶微分 (半) 正定, 函数在附近不会变小, 所以那里是局部最小值, 且是 $0$
]
#tag("best-multiplication-decomposition") 最优乘法分解 
#indent[
  forall $n$ 固定 $a = sum_(i = 1 .. n) a_i in ℝ$ 
  
  question: which $n$ 使得 $product_(i = 1 .. n) a_i$ 取最大?

  对每个 $n ∈ ℕ$, 根据均值不等式, 应该用加法等分 $a/n$ 取得 $product_(i = 1 .. n) a_i$ 最大
  
  等分次数 $n$ 取什么时, $(a/n)^n$ 有最大值?

  $g : n ⇝ (n+1)^(n+1)/n^n$ 单调递增

  _Proof_ $(g(n+1))/(g(n)) > 1$ 
  
  函数 $f : n ⇝ (a/n)^n$

    - 在 $n ∈ ℕ : (n+1)^(n+1)/n^n <= a$ 时递增

    - 在 $n ∈ ℕ : (n+1)^(n+1)/n^n >= a$ 时递减

  所以 $(a/n)^n$ 在 $n : (n+1)^(n+1)/n^n = a$ 附近取最大

  _Proof_ of $f$ 单调性质
  #indent[
    $(f(n+1))/(f(n)) = a ⋅ (n+1)^(n+1)/n^n \
    f(n+1) >= f(n) <==> (f(n+1))/(f(n)) >= 1 <==> a >= (n+1)^(n+1)/n^n$
  ]
  *Example* $g(n) >= g(1) = 4$. 所以 $a <= 4$ 时, $1$ 等分是最佳
]
$(n+1)^(n+1)/n^n ∼ e ⋅ (n+1)$ i.e. $lim_(n -> ∞) ((n+1)^(n+1)/n^n)/(n+1) = lim_(n -> ∞) ((n+1)/n)^n = e$
  
#tag("natural-constant") 自然常数 $e$ 

$ e = lim_(n -> ∞) ((n+1)/n)^n = sum_(n = 0)^∞ 1/n! $

尽管两个极限的形式看起来如此不同

_Proof_ 
#indent[
  二项式展开
  $
    (1 + 1/n)^n = 1 + binom(n,1) 1/n + binom(n,2) 1/n^2 + ⋯ + binom(n,n) 1/n^n
  $
  固定 $k$ 时, 有
  $
    lim_(n -> ∞) binom(n,k) 1/n^k &= lim_(n -> ∞) 1/k! ((n-k+1) ⋯ (n-1) ⋅ n)/n^k \
    &= 1/k! lim_(n -> ∞) (1 - (k-1)/n) ⋯ (1 - 1/n) ⋅ 1 \
    &= 1/k!
  $
  对每个 $k ∈ ℕ$
  $
    lim_(n -> ∞) (1 + 1/n)^n &>= 1/0! + 1/1! + ⋯ + 1/k! \
    lim_(n -> ∞) (1 + 1/n)^n &>= lim_(k -> ∞) 1/0! + 1/1! + ⋯ + 1/k!
  $
  also
  $
    (1 + 1/n)^n < 1/0! + 1/1! + ⋯ + 1/n!
  $
  by $binom(n,k) 1/n^k = 1/k! (n ⋅ (n-1) ⋯ (n-k+1))/n^k < 1/k!$

  所以 $lim_(n -> ∞) (1 + 1/n)^n = lim_(n -> ∞) 1/0! + 1/1! + ⋯ + 1/n! = sum_(n = 0)^∞ 1/n!$

  $sum_(n = 0)^∞ 1/n!$ 收敛. $a > 1, lim_(n -> ∞) a^n/n! = 0$ ==> 在尾部 $1/n! < 1/a^n$ 几何级数控制
]
#tag("factorial-function-1") 
#indent[
  阶乘函数 $z!$ 的无限乘积定义. 不是用减法方向而是用加法方向 
  $ 
    lim_(n -> ∞) binom(n+k,n,k) 1/(n^k) 
    &= 1/k! lim_(n -> ∞) (1 + 1/n) ⋯ (1 + (k-1)/n) (1 + k/n) \ 
    &= 1/k!
  $ 
  ==> 
  $ 
    1/z! 
    &:= lim_(n -> ∞) frac((z+1) ⋯ (z+n),n!) 1/(n^z) \
    &= lim_(n -> ∞) binom(n+z,n,z) 1/(n^z)
  $ 
  with 
  $ 
    1/z! ⋅ 1/(z+1) 
    &= lim_(n -> ∞) frac((z+1+1) ⋯ (z+1+n),n!) 1/(n^(z+1)) n/(z+1+n) \
    &= 1/(z+1)! 
  $
  有时用等价的 $1/z! = lim_(n -> ∞) frac((z+1) ⋯ (z+n),n!) 1/((n+1)^z)$ 会更方便

  为了证明收敛, 一种方法是用 $log$ 将无限乘积转为无限加法. 用技巧 
  $
    frac((z+1) ⋯ (z+n),n!) &= frac((z+1) ⋯ (z+n),1 ⋯ n) \
    &= (z + 1) ⋯ (z/n + 1)
  $
  用 #link(<Taylor-expansion>)[Taylor 展开] $log (1 + z/n) = z/n + O(z/n)^2 $ 
  $
    lim_(n -> ∞) log( frac((z+1) ⋯ (z+n),n!) 1/(n^z) ) 
    &= lim_(n -> ∞) log(1 + z) + ⋯ + log(1 + z/n) - z log n \ 
    &= z lim_(n -> ∞) (1 + 1/2 + ⋯ + 1/n - log n) + sum_(n = 1 .. ∞) O(z^2/n^2)
  $

  - 用阶乘函数的性质可以证明 $sum_(n = 1 .. ∞) 1/n^2 = (π^2)/6$ cf. #link(<Euler-reflection-formula>)[]. 这里只证明收敛

    $sum_(n = 1 .. ∞) 1/n^s < 1 + integral_1^∞ 1/x^s = 1+ 1/(-(s-1)) 1/(x^(s - 1)) |_1^∞ = 1 + 1/(s - 1)$ 收敛, for $s > 1$ and for $Re(s) > 1$

    $zeta(s) := sum_(n = 1 .. ∞) 1/n^s$ 称为 Riemann Zeta 函数 

  - $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ 是 #link(<Euler-constant>)[Euler gamma 常数] #tag("Euler-constant")
  #indent[
    $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ as 加法渐进. $lim_(n -> ∞) exp(1 + 1/2 + ⋯ + 1/n)/n = e^γ$ as 乘法渐进

    _Proof_ 
    #indent[
      let $a_n = 1 + 1/2 + ⋯ + 1/n - log n$

      $log n = log n/(n-1) ⋯ 2/1 ⋅ 1 = log(n/(n-1)) + ⋯ + log(2/1) + log(1)$

      可以用 $log (1 + 1/n) = 1/n + O(1/n^2)$ 和 $sum_(n = 1 .. ∞) 1/n^2$ 收敛

      也可以用积分估计
      $
      1/n < integral_(n-1)^(n) 1/x = log(n/(n-1)) < 1/(n-1)
      $
      $a_n$ 有界
      $
        dmat(delim: #none,
        1/2 + ⋯ + 1/n , > , log(n) , > , 1 + ⋯ + 1/(n-1) ;

        - (1/2 + ⋯ + 1/n) , > , - log n , > , - (1 + ⋯ + 1/(n-1)) ;

        1 , > , 1 + 1/2 + ⋯ + 1/n - log n , > , 1/n
        )
      $
      $a_n$ 单调减 
      $
        a_(n+1) - a_n &= 1/(n+1) - log((n+1)/n) \
        &< 1/(n+1) - 1/(n+1) \
        &= 0
      $ 
    ] 
  ]
]
#tag("Euler-reflection-formula") Euler 反射公式 $1/(z! (-z)!) = product_(n = 1 .. ∞) (1 - z^2/n^2) = (sin π z)/(π z)$ or $z/((z/π)! (-z/π)!) = z product_(n = 1 .. ∞) (1 - z^2/n^2) = sin z$
#indent[
  用代数基本定理的可数推广, #link("https://en.wikipedia.org/wiki/Weierstrass_factorization_theorem")[wiki:Weierstrass\_因式分解定理]
  
  用 
  $
    n + 1 = 2/1 ⋅ 3/2 ⋯ (n+1)/n = (1 + 1)(1 + 1/2) ⋯ (1 + 1/n)
  $
  $
    1/z!  
    &= lim_(n -> ∞) frac((z+1) ⋯ (z+n),n!) 1/((n+1)^z) \
    &= product_(n = 1..∞) frac(1 + z/n, (1 + 1/n)^z)
  $
  $1/z!$ 的零点是 $-1,-2, ⋯$. $1/(z! (-z)!)$ 的零点是 $ℤ ∖ 0$, 对应到 $(sin π z)/(π z)$ 的零点
  
  $1/(z! (-z)!) = product_(n = 1 .. ∞) (1 - z^2/n^2)$, 展开为幂级数, $z^2$ 的系数是 $- sum_(n = 1 .. ∞) 1/n^2$
  
  对比 $(sin π z)/(π z)$ 在 $z = 0$ 的 Taylor 展开的 $z^2$ 的系数 $-1/3! π^2 = - π^2/6$

  特别地
  $
    1/(1/2 (-1/2)!^2) = 1/((1/2)! (-1/2)!) = frac(sin(π/2),π/2) = 1/(π/2)
  $
  从而 $(-1/2)! = π^(1/2)$

  并且得到 #tag("Wallis-formula")
  $
    π/2 &= (1/2)! (-1/2)! \
    &= product_(n = 1 .. ∞) 1/(1 - (1/2)^2/n^2) \
    &= product_(n = 1 .. ∞) frac(n^2, n^2 - (1/2)^2) \
    &= product_(n = 1 .. ∞) (n)/(n - 1/2) (n)/(n + 1/2) \
    &= product_(n = 1 .. ∞) (2 n)/(2 n - 1) (2 n)/(2 n + 1)
  $
]

#tag("factorial-function-2") 
#indent[
  根据 Euler 的洞察, 阶乘函数的积分定义是, 对 $z in ℕ$ 然后对 $z in ℝ,ℂ$ (且可能对其它 normed-algebra)
  $
    z! = integral_0^1 (- log s)^z #d s
  $
  两种 $z!$ 的定义是等价的, 但这不是显然的. $z!$ 从 $ℕ$ 到 $ℝ,ℂ$ 的延拓不是唯一的, 因为可以加上在 $z in ℕ$ 上取值 $0$ 的解析函数来保持对 $n!$ 的延拓, 例如加上函数 $sin(m π z), m in ℤ$

  (@ref-25, vol.2, sect.Euler-integral) 函数序列 $f_n (s) = - frac(s^(1/n) - 1,1/n - 0)$ 在 $0 < x < 1$ 上单调递增收敛且一致收敛到 $- (#d)/(#d t) (t = 0) (s^t) = - (#d)/(#d t)(t = 0)(e^(t log s)) = - log s$. 交换级数和积分
  $
    integral_0^1 (- log s)^x #d s 
    &= lim_(n -> ∞) n^x integral_0^1 (1 - s^(1/n))^x #d s \
    ("use" s = t^n) &= lim_(n -> ∞) n^x integral_0^1 t^(n-1) (1 - t)^x #d t \
    &= lim_(n -> ∞) n^x frac(n!,(x+1) ⋯ (x+n))
  $ 
  变量替换 $t = - log s$ 可以得到另一种积分表示
  $
    z! = integral_0^1 (- log s)^z #d s = integral_0^∞ t^z e^(-t) #d t
  $
]
#tag("Gaussian-integral")
变量替换 $t = (-log s)^(1/2)$ or $s = exp(- t^2)$ 则
$
  (- 1/2)! &= integral_0^1 (-log s)^(- 1/2) #d s \
  &= 2 integral_(0)^(∞) e^(-t^2) #d t \
  &= integral_(-∞)^(∞) e^(-t^2) #d t
$
我们已经用 Euler 反射公式得到 $(-1/2)! = π^(1/2)$. 也可以用极坐标方法
$
  (integral_(-∞)^(∞) e^(-t^2) #d t)^2 
  &= (integral_(-∞)^(∞) e^(-x^2) #d x) (integral_(-∞)^(∞) e^(-y^2) #d y) \
  &= integral_(ℝ^2) e^(-(x^2 + y^2)) #d x #d y \
  &= integral_(-π)^(π) #d θ integral_0^∞ #d r (r e^(-r^2)) \
  &= 2 π ⋅ (-1/2) e^(-r^2) |_0^∞ \
  &= π 
$
#tag("iterated-power-vs-factorial-2")
#indent[
  阶乘与叠幂的增长速度比较 $e = lim_(n -> ∞) n/((n!)^(1/n)) = lim_(n -> ∞) (n^n/(n!))^(1/n)$

  so $n!^(1/n) ∼ 1/e ⋅ n$, so $lim_(n -> ∞) n!^(1/n) = ∞$
]
_Proof_ of $e = lim_(n -> ∞) n/((n!)^(1/n))$ 
#indent[
  def $f(n) = n^n/n!$
  
  $(f(n+1))/(f(n)) = ((n+1)/n)^n -> e \
  f(n) = (f(n))/(f(n-1)) ⋯ (f(2))/(f(1)) f(1) \
  f(1) = 1$

  def $a_n = (f(n+1))/(f(n)) = ((n+1)/n)^n$
  
  $n/(n!^(1/n)) = (a_1 ⋯ a_(n-1))^(1/n) = (a_1 ⋯ a_n)^(1/n) ⋅ 1/(a_n)^(1/n) = (a_1 ⋯ a_n)^(1/n) n/(n+1)$

  #tag("sequence-multiplication-mean-limit") 乘法平均不改变极限

    $(a_n > 0) and (lim_(n -> ∞) a_n = a) ==> lim_(n -> ∞) (a_1 ⋯ a_n)^(1/n) = a$

  _Proof_
  #indent[
    $forall ε >= 0, exists N ∈ ℕ, forall n > N, a - ε <= a_n <= a + ε$

    $a_1 ⋯ a_n = (a_1 ⋯ a_N) ⋅ (a_(N+1) ⋯ a_n)$

    $(a_1 ⋯ a_N)^(1/n) (a - ε)^(1 - N/n) <= (a_1 ⋯ a_n)^(1/n) <= (a_1 ⋯ a_N)^(1/n) (a + ε)^(1 - N/n)$

    $lim_(n -> ∞) (a_1 ⋯ a_N)^(1/n) = 1$

    $lim_(n -> ∞) 1 - N/n = 1$
  ]
]
#tag("sequence-addition-mean-limit") 加法平均 $lim_(n -> ∞) a_n = a ==> lim_(n -> ∞) 1/n (a_1 + ⋯ + a_n) = a$

#tag("harmonic-series-diverge") 调和级数发散 $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n = +∞$

_Proof_ $a_n = 1 + 1/2 + ⋯ + 1/n$ 发散 by 它不是 #link(<Cauchy-completeness-real>)[limit-distance-vanish]. e.g.

  $ forall n ∈ ℕ, a_(2n) - a_n = 1/(n+1) + ⋯ + 1/(2n) >= n ⋅ 1/(2n) = 1/2 $

#tag("iterated-power-vs-factorial-3") #tag("Stirling-approximation") $n! ∼ (2 π n)^(1/2) n^n/(e^n)$ 
#indent[
  使用技巧 
  $ 
    n^n &= 2^2/1^1 ⋅ 3^3/2^2 ⋯ (n^n)/((n-1)^(n-1)) \
    &= 2^1/1^1 ⋅ 3^2/2^2 ⋯ (n^(n-1))/((n-1)^(n-1)) n! \
    &= (1 + 1)^1 (1 + 1/2)^2 ⋯ (1 + 1/(n-1))^(n-1) n!
  $
  $
    log(frac((n/e)^n, n!)) = (1 log(1 + 1) + 2 log(1 + 1/2) ⋯ + (n-1)log(1 + 1/(n-1))) - n
  $
  Taylor 展开 $log(1 + 1/k) = sum_(m = 1 .. ∞) (-1)^(m-1) 1/(m ⋅ k^m)$
  $
    log(frac((n/e)^n, n!)) 
    &= -1 + log 2 + sum_(k = 2)^(n-1) sum_(m = 2 .. ∞) (-1)^(m-1) 1/(m ⋅ k^(m-1)) \
    &= -1 - 1/2 (1 + 1/2 + ⋯ + 1/(n-1)) + log 2 + sum_(k = 2)^(n-1) sum_(m = 3 .. ∞) (-1)^(m-1) 1/(m ⋅ k^(m-1))
  $
  我们知道 $γ = lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n$ 
  
  (@ref-26) 最后一项
  $
    sum_(k = 2 .. ∞) sum_(m = 3 .. ∞) 1/(m ⋅ k^(m-1)) 
    &<= sum_(k = 2 .. ∞) sum_(m = 2 .. ∞) 1/(k^m) \
    &= sum_(k = 2 .. ∞) (1/(1 - 1/k) - 1 - 1/k) \
    &= sum_(k = 2 .. ∞) (1/(k - 1) - 1/k) \
    &= 1
  $
  
  所以 $frac(n!, (n/e)^n) ∼ C n^(1/2)$ or $n! ∼ C n^(1/2) (n/e)^n$

  (@ref-27) 变量替换 $t = y n^(1/2) + n$
  $
    n! &= integral_0^∞ t^n e^(-t) #d t \
    &= (n/e)^n n^(1/2) integral_(-n^(1/2))^(∞) (1 + frac(y, n^(1/2)))^n e^(- y n^(1/2)) #d t
  $
  函数 $f_n (y) = (1 + frac(y, n^(1/2)))^n e^(- n^(1/2) y)$ 在 $y <= 0, y >= - n^(1/2)$ 分别在 $n -> ∞$ 时单调收敛到 $e^(-1/2 y^2)$
  $
    log(1 + frac(y, n^(1/2)))^n e^(- y n^(1/2)) 
    &= n log(1 + frac(y, n^(1/2))) - y n^(1/2) \
    &= -1/2 y^2 + o(1/n)
  $
  交换级数和积分, 并使用 $integral_(-∞)^(∞) e^(1/2 y^2) #d y = (2 π)^(1/2)$ 

  $π$ 的出现的讨论, 也见 #link(<why-pi-in-Gaussian-integral>)[]
]