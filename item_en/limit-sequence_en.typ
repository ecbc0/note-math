#import "../module/module.typ": *
#show: module

#tag("sequence-real") Real number sequence := $ℕ -> ℝ$. Usually denoted as $a_n$. Depending on the situation, set it to start from $0$ or from $1$

#tag("limit-sequence-real") Sequence $a_n$ limit

$ lim_(n -> ∞) a_n = a := forall ε > 0, exists N ∈ ℕ, forall n ∈ ℕ, |a_n - a| < ε $

Operations of limits
- $lim_(n -> ∞) (a_n + b_n) = lim_(n -> ∞) a_n + lim_(n -> ∞) b_n$
- $lim_(n -> ∞) a_n ⋅ b_n = lim_(n -> ∞) a_n ⋅ lim_(n -> ∞) b_n$

#tag("rational-dense-in-real") $ℚ$ is dense in $ℝ$. $forall x,y ∈ ℝ, exists m/n ∈ ℚ, x < m/n < y$

_Proof_
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

_Proof_ $x > 0 ==> (1 + x)^n = 1 + n x + ⋯ > 1 + n x$ and $lim_(n -> ∞) n x = ∞$

==> $0 < a < 1 ==> lim_(n -> ∞) a^n = 0$

#tag("geometric-series") Geometric series $x_n = 1 + a + a^2 + ⋯ + a^n$. $0 < a < 1 ==> lim_(n ->  ∞) x_n = 1/(1 - a)$

_Proof_ $(1 - a)(1 + a + a^2 + ⋯ + a^n) = 1 - a^(n + 1)$, $x_n = (1 - a^(n + 1))/(1 - a)$

#tag("geometric-series-test") Geometric series convergence test. let $a_n > 0$. $a_(n + 1)/a_n < q < 1 ==> lim_(n ->  ∞) a_n = 0$

_Proof_ $a_n = a_n/a_(n - 1) ⋯ a_0/a_1 a_0 ⋯  < q^n a_0$

#tag("exponential-vs-power") Exponential growth is faster than power. $a > 1 , p ∈ ℕ ==> lim_(n -> ∞) n^p/a^n = 0$

_Proof_ define $b_n = n^p/a_n$ 
  
  use Geometric series convergence test $b_(n + 1)/b_n = ((n + 1)/n)^p 1/a -->_(n -> ∞) 1/a < 1$

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
  When $a > 1$, by $lim_(n -> ∞) a^(1/n) < lim_(n ->  ∞) n^(1/n)$
  
  When $a < 1$, use $1/a >  1$ 
]
#tag("factorial-vs-exponential-1") Factorial growth is faster than exponential. $a ∈ ℝ ==> lim_(n -> ∞) a^n/n! = 0$

_Proof_ define $b_n = a^n/n!$. use Geometric series convergence test $b_(n+1)/b_n = a/n -> 0 < 1$

$n!$ corresponds to the number of bijections of ${1 ,…, n}$, $n^n$ corresponds to the number of self-mappings of ${1 ,…, n}$. $n^(n^n)$ etc. are similar

#tag("iterated-power-vs-factorial") $lim_(n -> ∞) n!/n^n = 0$

