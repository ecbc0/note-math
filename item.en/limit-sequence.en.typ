#import "/module/module.typ": *
#show: module

#tag("sequence-real") Real number sequence := $ℕ -> ℝ$. Usually denoted as $a_n$. Depending on the situation, set it to start from $0$ or from $1$

#tag("limit-sequence-real") Sequence $a_n$ limit

$ lim_(n -> ∞) a_n = a := forall ε > 0, exists N ∈ ℕ, forall n ∈ ℕ, |a_n - a| < ε $

Operations of limits
- $lim_(n -> ∞) (a_n + b_n) = lim_(n -> ∞) a_n + lim_(n -> ∞) b_n$
- $lim_(n -> ∞) a_n ⋅ b_n = lim_(n -> ∞) a_n ⋅ lim_(n -> ∞) b_n$

#tag("rational-dense-in-real") $ℚ$ is dense in $ℝ$. $forall x,y ∈ ℝ, exists m/n ∈ ℚ, x < m/n < y$

*Proof*
#indent[
  $x < y$ #link(<order-real>)[equivalent to]

  $ℚ_(< x) ⊊ ℚ_(< y) \ 
  ℚ_(> x) ⊋ ℚ_(> y)$

  Accurate to at most a little bit difference, there is
  
  $ℚ &≈ ℚ_(< x) ⊔ ℚ_(> x) \
  &≈ ℚ_(< y) ⊔ ℚ_(> y)$

  so $ℚ_(> x) ∩ ℚ_(< y) != ∅$
]
==> $forall ε > 0, exists m/n ∈ ℚ, 0 < m/n < ε$

==> 
- $lim_(n -> ∞) m/n = 0$

- $forall ε > 0, forall m in ℕ, exists n in ℕ, n ε > m$ or $lim_(n -> ∞) n ε = ∞$

$a > 1 ==> lim_(n -> ∞) a^n = ∞$

*Proof* $x > 0 ==> (1 + x)^n = 1 + n x + ⋯ > 1 + n x$ and $lim_(n -> ∞) n x = ∞$

==> $0 < a < 1 ==> lim_(n -> ∞) a^n = 0$

#tag("geometric-series") Geometric series $x_n = 1 + a + a^2 + ⋯ + a^n$. $0 < a < 1 ==> lim_(n ->  ∞) x_n = 1/(1 - a)$

*Proof* $(1 - a)(1 + a + a^2 + ⋯ + a^n) = 1 - a^(n + 1)$, $x_n = (1 - a^(n + 1))/(1 - a)$

#tag("geometric-series-test") Geometric series convergence test. let $a_n > 0$. $a_(n + 1)/a_n < q < 1 ==> lim_(n ->  ∞) a_n = 0$

*Proof* $a_n = a_n/a_(n - 1) ⋯ a_0/a_1 a_0 ⋯  < q^n a_0$

#tag("exponential-vs-power") Exponential growth is faster than power. $a > 1 , p ∈ ℕ ==> lim_(n -> ∞) n^p/a^n = 0$

*Proof* define $b_n = n^p/a_n$ 
  
  use Geometric series convergence test $b_(n + 1)/b_n = ((n + 1)/n)^p 1/a -->_(n -> ∞) 1/a < 1$

#tag("exponential-root-of-power-function") $lim_(n -> ∞) n^(1/n) = 1$

*Proof* 
#indent[
  $forall a > 1, lim_(n -> ∞) n/a^n = 0 \
  exists N ∈ ℕ, forall n > N, n < a^n \
  1 <= n^(1/n) < a$
]
==> $a > 0 ==> lim_(n -> ∞) a^(1/n) = 1$

*Proof* 
#indent[
  When $a > 1$, by $lim_(n -> ∞) a^(1/n) < lim_(n ->  ∞) n^(1/n)$
  
  When $a < 1$, use $1/a >  1$ 
]
#tag("factorial-vs-exponential") Factorial growth is faster than exponential. $a ∈ ℝ ==> lim_(n -> ∞) a^n/n! = 0$

*Proof* define $b_n = a^n/n!$. use Geometric series convergence test $b_(n+1)/b_n = a/n -> 0 < 1$

$n!$ corresponds to the number of bijections of ${1 ,…, n}$, $n^n$ corresponds to the number of self-mappings of ${1 ,…, n}$. $n^(n^n)$ etc. are similar

#tag("iterated-power-vs-factorial") $lim_(n -> ∞) n!/n^n = 0$

*Proof* define $b_n = ⋯$. use geometric series convergence test $b_(n+1)/b_n = (n/(n + 1))^n -> 1/e < 1$

Comparison of growth rates, real number version

- $a > 1, p ∈ ℝ_(> 0) ==> lim_(x -> +∞) x^p/a^x = 0$

