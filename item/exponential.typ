#import "/module/module.typ": *
#show: module

$exp$ 是 $(𝕂,+) -> (𝕂 ∖ 0, ⋅)$ 同态

#tag("real-exponential")
#indent[
  如果指数是自然数, 则 $a^(n+m) = a^(n) a^m$. 可以简单地推广到有理数

  对于指数是实数, 将指数函数 $x ⇝ a^x$ 定义为满足 $a^(x+y) = a^x a^y$ and $a^1 = a$

  假设 $f(x) = a^x$ 解析. 对 $f(x+y) = f(x)f(y)$ 幂级数展开 (需要 $ℝ,ℂ,ℂ_"split"$ 的交换性?)

  两边展开
  $
    sum (f^((n)) (0))/n! (x+y)^n &= sum (f^((n)) (0))/n! x^n sum (f^((n)) (0))/n! y^n \

    sum_n sum_(i+j=n) (f^((n)) (0))/n! n!/(i! j!) x^i y^j &=  sum_n sum_(i+j=n) (f^((i)) (0))/i! (f^((j)) (0))/j! x^i y^j
  $
  令系数相同 $forall n, forall i+j=n, f^((n)) (0) = f^((i)) (0) f^((j)) (0)$ \
  ==>
  - $forall n,  f^((n)) (0) = f^((n)) (0) f^((0)) (0) ==> f^((0)) (0) = 1$ 
  - $forall n, f^((n)) (0) = (f^((1)) (0))^n$
  ==> 
  $
    f(x) = sum ((f^((1)) (0))/n! x)^n
  $

  for $a$, def $f^1 (0) := log a in 𝕂$
  $
    a^1 &= f(1) \
    &= sum 1/n! (log a)^n \
    & = exp log a \
    & = a \

    a^x &= f(x) \
    &= sum 1/n! (log a ⋅ x)^n \
    &= exp (x log a)
  $
]
#tag("power-function") 定义了指数函数意味着对每个 $a in ℝ$ 定义了每个实数指数 $x$, 因此也定义了幂函数 $a ⇝ a^x$ 或者改写为 $x ⇝ x^a$

也可以用 $x^a = exp(a log x)$

#tag("Euler-formula")

  - $ℂ$
  $
    exp z &= cos z + #i sin z \
    #i &≃ mat(,-1;1) ∼ so(2)
  $
  - $ℂ_"split"$
  $
    exph z &= cosh z + #i sinh z \
    #i-split &≃ mat(,1;1) ∼ so(1,1)
  $