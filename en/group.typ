#import "../module/module.typ": *
#show: module

#tag("transformation-group")
#indent[
  Composition can be thought of as an operation $(f_2, f_1) ⇝ f_2 ∘ f_1$. If we fix one of the positions, we have
  - Pre-composition $f ⇝ g ∘ f$, also called right multiplication 
  - Post-composition $f ⇝ f ∘ g$, also called left multiplication

  The composition of maps/functions is associative: $f_3 ∘ (f_2 ∘ f_1) = (f_3 ∘ f_2) ∘ f_1$

  - If $f, g$ are bijections, the composition $f ∘ g$ is a bijection
  - The identity map $𝟙$ is a bijection and is the identity element for the composition operation $∘$: $f ∘ 𝟙 = 𝟙 ∘ f = f$
  - The inverse map $f^(-1)$ is the inverse element for the composition operation $∘$: $f ∘ f^(-1) = f^(-1) ∘ f = 𝟙$

  So we have the concept of transformation groups: the group $Aut X$ consisting of all bijections $f : X <-> X$ from $X$ to itself, and subgroups of $Aut X$, which are usually groups consisting of bijections that preserve some structure on $X$, for example
  - $ℝ^n$ has a #link(<linear>)[linear structure], and the bijections that preserve this linear structure form $GL(n, ℝ)$, which is a subgroup of $Aut(ℝ^n)$

  Similar to how the power set $Subset(X)$ is denoted as $2^X$, $Aut X$ can be denoted as $X!$, because the bijections from ${1 ,…, n}$ to itself form the permutation group $Aut {1 ,…, n} = S_n$, and the number of elements in the set is $n!$
]
#tag("binary-operation-group")
#indent[
  There is also the concept of binary operation groups: *Example* Addition of real numbers, addition in vector spaces

  Addition $+$ is associative $a_1, a_2, a_3 in ℝ ==> (a_1 + a_2) + a_3 = a_1 + (a_2 + a_3)$

  - Zero $0 in ℝ$ is the identity element of the addition operation $+$ $a + 0 = 0 + a = a$
  - Additive inverse $-a in ℝ$ is the inverse element of the addition operation $+$ $a + (-a) = (-a) + a = 0$
]
Similar to curry "$A_1 -> (A_2 -> A_3)$ equivalent to $(A_1 × A_2) -> A_3$", transformation and operation group can mutually isomorphically turned into each other 

Taking composition $∘$ as a binary operation on $Aut X$, a transformation group can be isomorphically turned into an operation group

An operation group can be isomorphically turned into a transformation group, for example

- Left operation $L_a : x ⇝ a ⋅ x$ as a bijection from $X$ to itself $L_a in Aut X$
  - $L_a ∘ L_b = L_(a ⋅ b)$, by associativity $a ⋅ (b ⋅ x) = (a ⋅ b) ⋅ x$
  - $(L_a)^(-1) = L_(a^(-1))$

- Right operation $R_a : x ⇝ x ⋅ a$ as a bijection from $X$ to itself $R_a in Aut X$
  - $R_a ∘ R_b = R_(b ⋅ a)$, by associativity $(x ⋅ b) ⋅ a = x ⋅ (b ⋅ a)$
  - $(R_a)^(-1) = R_(a^(-1))$

Multiplication $⋅$ of non-zero real numbers $ℝ ∖ 0$ also forms a group

Multiplication of non-zero octonions $𝕆 ∖ 0$ is not associative: generally $(a_1 ⋅ a_2) ⋅ a_3 != a_1 ⋅ (a_2 ⋅ a_3)$

So this kind of non-associative operation group is not isomorphic to the associative transformation group of $𝕆 ∖ 0$ formed by $L_a, R_a$: $L_a ∘ L_b != L_(a ⋅ b)$