- $a ∈ ℝ ==> lim_(x -> +∞) a^x/x! = 0$ with $x! = Γ(x + 1)$

- $lim_(x -> +∞) x!/x^x = 0$

#tag("mean-inequality") Mean inequality *alias* #tag("AM-GM-inequality") 
#indent[
  $ product_(i = 1 .. n) a_i <= (1/n sum_(i = 1 .. n) a_i)^n $

  $<=$ obtains $=$ <==> $a_1 = ⋯ = a_n = 1/n sum_(i = 1 .. n) a_i$

  Dimensionless
]
*Proof* 
#indent[
  <==> $product_(i = 1 .. n) (a_i)^(1/n) <= 1/n sum_(i = 1 .. n) a_i$

  <==> $product_(i = 1 .. n) a_i <= 1/n sum_(i = 1 .. n) (a_i)^n$

  Use differential method to calculate the extreme value. Consider the function

  $ (a_1 + ⋯ + a_n)^n - n a_1 ⋯ a_n $

  First derivative

  $ ∂_i =& n ( a_i^(n-1) - a_1 ⋯ a_n without a_i) $

  The first derivative equals zero, solving the equation yields
  $
    ∂_1 = ⋯ = ∂_n = 0 ==>& a_1 = ⋯ = a_n 
  $
  Second derivative
  $
    ∂_i ∂_i &= n (n-1) a_i^(n-2) \
    ∂_i ∂_j &= - n a_1 ⋯ a_n without a_i a_j
  $
  Determine the positive definiteness of the quadratic form $∂_i ∂_j$

  The $n$ multiplication factor can be extracted

  All are $n-2$ order polynomial of $a_1 ,…, a_n$, and the first-order differential being zero makes $a_1 = ⋯ = a_n$, so for judging positive definiteness, we only need to consider $a_1 = ⋯ = a_n = 1$, the quadratic form 
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
  So at $a_1 = ⋯ = a_n$ the first derivative is zero and the second derivative is positive definite, the function will not become smaller nearby, so that's the minimum, and it's $0$
]
#tag("best-multiplication-decomposition") Optimal multiplication decomposition 
#indent[
  forall $n$ fixed $a = sum_(i = 1 .. n) a_i in ℝ$ 
  
  question: which $n$ makes $product_(i = 1 .. n) a_i$ maximum?

  For each $n ∈ ℕ$, according to the mean inequality, $a/n$ should be used for equal addition to obtain the maximum $product_(i = 1 .. n) a_i$
  
  When what is the equal division number $n$, $(a/n)^n$ has the maximum value?

  $g : n ⇝ (n+1)^(n+1)/n^n$ monotonically increasing

  *Proof* $(g(n+1))/(g(n)) > 1$ 
  
  Function $f : n ⇝ (a/n)^n$

    - Increasing when $n ∈ ℕ : (n+1)^(n+1)/n^n <= a$

    - Decreasing when $n ∈ ℕ : (n+1)^(n+1)/n^n >= a$

  Therefore $(a/n)^n$ takes the maximum value near $n : (n+1)^(n+1)/n^n = a$

  *Proof* of the monotonic property of $f$
  #indent[
    $(f(n+1))/(f(n)) = a ⋅ (n+1)^(n+1)/n^n \
    f(n+1) >= f(n) <==> (f(n+1))/(f(n)) >= 1 <==> a >= (n+1)^(n+1)/n^n$
  ]
  *Example* $g(n) >= g(1) = 4$. Therefore, when $a <= 4$, 1 equal division is the best
]
$(n+1)^(n+1)/n^n ∼ e ⋅ (n+1)$ i.e. $lim_(n -> ∞) ((n+1)^(n+1)/n^n)/(n+1) = lim_(n -> ∞) ((n+1)/n)^n = e$
  
#tag("natural-constant") Natural constant $e$ 

$ e = lim_(n -> ∞) ((n+1)/n)^n = sum_(n = 0)^∞ 1/n! $

