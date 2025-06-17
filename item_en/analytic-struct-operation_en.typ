#import "../module/module.typ": *
#show: module

#tag("analytic-struct-product") Product space
#indent[
  Asymmetry: $V != W$ ==> No $V ⊙ W$

  We have to use $(⊙^n V) ⊗ (⊙^m W)$ and partial derivatives

  something like

  $ #d^l f (x,y) : v,w ⇝ sum_(n + m = l) binom(l,n,m) (∂^(n+m) f)/(∂ v^n ∂ w^m) (x,y) (v^n ⊗ w^m) $
]
#tag("mulitplication-analytic")
#indent[
  - $𝕂 -> 𝕂$
  #indent[
    $ (sum_(n ∈ ℕ) a_n v^n) (sum_(m ∈ ℕ) b_m v^m) = sum_(l ∈ ℕ) c_l v^l $

    with $c_l = sum_(n+m=l) a_n b_m$

    The radius of convergence is at least $min(R_A,R_B)$

    (Related to Cauchy product. Try to find a better proof method)

    $c_1 = a_1 b_0 + a_0 b_1$

    Restore $1/n!$ in differentiation, $sum a_n v^n ∼ sum 1/(n!) #d^n f (x) (v^n)$

    ==> #tag("Leibniz-law-1d")
    
    $#d (f g)(x) (v) = (#d f(x) (v)) g(x) + f(x) (#d g(x) (v))$, or 

    $(∂ (f g))/(∂ v) = (∂ f)/(∂ v) g + f (∂ g)/(∂ v) $, or
    
    $(f g)' = f' g + f g'$
  ]
  - $𝕂^d -> 𝕂$
  #indent[
    $ (sum_(n ∈ ℕ) a_n v^n) (sum_(m ∈ ℕ) b_m v^m) = sum_(l ∈ ℕ) c_l v^l $
    
    Collect the $n+m$ tensor $A_n (v_1 ⋯ v_n) B_m (v_(n+1) ⋯ v_(n+m))$
    
    let $forall i, v_i = v$ to get the $n+m$ polynomial $A_n (v^n) B_m (v^m)$

    ==> $C_l (v^l) = sum_(n+m=l) A_n (v^n) B_m (v^m)$

    $C_1 v = A_1 (v) B_0 + A_0 B_1 (v)$

    ==> #tag("Leibniz-law") $(∂ (f g))/(∂ v) = (∂ f)/(∂ v) g + f (∂ g)/(∂ v) $
  ]
]
#tag("mulitplication-inverse-analytic")
#indent[
  let $f : 𝕂^d -> 𝕂$, $f = sum A_n (v^n)$, $A_0 != 0$

  use $f = 1 - g$ and $1/(1 - g) = 1 + g + g^2 + ⋯$

  or calculate directly

    let $1/f = sum B_m v^m$, $1/f ⋅ f = 1$, use multiplication

    $m = 0$: $1 = A_0 B_0$

    $m >= 1$: $0 = C_l = sum_(n+m=l) A_n B_m$

    ==> $B_m = - 1/(A_0) sum_(n=1)^m A_n B_(m-n)$, use induction $B_0 ,…, B_(m-1)$

  #tag("differential-of-multiplication-inverse") use Leibniz law 
  #indent[
    $0 = ∂_(v) (1/f ⋅ f) = ∂_(v) (1/f) f + 1/f ∂_(v) f ==> ∂_(v) (1/f) = - 1/(f^2) ∂_(v) f $, or

    $(1/f)' = - (f')/(f^2)$

    in particular, $(1/x)' = - 1/(x^2)$
  ]
  radius of convergence
  #indent[
    try inductive proof $|B_m| <= R^m$

    $|A_0| |B_m| 
    &<= sum_(n=1)^m |A_n| |B_(m-n)| \ 
    &<= sum_(n=1)^m |A_n| R^(m-n) quad ("by induction" B_1 ,…, B_(m-1)) \
    &= R^m sum_(n=1)^m |A_n| (1/R)^n \
    &<= R^m sum_(n=1)^∞ |A_n| (1/R)^n$

    To complete induction, use $R$ with $1/(|A_0|) sum_(n=1)^∞ |A_n| (1/R)^n <= 1$
  ]
]
#tag("compose-op-analytic")
#indent[
  - $𝕂 -> 𝕂$
  #indent[
    let $f(y+w) = sum a_n v^n$, $g(x+v) = sum b_m w^m$
    
    with $a_0 = f(y) = f(g(x)) = f(b_0)$

    $f(g(x+v)) ∘ 
    &= f(b_0 + sum_(m=1)^∞ b_m v^m) \
    &= a_0 + sum_(n=1)^∞ a_n (sum_(m=1)^∞ b_m v^m)^n \
    &= c_0 + sum_(l=1)^∞ c_l v^l$

    where all possible sources of the compounded $v^l$ 
    
    $v^l = (v^1)^(i_1) ⋯ (v^l)^(i_l) = v^(1 ⋅ i_1 + ⋯ + l ⋅ i_l)$ with $l = 1 ⋅ i_1 + ⋯ + l ⋅ i_l$

    thus can only come from for $k = 1 ,…, l$ 
    
    $(b_1 v + ⋯ + b_l v^l)^k 
    = sum_(i_1 + ⋯ + i_l = k) binom(k,i_1,...,i_l) b_1^(i_1) ⋯ b_l^(i_l)$ (cf. #link(<multi-combination>)[])

    ==> 
    $ 
      c_l v^l = 
      sum_(k = 1 ,…, l) 
      sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
      binom(k, i_1 ,…, i_l) a_k b_1^(i_1) ⋯ b_l^(i_l) v^(1 ⋅ i_1 + ⋯ + l ⋅ i_l) 
    $
    $c_1 = a_1 b_1$. Written as a differential #tag("chain-rule-1d") 
    
    $#d (f ∘ g)(x) (v) = #d f (g(x)) (#d g(x) (v)) $, or 
    
    $(f ∘ g)'(x) = f'(g(x)) g'(x)$
  ]
  - $𝕂^d -> 𝕂^(d')$
  #indent[
    $ 
      C_l (v^l) = 
      sum_(k = 1 ,…, l) 
      sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
      binom(k,i_1,...,i_l) A_k (B_1^(i_1) ⋯ B_l^(i_l) (v^(1 ⋅ i_1 + ⋯ + l ⋅ i_l))) 
    $
    where $B_1^(i_1) ⋯ B_l^(i_l) (v^(1 ⋅ i_1 + ⋯ + l ⋅ i_l)) 
    = (B_1 (v^(⊙ 1)))^(⊙ i_1) ⊙ ⋯ ⊙ (B_l (v^(⊙ l)))^(⊙ i_l)$

    $C_1 (v) = A_1 (B_1 (v))$, written as a differential is #tag("chain-rule")

    $#d (f ∘ g)(x) (v) = #d f (g(x)) (#d g (x) (v)) $ 

    Generally written as the differential form
    #indent[
      - $C_l ∼ 1/(l!) #d^l (f ∘ g)$ 
      
      - $A_k ∼ 1/(k!) #d^k f$

      - $B_j ∼ 1/(j!) #d^j g $
      
      in $#d^l (f ∘ g) (x) (v^l) = "formula of" #d^k f , #d^j g$ 
      
      Extract $l! , 1/(k!) , (1/(j!))^(i_j)$
      
      Place in $binom(k,i_1,...,i_l) = (k!)/(i_1! ⋯ i_l!)$ 
      
      Get $(l!)/((1!)^(i_1) ⋅ i_1! ⋯ (l!)^(i_l) ⋅ i_l!)$ 
      (this is _not_ $(l!)/((1 ⋅ i_1)! ⋯ (l ⋅ i_l)!) = binom(l , 1 ⋅ i_1 ,…, l ⋅ i_l)$)
      $
        #d^l (f ∘ g) = 
        sum_(k = 1 ,…, l) 
        sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
        (l!)/((1!)^(i_1) ⋅ i_1! ⋯ (l!)^(i_l) ⋅ i_l!) 
        #d^k f (#d^1 g) ^(i_1) ⋯ (#d^l g)^(i_l)
      $
    ]
  ]
]
#tag("inverse-analytic")
#indent[
  let $f ∼ sum A_n (v^n)$, $𝕂^d -> 𝕂^d$, $A_1 in GL(d,𝕂)$ 

  let $f^(-1) (y + v) = sum B_m (v^m)$

  - First-order differential calculation. $f ∘ f^(-1) = f^(-1) ∘ f = 𝟙 : v ⇝ v$, use composite
  #indent[
    $𝟙 (v) = sum C_l (v^l)$

    $C_0 = 0 \ C_1 = 𝟙 \ C_l = 0 , forall l >= 2 $

    $𝟙 (v) = C_1 (v) = A_1 (B_1 (v)) ==> B_1 = A_1^(-1)$ by $A_1 in GL(d,𝕂)$
  ]
  - Higher-order differential calculation. use induction for $B_1 ,…, B_(l-1)$
  #indent[
    $B_l$ only comes from 

    $i_1 = ⋯ = i_(l-1) = 0$ and $i_l = 1$ ==> $1 ⋅ i_1 + ⋯ + l ⋅ i_l = l$

    $i_1 + ⋯ + i_l = 1$

    $binom(l,0,…,l) = 1$

    ==> (omitting $(v^l)$)
    $
      0 
      &= C_l \
      &= A_1 B_l \
      &quad + sum_(k = 2 ,…, l) 
      sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
      binom(k,i_1,...,i_l) A_k B_1^(i_1) ⋯ B_(l-1)^(i_(l-1))
    $
    $A_1 in GL$ 
    ==> 
    $
      B_l = - A_1^(-1) 
      sum_(k = 2 ,…, l) 
      sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
      binom(k,i_1,...,i_l) A_k B_1^(i_1) ⋯ B_(l-1)^(i_(l-1)) 
    $
  ]
  Because it may not converge, $f ∼ sum_(n >= 1) A_n (v^n)$ cannot be directly used as a $𝕂^d -> 𝕂^d$ function

  But it can be extended to $f : ⨁_(n = 1)^∞ Lin(⊙^n 𝕂^d -> 𝕂^(d')) -> "self"$

  such that $f ∘ f^(-1) = f^(-1) ∘ f = 𝟙 "of" ⨁_(n = 1)^∞ Lin(⊙^n 𝕂^d -> 𝕂^(d'))$

  - The radius of convergence of the inverse function is non-zero (p.77 of @ref-4)
  #indent[
    $
      B_l = - A_1^(-1) 
      sum_(k = 2 ,…, l) 
      sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
      binom(k,i_1,...,i_l) A_k B_1^(i_1) ⋯ B_(l-1)^(i_(l-1)) 
    $
    ==>
    $
      &|B_l| 
      &<= 1/(|A_1|) 
      sum_(k = 2 ,…, l) 
      sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
      binom(k,i_1,...,i_l) |A_k| |B_1|^(i_1) ⋯ |B_(l-1)|^(i_(l-1))  
    $
    use $binom(k,i_1,...,i_l) ∈ ℝ_(>= 0)$ (indeed $∈ ℕ$)

    Construct a power series control with a non-zero radius of convergence for (almost) $ℝ_(>= 0)$ such that $|A_k| <= a_k, |B_k| <= b_k$

    if by induction, for $A_2 ,…, A_l$, $B_1 ,…, B_(l-1)$, $|A_k| <= a_k$, $|B_j| <= b_j$
    #indent[  
      where $sum_(k >= 1) a_k v^k$ with $k >= 2 ==> a_k in ℝ_(>= 0)$ 
      
      Its inverse is $sum_(j >= 1) b_j v^j$ with $j >= 1 ==> b_j in ℝ_(>= 0)$. $ℝ_(>= 0)$ to prove. radius of convergence is non-zero to prove
      
      use case of $𝕂 -> 𝕂$ 
      $ 
        b_l = - 1/(a_1) 
        sum_(k = 2 ,…, l) 
        sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
        binom(k,i_1,...,i_l) a_k b_1^(i_1) ⋯ b_(l-1)^(i_(l-1)) 
      $
      to get $b_j >= 0$, use $a_1 < 0$
    ]
    ==> 
    $
      |B_l| 
      &<= 1/(|A_1|) 
      sum_(k = 2 ,…, l) 
      sum_(i_1 ,…, i_l in ℕ \ i_1 + ⋯ + i_l = k \ 1 ⋅ i_1 + ⋯ + l ⋅ i_l = l)
      binom(k,i_1,...,i_l) |A_k| |B_1|^(i_1) ⋯ |B_(l-1)|^(i_(l-1)) \
      &<= (-a_1)/(|A_1|) b_l
    $
    
    $|B_1| = 1/(|A_1|)$, $b_1 = 1/(-a_1)$

    to get $|B_l| <= b_l$, $|B_1| <= b_1$, use $a_1 = - |A_1| =: α$

    to get $k >= 2 ==> |A_k| <= a_k$, use $a_k = (sup_(k >= 2) {|A_k|^(1/k)})^k =: β^k$

    now prove the inverse power series $b_k$ of the power series $a_k$ has a non-zero radius of convergence
    $
      sum_(n >= 1) a_k v^k 
      &= α v + sum_(n >= 2) β^k v^k \
      &∼ α v + 1/(1 - β v) - 1 - β v \
      &= α v + ((β v)^2)/(1- β v) 
    $
    let $f(v) = α v + ((β v)^2)/(1- β v) ∼ sum a_k v^k$, $f^(-1)(v) = g(v) ∼ sum b_j v^j$

    In order to find the inverse mapping $f^(-1) = g$ of $f$, solve the equation $α g(v) + ((β g(v))^2)/(1 - β g(v)) = v$ 
    
    ==> Quadratic equation of $g(v)$, there are two roots
    
    use $f(0) = 0 ==> g(0) = 0$, select the correct root
    
    $ g(v) = (-(α + β v) - ((α + β v)^2 + 4 β (β - α) v)^(1/2))/(2 β (β - α)) $
    
    use $(1+w)^(1/2) ∼ sum_(n ∈ ℕ) binom(1/2,n) w^n$ radius of convergence $1$ ==> $g(v) ∼ sum b_j v^j$ non-zero radius of convergence 
    
    use $|B_l| <= b_l$ ==> $sum B_j v^j$ non-zero radius of convergence 
      
    Although the exact radius of convergence cannot be given here, the method of proving the inverse function by the compression fixed point principle cannot give the exact maximal local reversible region for the pure differential method.
  ]
]
#tag("differential-of-inverse") 

$𝟙 "of" "power series space" = f ∘ f^(-1) \
==> 𝟙 "of" GL = #d f (f^(-1)(x)) #d f^(-1)(x) \
==> #d f^(-1) (x) = (#d f (f^(-1)(x)))^(-1)$

or $(f^(-1))'(x) = 1/(f'(f^(-1)(x)))$