#tag("group-homomorfsm")
#indent[
  *Def* Group homomorphism $f : G_1 -> G_2$
  
  $f(a b) = f(a) f(b)$
  
  This implies
  - $f(𝟙_(G_1)) = 𝟙_(G_2)$ by 
    - $f(a 𝟙_(G_1)) = f(a) = f(a) 𝟙_(G_2)$
    - $f(𝟙_(G_1) a) = f(a) = 𝟙_(G_2) f(a)$
  - $f(a^(-1)) = f(a)^(-1)$ by 
    - $f(𝟙_(G_1)) = f(a a^(-1)) = f(a) f(a^(-1))$
    - $f(𝟙_(G_1)) = 𝟙_(G_2)$
]
*Example* Homomorphism from $(ℝ, +)$ to $(ℝ_(> 0), ⋅)$: $exp(x + y) = exp(x) ⋅ exp(y)$

#tag("group-isomorfsm") *Def* Group Isomorphism: $f: G_1 -> G_2$ is a bijection and $f, f^(-1)$ are group homomorphisms

*Example* Isomorphism $exp$ from $(ℝ, +)$ to $(ℝ(> 0), ⋅)$, the inverse map $log$ is a homomorphism $log(x ⋅ y) = log(x) + log(y)$

*Prop* If $f$ is a homomorphism and is a bijection, then $f$ is an isomorphism

_Proof_ 
#indent[
  Need to prove $f^(-1)$ is a homomorphism
  
  From surjectivity, forall $a_2, b_2 in G_2$, there exist $a_1, b_1 in G_1$ such that $a_2 = f(a_1), b_2 = f(b_1)$

  From homomorphism $f(a_1 b_1) = f(a_1) f(b_1) = a_2 b_2$

  From invertibility 
  - $a_1 b_1 = f^(-1)(a_2 b_2)$
  - $a_1 = f^(-1)(a_2)$
  - $b_1 = f^(-1)(b_2)$
  So $f^(-1)(a_1) f^(-1)(a_2) =  f^(-1)(a_2 b_2)$
]

#tag("subgroup")
#indent[
  A subgroup $H$ of group $G$ is defined as
  - Subset $H ⊆ G$
  - Closed under binary operation $a, b in H ==> a ⋅ b in H$
  - Closed under inverse operation $a in H ==> a^(-1) in H$
  equivalently, the identity embedding $H ↪ G$ is group homomorphism
]
*Example* The multiplicative group on $ℝ ∖ 0$ has a subgroup $ℝ_(> 0)$ 

*Prop* $H_1, H_2$ are subgroups ==> $H_1 ∩ H_2$ is a subgroup

Let $f: G_1 -> G_2$ be a group homomorphism, $H_2 ⊆ G_2$ be a subgroup, then $f^(-1)(H_2) ⊆ G_1$ is a subgroup

$𝟙_(G_2) ⊆ G_2$ is a subgroup, thus $f^(-1) (𝟙_(G_2)) ⊆ G_1$ is a subgroup

#tag("group-kernel") *Def* Kernel of a group homomorphism $ker f := f^(-1) (𝟙_(G_2)) = {a in G_1 : f(a) = 𝟙_(G_2)}$

$f$ is injective <==> $ker f = 𝟙_(G_1)$

Suppose $H_1 ⊆ G_1$ is a subgroup, then $f(H_1) ⊆ G_2$ is a subgroup

#tag("group-action") *Def* Group action := a homomorphism from a group $G$ to the bijective automorphism group $Aut X$ of $X$, also called a representation 
$
  ρ: map(G, Aut X, g, ρ(g))
$
Or a homomorphism to the image group $G ↠ ρ(G) ⊆ Aut X$

Group action can also be written in the following form
$
  map(G × X, X, (g,x), ρ(g) ⋅ x)
$
And satisfies $ρ(g) ⋅ (ρ(h) ⋅ x) = ρ(g h) ⋅ x$

Usually $ρ$ is omitted and written as $ρ(g) ⋅ x := g ⋅ x$

#tag("orbit") := 
$
  G ⋅ x = {g x in X : g in G} ={map(G, X, g, g x)} (G)
$
*Example* $SO(3)$ acts on $ℝ^3$, orbit $SO(3) ⋅ x = 𝕊^2(|x|)$

#tag("isotropy") := 
$
  G_x = {g in G : g x = x} = {map(G, X, g, g x)}^(-1) (x)
$
*Example* $SO(3)$ acts on $ℝ^3$, isotropy $G_x$ = rotation about the axis where $x in 𝕊^2$ lies, which is an embedded $SO(2)$