_Proof_ define $b_n = ⋯$. use geometric series convergence test $b_(n+1)/b_n = (n/(n + 1))^n -> 1/e < 1$

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
_Proof_ 
#indent[
  <==> $product_(i = 1 .. n) (a_i)^(1/n) <= 1/n sum_(i = 1 .. n) a_i$

  <==> $product_(i = 1 .. n) a_i <= 1/n sum_(i = 1 .. n) (a_i)^n$

  Use differential method to calculate the extreme value. Consider the function

  $ (a_1) + ⋯ + (a_n)^n - n a_1 ⋯ a_n $

  First derivative

  $ ∂_i = n ( a_i^(n-1) - a_1 ⋯ a_n without a_i) $

  The first derivative equals zero, solving the equation yields
  $
    ∂_1 = ⋯ = ∂_n = 0 ==> a_1 = ⋯ = a_n 
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
  So at $a_1 = ⋯ = a_n$ the first derivative is zero and the second derivative is (semi) positive definite, the function will not become smaller nearby, so that's the minimum, and it's $0$
]
#tag("best-multiplication-decomposition") Optimal multiplication decomposition 
#indent[
  forall $n$ fixed $a = sum_(i = 1 .. n) a_i in ℝ$ 
  
  question: which $n$ makes $product_(i = 1 .. n) a_i$ maximum?

  For each $n ∈ ℕ$, according to the mean inequality, $a/n$ should be used for equal addition to obtain the maximum $product_(i = 1 .. n) a_i$
  
  When what is the equal division number $n$, $(a/n)^n$ has the maximum value?

  $g : n ⇝ (n+1)^(n+1)/n^n$ monotonically increasing

  _Proof_ $(g(n+1))/(g(n)) > 1$ 
  
  Function $f : n ⇝ (a/n)^n$

    - Increasing when $n ∈ ℕ : (n+1)^(n+1)/n^n <= a$

    - Decreasing when $n ∈ ℕ : (n+1)^(n+1)/n^n >= a$

  Therefore $(a/n)^n$ takes the maximum value near $n : (n+1)^(n+1)/n^n = a$

  _Proof_ of the monotonic property of $f$
  #indent[
    $(f(n+1))/(f(n)) = a ⋅ (n+1)^(n+1)/n^n \
    f(n+1) >= f(n) <==> (f(n+1))/(f(n)) >= 1 <==> a >= (n+1)^(n+1)/n^n$
  ]
  *Example* $g(n) >= g(1) = 4$. Therefore, when $a <= 4$, 1 equal division is the best
]
$(n+1)^(n+1)/n^n ∼ e ⋅ (n+1)$ i.e. $lim_(n -> ∞) ((n+1)^(n+1)/n^n)/(n+1) = lim_(n -> ∞) ((n+1)/n)^n = e$
  
#tag("natural-constant") Natural constant $e$ 

$ e = lim_(n -> ∞) ((n+1)/n)^n = sum_(n = 0)^∞ 1/n! $

Although the two limits appear to be so different in form