#tag("implicit-function")

use #link(<analytic-struct-product>)[]

$F(x,y) = 0$ and $(∂ F)/(∂ y)(x,y) in GL$

==> $F(x,f(x)) = 0$, $#d f (x) = - ((∂ F)/(∂ y))^(-1) (∂ F)/(∂ x) (x,f(x))$

The calculation of differentials and differential functions does not require series in advance

- $C^∞$ function with zero radius of convergence at finite points

  $ exp 1/(1-x^2)$ connected to $0$ 

- Function that is $C^∞$ everywhere but has a radius of convergence of $0$ everywhere 
#indent[
  #link("https://en.wikipedia.org/wiki/Non-analytic_smooth_function")[wiki: Non-analytic_smooth_function] 

  $ F(x) := sum_(k in ℕ) e^(-sqrt(2^k)) cos(2^k x) $ 

  Since the series $sum_(k in ℕ) e^(-sqrt(2^k)) (2^k)^n$ converges for forall $n in ℕ$, this function is easily seen to be of class $C^∞$, by a standard inductive application of the Weierstrass M-test to demonstrate uniform convergence of each series of derivatives.

  We now show that $F(x)$ is not analytic at any dyadic rational multiple of $π$, that is, at any $x := π ⋅ p ⋅ 2^(−q)$ with $p ∈ ℤ$ and $q ∈ ℕ$. 

  Since the sum of the first q terms is analytic, we need only consider $F_(> q)(x) $, the sum of the terms with $k > q$. 

  For forall orders of derivation $n = 2^m$ with $m ∈ N $, $m ≥ 2$ and $m > q/2$ we have 

  $
    F^((n))_(>q) 
    &:= sum_(k ∈ ℕ \ k > q) e^(-sqrt(2^k)) (2^k)^n cos(2^k x) \
    &= sum_(k ∈ ℕ \ k > q) e^(-sqrt(2^k)) (2^k)^n \
    &>= e^(-n) n^(2 n) ("as" n -> ∞ )
  $

  where we used the fact that $cos(2^k x) = 1$ for forall $2^k > 2^q$, and we bounded the first sum from below by the term with $2^k = 2^(2 m) = n^2$. 

  As a consequence, at any such $x ∈ ℝ$, 

  $ limsup_(n -> ∞) ((|F^((n))_(> q)|)/(n!))^(1/n) = ∞ $

  Since the set of analyticity of a function is an open set, and since dyadic rationals are dense, we conclude that $F_(> q)$, and hence $F$, is nowhere analytic in $ℝ$
]
- Continuous but nowhere differentiable 
#indent[
  #link("https://en.wikipedia.org/wiki/Weierstrass_function")[wiki: Weierstrass_function] 

  $ f(x) = sum_(n =0)^∞ a^n cos(b^n π x) $ 

  where $0 < a < 1$, $b$ is positive odd integer, and $a b > 1+ 3/2 π$ 
]
- $k$-th order differentiable but not $k+1$-th order differentiable: use the integrals of each order of the Weierstrass function

- $k$-th order differentiable but $k$-th order not continuously differentiable (although $k$-th order differentiable implies $k-1$-th order continuously differentiable): use $x^2 sin 1/x$, $1$-th order differentiable but not $1$-th order continuously differentiable, use its integrals of each order

- Continuous homeomorphism but not differentiable homeomorphism or analytic homeomorphism. $x^3$ 

- Diffeomorphism but not analytic diffeomorphism. Take the part of the smooth but everywhere non-analytic function where $#d f != 0$ to get a local diffeomorphism. Local to global by using $x/(1-x)$ to get an analytic diffeomorphism from $(-1,1) -> ℝ$