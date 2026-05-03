#import "../module/module.typ": *
#show: module

#tag("transformation_group")
#indent[
  复合可以认为是一种运算 $(f_2, f_1) ⇝ f_2 ∘ f_1$. 如果固定其中一个位置, 可以
  - 前置复合 $f ⇝ g ∘ f$, 也称为右乘 
  - 后置复合 $f ⇝ f ∘ g$, 也称为左乘

  映射/函数的复合运算是结合的 $f_3 ∘ (f_2 ∘ f_1) = (f_3 ∘ f_2) ∘ f_1$

  - 如果 $f, g$ 是双射, 映射的复合 $f ∘ g$ 是双射
  - 恒等映射 $𝟙$ 是双射, 是复合运算 $∘$ 的单位元: $f ∘ 𝟙 = 𝟙 ∘ f = f$
  - 映射的逆 $f^(-1)$ 是复合运算 $∘$ 的逆元: $f ∘ f^(-1) = f^(-1) ∘ f = 𝟙$

  所以我们有变换群的概念: $X$ 到自身的所有双射 $f : X <-> X$ 组成的群 $Aut X$, 以及 $Aut X$ 的子群, 通常是来自保持某种 $X$ 上的结构的双射组成的群, 例如
  - $ℝ^n$ 有 #link(<linear>)[线性结构], 保持线性结构的双射组成 $GL(n, ℝ)$, 是 $Aut(ℝ^n)$ 的子群

  类似于幂集 $Subset(X)$ 被记为 $2^X$, $Aut X$ 可记为 $X!$, 因为是 ${1 ,…, n}$ 到自身的双射组成置换群 $Aut {1 ,…, n} = S_n$, 集合的元素数量是 $n!$
]
#tag("binary_operation_group")
#indent[
  也有二元运算群的概念: *Example* 实数加法, 向量空间的加法

  加法 $+$ 是结合的 $a_1, a_2, a_3 in ℝ ==> (a_1 + a_2) + a_3 = a_1 + (a_2 + a_3)$

  - 零 $0 in ℝ$ 是加法运算 $+$ 的单位元 $a + 0 = 0 + a = a$
  - 加法逆 $-a in ℝ$ 是加法运算 $+$ 的逆元 $a + (-a) = (-a) + a = 0$
]
类似于 curry 化 "$A_1 -> (A_2 -> A_3)$ 等价于 $(A_1 × A_2) -> A_3$", 变换群和运算群可以相互同构地转换

将复合 $∘$ 作为 $Aut X$ 上二元运算, 可以将变换群同构地转为运算群

可以将运算群同构地转为变换群, 例如

- 左运算 $L_a : x ⇝ a ⋅ x$ 作为 $X$ 到自身的双射 $L_a in Aut X$
  - $L_a ∘ L_b = L_(a ⋅ b)$, by 结合律 $a ⋅ (b ⋅ x) = (a ⋅ b) ⋅ x$
  - $(L_a)^(-1) = L_(a^(-1))$

- 右运算 $R_a : x ⇝ x ⋅ a$ 作为 $X$ 到自身的双射 $R_a in Aut X$
  - $R_a ∘ R_b = R_(b ⋅ a)$, by 结合律 $(x ⋅ b) ⋅ a = x ⋅ (b ⋅ a)$
  - $(R_a)^(-1) = R_(a^(-1))$

非零实数 $ℝ ∖ 0$ 的乘法 $⋅$ 也组成群

非零八元数 $𝕆 ∖ 0$ 的乘法不是结合的: 一般地 $(a_1 ⋅ a_2) ⋅ a_3 != a_1 ⋅ (a_2 ⋅ a_3)$

所以这种非结合运算群不同构于 $L_a, R_a$ 形成的 $𝕆 ∖ 0$ 的结合变换群: $L_a ∘ L_b != L_(a ⋅ b)$

#tag("group_homomorfsm")
#indent[
  *Def* 群同态 $f : G_1 -> G_2$
  
  $f(a b) = f(a) f(b)$
  
  这蕴含
  - $f(𝟙_(G_1)) = 𝟙_(G_2)$ by 
    - $f(a 𝟙_(G_1)) = f(a) = f(a) 𝟙_(G_2)$
    - $f(𝟙_(G_1) a) = f(a) = 𝟙_(G_2) f(a)$
  - $f(a^(-1)) = f(a)^(-1)$ by 
    - $f(𝟙_(G_1)) = f(a a^(-1)) = f(a) f(a^(-1))$
    - $f(𝟙_(G_1)) = 𝟙_(G_2)$
]
*Example* $(ℝ, +)$ 到 $(ℝ_(> 0), ⋅)$ 的同态 $exp(x + y) = exp(x) ⋅ exp(y)$

