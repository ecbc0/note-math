#import "../module/module.typ": *
#show: module

cf. #link("https://en.wikipedia.org/wiki/Symmetric_space")[wiki:Symmetric_space] #link("https://en.wikipedia.org/wiki/Simple_Lie_group")[wiki:Simple_Lie_group]

#tag("symmetric-space-locally") := 在测地线坐标下, 反射 $-𝟙$ 是 isometry. 等价于 $∇ R = 0$ 

*Example* quadratic manifold, simple-Lie-group and related symmetric-space

constant-sectional-curvature ==> symmetric-space

simple-Lie-group := Lie-algebra & Lie-bracket cannot decompose 

Killing form := $g(X,Y) := ± tr [X,[Y,]] = ± tr("ad" X "ad" Y)$ for $𝟙$ 处的切空间的 $X,Y$

然后定义 $𝟙$ 处的 metric 通过 action 生成的其它地方的 metric, 而且是 bi-invariant 的 i.e. 群作用的两种形式都给出相同的 metric

这样的定义使得群作用是 Killing-form 的 isometry

不是 simple-Lie-group 也可以定义 Killing-form

*Question* Killing-form 的定义的动机?

simple-Lie-group <==> Killing-form 非退化

simple-Lie-group and its symmetric-space 的 Killing-form 是 Einstein-metric 

#let L = c-diff($L$)

_Proof_ of simple-Lie-group 的情况
#indent[
  - $g([X,X'],X'') + g (X',[X,X'']) = 0$ for Lie algebra $X,X',X''$

  _Proof_
  #indent[
    Lie-algebra ==> δ-isometry ==> for δ-group-action $X$, $∂_X g = 0$ 

    因为 Killing-form 是群作用生成的 metric 所以 Lie-derivative 是零 $#L _X g = 0$

    对于 $X,X',X''$ 生成的场
    $
      0 &= #L _X (g (X',X'')) \
      &= (∂_X g) (X',X'') \
        &quad - (g(#L _X X',X'') + g(X',#L _X X'')) \
      &= g([X,X'],X'') + g (X',[X,X''])
    $
  ]
  - geodesic-derivative $∇ = 1/2 [,]$. _Proof_ see below

  - curvature $[∇_i,∇_i'] j = - 1/4 [[i,i'],j]$

  - $∇ R = 0$. hence symmetric-space-locally

  - curvature $g([∇_i,∇_i']j,j') = - 1/4 g([i,i'],[j,j'])$

  - sectional-curvature for orthonormal $- 1/4 |[X,Y]|^2$

  - Ricci-curvature $"Ric"(X,Y) = 1/4 tr [X,[Y,]] = ± 1/4 g$. hence Einstein-metric

  - scalar-curvature $"scal" = ± 1/4 dim$
]
*Prop* $∇_X Y = 1/2 [X,Y]$ at $𝟙$, 同理对 $X,Y$ 生成的场 (bi-invariant)

_Proof_ 
#indent[
  *Prop* $∇_X X = 0$ 
  
  这给出 $∇_X Y + ∇_Y X = 0$
  
  with $∇_X Y - ∇_Y X = [X,Y]$, 这给出 $∇ = 1/2 [,]$

  _Proof_ of $∇_X X = 0$
  #indent[
    need $g(Y, ∇_X X) = 0$

    由于群作用生成 $g,X',X''$, $g(X',X'')("at" p) equiv g(X',X'')("at" 𝟙)$ 常值 ==> $∂ g(X',X'') = 0$
    
    $0 = ∂_X (g(X',X'')) = g(∇_X X', X'') + g(X', ∇_X X'')$

    need $g(∇_X Y, X) = 0$

    $∇_X Y - ∇_Y X = [X,Y]$
    
    $g([X,Y],X) = - g (Y, [X,X]) = 0$

    need $g(∇_Y X, X) = 0$

    by $0 = ∂_Y (g(X, X))$

  *Question* any more intuitive proof?
  ]
]
*Prop* for simple-Lie-group
#indent[
  Lie algebra 生成的 bi-invariant vector field 的积分曲线都是 Killing-form 测地线, 因为
    - 测地线可以写为 $∇_vel(x) vel(x) = 0$
    - 假设 $vel(x)$ 是 $X$ 的积分曲线 $vel(x)(t) = X(x(t))$
    - $∇_X X = 0$
]
二次型流形. $ℝ^(p,q)$ 的对称群 $SO(p,q)$

  - orbit type $|x|^2 = 1$ or $ℚ^(p,q)(1)$ 
    - induced metric signature $(p-1,q)$ (normal vector $|x|^2 = 1 > 0$)
    - isotropy-group $SO(p-1,q)$ 
    - quotient $(SO(p,q))/(SO(p-1,q)) = ℚ^(p,q)(1)$
    - isometry of $ℚ^(p,q)(1)$ is $SO(p,q)$ (isometry 假设保持方向)

  - orbit type $|x|^2 = -1$ or $ℚ^(p,q)(-1)$
    - induced metric signature $(p,q-1)$ (normal vector $|x|^2 = -1 < 0$)
    - isotropy-group $SO(p,q-1)$
    - quotient $(SO(p,q))/(SO(p,q-1)) = ℚ^(p,q)(-1)$
    - isometry of $ℚ^(p,q)(-1)$ is $SO(p,q)$

$ℚ^(p,q)(± 1) = ℚ^(q,p)(∓ 1)$

*Example* 

  - $(0,n)$ spatial manifold 有 $ℚ^(1,n)(1) = ℍ𝕪^n = SO(1,n)/SO(n),ℚ^(0,n+1)(-1) = 𝕊^n = SO(n+1)/SO(n)$

  - $(1,n-1)$ 时空二次型流形有 $ℚ^(2,n-1)(1) = SO(2,n-1)/SO(1,n-1)$ 和单叶双曲面 $ℚ^(1,n)(-1) = SO(1,n)/SO(1,n-1)$ 

#let g = c-Lie-algebra("g")
#let h = c-Lie-algebra("h")

二次型流形的例子有这种性质

simple-Lie-group $G$, simple-Lie-group isotropy $H$, orbit $G/H$

Lie-algebra 有正交分解 $#g = #h ⊕ #g/#h$, 不是 Lie bracket 分解

$#h$ 是 $H$ 的 Lie-algebra, $#g/#h = #h^⟂$ 是正交补 

$exp$ 给出 $G,H,G/H$ 的坐标

$#g$ 的 Killing-form 导出 $#h$ 的 Killing-form 和 $#g/#h$ 的 Einstein metric

- $[#h,#h] ⊆ #h$

- $[#h,#g/#h] ⊆ #g/#h$

- $[#g/#h,#g/#h] ⊆ #h$