$G_x$ is a subgroup of $G$

Orbit after changing the orbit base point. forall $y = h x$ ==> $G x = G y$

_Proof_
#indent[ 
  $
    map(G, G, g, g h)
  $ 
  Is a bijection. (Invertible.) So
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

#tag("decomposition-into-orbit") $G x != G x' <==> G x ∩ G x' = ∅$

_Proof_
#indent[
  Contrapositive $G x = G x' <==> G x ∩ G x' != ∅$

  Only need to prove <==
  $
    exists h in G, y = h x \
    exists h' in G, y = h' x'
  $
  But we have already proven $G x = G (h x) = G y = G (h' x') = G x'$
]
*Example* $SO(3), ℝ^3$, different orbits are spheres of different radii

Set of orbits := 
$
  X/G := {G x in Subset(X) : x in X}
$

We can give the additive decomposition of the acted-upon space $X$ as $X = ⨆_(s in X/G) s$

Isotropy after changing the orbit base point $x ⇝ h x$ 
$
  g in G_(h x) &<==> g (h x) = h x \ 
  &<==> h^(-1) g h x = x \
  &<==> h^(-1) g h in G_x
$
Mapping $map(G, G, g, h^(-1) g h)$ 
- Homomorphism $h^(-1) (g ⋅ g') h = (h^(-1) g h) ⋅ (h^(-1) g' h)$
- Bijection $h^(-1) g h = g' <==> g = h g' h^(-1)$

#tag("isotropy-in-same-orbit-is-isom") Thus it is a group isomorphism from $G$ to itself, and restricting it to $G_(h x) <-> G_x$ gives an isomorphism between subgroups. In other words, if $x, y in G$ are in the same orbit $G ⋅ x = G ⋅ y$, then the isotropy groups are isomorphic $G_x ≃ G_y$ 

$G_(h x)$ can also be written as $h G_x h^(-1) = {h g h^(-1) : g in G_x}$

Using the inverse image of $G$ acting on $G x$, $G$ can be decomposed

$
  G = ⨆_(y in G x) { map(G, X, g, g x) }^(-1) (y)
$ 

Calculate the inverse image of $y = h x in G x$ 

$
  g x = h x &<==> h^(-1) g in G_(x) \
  &<==> g in h G_x := { h a : a in G_x }
$ 

- $
    { map(G, X, g, g x) }^(-1) (y) = h G_x
  $  
  $G_x$ is generally not a group. For example, when $h ∉ G_x$, $h^(-1) ∉ G_x$, thus $𝟙 ∉ h G_x$, because $h h' = 𝟙 ==> h' = h^(-1)$

- $|h G_x| = |G_x|$ because $g ⇝ h g$ is a bijection, and thus restricted to $G_x <-> h G_x$ is a bijection

- $
    abs(
      { map(G, X, g, g x) }^(-1) (y)
    ) = |h G_x| = |G_x|
  $
#tag("orbit-istropy-product-decomposition") The orbit $G x$ and isotropy $G_x$ form a product decomposition of the group $G$ on the set: 

For every $y in G x$, select an $h(y) =: h in G$ such that $h x = y$ (Axiom of Choice)

Thus there exists a bijection 
$ 
  dmat( delim: #none ,
    G x × G_x ,<-->, G ,=, ⨆_(y in G x) { map(G, X, g, g x) }^(-1) (y) ;
    (y, a) ,⟿, h a
  ) 
$ 
This implies $|G| = |G x| ⋅ |G_x|$

It also implies $|G x|, |G_x| <= |G|$

#tag("conjugate-action") Conjugate action, similar to change of coordinates
$
  c_h : map(G, G, g, h g h^(-1))
$
*Example*
- Representation of linear mappings under different bases
- Representation of manifold mappings under different coordinates

It can be considered that $h ⇝ c_h$ forms an action of $G$ on itself

$c_(h h') = c_h c_(h')$ 

_Proof_ $(h h')^(-1) g (h h') = h'^(-1) (h^(-1) g h) h'$