#tag("group_isomorfsm") *Def* 群同构: $f: G_1 -> G_2$ 是双射且 $f, f^(-1)$ 是群同态

*Example* $(ℝ, +)$ 到 $(ℝ(> 0), ⋅)$ 的同构 $exp$, 逆映射 $log$ 是同态 $log(x ⋅ y) = log(x) + log(y)$

*Prop* 如果 $f$ 是同态且是双射, 则 $f$ 是同构

_Proof_ 
#indent[
  需要证明 $f^(-1)$ 是同态
  
  由满射, forall $a_2, b_2 in G_2$, 存在 $a_1, b_1 in G_1$ 使得 $a_2 = f(a_1), b_2 = f(b_1)$

  由同态 $f(a_1 b_1) = f(a_1) f(b_1) = a_2 b_2$

  由可逆 
  - $a_1 b_1 = f^(-1)(a_2 b_2)$
  - $a_1 = f^(-1)(a_2)$
  - $b_1 = f^(-1)(b_2)$
  所以 $f^(-1)(a_1) f^(-1)(a_2) =  f^(-1)(a_2 b_2)$
]

#tag("subgroup")
#indent[
  群 $G$ 的子群 $H$ 定义为
  - 子集 $H ⊆ G$
  - 二元运算封闭 $a, b in H ==> a ⋅ b in H$
  - 逆运算封闭 $a in H ==> a^(-1) in H$
  等价地, 恒等嵌入 $H ↪ G$ 是群同态
]
*Example* $ℝ ∖ 0$ 上的乘法群有子群 $ℝ_(> 0)$ 

*Prop* $H_1, H_2$ 是子群 ==> $H_1 ∩ H_2$ 是子群

设 $f: G_1 -> G_2$ 是群同态, $H_2 ⊆ G_2$ 是子群, 则 $f^(-1)(H_2) ⊆ G_1$ 是子群

$𝟙_(G_2) ⊆ G_2$ 是子群, 从而 $f^(-1) (𝟙_(G_2)) ⊆ G_1$ 是子群

#tag("group_kernel") *Def* 群同态的核 $ker f := f^(-1) (𝟙_(G_2)) = {a in G_1 : f(a) = 𝟙_(G_2)}$

$f$ 是单射 <==> $ker f = 𝟙_(G_1)$

设 $H_1 ⊆ G_1$ 是子群, 则 $f(H_1) ⊆ G_2$ 是子群

#tag("group_action") *Def* 群作用 := 一个群 $G$ 同态到 $X$ 的双射同构群 $Aut X$, 也叫做表示 (representation) 
$
  ρ: map(G, Aut X, g, ρ(g))
$
或者同态到 image 群 $G ↠ ρ(G) ⊆ Aut X$

群作用也可以写为以下的形式
$
  map(G × X, X, (g,x), ρ(g) ⋅ x)
$
并满足 $ρ(g) ⋅ (ρ(h) ⋅ x) = ρ(g h) ⋅ x$

通常省略 $ρ$ 而写成 $ρ(g) ⋅ x := g ⋅ x$

#tag("orbit") := 
$
  G ⋅ x = {g x in X : g in G} ={map(G, X, g, g x)} (G)
$
*Example* $SO(3)$ 作用在 $ℝ^3$, orbit $SO(3) ⋅ x = 𝕊^2(|x|)$

#tag("isotropy") := 
$
  G_x = {g in G : g x = x} = {map(G, X, g, g x)}^(-1) (x)
$
*Example* $SO(3)$ 作用在 $ℝ^3$, isotropy $G_x$ = 绕 $x in 𝕊^2$ 所在轴的旋转, 是嵌入的 $SO(2)$

$G_x$ 是 $G$ 的子群

换 orbit 基点后的 orbit. forall $y = h x$ ==> $G x = G y$

_Proof_
#indent[ 
  $
    map(G, G, g, g h)
  $ 
  是双射. (可逆.) 所以
  - $ 
      { map(G, G, g, g h) } (G) = G 
    $
  - $
      G x &= { map(G, X, g, g x) } (G) \
      &= { dmat( delim: #none ,
        G , ⟶ , G , ⟶ , X ;
        g , ⟿ , g h , ⟿ , g h x
      ) } (G) \
      &= G (h x)
    $
]

