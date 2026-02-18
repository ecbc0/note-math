#import "../module/module.typ": *
#show: module

#tag("sequence-real") Real sequence := $ℕ -> ℝ$. Usually denoted as $a_n$. Depending on the situation, start from $0$ or $1$

#tag("limit-sequence-real") Limit of sequence $a_n$

$ lim_(n -> ∞) a_n = a := forall ε > 0, exists N ∈ ℕ, forall n ∈ ℕ, |a_n - a| < ε $

Operations on limits
- $lim_(n -> ∞) (a_n + b_n) = lim_(n -> ∞) a_n + lim_(n -> ∞) b_n$
- $lim_(n -> ∞) a_n ⋅ b_n = lim_(n -> ∞) a_n ⋅ lim_(n -> ∞) b_n$

#tag("rational-dense-in-real") Density of $ℚ$ in $ℝ$. $forall x,y ∈ ℝ, exists m/n ∈ ℚ, x < m/n < y$

_Proof_
#indent[
  $x < y$ #link(<order-real>)[is equivalent to]

  $ℚ_(< x) ⊊ ℚ_(< y) \
  ℚ_(> x) ⊋ ℚ_(> y)$

  Up to a difference of at most, there is

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
  exists N ∈ ℕ, forall n > N, n < a^n quad ("by" lim_(n -> ∞) n^p/a^n = 0) \
  1 <= n^(1/n) < a$
]
==> $a > 0 ==> lim_(n -> ∞) a^(1/n) = 1$

_Proof_
#indent[
  When $a > 1$, by $lim_(n -> ∞) a^(1/n) < lim_(n ->  ∞) n^(1/n)$

  When $a < 1$, use $1/a > 1$ and $1/(a^(1/n)) = (1/a)^(1/n)$
]
#tag("factorial-vs-exponential-1") Factorial grows faster than exponential. $a ∈ ℝ ==> lim_(n -> ∞) a^n/n! = 0$

_Proof_ define $b_n = a^n/n!$. Use geometric series convergence test $b_(n+1)/b_n = a/n -> 0 < 1$

$n!$ corresponds to the number of bijections from ${1 ,…, n}$ to itself, $n^n$ corresponds to the number of self-maps from ${1 ,…, n}$ to itself. $n^(n^n)$ and similar

#tag("iterated-power-vs-factorial") $lim_(n -> ∞) n!/n^n = 0$

_Proof_ define $b_n = ⋯$. Use geometric series convergence test $b_(n+1)/b_n = (n/(n + 1))^n -> 1/e < 1$

Comparison of growth rates, real number version

- Power vs Exponential: $a > 1, p ∈ ℝ_(> 0) ==> lim_(x -> +∞) x^p/a^x = 0$

- Exponential vs Factorial $a ∈ ℝ ==> lim_(x -> +∞) a^x/x! = 0$ with $x! = Γ(x)$

- Factorial vs Tetration $lim_(x -> +∞) x!/x^x = 0$