Of conjugate action 
- orbit $G ⋅ g = {h g h^(-1) : h in G}$ called #tag("conjugate-class")
- isotropy $G_g = { h in G : h g h^(-1) = g }$ called centralizer of $g$

*Example* The conjugate-class of a permutation is the cycle

The isotropy of the conjugation action gives $h in G$ that commutes with $g$ 
$
  (h g h^(-1) = g) 
  & <==> (h g = g h) \
  & <==> 𝟙 = h^(-1) ⋅ g ⋅ h ⋅ g^(-1)
$
where $(g,h) ⇝ h^(-1) ⋅ g ⋅ h ⋅ g^(-1)$ is called the commutator of the group $G$ #tag("commutator")

#tag("action-surjective") *alias* #tag("action-transitive") := The following definitions are equivalent
- $abs(X/G) = 1$
- $exists x in X, G x = X$
- $forall x in X, G x = X$
- $map(G, X, g, g x)$ is the surjective map $G ↠ X$

*Example* $SO(3)$ acting on $ℝ^3 ∖ 0$ is not transitive. $GL(3,ℝ) $ acting on $ℝ^3 ∖ 0$ is transitive

#tag("action-injective") *alias* #tag("action-free") := The following definitions are equivalent
- Every orbit is a copy of $G$
- $forall x (g x = h x ==> g = h)$
- $forall x (g x = x ==> g = 𝟙)$
- $forall x (G_x = 𝟙)$
- $forall x (map(G, X, g, g x) "is injective" G ↪ X)$

#tag("action-faithful") := The following definitions are equivalent
- $(forall x (g x = x)) ==> g = 𝟙$
- $(forall x (g in G_x) ==> g = 𝟙$
- The group homomorphism of the group action $G -> Aut X$ is injective
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
  if the group homomorphism of the group action $G -> Aut X$ is injective
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
  Given a subgroup $H$ of $G$, we can define the coset

  Left coset $g ⋅ H := {g ⋅ h : h in H}$

  Right coset $H ⋅ g := {h ⋅ g : h in H}$

  Left/Right multiplication $L_h, R_h$ gives a group action of $H$ on $G$

  *Prop* 
  - The Right/Left cosets $ H ⋅ g, g ⋅ H$ are the corresponding orbits
  - Left/Right cosets form a partition of $G$: forall $g_1, g_2 in G$, either $g_1 H = g_2 H$, or $g_1 H ∩ g_2 H = ∅$
  - The cardinalities of Left/Right cosets are equal: $abs(g H) = abs(H g) = abs(H)$
  - For every $g in G$, the isotropy is $H_g = {h in G : g ⋅ h = g}$, which means $h = 𝟙$, $H_g = 𝟙$, and thus it is action-free

  $G/H$ is the set of orbits

  $𝟙 ⋅ H = H$
]
#tag("action-on-coset")
#indent[
  The group $G$ can act on $G/H$
  $
    g' ⋅ (g ⋅ H) = (g' ⋅ g) ⋅ H
  $
  Since $g ⇝ g' ⋅ g$ is a bijection, thus $G$ can map $g ⋅ H$ to the entire $G/H$, thus this action is action-transitive

  The isotropy of $H$ is $G_H = {g in G : g ⋅ H = H}$, because $H$ is a subgroup, this is equivalent to $g in H$
  - $g in H$ ==> the map $h ⇝ g ⋅ h$ is a bijection on $H$ ==> $g ⋅ H = H$
  - $g ⋅ H = H$ ==> $exists(h, h' in H) (g ⋅ h = h')$ ==> $g = h' h^(-1) in H$
  Therefore, the isotropy of $H$, $G_H = H$

  There is product decomposition 
  $
    G ≃ H × G/H
  $
]
#tag("product-group") Let $G, G'$ be groups, then $G × G'$ is also a group, with multiplication defined as $(a, a') ⋅ (b, b') = (a b, a' b')$