#tag("decomposition_into_orbit") $G x != G x' <==> G x ∩ G x' = ∅$

_Proof_
#indent[
  逆否命题 $G x = G x' <==> G x ∩ G x' != ∅$

  只需要证明 <==
  $
    exists h in G, y = h x \
    exists h' in G, y = h' x'
  $
  但我们已经证明过 $G x = G (h x) = G y = G (h' x') = G x'$
]
*Example* $SO(3), ℝ^3$, 不同 orbit 就是不同半径的球面

orbit 的集合 := 
$
  X/G := {G x in Subset(X) : x in X}
$

可以给出被作用空间 $X$ 的加法分解 $X = ⨆_(s in X/G) s$

换 orbit 基点 $x ⇝ h x$ 后的 isotropy 
$
  g in G_(h x) &<==> g (h x) = h x \ 
  &<==> h^(-1) g h x = x \
  &<==> h^(-1) g h in G_x
$
映射 $map(G, G, g, h^(-1) g h)$ 
- 同态 $h^(-1) (g ⋅ g') h = (h^(-1) g h) ⋅ (h^(-1) g' h)$
- 双射 $h^(-1) g h = g' <==> g = h g' h^(-1)$

#tag("isotropy_in_same_orbit_is_isom") 从而是 $G$ 到自身的群同构, 限制在 $G_(h x) <-> G_x$ 上得到子群之间的同构. 或者说, 如果 $x, y in G$ 在相同的 orbit 上 $G ⋅ x = G ⋅ y$, 则 isotropy 群同构 $G_x ≃ G_y$ 

$G_(h x)$ 也可以写为 $h G_x h^(-1) = {h g h^(-1) : g in G_x}$

使用 $G$ 作用在 $G x$ 上的逆像, 可以将 $G$ 分解

$
  G = ⨆_(y in G x) { map(G, X, g, g x) }^(-1) (y)
$ 

计算 $y = h x in G x$ 的逆像 

$
  g x = h x &<==> h^(-1) g in G_(x) \
  &<==> g in h G_x := { h a : a in G_x }
$ 

- $
    { map(G, X, g, g x) }^(-1) (y) = h G_x
  $  
  $G_x$ 一般不是群. 例如, 当 $h ∉ G_x$ 时, $h^(-1) ∉ G_x$, 从而 $𝟙 ∉ h G_x$, 因为 $h h' = 𝟙 ==> h' = h^(-1)$

- $|h G_x| = |G_x|$ 是因为 $g ⇝ h g$ 是双射, 从而限制在 $G_x <-> h G_x$ 上是双射

- $
    abs(
      { map(G, X, g, g x) }^(-1) (y)
    ) = |h G_x| = |G_x|
  $
#tag("orbit_istropy_product_decomposition") orbit $G x$ 和 isotropy $G_x$ 形成群 $G$ 在集合上的积分解: 

对于每个 $y in G x$, 选取一个 $h(y) =: h in G$ 使得 $h x = y$ (选择公理)

于是存在双射 
$ 
  dmat( delim: #none ,
    G x × G_x ,<-->, G ,=, ⨆_(y in G x) { map(G, X, g, g x) }^(-1) (y) ;
    (y, a) ,⟿, h a
  ) 
$ 
这蕴含 $|G| = |G x| ⋅ |G_x|$

也蕴含 $|G x|, |G_x| <= |G|$

#tag("conjugate_action") 共轭作用, 类似于换坐标
$
  c_h : map(G, G, g, h g h^(-1))
$
*Example*
- 线性映射在不同基下的表示
- 流形的映射在不同坐标的表示

可以认为 $h ⇝ c_h$ 形成 $G$ 在自身上的作用

$c_(h h') = c_h c_(h')$ 

_Proof_ $(h h')^(-1) g (h h') = h'^(-1) (h^(-1) g h) h'$

共轭作用的 
- orbit $G ⋅ g = {h g h^(-1) : h in G}$ 称为 #tag("conjugate_class")
- isotropy $G_g = { h in G : h g h^(-1) = g }$ 称为 $g$ 的 centralizer

*Example* 置换的 conjugate-class 是循环

共轭作用的 isotropy 给出的是与 $g$ 交换的 $h in G$ 
$
  (h g h^(-1) = g) 
  & <==> (h g = g h) \
  & <==> 𝟙 = h^(-1) ⋅ g ⋅ h ⋅ g^(-1)
