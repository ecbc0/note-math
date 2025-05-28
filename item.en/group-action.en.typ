#import "/module/module.typ": *
#show: module

Bijection $f : X <-> X$ forms a group 

When a bijection acts on a certain structure of $X$, there is a structure group that preserves the structure, which is a subgroup of $X! := X <-> X$. *Example* $GL$ preserves #link(<linear>)[linear structure]

let $G$ be a subgroup of $X!$. let $x in X$

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
*Example* $SO(3)$ acts on $ℝ^3$, orbit $𝕊^2(|x|)$

#tag("isotropy") := 
$
  G_x = {g in G : g x = x} = im^(-1) {dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )}(x)
$
*Example* $SO(3)$ acts on $ℝ^3$, isotropy = rotation around the axis where $x in 𝕊^2$ is located, which is an embedded $SO(2)$

$G_x$ is a subgroup of $G$. a map $f$ that fix a point $x in X$ constitutes a subgroup of $X!$, $G_x$ is the intersection of the action group of $G$ and this fix $x$ mapping subgroup

Isotropy after changing the orbit base point $x ⇝ h x$ 
$
  g (h x) = h x 
  &<==> h^(-1) g h x = x \
  &<==> h^(-1) g h in G_x
$
Mapping $dmat( delim: #none ,
  G &⟶ G ;
  g &⟿ h^(-1) g h
)$ 
- Homomorphism $h^(-1) (g ⋅ g') h = (h^(-1) g h) ⋅ (h^(-1) g' h)$
- Bijection $h^(-1) g h = g' <==> g = h g' h^(-1)$
The isotropy of $h x$, $G_(h x)$, is written as $h G_x h^(-1)$, which is isomorphic to $G_x$

According to the inverse image of $G$ acting on $G x$, decompose $G$ into the subgroup $G_x$ and its coset $h G_x$

$G = ⨆_(y in G x) im^(-1) {dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )}(y)$ 

Calculate the inverse image of $y = h x in G x$, $g x = h x <==> h^(-1) g in G_(x) <==> g in h G_x$ 

$abs(im^(-1) {dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )}(y)) = |h G_x| = |G_x|$

#tag("orbit-istropy-theorem") There exists a bijection 
$ dmat( delim: #none ,
  G x × G_x &<--> G = ⨆_(y in G x) ⋯ ;
  (y, ⋯) &⟿ ⋯
) $ 
Therefore, $|G| = |G x| ⋅ |G_x|$

set of cosets is isomorphic to the orbit $G/G_x ≃ G x$. so $|G x| = frac(|G|,|G_x|)$ which $<= |G|$

*Example* let $G$ be a finite group, let $a in G$. $H = {a_1,a_2, ...}$ is a finite set and is a subgroup. There exists a smallest $k in ℕ$ such that $a^k = 𝟙$, thus $a^(-1) = a^(k-1)$. Let the group $G$ act on the coset space ${g H : g in G}$, isotropy $G_H = H$, then $frac(|G|,|H|) = frac(|G|,k) in ℕ$ or $|G|$ is divisible by $k$

Change the base point of the orbit. forall $y = h x$ ==> $G x = G y$

*Proof*
#indent[ 
  $
    dmat( delim: #none ,
      G &⟶ G ;
      g &⟿ g h
    )
  $ 
  is a bijection. (invertible.) So
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
*Proof*
#indent[
  Contrapositive $G x = G x' <==> G x ∩ G x' != ∅$

  Just need to prove <==
  $
    exists h in G, y = h x \
    exists h' in G, y = h' x'
  $
  But we have already proved that $G x = G (h x) = G y = G (h' x') = G x'$
]
*Example* $SO(3), ℝ^3$, different orbits are spheres of different radii

The set of orbits := 
$
  X/G := {G x in Subset(X) : x in X}
$

#tag("Burnside-theorem") ...

#tag("conjugate-action") Conjugate action
$
  c_h : dmat( delim: #none ,
    G &⟶ G ;
    g &⟿ h g h^(-1)
  )
$
as the transformation of the coordinates of the action of $g$ caused by changing the coordinates $h$ for any acted space $X$

*Example* Representations of linear maps in different coordinates. Representations of manifold maps in different coordinates

The orbit of the conjugate action is called #tag("conjugate-class")

*Example* The conjugate-class of a permutation is a cycle

Commutator #tag("commutator")

$
  (h g h^(-1) = g) 
  & <==> (h g <==> g h) \
  & <==> 𝟙 = h^(-1) ⋅ g ⋅ h ⋅ g^(-1)
$

#tag("transitive") := The following definitions are equivalent
- $abs(X/G) = 1$
- $exists x in X, G x = X$
- $forall x in X, G x = X$
- $dmat( delim: #none ,
    G &⟶ X ;
    g &⟿ g x
  )$ is a surjective $G ↠ X$

*Example* $SO(3),ℝ$ acting on $ℝ ∖ 0$ is not transitive. $GL(3) $ acting on $ℝ ∖$ is transitive transitive

#tag("free") := The following definitions are equivalent
- Each orbit is a copy of $G$
- $g x = h x ==> g = h$
- $g x = x ==> g = 𝟙$
- $dmat( delim: #none ,
      G &⟶ X ;
      g &⟿ g x
  )$ is an injective $G ↪ X$