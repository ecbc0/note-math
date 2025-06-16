#import "../module/module.typ": *
#show: module

composition (函数复合) 
#indent[
  let $ A -->^(f) B -->^(g) C $ 

  define $ dmat( delim: #none ,
    A ,⟶^(g ∘ f), C ;
    a ,⟿, g(f(a))
  ) $
]
定义 proposition, 参数 $f : A -> B$
- 单射 := $forall a,a' ∈ A, f(a) = f(a') ==> a = a'$. 记号 $f : A ↪ B$
- 满射 := $forall b ∈ B, exists a ∈ A, f(a) = b$. 记号 $f : A ↠ B$
- 双射 := 单射 and 满射. 记号 $f : A <-> B$. 此时有逆映射 $f^(-1) : B <-> A$

#tag("cardinal")
- $|A| = |B| := "bijective"(A -> B) != ∅$. or 存在双射 $f: A <-> B$
- $|A| <= |B| := "injective"(A -> B) != ∅$. or 存在单射 $f : A ↪ B$
- $|A| >= |B| := "surjective"(A -> B) != ∅$. or 存在满射 $f : A ↠ B$
- 单射和满射的对称

  $ "surjective"(A -> B) != ∅ <==> "injective"(B -> A) != ∅ $

  or 存在满射 $f : A ↠ B$ <==> 存在单射 $g : B ↪ A$

#tag("cardinal-always-comparable") 元素数量序 $<$ 的三分 or 序总是 #link(<order-comparable>)[可比较]

$ forall A,B ∈ Set, (|A| = |B|) ⊕ (|A| < |B|) ⊕ (|B| < |A|) $

#tag("finite") := $exists n ∈ ℕ, |A| = |{0, 1, ..., n - 1}|$. also let $|{0, 1, ..., n - 1}| = n$

finite <==> $|A| < ℕ$

$A$ 是有限集 ==> ($f : A -> A$ 是单射 or 满射 <==> $f$ 是双射)

*Example* $ℕ$ 是无限集, $dmat( delim: #none ,
  ℕ, ,⟶,, ℕ ;
  n, ,⟿,, 2n
)$ 是单射 and 不是满射, so 不是双射

- 可数无限 := $|A| = |ℕ|$
- #tag("uncountable") 不可数 := $|A| > |ℕ|$ 
- #tag("countable") 可数 := $|A| <= |ℕ|$ i.e. 有限 or 可数无限 

保持可数的操作. let $forall i ∈ ℕ$, $A_i$ 可数. 以下集合可数
- union: $A_1 ∪ ⋯ ∪ A_n$, $⋃_(i ∈ ℕ) A_i$
- product: $A_1 × ⋯ × A_n$, $product_(i ∈ ℕ) A_i$

#tag("range") $"Range"(f) := {b ∈ B : exists a ∈ A, b = f(a)}$. *alias* image of $f$, $im(f)$, $f(A)$

#tag("codomain") $"co-domain"(f) = B$. *alias* range 值域

let $S ⊂ A$

#tag("image") 像 $f(S) := {b ∈ B: exists a ∈ S, b = f(a)}$

let $S ⊂ B$

#tag("inverse-image") 逆像 $f^(-1)(S) := {a ∈ A : exists b ∈ S, b = f(a)}$

$f(a) in S &<==> exists b in S, b = f(a) \
&<==> a in f^(-1) (S)$

==> 

$f(S_A) subset S_B 
&<==> forall a in S_A, f(a) in S_B \
&<==> forall a in S_A, a in f^(-1) (S_B) \
&<==> S_A subset f^(-1) (S_B)$

逆像 $f^(-1)$ 保持 $∪,∩,∖$, e.g. \

$ f^(-1)(S ∪ S') = f^(-1)(S) ∪ f^(-1)(S') $

像 $f$ 只保持 $∪$, 对于其它
- $f(S ∩ S') ⊂ f(S) ∩ f(S')$
- $f(S ∖ S') ⊂ f(S) ∖ f(S')$ 

#tag("cardinal-increase") $|A| < |Subset(A)|$ (cf. #link(<cardinal>)[])
#indent[
  $f : A -> Subset(A)$ 不是满射 <==> $Subset(A) ∖ "range"(f) != ∅$

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
划分 $X$. 直接 $X = ⨆ X_i$ 或按照映射 $f : X -> Y$ 的像集的逆像 $⨆_(y in Y) f^(-1)(y)$

#tag("quotient") quotient $x ∼ x'$ := $x,x' in X_i$ or $x,x' in f^(-1)(y)$