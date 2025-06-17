#import "../module/module.typ": *
#show: module

#import "Minkowski-space_en.typ": *

In order to deal with the power series of $ℝ^(1,n)$, we need to deal with the series of the range $ℝ^(1,n)$ first.

For now, only consider the timelike future case.

#tag("sum-preserve-time-future") let $v,w$ be timelike future, then $v+w$ is timelike future
#indent[
  $⟨ v+w ⟩^2 = ⟨ v ⟩^2 + ⟨ w ⟩^2 + 2 ⟨v,w⟩$

  $⟨v,w⟩ > 0$

  $|v+w| >= |v| + |w|$ (#raw("#link(<quadratic-form-inequality-Minkowski>)[Triangle Inequality]"))

  $|v+w| > |v|,|w|$
]

let $x_n$ be timelike future or $0$

then $x_1 + ⋯ + x_n$ is timelike future or $0$

$|x_1 + ⋯ + x_n| >= |x_1| + ⋯ + |x_n|$

$|x_1 + ⋯ + x_n| >= |x_1 + ⋯ + x_(n-1)|$, or $n ⇝ |x_1 + ⋯ + x_n| >= 0$ monotonically increasing #tag("increasing-length-of-time-future-series")

let $v,w$ time future, not co-linear. $span(v,w) ≃ ℝ^(1,1)$ cf. #raw("#link(<signature-of-2d-subspace-of-spacetime>)[]")

Through $SO(1,n)$ transformation, we can assume that the center of the geodesic ball is $(0 ,…, 0, 1)$