*Proof* 
#indent[
  Binomial expansion
  $
    (1 + 1/n)^n = 1 + binom(n,1) 1/n + binom(n,2) 1/n^2 + ⋯ + binom(n,n) 1/n^n
  $
  When $k$ is fixed, we have
  $
    lim_(n -> ∞) binom(n,k) 1/n^k = lim_(n -> ∞) 1/k! (n ⋅ (n-1) ⋯ (n-k+1))/n^k = 1/k!
  $
  For each $k ∈ ℕ$
  $
    lim_(n -> ∞) (1 + 1/n)^n &>= 1/0! + 1/1! + ⋯ + 1/k! \
    lim_(n -> ∞) (1 + 1/n)^n &>= lim_(k -> ∞) 1/0! + 1/1! + ⋯ + 1/k!
  $
  also
  $
    (1 + 1/n)^n < 1/0! + 1/1! + ⋯ + 1/n!
  $
  by $binom(n,k) 1/n^k = 1/k! (n ⋅ (n-1) ⋯ (n-k+1))/n^k < 1/k!$

  Therefore $lim_(n -> ∞) (1 + 1/n)^n = lim_(n -> ∞) 1/0! + 1/1! + ⋯ + 1/n! = sum_(n = 0)^∞ 1/n!$

  $sum_(n = 0)^∞ 1/n!$ converges. $a > 1, lim_(n -> ∞) a^n/n! = 0$ ==> at the tail $1/n! < 1/a^n$ geometric series control
]
#tag("iterated-power-vs-factorial-more") Comparison of the growth rate of factorial and iterated power $e^n ∼ n^n/n!$ or $e = lim_(n -> ∞) n/((n!)^(1/n))$ 

so $n!^(1/n) ∼ 1/e ⋅ n$, so $lim_(n -> ∞) n!^(1/n) = ∞$

*Proof* of $e = lim_(n -> ∞) n/((n!)^(1/n))$ 
#indent[
  def $f(n) = n^n/n!$
  
  $(f(n+1))/(f(n)) = ((n+1)/n)^n -> e \
  f(n) = (f(n))/(f(n-1)) ⋯ (f(2))/(f(1)) f(1) \
  f(1) = 1$

  def $a_n = (f(n+1))/(f(n)) = ((n+1)/n)^n$
  
  $n/(n!^(1/n)) = (a_1 ⋯ a_(n-1))^(1/n) = (a_1 ⋯ a_n)^(1/n) ⋅ 1/(a_n)^(1/n) = (a_1 ⋯ a_n)^(1/n) n/(n+1)$

  #tag("sequence-multiplication-mean-limit") Multiplication average does not change the limit

    $(a_n > 0) and (lim_(n -> ∞) a_n = a) ==> lim_(n -> ∞) (a_1 ⋯ a_n)^(1/n) = a$

  *Proof*
  #indent[
    $forall ε >= 0, exists N ∈ ℕ, forall n > N, a - ε <= a_n <= a + ε$

    $a_1 ⋯ a_n = (a_1 ⋯ a_N) ⋅ (a_(N+1) ⋯ a_n)$

    $(a_1 ⋯ a_N)^(1/n) (a - ε)^(1 - N/n) <= (a_1 ⋯ a_n)^(1/n) <= (a_1 ⋯ a_N)^(1/n) (a + ε)^(1 - N/n)$

    $lim_(n -> ∞) (a_1 ⋯ a_N)^(1/n) = 1$

    $lim_(n -> ∞) 1 - N/n = 1$
  ]
]
#tag("sequence-addition-mean-limit") Addition average $lim_(n -> ∞) a_n = a ==> lim_(n -> ∞) 1/n (a_1 + ⋯ + a_n) = a$

#tag("harmonic-series-diverge") Harmonic series diverges $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n = +∞$

*Proof* $a_n = 1 + 1/2 + ⋯ + 1/n$ diverges because it is not #link(<Cauchy-completeness-real>)[limit-distance-vanish]. e.g.

  $ forall n ∈ ℕ, a_(2n) - a_n = 1/(n+1) + ⋯ + 1/(2n) >= n ⋅ 1/(2n) = 1/2 $

#tag("Euler-constant") $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ converges as additive asymptotic. $lim_(n -> ∞) exp(1 + 1/2 + ⋯ + 1/n)/n = e^γ$ as multiplicative asymptotic

*Proof* 
#indent[
  let $a_n = 1 + 1/2 + ⋯ + 1/n - log n$

  $log n = log n/(n-1) ⋯ 2/1 ⋅ 1 = log(n/(n-1)) + ⋯ + log(2/1) + log(1)$

  Integral estimation
  $
   1/n < integral_(n-1)^(n) 1/x = log(n/(n-1)) < 1/(n-1)
  $
  $a_n$ is bounded
  $
    mat(delim: #none,
    1/2 + ⋯ + 1/n , > , log(n) , > , 1 + ⋯ + 1/(n-1) ;

    - (1/2 + ⋯ + 1/n) , > , - log n , > , - (1 + ⋯ + 1/(n-1)) ;

    1 , > , 1 + 1/2 + ⋯ + 1/n - log n , > , 1/n
    )
  $
  $a_n$ is monotonically decreasing 
  $
    a_(n+1) - a_n &= 1/(n+1) - log((n+1)/n) \
    &< 1/(n+1) - 1/(n+1) \
    &= 0
  $ 
]