#tag("subgroup-coset-sub-quotient-decomposition") 
#indent[
  *Def* Subset multiplication operation: forall $S, S' ⊆ G$
  
  $S ⋅ S' := {x ⋅ x' : x in S, x' in S'}$

  $S_1 ⋯ S_n = {x_1 ⋯ x_n : x_1 in S_1 ,…, x_n in S_n}$

  *Prop* satisfies associativity $S_1 ⋅ (S_2 ⋅ S_3) = (S_1 ⋅ S_2) ⋅ S_3$

  Specifically, the multiplication operation of cosets in $G/H$, $(g H) ⋅ (g' H) = {g h g' h' : h, h' in H}$

  *Prop* $(g ⋅ H) ⋅ H = g ⋅ H$

  We know there is a set product decomposition $G ≃ H × G/H$, where $H$ is a subgroup. If we want it to become a product-group decomposition under the coset multiplication defined above, we need the coset multiplication to form a group

  There are the following equivalent propositions
  + $(g H) ⋅ (g' H) = (g g') ⋅ H$, the meaning is, for two elements $g, g'$ in coset/orbit, their multiplication is in the coset that $g g'$ lies in. \ 
    Now $G/H$ become group, called the #tag("quotient-group"), $π: G -> G/H$ is group homomorphism, $H = ker(π)$
  + For every $g in G$, the left and right cosets are the same $g ⋅ H = H ⋅ g$
  + $H$ is a normal subgroup #tag("normal-subgroup") or called an invariant subgroup #tag("invariant-subgroup"), the conjugation group action $g ⇝ c_g$ preserves $H$, and thus can be restricted to $H$ to form a group action. $forall (g in G) (c_g (H) ⊆ H)$, in fact $c_g (H) = H$

  However, this decomposition is generally not a product-group decomposition

  If $G$ is a commutative group #tag("commutative-group") *alias* #tag("abelian-group"), then all its subgroups are also commutative groups and are normal subgroups

  For $a in G$, if there exists $n in ℕ$ such that $a^n = 𝟙$, then the order of $a$ is defined as $min { m in ℕ : a^m = 𝟙 }$ 
  
  *Example*
  #indent[
    Cyclic group $G = ℤ/(4 ℤ)$

    Take $H = {0, 2} ≃ ℤ/(2 ℤ)$

    Then $G/H = {0 + {0, 2}, 1 + {0, 2}} ≃ ℤ/(2 ℤ)$

    The order of elements in $ℤ/(2 ℤ) × ℤ/(2 ℤ)$ is $<= 2$, while the order of $1 in ℤ/(4 ℤ)$ is $4$
  ]
  Decomposition should be understood as $H ↪ G$ being a group homomorphism embedding and $G ↠ G/H$ being a group homomorphism covering

  The naturalness of this decomposition also depends on whether you think that inherited multiplication on the cosets is a good construction

  #tag("simple-group") Group that have no normal subgroup other than $𝟙$ and $G$ is called simple group
]

*Example* let $G$ be a finite group, let $a in G$. Then $H = {a^1, a^2, ...}$ is a finite set and is a subgroup. There exists a minimum $k in ℕ$ such that $a^k = 𝟙$, thus $a^(-1) = a^(k-1)$. Let group $G$ act on the coset space ${g H : g in G}$, isotropy $G_H = H$, so $frac(|G|,|H|) = frac(|G|,k) in ℕ$ or $|G|$ is divisible by $k$

*Prop* $G_x$ is a subgroup of $G$, the set of cosets is isomorphic to the orbit $G/G_x ≃ G x$

_Proof_ We construct a bijection. let $A in G/G_x$, pick $g(A) =: g$ such that $A = g ⋅ G_x$. Consider the mapping
$
  map(G/G_x, G x, g ⋅ G_x, g x)
$
- Injective: $g x = g' x ==> g^(-1) g' in G_x$ ==> $(g^(-1) g') G_x = G_x$ ==> $g ⋅ G_x = g ((g^(-1) g') ⋅ G_x) = g' ⋅ G_x$
- Surjective: Suppose $y in G x$, take $g in G$ such that $y = g x$, then just take $A = g ⋅ G_x in G/G_x$

#tag("Burnside-lemma") Define $X^g := {x in X : g x = x}$ as the fixed point set of $g in G$, then there exists a bijection
$
  G × X/G <--> ⨆_(g in G) X^g = X
$
This implies $|G| ⋅ abs(X/G) = sum_(g in G) |X^g|$