#tag("sum-preserve-angle-range") 
#indent[
  let the directions $v/(|v|), w/(|w|)$ of $v,w$ be contained in the geodesic ball $exph([-R,R] #i-split)$ of $ℍ𝕪$

  ==> the direction $(v+w)/(|v+w|)$ of $v+w$ is in the geodesic ball $exph([-R,R] #i-split)$
]
_Proof_ 
#indent[
  *Question* Is there a more direct proof?

  let 
  
  $v = |v| exph (ϕ #i-split) \ w = |w| exph (ψ #i-split)$

  let $|ϕ|, |ψ| <= R$

  Mapping the geodesic length $r$ of the hyperbola to the spatial axis $sinh r$ is a monotonically bijective map (Figure)
  The geodesic length of a hyperbola, $r$, is a bijection. The hyperbola map to the spatial axis and is a bijection. After composition, it is $sinh r$, a bijection, remains monotone.

  #html.elem("img", attrs: (src: "../image/hyperbolic-to-space-bijective.jpeg", width: "60%"))
  $ 
    argh ((v+w)/(|v+w|)) 
    &->&im (v+w)/(|v+w|) &(im "of" ℂ_"split") \
    &=&(|v| sinh ϕ + |w| sinh ψ)/((|v|^2 + |w|^2 + 2 |v| |w| cosh (ψ - ϕ))^(1/2))  & cosh >= 1 \
    &<=&(|v| sinh R + |w| sinh R)/((|v|^2 + |w|^2 + 2 |v| |w| cosh (R - R))^(1/2)) \
    &=&sinh R \
    
    abs(argh ((v+w)/(|v+w|))) 
    &<=&R
  $
]
let $x_n$ direction $x_n/(|x_n|)$ in $ℍ𝕪^n (time,future)$ geodesic ball $𝔹$

  ==> $x_1 + ⋯ + x_n in 𝔹$

_Proof_ use $span(x_1 + ⋯ + x_(n-1) , x_n)$ signature $1,1$, embed $ℍ𝕪$, induction

#tag("quadratic-form-inequality-Minkowski-another") 
#indent[
  let the directions of $v,w$ in $ℍ𝕪$ geodesic ball $exph([-R,R] #i-split)$

  ==> $⟨v,w⟩ <= |v| |w| cosh(2 R)$
]
_Proof_ use $⟨v,w⟩ = |v| |w| cosh (ψ - ϕ)$ cf. #raw("#link(<hyperbolic-cosine-formula>)[]")

let $x_n$ time future, direction $x_n/(|x_n|)$ in $ℍ𝕪^n (time,future)$ geodesic sphere $𝔹$ with radius $R$

$
  |x_1 + ⋯ + x_n|^2 
  &=&|x_1|^2 + ⋯ + |x_n|^2 + 2 sum_(1 <= i < j <= n ) ⟨x_i,x_j⟩ \
  &<=&|x_1|^2 + ⋯ + |x_n|^2 + 2 cosh(2 R) sum_(1 <= i < j <= n ) |x_i| |x_j| \
$ 

==> use $cosh >= 1$
$
  |x_1 + ⋯ + x_n|^2 
  &<=&cosh(2 R) (|x_1| + ⋯ + |x_n|)^2
$
#tag("absolute-convergence-Minkowski-distance") $sum_(i = 1)^∞ |x_i| < ∞$ ==> #raw("#link(<increasing-length-of-time-future-series>)[monotonically increasing]") bounded $lim_(n -> ∞) |x_1 + ⋯ + x_n| < ∞$ limit exists

#tag("Minkowski-power-series") 
#indent[
  let $sum_(i = 1)^∞ |x_i| < ∞$

  - Distance $|y| = lim_(n -> ∞) |x_1 + ⋯ + x_n|$ limit exists (previous theorem)
  - Direction $y/(|y|) = lim_(n -> ∞) (x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|) in 𝔹$, limit existence to be proved

  have property

  - $y - (x_1 + ⋯ + x_n)$ time future
  - $lim_(n -> ∞)|y - (x_1 + ⋯ + x_n)| = 0$

  Called Minkowski series convergence $sum_(i = 1)^∞ x_i = y$
]
_Proof_ of convergence in direction space
#indent[
  - Direction $(x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|)$ converges
  #indent[
    *Question* Is there a more direct proof
    
    use #raw("#link(<isom-top-hyperbolic-Euclidean>)[]"). $ℝ^(1,n)$ distance restricted in $ℍ𝕪^n (time,future)$ is equivalent to the geodesic distance as a Riemman manifold, $ℍ𝕪^n$ subtraction of two elements is $ℝ^(1,n)$ spacelike 
    
    we prove $(x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|)$ Cauchy in $ℍ𝕪^n (time,future)$
    
    $lim_(n -> ∞) |x_1 + ⋯ + x_n| < ∞$ ==> $|x_1 + ⋯ + x_n|$ is a Cauchy sequence 

    ==> all $ε > 0$, exist $n in ℕ$, all $m in ℕ$ \
    $|x_1 + ⋯ + x_(n+m)| - |x_1 + ⋯ + x_n| < ε$


    let

    $v = x_1 + ⋯ + x_(n), w = x_1 + ⋯ + x_(n+m)$. use $ℍ𝕪^n$ subtraction of two points is $ℝ^(1,n)$ spacelike

    $ 
      0 
      &<=&- ⟨ v/(|v|) - (w)/(|w|) ⟩^2 \
      &=&- 2 (1 - ⟨v/(|v|),w/(|w|)⟩) \
      &=&2 ((⟨v,w⟩ - |v| |w|)/(|v| |w|))
    $

    use $1/(|v| |w|) = 1/(|x_1 + ⋯ + x_(n+m)| |x_1 + ⋯ + x_(n)|) <= 1/(|x_1|^2)$ (or other) does not affect the limit $->_(n->∞) 0$  

    use #raw("#link(<sum-preserve-time-future>)[]"). $w - v$ is time-like, $|w| > |v|$. use #raw("#link(<triangel-inequality-Minkowski>)[triangle inequality]") $|w| >= |w - v| + |v|$, use Cauchy $|w| - |v| < ε$ 
    
    ==> $|w - v| <= |w| - |v| < ε$

    ==> $|w - v|^2 <= (|w| - |v|)^2 < ε^2$

    ==> $0 <= (|w| - |v|)^2 - |w - v|^2 < ε^2$

    ==> $2(⟨v,w⟩ - |v| |w|) < ε^2$

    ==> $(x_1 + ⋯ + x_n)/(|x_1 + ⋯ + x_n|)$ Cauchy in $ℍ𝕪^n (time,future)$
  ]
  - Inner product converges
  #indent[
    let $y = |y| exph ϕ$ \
    let $z = |z| exph ψ$ time future \
    for $y_n -> y$ use hyperbolic cosine
    $
      ⟨y,z⟩ 
      &=&|y| |z| cosh (|ϕ - ψ|) \
      &=&lim_(n -> ∞) |y_n| |z| cosh(|ϕ_n - ψ|) &quad& "distance" |y_n| and "direction" ϕ_n \
      &=&lim_(n -> ∞) ⟨y_n,z⟩
    $
  ]
  - $y - (x_1 + ⋯ + x_n)$ is time-like
  #indent[
    $
      ⟨ y - (x_1 + ⋯ + x_n) ⟩^2 
      &=&⟨ y - y_n ⟩^2 \
      &=&y^2 + y_n^2 - 2 ⟨y,y_n⟩ \
      &=&lim_(m -> ∞) (y_(n+m)^2 + y_n^2 - 2 ⟨y_(n+m),y_n⟩) \
      &=&lim_(m -> ∞) ⟨ y_(n+m) - y_n ⟩^2
    $
    where $⟨ y_(n+m) - y_n ⟩^2 = ⟨ x_(n+1) + ⋯ + x_(n+m) ⟩^2 >= 0$
  ]
  - $y - (x_1 + ⋯ + x_n)$ future
  #indent[
    $
      ⟨y - (x_1 + ⋯ + x_n) , x_1 + ⋯ + x_n⟩ 
      &=&⟨y,y_n⟩ - ⟨y_n,y_n⟩ \
      &=&(lim_(m -> ∞) ⟨y_(n+m),y_n⟩) - ⟨y_n,y_n⟩ \
      &=&lim_(m -> ∞) ⟨y_(n+m) - y_n , y_n⟩
    $
    where $⟨y_(n+m) - y_n , y_n⟩ = ⟨x_(n+1) + ⋯ + x_(n+m),x_1 + ⋯ + x_n⟩ >= 0$
    $
      lim_(n -> ∞)⟨ y - (x_1 + ⋯ + x_n) ⟩^2 
      &=&lim_(n -> ∞) (y^2 + y_n^2 - 2 ⟨y,y_n⟩) \
      &=&0
    $
  ]
]
Process power series

