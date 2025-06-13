#import "../module/module.typ": *
#show: module

向量场 $Y$ 在方向 $X$ 的导数的定义问题
#indent[
  $p$ 附近的向量场 $Y$, 在 $X$ 方向, 尝试在坐标里求导数 $(∂ Y)/(∂ X) = lim_(t -> 0) 1/t (Y(p + t X) - Y(p))$

  然而, #link(<difference-polynomial>)[difference] 操作不线性兼容于一般 diffeomorphism 的换坐标

  但是在 metric-manifold, 有特殊的坐标 --- #link(<geodesic-coordinate>)[测地线坐标]. $p$ 的不同测地线坐标的变换方式是 $SO$, 是线性的
]
#tag("geodesic-derivative") 测地线导数 *alias* #tag("Levi-Civita-derivative") Levi-Civita 导数 :=
#indent[
  在 $p$ 点测地线坐标, 在 $p$ 点的导数, $∇_X Y := (∂ Y)/(∂ X)$

  也可以对 #link(<tensor>)[] 场求导数 $∇_X T$. 根据张量结构带有的纯量乘法, 计算可以使用 #link(<Leibniz-law>)[product-rule] *Example* $∇_X (Y ⊗ Z) = (∇_X Y) ⊗ Z + Y ⊗ (∇_X Z)$
]
*Prop* $∇ g = 0$. _Proof_ 在测地线坐标 $∂ g (p) = 0$

*Prop* $∇ Vol = 0$ or $∇ (|det g|^(1/2) #d x^1 ∧ ⋯ ∧ #d x^n) = 0$

*Prop* 协变导数兼容于 metric-dual e.g. $∇ g v = g ∇ v$ since $∇ g = 0$

可能需要其它坐标来计算测地线坐标, 从而也可能需要其它坐标来表示测地线导数

#tag("geodesic-derivative-in-general-coordinate")
#indent[
  用一般坐标 $x$ 计算出测地线坐标 $y$, 然后在坐标 $y$, 测地线导数是
  $
    ∇_X Y (x)
    
    &= (∂ x)/(∂ y) (y) ⋅ (∂ Y)/(∂ X) (y) \

    &= (∂)/(∂ X) ((∂ x)/(∂ y) ⋅ Y) - (∂)/(∂ X)((∂ x)/(∂ y)) ⋅ Y &quad "by product-rule"
  $
  使用 #link(<connection-transformation>)[联络的变换] 
  $
    0 &= Γ(y) \
    &= (∂ y)/(∂ x) ⋅ Γ(x) ⋅ (∂ x)/(∂ y) + (∂ y)/(∂ x) ⋅ (∂)/(∂ y) ((∂ x)/(∂ y))
  $
  ==> $(∂)/(∂ y) ((∂ x)/(∂ y)) = - Γ(x) ⋅ (#d x)/(#d y)$

  使用 $(∂)/(∂ X)((∂ x)/(∂ y)) = (∂)/(∂ y) (X) ((∂ x)/(∂ y))$. 代入 $∇_X Y (y)$ 的计算
  $
    ∇_X Y (y) = (∂)/(∂ X) ((∂ x)/(∂ y) ⋅ Y) + X^⊺ ⋅ Γ(x) ⋅ (∂ x)/(∂ y) ⋅ Y
  $
  $p$ 切空间将 $∇_X Y (y)$ 线性转换 $(∂ x)/(∂ y) (y)$ 到 $∇_X Y (x)$, 但保持 in coordinate $x$, but keep $X,Y$ in coordinate $y$
  $
    &∇_X Y (x) \
    &=(∂)/(∂ ((∂ x)/(∂ y) (y) ⋅ X(y))) ((∂ x)/(∂ y) (y) ⋅ Y(y)) + ((∂ x)/(∂ y) (y) ⋅ X(y))^⊺ ⋅ Γ(x) ⋅ (∂ x)/(∂ y) (y) ⋅ Y(y) \
    &= (∂)/(∂ (X(x))) Y(x) + X(x)^⊺ ⋅ Γ(x) ⋅ Y(x)
  $
  或者写为, 在一般坐标, 测地线导数
  $
    ∇ = ∂ + Γ
  $
  对于 coordinate-frame
  $
    ∇_((∂)/(∂ x^i)) (∂)/(∂ x^i') = Γ_(i i')^j (∂)/(∂ x^j)
  $
  有无更直观的解释, 而不是直接使用联络的变换? 
  
  如果只看线性兼容, 那么有很多 #link(<principal-bundle-connection>)[线性 connection], 重合于 geodesic-derivative 的是 metric-connection
]
#tag("geodesic-derivative-of-co-vector") *Prop* 对于 co-vector 场 
$ 
  ∇ = ∂ - Gamma 
$
_Proof_ 
#indent[
  *Question* 类似于 vector 场的情况. 使用变换 $α(x) = α(y) ⋅ (∂ x)/(∂ y)$ 和 product-rule $(∂)/(∂ X) (α ⋅ (∂ x)/(∂ y) ⋅ Y) = (∂ α)/(∂ X) ⋅ ((∂ x)/(∂ y) ⋅ Y) + α ⋅ (∂)/(∂ X) ((∂ x)/(∂ y) ⋅ Y)$

  对于 co-vector coordinate-frame
  $
    ∇_((∂)/(∂ x^i)) #d x^i' = - Γ^i'_(i j) #d x^j
  $
]

#tag("parallel-transport-metric-connection") 
#indent[
  平行运输 as "沿曲线零变化率" $∇_(vel(x)) X = 0$ or $(∂ + Γ)_vel(x) X = 0$ where $X = X(x(t))$

  $∇_(vel(x)) X = 0$ 是 ODE

  根据计算 (?) 可以从平行运输 + 微商恢复协变导数
]
#tag("orthonormal-frame") 
#indent[
  metric-connection 的平行运输保持 metric
  
  可以用来构造规范正交标架
  
  可以证明流形 metric 一一对应的到流形上的 $SO$ principal-bundle 结构
  
  但是有更具体且可操作的计算结果吗? 关于在测地线坐标用平行运输计算规范正交标架 
  
  规范正交标架可能会用于弯曲流形的 spinor 的一些简化计算 e.g. Pauli-matrix $σ^(0,1,2,3)$
]