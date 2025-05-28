#import "/module/module.typ": *
#show: module

#let B = c-bf("B","#919191")
#let T = c-bf("T","#919191")
#let closed(x) = math.macron(x)
#let Closed(x) = math.overline(x)

#tag("topology-subspace")
#indent[
  Subtopology := let $S subset X$. Inherit #link(<topology>)[net system] $#T _S = {S ∩ B : B in #T _X}$

  Equivalently defined, the subtopology is the smallest topology that makes the embedding map $S ↪ X$ continuous
]

Inheritance of subtopology. $S' subset S$ is a $#T _S$ subtopology <==> $S' subset X$ is a $#T _X$ subtopology

*Proof* According to the associativity of $∩$ + $S' subset S <==> S' ∩ S = S'$

#tag("closed-in-subspace") #link(<closed>)[] Characterization of in subspace
#indent[
  $S' ⊂ S ==> "closed"(S',#T _S) = S ∩ "closed"(S',#T _X)$

  *Example* $"closed"((0,1],#T _((0,1])) = (0,1] ≠ [0,1] = "closed"((0,1],#T _ ℝ)$

  Indicates that $"closed"(S',#T _X)$ may have #link(<limit-point>)[limit point] $∉ S$ or $in "closed"(S,#T _X) ∖ S$, but the limit point of $"closed"(S',#T _S)$ can only be $in S$

  $S$ is a closed set 
  - ==> $S = "closed"(S,#T _X) supset "closed"(S',#T _X)$
  - ==> $"closed"(S',#T _S) = "closed"(S',#T _X)$
]

#tag("quotient-topology")
#indent[
  $#T _(X/∼)$ := The largest topology that makes the quotient map $X ↠ X/∼$ continuous, i.e. $B in #T _(X/∼) <==> f^(-1) (B) in #T _X$
]

#let prod = $limits(product)_(i in I) X_i$ 

#tag("product-topology")  
#indent[
  $#T _(prod)$ := The smallest topology in which all component mappings $f_i : prod -> X$ are continuous, i.e., with the family of sets
  $
    {f_i ^(-1) (B) : exists i in I, exists B in #T _i}
  $
  to generate a net system of finite intersections
  $
    f_(i_1)^(-1) (B_(i_1)) ∩ ⋯ ∩ f_(i_n)^(-1) (B_(i_n))
  $

  Because $f_i$ is a component mapping
  $
    forall A_j in Subset(X_j), f_i (f_i ^(-1) (A_i)) = cases(
      A_i "if" i = j,
      X_i "if" i ≠ j
    )
  $
]
The product of closed sets is also a closed set. by the definition of limit point and `and` logic

The $f_i$ image does not necessarily pass closed sets. *Example* The closed set ${(x,y) in ℝ^2 : x y = 1}$ mapped to the $x$ axis yields a non-closed set $ℝ ∖ 0$

#let sum-top = $limits(⨆)_(i in I) X_i$

#tag("sum-topology") 
#indent[
  The topology of #sum-top is the largest topology that makes the embedding $X_i ↪ #sum-top$ continuous

  The point grid system $#T _i$ of $X_i$ for all $i$ constitutes the point grid system of the sum space in the copy of the sum space, in which the form of the set is $⨆_(i in I) B_i$
]