#tag("mean-inequality") Mean inequality *alias* #tag("AM-GM-inequality")
#indent[
  $ product_(i = 1 .. n) a_i <= (1/n sum_(i = 1 .. n) a_i)^n $

  $<=$ Get $=$ <==> $a_1 = ⋯ = a_n = 1/n sum_(i = 1 .. n) a_i$

  Dimensionless
]
_Proof_
#indent[
  <==> $product_(i = 1 .. n) (a_i)^(1/n) <= 1/n sum_(i = 1 .. n) a_i$

  <==> $product_(i = 1 .. n) a_i <= 1/n sum_(i = 1 .. n) (a_i)^n$

  Calculate the maximum value using differential methods. Consider proving

  $ f = (a_1)^n + ⋯ + (a_n)^n - n a_1 ⋯ a_n >= 0$

  Since the problem is homogeneous, we only need to consider the case where $a_1 ⋯ a_n = 1$, and prove that

  $ f = (a_1)^n + ⋯ + (a_n)^n - n >= 0$

  Let $g(a_1 ,…, a_n) = n a_1 ⋯ a_n$

  If some $a_i >= root(n, n)$, then $f >= 0$. So we only need to consider $0 <= a_1 ,…, a_n <= root(n, n)$

  The boundary of the intersection of $0 <= a_1 ,…, a_n <= root(n, n)$ and $a_1 ⋯ a_n = 1$ is when some $a_i = root(n, n)$, and at this point $f >= 0$. We only need to consider points where the unbounded interior differential is zero.

  Using the Lagrangian multiplier method. Let the differential of $f$ be zero on the tangent space of the surface $a_1 ⋯ a_n = 1$, which is equivalent to the gradients $∇ f$ and $∇ g$ being collinear.

  First-order differential

  $
    ∂_i f = n ( a_i^(n-1) - a_1 ⋯ a_n without a_i)
    = n/a_i (a_i^n - a_1 ⋯ a_n) = n/a_i (a_i^n - 1)
  $
  $
    ∂_i g = n a_1 ⋯ a_n without a_i = n/a_i
  $
  Collinearity $∂_i f = λ ∂_i g$ implies
  $
    a_i^n - 1 = λ \
    a_1 = ⋯ = a_n = root(n, 1 + λ)
  $
  According to $a_1 ⋯ a_n = 1 + λ = 1$, we get $λ = 0$, which gives $a_1 = ⋯ = a_n = 1$. At this point $f = 0$.

  Second derivative of $f$
  $
    ∂_i ∂_i &= n (n-1) a_i^(n-2) \
    ∂_i ∂_j &= - n a_1 ⋯ a_n without a_i a_j
  $
  Determine the positive definiteness of the quadratic form $∂_i ∂_j$

  $n$ multiplication factor can be factored out

  are all $n-2$ degree term polynomials of $a_1 ,…, a_n$, and the first-order derivative being zero makes $a_1 = ⋯ = a_n$ so for judging positive definiteness we only need to consider $a_1 = ⋯ = a_n = 1$, the quadratic form
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
  so at $a_1 = ⋯ = a_n$ the first-order derivative is zero and the second-order derivative is (semi-)positive definite, the function will not decrease nearby, so there is a local minimum, and it is $0$
]
#tag("best-multiplication-decomposition") optimal multiplication decomposition
#indent[
  forall $n$ fixed $a = sum_(i = 1 .. n) a_i in ℝ$

  question: which $n$ makes $product_(i = 1 .. n) a_i$ maximal?

  For each $n ∈ ℕ$, according to the AM-GM inequality, the maximum of $product_(i = 1 .. n) a_i$ should be achieved by using equal parts $a/n$ for addition.

  What value of equal division number $n$ maximizes $(a/n)^n$?

  The function $g : n ⇝ (n+1)^(n+1)/n^n$ is monotonically increasing

  _Proof_ $(g(n+1))/(g(n)) > 1$

  The function $f : n ⇝ (a/n)^n$

    - Increasing when $n ∈ ℕ : (n+1)^(n+1)/n^n <= a$

    - Decreases when $n ∈ ℕ : (n+1)^(n+1)/n^n >= a$

  So $(a/n)^n$ takes its maximum near $n : (n+1)^(n+1)/n^n = a$

  _Proof_ of $f$'s monotonicity
  #indent[
    $(f(n+1))/(f(n)) = a ⋅ n^n/(n+1)^(n+1) \
    f(n+1) >= f(n) <==> (f(n+1))/(f(n)) >= 1 <==> a >= (n+1)^(n+1)/n^n$
  ]
  *Example* $g(n) >= g(1) = 4$. So when $a <= 4$, $f(n)$ decreases, $1$ partition is optimal
]
$(n+1)^(n+1)/n^n ∼ e ⋅ (n+1)$ i.e. $lim_(n -> ∞) ((n+1)^(n+1)/n^n)/(n+1) = lim_(n -> ∞) ((n+1)/n)^n = e$

#tag("natural-constant") Natural constant $e$

$ e = lim_(n -> ∞) ((n+1)/n)^n = sum_(n = 0)^∞ 1/n! $