$
其中 $(g,h) ⇝ h^(-1) ⋅ g ⋅ h ⋅ g^(-1)$ 被称为群 $G$ 的交换子 #tag("commutator")

#tag("action_surjective") *alias* #tag("action_transitive") := 以下定义等价
- $abs(X/G) = 1$
- $exists x in X, G x = X$
- $forall x in X, G x = X$
- $map(G, X, g, g x)$ 是满射 $G ↠ X$

*Example* $SO(3)$ 作用在 $ℝ^3 ∖ 0$ 不 transitive. $GL(3,ℝ) $ 作用在 $ℝ^3 ∖ 0$ 是 transitive

#tag("action_injective") *alias* #tag("action_free") := 以下定义等价
- 每个 orbit 都是 $G$ 的 copy
- $forall x (g x = h x ==> g = h)$
- $forall x (g x = x ==> g = 𝟙)$
- $forall x (G_x = 𝟙)$
- $forall x (map(G, X, g, g x) "is injective" G ↪ X)$

#tag("action_faithful") := 以下定义等价
- $(forall x (g x = x)) ==> g = 𝟙$
- $(forall x (g in G_x) ==> g = 𝟙$
- 群作用的群同态 $G -> Aut X$ 是单射
_Proof_ 
#indent[
  if $(forall x (g x = x)) ==> g = 𝟙$
  #indent[
    if $(x ⇝ g x) = (x ⇝ g' x)$
    #indent[
      $forall x (g x = g' x)$ \
      $forall x (g'^(-1) g x = x)$ \
      $g'^(-1) g = 𝟙$ \
      $g = g'$
    ] 
  ] 
  if 群作用的群同态 $G -> Aut X$ 是单射
  #indent[
    if $(forall x (g x = x))$
    #indent[
      $(x ⇝ g x) = (x ⇝ 𝟙 x)$ \
      $g = 𝟙$
    ]
  ]
]
*Prop* action-free ==> action-faithful

#tag("coset") 
#indent[
  给出 $G$ 的子群 $H$, 可以定义 coset

  左陪集 (left coset) $g ⋅ H := {g ⋅ h : h in H}$

  右陪集 (right coset) $H ⋅ g := {h ⋅ g : h in H}$

  左/右乘 $L_h, R_h$ 给出 $H$ 到 $G$ 的群作用

  *Prop* 
  - 右/左 coset $ H ⋅ g, g ⋅ H$ 是相应的 orbit
  - 左/右陪集构成 $G$ 的划分: forall $g_1, g_2 in G$, 要么 $g_1 H = g_2 H$, 要么 $g_1 H ∩ g_2 H = ∅$
  - 左/右陪集的基数相等: $abs(g H) = abs(H g) = abs(H)$
  - 对每个 $g in G$, isotropy 是 $H_g = {h in G : g ⋅ h = g}$ 也即 $h = 𝟙$, $H_g = 𝟙$, 从而是 action-free

  $G/H$ 是 orbit 集合

  $𝟙 ⋅ H = H$
]
#tag("action_on_coset")
#indent[
  群 $G$ 可以作用在 $G/H$ 上
  $
    g' ⋅ (g ⋅ H) = (g' ⋅ g) ⋅ H
  $
  由于 $g ⇝ g' ⋅ g$ 是双射, 于是 $G$ 可以将 $g ⋅ H$ 映射到整个 $G/H$, 于是这种作用是 action-transitive 的

  $H$ 的 isotropy 是 $G_H = {g in G : g ⋅ H = H}$, 由于 $H$ 是子群, 这等价于 $g in H$
  - $g in H$ ==> 映射 $h ⇝ g ⋅ h$ 在 $H$ 上是双射 ==> $g ⋅ H = H$
  - $g ⋅ H = H$ ==> $exists(h, h' in H) (g ⋅ h = h')$ ==> $g = h' h^(-1) in H$
  从而 $H$ 的 isotropy $G_H = H$

  有 product decompostion 
  $
    G ≃ H × G/H
  $
]
#tag("product_group") 设 $G, G'$ 是群, 则 $G × G'$ 也是群, 乘法定义为 $(a, a') ⋅ (b, b') = (a b, a' b')$

