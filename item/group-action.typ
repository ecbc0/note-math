#import "../module/module.typ": *
#show: module

双射 $f : X <-> X$ 形成群 

双射作用在某个 $X$ 的结构上时, 有保持结构的结构群, 是 $X! := X <-> X$ 的子群. *Example* $GL$ 保持 #link(<linear>)[线性结构]

let $G$ 是 $X!$ 的子群. let $x in X$

#tag("group-action")
$
  dmat( delim: #none ,
    G × X &⟶ X ;
    (g,x) &⟿ g ⋅ x
  )
$

#tag("orbit") := 
$
  G ⋅ x = {g x in X : g in G} = im {dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )}
$
*Example* $SO(3)$ 作用在 $ℝ^3$, orbit $𝕊^2(|x|)$

#tag("isotropy") := 
$
  G_x = {g in G : g x = x} = im^(-1) {dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )}(x)
$
*Example* $SO(3)$ 作用在 $ℝ^3$, isotropy = 绕 $x in 𝕊^2$ 所在轴的旋转, 是嵌入的 $SO(2)$

$G_x$ 是 $G$ 的子群. a map $f$ that fix a point $x in X$ 组成 $X!$ 的子群, $G_x$ 是 $G$ 作用群与这个 fix $x$ 映射子群的交集

换 orbit 基点 $x ⇝ h x$ 后的 isotropy 
$
  g (h x) = h x 
  &<==> h^(-1) g h x = x \
  &<==> h^(-1) g h in G_x
$
映射 $dmat( delim: #none ,
  G &⟶ G ;
  g &⟿ h^(-1) g h
)$ 
- 同态 $h^(-1) (g ⋅ g') h = (h^(-1) g h) ⋅ (h^(-1) g' h)$
- 双射 $h^(-1) g h = g' <==> g = h g' h^(-1)$
#tag("isotropy-in-same-orbit-is-isom") $h x$ 的 isotropy $G_(h x)$ 写为 $h G_x h^(-1)$, 同构于 $G_x$

根据 $G$ 作用在 $G x$ 上的逆像, 将 $G$ 分解为子群 $G_x$ 及其 coset $h G_x$

$G = ⨆_(y in G x) im^(-1) {dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )}(y)$ 

计算 $y = h x in G x$ 的逆像 $g x = h x <==> h^(-1) g in G_(x) <==> g in h G_x$ 

$abs(im^(-1) {dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )}(y)) = |h G_x| = |G_x|$

#tag("orbit-istropy-theorem") 存在双射 
$ dmat( delim: #none ,
  G x × G_x &<--> G = ⨆_(y in G x) ⋯ ;
  (y, ⋯) &⟿ ⋯
) $ 
所以 $|G| = |G x| ⋅ |G_x|$

set of cosets 同构于 orbit $G/G_x ≃ G x$. so $|G x| = frac(|G|,|G_x|)$ which $<= |G|$

*Example* let $G$ 有限群, let $a in G$. $H = {a_1,a_2, ...}$ 是有限集且是子群. 存在最小的 $k in ℕ$ 使得 $a^k = 𝟙$, 从而 $a^(-1) = a^(k-1)$. 让群 $G$ 作用于 coset 空间 ${g H : g in G}$, isotropy $G_H = H$, 于是 $frac(|G|,|H|) = frac(|G|,k) in ℕ$ or $|G|$ 被 $k$ 整除

换 orbit 基点. forall $y = h x$ ==> $G x = G y$

_Proof_
#indent[ 
  $
    dmat( delim: #none ,
      G &⟶ G ;
      g &⟿ g h
    )
  $ 
  是双射. (可逆.) 所以
  $
    G x &= im {dmat( delim: #none ,
      G &⟶ X ;
      g &⟿ g x
    )} \
    &= im {dmat( delim: #none ,
      G , ⟶ , G , ⟶ , X ;
      g , ⟿ , g h , ⟿ , g h x
    )} \
    &= G (h x)
  $
]

#tag("decomposition-into-orbit") $G x != G x' <==> G x ∩ G x' = ∅$
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

#tag("Burnside-theorem") ...

#tag("conjugate-action") 共轭作用
$
  c_h : dmat( delim: #none ,
    G &⟶ G ;
    g &⟿ h g h^(-1)
  )
$
as 对任意被作用的空间 $X$ 换坐标 $h$ 导致的 $g$ 作用的坐标的变换

*Example* 线性映射在不同坐标的表示. 流形的映射在不同坐标的表示

共轭作用的 orbit 称为 #tag("conjugate-class")

*Example* 置换的 conjugate-class 是循环

交换子 #tag("commutator")

$
  (h g h^(-1) = g) 
  & <==> (h g <==> g h) \
  & <==> 𝟙 = h^(-1) ⋅ g ⋅ h ⋅ g^(-1)
$

#tag("action-surjective") *alias* #tag("action-transitive") := 以下定义等价
- $abs(X/G) = 1$
- $exists x in X, G x = X$
- $forall x in X, G x = X$
- $dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )$ 是满射 $G ↠ X$

*Example* $SO(3)$ 作用在 $ℝ^3 ∖ 0$ 不 transitive. $GL(3,ℝ) $ 作用在 $ℝ^3 ∖ 0$ 是 transitive

#tag("action-injective") *alias* #tag("action-free") := 以下定义等价
- 每个 orbit 都是 $G$ 的 copy
- $g x = h x ==> g = h$
- $g x = x ==> g = 𝟙$
- $dmat( delim: #none ,
      G &⟶ X ;
      g &⟿ g x
  )$ 是单射 $G ↪ X$