_Proof_ 
#indent[
  Binomial expansion
  $
    (1 + 1/n)^n = 1 + binom(n,1) 1/n + binom(n,2) 1/n^2 + ⋯ + binom(n,n) 1/n^n
  $
  When $k$ is fixed, we have
  $
    lim_(n -> ∞) binom(n,k) 1/n^k &= lim_(n -> ∞) 1/k! ((n-k+1) ⋯ (n-1) ⋅ n)/n^k \
    &= 1/k! lim_(n -> ∞) (1 - (k-1)/n) ⋯ (1 - 1/n) ⋅ 1 \
    &= 1/k!
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
#tag("factorial-function-1") 
#indent[
  Infinite product definition of the factorial function $z!$. Not in the subtraction direction but in the addition direction. 
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
  Sometimes it is more convenient to use the equivalent $1/z! = lim_(n -> ∞) frac((z+1) ⋯ (z+n),n!) 1/((n+1)^z)$.

  To prove convergence, one method is to convert the infinite product into an infinite sum using $log$. Using a trick. 
  $
    frac((z+1) ⋯ (z+n),n!) &= frac((z+1) ⋯ (z+n),1 ⋯ n) \
    &= (z + 1) ⋯ (z/n + 1)
  $
  Using #link(<Taylor-expansion>)[Taylor expansion] $log (1 + z/n) = z/n + O(z/n)^2 $. 
  $
    lim_(n -> ∞) log( frac((z+1) ⋯ (z+n),n!) 1/(n^z) ) 
    &= lim_(n -> ∞) log(1 + z) + ⋯ + log(1 + z/n) - z log n \ 
    &= z lim_(n -> ∞) (1 + 1/2 + ⋯ + 1/n - log n) + sum_(n = 1 .. ∞) O(z^2/n^2)
  $

  - Using the properties of the factorial function, it can be proven that $sum_(n = 1 .. ∞) 1/n^2 = (π^2)/6$ cf. #link(<Euler-reflection-formula>)[]. Here, only convergence is proven.

    $sum_(n = 1 .. ∞) 1/n^s < 1 + integral_1^∞ 1/x^s = 1+ 1/(-(s-1)) 1/(x^(s - 1)) |_1^∞ = 1 + 1/(s - 1)$ converges, for $s > 1$ and for $Re(s) > 1$.

    $zeta(s) := sum_(n = 1 .. ∞) 1/n^s$ is called the Riemann Zeta function. 

  - $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ is the #link(<Euler-constant>)[Euler gamma constant] #tag("Euler-constant")
  #indent[
    $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ as an additive asymptote. $lim_(n -> ∞) exp(1 + 1/2 + ⋯ + 1/n)/n = e^γ$ as a multiplicative asymptote.

    _Proof_ 
    #indent[
      let $a_n = 1 + 1/2 + ⋯ + 1/n - log n$

      $log n = log n/(n-1) ⋯ 2/1 ⋅ 1 = log(n/(n-1)) + ⋯ + log(2/1) + log(1)$

      Can use $log (1 + 1/n) = 1/n + O(1/n^2)$ and $sum_(n = 1 .. ∞) 1/n^2$ converges.

      Can also use integral estimation.
      $
      1/n < integral_(n-1)^(n) 1/x = log(n/(n-1)) < 1/(n-1)
      $
      $a_n$ is bounded.
      $
        dmat(delim: #none,
        1/2 + ⋯ + 1/n , > , log(n) , > , 1 + ⋯ + 1/(n-1) ;

        - (1/2 + ⋯ + 1/n) , > , - log n , > , - (1 + ⋯ + 1/(n-1)) ;

        1 , > , 1 + 1/2 + ⋯ + 1/n - log n , > , 1/n
        )
      $
      $a_n$ is monotonically decreasing. 
      $
        a_(n+1) - a_n &= 1/(n+1) - log((n+1)/n) \
        &< 1/(n+1) - 1/(n+1) \
        &= 0
      $ 
    ] 
  ]
]
#tag("Euler-reflection-formula") Euler reflection formula $1/(z! (-z)!) = product_(n = 1 .. ∞) (1 - z^2/n^2) = (sin π z)/(π z)$ or $z/((z/π)! (-z/π)!) = z product_(n = 1 .. ∞) (1 - z^2/n^2) = sin z$
#indent[
  Using the countable generalization of the fundamental theorem of algebra, #link("https://en.wikipedia.org/wiki/Weierstrass_factorization_theorem")[wiki:Weierstrass\_factorization\_theorem]
  
  Using 
  $
    n + 1 = 2/1 ⋅ 3/2 ⋯ (n+1)/n = (1 + 1)(1 + 1/2) ⋯ (1 + 1/n)
  $
  $
    1/z!  
    &= lim_(n -> ∞) frac((z+1) ⋯ (z+n),n!) 1/((n+1)^z) \
    &= product_(n = 1..∞) frac(1 + z/n, (1 + 1/n)^z)
  $
  The zeros of $1/z!$ are $-1,-2, ⋯$. The zeros of $1/(z! (-z)!)$ are $ℤ ∖ 0$, corresponding to the zeros of $(sin π z)/(π z)$
  
  $1/(z! (-z)!) = product_(n = 1 .. ∞) (1 - z^2/n^2)$, expanding as a power series, the coefficient of $z^2$ is $- sum_(n = 1 .. ∞) 1/n^2$
  
  Comparing the coefficient of $z^2$ in the Taylor expansion of $(sin π z)/(π z)$ at $z = 0$, which is $-1/3! π^2 = - π^2/6$

  In particular
  $
    1/(1/2 (-1/2)!^2) = 1/((1/2)! (-1/2)!) = frac(sin(π/2),π/2) = 1/(π/2)
  $
  Thus $(-1/2)! = π^(1/2)$

  And we get #tag("Wallis-formula")
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
  According to Euler's insight, the integral definition of the factorial function is, for $z in ℕ$ and then for $z in ℝ,ℂ$ (and possibly for other normed-algebra)
  $
    z! = integral_0^1 (- log s)^z #d s
  $
  The two definitions of $z!$ are equivalent, but this is not obvious. The extension of $z!$ from $ℕ$ to $ℝ,ℂ$ is not unique, because one can add analytic functions that take the value $0$ for $z in ℕ$ to maintain the extension of $n!$, for example by adding the function $sin(m π z), m in ℤ$

  (@ref-25, vol.2, sect.Euler-integral) The function sequence $f_n (s) = - frac(s^(1/n) - 1,1/n - 0)$ converges monotonically and uniformly on $0 < x < 1$ to $- (#d)/(#d t) (t = 0) (s^t) = - (#d)/(#d t)(t = 0)(e^(t log s)) = - log s$. Exchange series and integral
  $
    integral_0^1 (- log s)^x #d s 
    &= lim_(n -> ∞) n^x integral_0^1 (1 - s^(1/n))^x #d s \
    ("use" s = t^n) &= lim_(n -> ∞) n^x integral_0^1 t^(n-1) (1 - t)^x #d t \
    &= lim_(n -> ∞) n^x frac(n!,(x+1) ⋯ (x+n))
  $ 
  Variable substitution $t = - log s$ can yield another integral representation
  $
    z! = integral_0^1 (- log s)^z #d s = integral_0^∞ t^z e^(-t) #d t
  $
]
#tag("Gaussian-integral")
Variable substitution $t = (-log s)^(1/2)$ or $s = exp(- t^2)$ then
$
  (- 1/2)! &= integral_0^1 (-log s)^(- 1/2) #d s \
  &= 2 integral_(0)^(∞) e^(-t^2) #d t \
  &= integral_(-∞)^(∞) e^(-t^2) #d t