Even though the forms of the two limits look so different

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

  So $lim_(n -> ∞) (1 + 1/n)^n = lim_(n -> ∞) 1/0! + 1/1! + ⋯ + 1/n! = sum_(n = 0)^∞ 1/n!$

  $sum_(n = 0)^∞ 1/n!$ converges. $a > 1, lim_(n -> ∞) a^n/n! = 0$ ==> In the tail $1/n! < 1/a^n$ geometric series control
]
#tag("factorial-function-1")
#indent[
  Infinite product definition of the factorial function $z!$. Not by subtraction direction but by addition direction
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
  Sometimes it's more convenient to use the equivalent $1/z! = lim_(n -> ∞) frac((z+1) ⋯ (z+n),n!) 1/((n+1)^z)$

  To prove convergence, one method is to convert the infinite product into an infinite sum using $log$. Use a trick.
  $
    frac((z+1) ⋯ (z+n),n!) &= frac((z+1) ⋯ (z+n),1 ⋯ n) \
    &= (z + 1) ⋯ (z/n + 1)
  $
  Use #link(<Taylor-expansion>)[Taylor expansion] $log (1 + z/n) = z/n + O(z/n)^2 $
  $
    lim_(n -> ∞) log( frac((z+1) ⋯ (z+n),n!) 1/(n^z) )
    &= lim_(n -> ∞) log(1 + z) + ⋯ + log(1 + z/n) - z log n \
    &= z lim_(n -> ∞) (1 + 1/2 + ⋯ + 1/n - log n) + sum_(n = 1 .. ∞) O(z^2/n^2)
  $

  - Using the properties of the factorial function, we can prove $sum_(n = 1 .. ∞) 1/n^2 = (π^2)/6$ cf. #link(<Euler-reflection-formula>)[]. Here we only prove convergence

    $sum_(n = 1 .. ∞) 1/n^s < 1 + integral_1^∞ 1/x^s = 1+ 1/(-(s-1)) 1/(x^(s - 1)) |_1^∞ = 1 + 1/(s - 1)$ converges, for $s > 1$ and for $Re(s) > 1$

    $zeta(s) := sum_(n = 1 .. ∞) 1/n^s$ is called the Riemann Zeta function

  - $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ is the #link(<Euler-constant>)[Euler gamma constant] #tag("Euler-constant")
  #indent[
    $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n = γ$ as additive asymptotic. $lim_(n -> ∞) exp(1 + 1/2 + ⋯ + 1/n)/n = e^γ$ as multiplicative asymptotic

    _Proof_
    #indent[
      let $a_n = 1 + 1/2 + ⋯ + 1/n - log n$

      $log n = log n/(n-1) ⋯ 2/1 ⋅ 1 = log(n/(n-1)) + ⋯ + log(2/1) + log(1)$

      You can use $log (1 + 1/n) = 1/n + O(1/n^2)$ and $sum_(n = 1 .. ∞) 1/n^2$ converges

      You can also use integral estimation
      $
      1/n < integral_(n-1)^(n) 1/x = log(n/(n-1)) < 1/(n-1)
      $
      $a_n$ is bounded
      $
        dmat(delim: #none,
        1/2 + ⋯ + 1/n , < , log(n) , < , 1 + ⋯ + 1/(n-1) ;

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
  ]
]
#tag("Euler-reflection-formula") Euler reflection formula $1/(z! (-z)!) = product_(n = 1 .. ∞) (1 - z^2/n^2) = (sin π z)/(π z)$ or $z/((z/π)! (-z/π)!) = z product_(n = 1 .. ∞) (1 - z^2/n^2) = sin z$
#indent[
  $product (1 + a_n)$ converges absolutely := $product (1 + |a_n|)$ converges, equivalently $sum log(1 + |a_n|)$ converges, since $a_n -> 0$, $log(1 + |a_n|) ∼ |a_n|$, equivalently $sum |a_n|$ converges.

  $product (1 + a_n)$ absolute convergence implies $product (1 + a_n)$ convergence

  So $product_(n = 1 .. ∞) (1 - z^2/n^2)$ converges

  Use
  $
    n + 1 = 2/1 ⋅ 3/2 ⋯ (n+1)/n = (1 + 1)(1 + 1/2) ⋯ (1 + 1/n)
  $
  $
    1/z!
    &= lim_(n -> ∞) frac((z+1) ⋯ (z+n),n!) 1/((n+1)^z) \
    &= product_(n = 1..∞) frac(1 + z/n, (1 + 1/n)^z)
  $
  The zeros of $1/z!$ are $-1,-2, ⋯$. The zeros of $1/(z! (-z)!)$ are $ℤ ∖ 0$, corresponding to the zeros of $(sin π z)/(π z)$

  $product_(n = 1 .. ∞) (1 - z^2/n^2)$ (asymptotically) is controlled by $sum_(n = 1 .. ∞) z^2/n^2$. Finite product, after expanding the multiplication, is a polynomial $P_N (z)$. On $|z| <= R$ it is controlled by $sum_(n = 1 .. ∞) R^2/n^2$, giving compact uniform convergence, it can be proven that the $k$-th derivative of the sequence $P_N (z)$ converges to the $k$-th derivative of $P(z)$, thus it can be proven that the coefficients of the power function $z^k$ of the sequence $P_N (z)$ converge to the coefficients of the power function $z^k$ of $P(z)$
  - Using Cauchy's integral formula $f^(k)(0) = k!/(2π i) integral.cont f(z)/z^(k+1) #d z$
    $
      |a_(k,N) - a_k| = 1/k! |f_N^(k)(0) - f^(k)(0)|
      <= M_N / r^k
    $
  - Or, in the case of purely real numbers, prove that $(#d^k)/(#d x^k) log (1 - x^2/n^2) = O(1/n^2)$ is controlled, and then $(#d^k)/(#d x^k) P_N (x) = P_N (x) B_k ( (#d)/(#d x) log P_N (x) ,…, (#d^k)/(#d x^k) log P_N (x) )$

  $product_(n = 1 .. ∞) (1 - z^2/n^2) = (sin π z)/(π z)$
  - Infinite product theory in complex analysis
  - Or, from $cos α x$ using Fourier transform integral (@ref-25, vol.2)
    $
      1/π integral_(-π)^(π) cos(α x) cos(n x) #d x &= (-1)^n sin(π α)/π ⋅ (2 α)/(α^2 - n^2) \

      1/π integral_(-π)^(π) cos(α x) sin(n x) #d x &= 0
    $
    for $x in [-π, π]$
    $
      cos(α x) = (2 α sin(π α))/(π) (1/(2 α^2) + sum_(n = 1 .. ∞) ((-1)^n)/(α^2 - n^2) cos(n x))
    $
    let $x = π$
    $
      cos(π α)/sin(π α) - 1/(π α) = (2 α)/(π) sum_(n = 1 .. ∞) 1/(α^2 - n^2)
    $
    The series is controlled and convergent. Integral, exchange integral and series
    $
      integral_0^x (cos(π α)/sin(π α) - 1/(π α)) #d α &= 1/π integral_0^x sum_(n = 1 .. ∞) (2 α)/(α^2 - n^2) #d α \

      log((sin π α)/(π α)) |_0^x &= sum_(n = 1 .. ∞) log |α^2 - n^2| |_0^x \

      log((sin π x)/(π x)) &= sum_(n = 1 .. ∞) log (1 - x^2/n^2) \

      (sin π x)/(π x) &= product_(n = 1 .. ∞) (1 - x^2/n^2)
    $

  $1/(z! (-z)!) = product_(n = 1 .. ∞) (1 - z^2/n^2)$, expanding into a power series, the coefficient of $z^2$ is $- sum_(n = 1 .. ∞) 1/n^2$

  Compare with the coefficient of $z^2$ in the Taylor expansion of $(sin π z)/(π z)$ at $z = 0$, which is $-1/3! π^2 = - π^2/6$

  Specifically
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
  According to Euler's insight, the integral definition of the factorial function is, for $z in ℕ$ and then for $z in ℝ,ℂ$ (and possibly for other normed-division-algebra)
  $
    z! = integral_0^1 (- log s)^z #d s
  $
  The two definitions of $z!$ are equivalent, but this is not obvious. The extension of $z!$ from $ℕ$ to $ℝ,ℂ$ is not unique, because one can add an analytic function that takes the value $0$ at $z in ℕ$ to maintain the extension to $n!$, for example, adding the function $sin(m π z), m in ℤ$

  (@ref-25, vol.2, sect.Euler-integral) The function sequence $f_n (s) = - frac(s^(1/n) - 1,1/n - 0)$ is monotonically increasing convergent and uniformly convergent on $0 < x < 1$ to $- (#d)/(#d t) (t = 0) (s^t) = - (#d)/(#d t)(t = 0)(e^(t log s)) = - log s$. Interchange the series and the integral
  $
    integral_0^1 (- log s)^x #d s
    &= lim_(n -> ∞) n^x integral_0^1 (1 - s^(1/n))^x #d s \
    ("use" s = t^n) &= lim_(n -> ∞) n^x integral_0^1 t^(n-1) (1 - t)^x #d t \
    &= lim_(n -> ∞) n^x frac(n!,(x+1) ⋯ (x+n)) quad "integral by parts"
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
We already obtained $(-1/2)! = π^(1/2)$ using the Euler reflection formula. We can also use the polar coordinate method
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
  Comparison of the growth rates of factorial and hyper-exponentiation $e = lim_(n -> ∞) n/((n!)^(1/n)) = lim_(n -> ∞) (n^n/(n!))^(1/n)$

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

  #tag("sequence-multiplication-mean-limit") Multiplication mean does not change the limit

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
#tag("sequence-addition-mean-limit") Addition mean $lim_(n -> ∞) a_n = a ==> lim_(n -> ∞) 1/n (a_1 + ⋯ + a_n) = a$

#tag("harmonic-series-diverge") Harmonic series diverges $lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n = +∞$

_Proof_ $a_n = 1 + 1/2 + ⋯ + 1/n$ diverges by it is not #link(<Cauchy-completeness-real>)[limit-distance-vanish]. e.g.

  $ forall n ∈ ℕ, a_(2n) - a_n = 1/(n+1) + ⋯ + 1/(2n) >= n ⋅ 1/(2n) = 1/2 $

#tag("iterated-power-vs-factorial-3") #tag("Stirling-approximation") $n! ∼ (2 π n)^(1/2) n^n/(e^n)$
#indent[
  Usage Tips
  $
    n^n &= 2^2/1^1 ⋅ 3^3/2^2 ⋯ (n^n)/((n-1)^(n-1)) \
    &= 2^1/1^1 ⋅ 3^2/2^2 ⋯ (n^(n-1))/((n-1)^(n-1)) n! \
    &= (1 + 1)^1 (1 + 1/2)^2 ⋯ (1 + 1/(n-1))^(n-1) n!
  $
  $
    log(frac((n/e)^n, n!)) = (1 log(1 + 1) + 2 log(1 + 1/2) ⋯ + (n-1)log(1 + 1/(n-1))) - n
  $
  Taylor expansion $log(1 + 1/k) = sum_(m = 1 .. ∞) (-1)^(m-1) 1/(m ⋅ k^m)$ so $k log(1 + 1/k) = sum_(m = 1 .. ∞) (-1)^(m-1) 1/(m ⋅ k^(m - 1))$
  $
    log(frac((n/e)^n, n!))
    &= -n + (n - 1) + sum_(k = 1)^(n-1) sum_(m = 2 .. ∞) (-1)^(m-1) 1/(m ⋅ k^(m-1)) \
    &= -1 - 1/2 (1 + 1/2 + ⋯ + 1/(n-1)) + sum_(k = 2)^(n-1) sum_(m = 3 .. ∞) (-1)^(m-1) 1/(m ⋅ k^(m-1))
  $
  We know $γ = lim_(n -> ∞) 1 + 1/2 + ⋯ + 1/n - log n$. Thus
  $
    - 1/2 (1 + 1/2 + ⋯ + 1/(n-1)) = - 1/2 (1 + 1/2 + ⋯ + 1/(n-1) - log n) - 1/2 log n
  $
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
  Functions $f_n (y) = (1 + frac(y, n^(1/2)))^n e^(- n^(1/2) y)$ converge monotonically to $e^(-1/2 y^2)$ as $n -> ∞$ for $y <= 0, y >= - n^(1/2)$ respectively
  $
    log(1 + frac(y, n^(1/2)))^n e^(- y n^(1/2))
    &= n log(1 + frac(y, n^(1/2))) - y n^(1/2) \
    &= -1/2 y^2 + o(1/n)
  $
  Interchange series and integral, and use $integral_(-∞)^(∞) e^(1/2 y^2) #d y = (2 π)^(1/2)$

  Discussions on the appearance of $π$ can also be seen in #link(<why-pi-in-Gaussian-integral>)[]
]