#tag("subgroup_coset_sub_quotient_decomposition") 
#indent[
  *Def* 子集乘法运算: forall $S, S' ⊆ G$
  
  $S ⋅ S' := {x ⋅ x' : x in S, x' in S'}$

  $S_1 ⋯ S_n = {x_1 ⋯ x_n : x_1 in S_1 ,…, x_n in S_n}$

  *Prop* 满足结合律 $S_1 ⋅ (S_2 ⋅ S_3) = (S_1 ⋅ S_2) ⋅ S_3$

  特别地, $G/H$ 中的 coset 的乘法运算 $(g H) ⋅ (g' H) = {g h g' h' : h, h' in H}$

  *Prop* $(g ⋅ H) ⋅ H = g ⋅ H$

  我们知道有集合的 product 分解 $G ≃ H × G/H$, 而 $H$ 是子群. 如果我们想要让它在以上 coset 的乘法运算下成为 product-group 分解, 则需要以上的 coset 的乘法运算构成群

  有以下的等价命题
  + $(g H) ⋅ (g' H) = (g g') ⋅ H$, 意义是, 两个 coset/orbit 的元素 $g, g'$ 的乘法在 $g g'$ 所在的 coset. \ 
    此时 $G/H$ 是群, 并称 $G/H$ 是商群 #tag("quotient_group"), $π: G -> G/H$ 是群同态, $H = ker(π)$ 
  + 对每个 $g in G$, 左右陪集相同 $g ⋅ H = H ⋅ g$
  + $H$ 是正规子群 #tag("normal_subgroup") 或者称为不变子群 #tag("invariant_subgroup"), 共轭群作用 $g ⇝ c_g$ 保持 $H$, 从而可以限制在 $H$ 形成群作用. $forall (g in G) (c_g (H) ⊆ H)$, 实际上 $c_g (H) = H$

  然而这种分解一般不是 product-group 分解

  如果 $G$ 是交换群 #tag("commutative_group") *alias* #tag("abelian_group"), 则其所有子群也是交换群且是正规子群

  对于 $a in G$, 如果存在 $n in ℕ$ 使得 $a^n = 𝟙$, 则定义 $a$ 的阶为 $min { m in ℕ : a^m = 𝟙 }$ 
  
  *Example*
  #indent[
    循环群 $G = ℤ/(4 ℤ)$

    取 $H = {0, 2} ≃ ℤ/(2 ℤ)$

    则 $G/H = {0 + {0, 2}, 1 + {0, 2}} ≃ ℤ/(2 ℤ)$

    $ℤ/(2 ℤ) × ℤ/(2 ℤ)$ 的元素的阶 $<= 2$, 而 $1 in ℤ/(4 ℤ)$ 的阶为 $4$
  ]
  分解应该理解为 $H ↪ G$ 是群同态嵌入且 $G ↠ G/H$ 是群同态覆盖

  这种分解的自然性也取决于你是否认为 coset 上的那种乘法运算是好的构造

  #tag("simple_group") 不存在 $𝟙$ 或 $G$ 之外的正规子群的群 $G$ 叫做 simple 群
]

*Example* let $G$ 有限群, let $a in G$. 则 $H = {a^1, a^2, ...}$ 是有限集且是子群. 存在最小的 $k in ℕ$ 使得 $a^k = 𝟙$, 从而 $a^(-1) = a^(k-1)$. 让群 $G$ 作用于 coset 空间 ${g H : g in G}$, isotropy $G_H = H$, 于是 $frac(|G|,|H|) = frac(|G|,k) in ℕ$ or $|G|$ 被 $k$ 整除

*Prop* $G_x$ 是 $G$ 的子群, set of cosets 同构于 orbit $G/G_x ≃ G x$

_Proof_ 我们构造双射. let $A in G/G_x$, 选取 $g(A) =: g$ 使得 $A = g ⋅ G_x$. 考虑映射
$
  map(G/G_x, G x, g ⋅ G_x, g x)
$
- 单射: $g x = g' x ==> g^(-1) g' in G_x$ ==> $(g^(-1) g') G_x = G_x$ ==> $g ⋅ G_x = g ((g^(-1) g') ⋅ G_x) = g' ⋅ G_x$
- 满射: 设 $y in G x$, 取 $g in G$ 使得 $y = g x$, 则取 $A = g ⋅ G_x in G/G_x$ 即可

#tag("Burnside_lemma") 定义 $X^g := {x in X : g x = x}$ 为 $g in G$ 的 fix point set, 则存在双射
$
  G × X/G <--> ⨆_(g in G) X^g = X
$
这蕴含 $|G| ⋅ abs(X/G) = sum_(g in G) |X^g|$