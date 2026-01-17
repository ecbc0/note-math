#import "../module/module.typ": *
#show: module

composition (function composition) 
#indent[
  let $ A -->^(f) B -->^(g) C $ 

  define $ dmat( delim: #none ,
    A ,⟶^(g ∘ f), C ;
    a ,⟿, g(f(a))
  ) $
]
Define proposition, parameter $f : A -> B$
- injective := $forall a,a' ∈ A, f(a) = f(a') ==> a = a'$. Notation $f : A ↪ B$
- surjective := $forall b ∈ B, exists a ∈ A, f(a) = b$. Notation $f : A ↠ B$
- bijective := injective and surjective. Notation $f : A <-> B$. At this time, there exists an inverse mapping $f^(-1) : B <-> A$

#tag("cardinal")
- $|A| = |B| := "bijective"(A -> B) != ∅$. or there exists a bijection $f: A <-> B$
- $|A| <= |B| := "injective"(A -> B) != ∅$. or there exists an injection $f : A ↪ B$
- $|A| >= |B| := "surjective"(A -> B) != ∅$. or there exists a surjection $f : A ↠ B$
- Symmetry of injection and surjection

  $ "surjective"(A -> B) != ∅ <==> "injective"(B -> A) != ∅ $

  or there exists a surjection $f : A ↠ B$ <==> there exists an injection $g : B ↪ A$

#tag("cardinal-always-comparable") Trichotomy of element number order $<$ or order is always #link(<order-comparable>)[comparable]

$ forall A,B ∈ Set, (|A| = |B|) ⊕ (|A| < |B|) ⊕ (|B| < |A|) $

#tag("finite") := $exists n ∈ ℕ, |A| = |{0, 1, ..., n - 1}|$. also let $|{0, 1, ..., n - 1}| = n$

finite <==> $|A| < ℕ$

$A$ is a finite set ==> ($f : A -> A$ is injective or surjective <==> $f$ is bijective)

*Example* $ℕ$ is an infinite set, $dmat( delim: #none ,
  ℕ, ,⟶,, ℕ ;
  n, ,⟿,, 2n
)$ is injective and not surjective, so not bijective

- countably infinite := $|A| = |ℕ|$
- #tag("uncountable") uncountable := $|A| > |ℕ|$ 
- #tag("countable") countable := $|A| <= |ℕ|$ i.e. finite or countably infinite 

Operations that preserve countability. let $forall i ∈ ℕ$, $A_i$ is countable. The following sets are countable
- union: $A_1 ∪ ⋯ ∪ A_n$, $⋃_(i ∈ ℕ) A_i$
- product: $A_1 × ⋯ × A_n$, $product_(i ∈ ℕ) A_i$

#tag("range") $"Range"(f) := {b ∈ B : exists a ∈ A, b = f(a)}$. *alias* image of $f$, $im(f)$, $f(A)$

#tag("codomain") $"co-domain"(f) = B$. *alias* range 值域

let $S ⊆ A$

#tag("image") Image like $f(S) := {b ∈ B: exists a ∈ S, b = f(a)}$

let $S ⊆ B$

#tag("inverse-image") Inverse image $f^(-1)(S) := {a ∈ A : exists b ∈ S, b = f(a)}$

$f(a) in S &<==> exists b in S, b = f(a) \
&<==> a in f^(-1) (S)$

==> 

$f(S_A) subset S_B 
&<==> forall a in S_A, f(a) in S_B \
&<==> forall a in S_A, a in f^(-1) (S_B) \
&<==> S_A subset f^(-1) (S_B)$

Inverse image $f^(-1)$ maintains $∪,∩,∖$, e.g. \

$ f^(-1)(S ∪ S') = f^(-1)(S) ∪ f^(-1)(S') $

Image $f$ only maintains $∪$, for others
- $f(S ∩ S') ⊆ f(S) ∩ f(S')$
- $f(S ∖ S') ⊆ f(S) ∖ f(S')$ 

#tag("cardinal-increase") $|A| < |Subset(A)|$ (cf. #link(<cardinal>)[])
#indent[
  $f : A -> Subset(A)$ is not surjective <==> $Subset(A) ∖ "range"(f) != ∅$

  $ 
    Ω : dmat( delim: #none ,
      (A -> Subset(A)) ,⟶, Subset(A);
      f ,⟿, {x ∈ A : p(x,f)}
    )
  $

  find $p(x,f)$ so that $Ω(f) ∉ "Range"(f)$
  
  $Ω(f) ∉ "Range"(f) <==> forall a ∈ A, f(a) != Ω(f)$

  to always have a element in set $Ω(f)$ that not in set $f(a)$, we can define

  $Ω(f) = {x ∈ A : x ∉ f(x)}$
]
Partition $X$. Directly $X = ⨆ X_i$ or according to the inverse image of the image set of the mapping $f : X -> Y$, $⨆_(y in Y) f^(-1)(y)$

#tag("quotient") quotient $x ∼ x'$ := $x,x' in X_i$ or $x,x' in f^(-1)(y)$