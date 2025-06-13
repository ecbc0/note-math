#import "/module/module.typ": *
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
#tag("factorial-vs-exponential") 阶乘增长快于指数. $a ∈ ℝ ==> lim_(n -> ∞) a^n/n! = 0$

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

  用微分方法计算最值. 考虑函数

  $ (a_1 + ⋯ + a_n)^n - n a_1 ⋯ a_n $

  一阶微分

  $ ∂_i = n ( a_i^(n-1) - a_1 ⋯ a_n without a_i) $

  一阶微分等于零, 解方程得到
  $
    ∂_1 = ⋯ = ∂_n = 0 ==> a_1 = ⋯ = a_n 
  $
  二阶微分
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
  所以 $a_1 = ⋯ = a_n$ 处一阶微分零 and 二阶微分正定, 函数在附近不会变小, 所以那里是最小值, 且是 $0$
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

_Proof_ 
#indent[
  二项式展开
  $
    (1 + 1/n)^n = 1 + binom(n,1) 1/n + binom(n,2) 1/n^2 + ⋯ + binom(n,n) 1/n^n
  $
  固定 $k$ 时, 有
  $
    lim_(n -> ∞) binom(n,k) 1/n^k = lim_(n -> ∞) 1/k! (n ⋅ (n-1) ⋯ (n-k+1))/n^k = 1/k!
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
#tag("iterated-power-vs-factorial-more") 阶乘与叠幂的增长速度比较 $e^n ∼ n^n/n!$ or $e = lim_(n -> ∞) n/((n!)^(1/n))$ 

so $n!^(1/n) ∼ 1/e ⋅ n$, so $lim_(n -> ∞) n!^(1/n) = ∞$

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

#tag("Euler-constant") $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ 收敛 as 加法渐进. $lim_(n -> ∞) exp(1 + 1/2 + ⋯ + 1/n)/n = e^γ$ as 乘法渐进

_Proof_ 
#indent[
  let $a_n = 1 + 1/2 + ⋯ + 1/n - log n$

  $log n = log n/(n-1) ⋯ 2/1 ⋅ 1 = log(n/(n-1)) + ⋯ + log(2/1) + log(1)$

  积分估计
  $
   1/n < integral_(n-1)^(n) 1/x = log(n/(n-1)) < 1/(n-1)
  $
  $a_n$ 有界
  $
    mat(delim: #none,
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