$
We have obtained $(-1/2)! = π^(1/2)$ using the Euler reflection formula. It can also be obtained using the polar coordinate method
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
  Comparison of growth rates of factorial and tetration $e = lim_(n -> ∞) n/((n!)^(1/n)) = lim_(n -> ∞) (n^n/(n!))^(1/n)$

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

  #tag("sequence-multiplication-mean-limit") Multiplication average does not change the limit

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
#tag("sequence-addition-mean-limit") Addition average $lim_(n -> ∞) a_n = a ==> lim_(n -> ∞) 1/n (a_1 + ⋯ + a_n) = a$

#tag("harmonic-series-diverge") Harmonic series diverges $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n = +∞$

_Proof_ $a_n = 1 + 1/2 + ⋯ + 1/n$ diverges because it is not #link(<Cauchy-completeness-real>)[limit-distance-vanish]. e.g.

  $ forall n ∈ ℕ, a_(2n) - a_n = 1/(n+1) + ⋯ + 1/(2n) >= n ⋅ 1/(2n) = 1/2 $

#tag("iterated-power-vs-factorial-3") #tag("Stirling-approximation") $n! ∼ (2 π n)^(1/2) n^n/(e^n)$ 
#indent[
  Tips 
  $ 
    n^n &= 2^2/1^1 ⋅ 3^3/2^2 ⋯ (n^n)/((n-1)^(n-1)) \
    &= 2^1/1^1 ⋅ 3^2/2^2 ⋯ (n^(n-1))/((n-1)^(n-1)) n! \
    &= (1 + 1)^1 (1 + 1/2)^2 ⋯ (1 + 1/(n-1))^(n-1) n!
  $
  $
    log(frac((n/e)^n, n!)) = (1 log(1 + 1) + 2 log(1 + 1/2) ⋯ + (n-1)log(1 + 1/(n-1))) - n
  $
  Taylor expansion $log(1 + 1/k) = sum_(m = 1 .. ∞) (-1)^(m-1) 1/(m ⋅ k^m)$
  $
    log(frac((n/e)^n, n!)) 
    &= -1 + log 2 + sum_(k = 2)^(n-1) sum_(m = 2 .. ∞) (-1)^(m-1) 1/(m ⋅ k^(m-1)) \
    &= -1 - 1/2 (1 + 1/2 + ⋯ + 1/(n-1)) + log 2 + sum_(k = 2)^(n-1) sum_(m = 3 .. ∞) (-1)^(m-1) 1/(m ⋅ k^(m-1))
  $
  We know $γ = lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n$ 
  
  (@ref-26) The last term
  $
    sum_(k = 2 .. ∞) sum_(m = 3 .. ∞) 1/(m ⋅ k^(m-1)) 
    &<= sum_(k = 2 .. ∞) sum_(m = 2 .. ∞) 1/(k^m) \
    &= sum_(k = 2 .. ∞) (1/(1 - 1/k) - 1 - 1/k) \
    &= sum_(k = 2 .. ∞) (1/(k - 1) - 1/k) \
    &= 1
  $
  
  So $frac(n!, (n/e)^n) ∼ C n^(1/2)$ or $n! ∼ C n^(1/2) (n/e)^n$

  (@ref-27) Variable substitution $t = y n^(1/2) + n$
  $
    n! &= integral_0^∞ t^n e^(-t) #d t \
    &= (n/e)^n n^(1/2) integral_(-n^(1/2))^(∞) (1 + frac(y, n^(1/2)))^n e^(- y n^(1/2)) #d t
  $
  The function $f_n (y) = (1 + frac(y, n^(1/2)))^n e^(- n^(1/2) y)$ monotonically converges to $e^(-1/2 y^2)$ for $y <= 0, y >= - n^(1/2)$ respectively when $n -> ∞$. 
  $
    log(1 + frac(y, n^(1/2)))^n e^(- y n^(1/2)) 
    &= n log(1 + frac(y, n^(1/2))) - y n^(1/2) \
    &= -1/2 y^2 + o(1/n)
  $
  Exchange series and integral, and use $integral_(-∞)^(∞) e^(1/2 y^2) #d y = (2 π)^(1/2)$

  For a discussion on the appearance of $π$, also see #link(<why-pi-in-Gaussian-integral>)[]
]