let $A_n in Lin(⊙^n ℝ^(1,3) -> ℝ^(1,3))$

#tag("Minkowski-analytic") Minkowski analytic
#indent[
  $sum_(n=1)^∞ A_n (v^n)$ (zero order does not affect)

  let geodesic coordinates $argh: ℍ𝕪^n -> ℝ^n$

  Target's $A_n$ property

  - $v$ time future ==> $A_n (v^n)$ time future

  - Defining the norm gives absolute convergence
  #indent[
    use geometric series control like #raw("#link(<linear-map-induced-norm>)[the case of Euclidean]")
    $ 
      |A_n|(R) &:=&sup_(v in ℍ𝕪^n \ |argh(v)| <= R) |A_n (v^n)| = sup_(|argh(v)| <= R) (|A_n (v^n)|)/(|v|^n) \
      
      ρ(R) &:=&limsup_(n in ℕ) {|A_n|(R)^(1/n)} ^(-1)
    $
    ==> $|argh(v)| < R$ and $|v| < ρ(R)$ ==> $sum |A_n (v^n)| <= sum ((|v|)/(ρ(R)))^n = 1/(1 - (|v|)/(ρ(R))) - 1 < ∞$
  ]
  - *Question* Similar to the Euclidean case, the radius of convergence contains Minkowski continuity i.e. continuity of distance and direction, and has absolute uniform convergence properties 
]
*Example* *Question*

  - $exph$ is $ℂ_"split" ≃ ℝ^(1,1)$ Minkowski analytic

  - Similar to complex analysis, $ℂ_"split"$ analytic ==> $ℝ^(1,1)$ Minkowski analytic

  - Similar to the Euclidean case, PDE, characteristic functions, and special functions may provide more examples of Minkowski-analytic

*Question* let $f : ℝ^(1,d) -> ℝ^(1,d)$ Euclidean analytic $ℝ^(1+d)$, $#d f in SO(1,d)$ ==> $f$ Minkowski analytic?

*Question* Regarding Minkowski analytic, consider corresponding to Euclidean's #raw("#link(<analytic-continuation>)[]"), #raw("#link(<power-series-space>)[]"), #raw("#link(<analytic-space>)[]") 

More $|argh(v)| <= R$, parameter $R$

Series or function triangle inequality may need to add a version with parameter $cosh (2 R)$ correction

When approximating the net of analytic function spaces, we also need $R -> ∞$ as the limit of the entire direction space