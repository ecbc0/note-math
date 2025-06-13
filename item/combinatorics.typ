#import "/module/module.typ": *
#show: module

let 映射 $1,…,n ⇝ a_1,…,a_n$

#tag("permutation") 以下等价
- $1,…,n$ 双射
- $1,…,n$ 排列 
- $n$ 阶置换. 数量 $n (n-1) ⋯ 1 = n!$. 通常记为 $S_n$

#tag("combination") 以下等价
- $Subset {1,…,n}$ 中选取子集 $A$ with $|A| = i$
- 选取子集 $A, B in Subset {1,…,n}$ with 
#indent[
  划分 ${1,…,n} = A ⊔ B$ \
  $|A| = i, |B| = j$ \
  $|A| + |B| = i + j = n$
]
- 选取置换 $a$ with $A = {a(1),…,a(i)}, B = {a(i+1),…,a(i+j)}$ 并且另一个置换 $a'$ 给出相同的划分 if
#indent[ 
  $ 
    {a'(1),…,a'(i)} &= {a(1),…,a(i)} \ 
    {a'(i+1),…,a'(i+j)} &= {a(i+1),…,a(i+j)}
  $
]
定义这种相同的划分的置换的 #tag("quotient") $a ∼ a'$ as $S_n$ 的子集满足上述条件, i.e. 划分可能性 $A ⊔ B$ 的逆像

<==> $(exists b_i in S_i) and (exists b_j in S_j), (b_i,b_j) a = a'$

基数计算
$
  frac(|S_n|,|S_i × S_j|) = frac(n!,i!j!) = frac(n!,i! (n-i)!)
$
记为
$
  binom(n,i) = binom(n,i,j)
$
所有 $i = 0 ,…, n$ 组合 <==> 所有 $i = 0 ,…, n$ 在 $Subset {1,…,n}$ 中选取子集 $A$ with $|A| = i$
$
  sum_(i+j = n) binom(n,i,j) &"or" sum_(i=0..n) binom(n,i) \
  &= |Subset {1,…,n}| \
  &= 2^n
$
是从 $2$ 个中可重复选 $n$ 次的数量

from 用归纳法计算或者直接观察, 可得 
$ 
  frac(n!,i! j!) 
  = frac((n-1)! (i + j),i! j!) 
  = binom(n-1,i-1,j) + binom(n-1,i,j-1) 
$
#tag("binom-expansion") 
$
  (x+y)^n &= sum_(i+j=n) binom(n,i,j) x^i y^j \
  (x_1 + ⋯ + x_d)^n &= sum_(k_1 + ⋯ + k_d = n) binom(n,k_1,…,k_d) x_1^(k_1) ⋯ x_d^(k_d)
$
vs Newton 二项式 $(1+x)^p = sum_(i=0..∞) binom(p,i) x^i, p in ℝ$

#tag("multi-combination") 类似地, 以下等价
- $d$ 重组合. $1 ,…, n$ 选取 $k_1 ,…, k_d$ with $k_1 + ⋯ + k_d = n$
- 划分 ${1 ,…, n} = A_1 ⊔ ⋯ ⊔  A_d$ with $|A_i| = k_i$ and $k_1 + ⋯ + k_d = n$
- 选取置换, 且 quotient
  $
    binom(n,k_1,…,k_d) = frac(|S_n|,|S_(k_1) × ⋯ × S_(k_d)|) = frac(n!,k_1 ! \,…\, k_d !)
  $
总数量 $sum_(k_1 ,…, k_d in ℕ \ k_1 + ⋯ + k_d = n) binom(n,k_1 ,…, k_d) = d^n$, 即从 $d$ 个中可重复选 $n$ 次的数量 $d^n$

_Proof_
#indent[
  重复 $n$ 次选取 $1 ,…, d$, 数量 $d^n$ <==> 映射 $1 ,…, n -> 1 ,…, d$ 的数量 $|{1 ,…, d}|^(|{1 ,…, n}|)$

  任何选取都可以置换到 $underbrace(1 \,…\, 1, k_1) , underbrace(2 \,…\, 2, k_2) ,…, underbrace(d \,…\, d, k_d)$ with $k_1 + ⋯ + k_d = n$ 

  恢复所有顺序就是 $1 ,…, n$ 选取 $k_1 ,…, k_d$ 个位置, 即多重组合 $binom(n,k_1 ,…, k_d)$. 这给出
  $
  sum_(k_1 ,…, k_d in ℕ \ k_1 + ⋯ + k_d = n) binom(n,k_1 ,…, k_d) = d^n
  $
]
what is $|{k_1 ,…, k_d in ℕ : k_1 + ⋯ + k_d = n}|$? 
#indent[
  *Example* 数量 10, 分组数量 4. $n = 10, d = 4, k(1 ,…, 4) = 3,2,0,5$

  star & bar 模型

  ★ ★ ★ | ★ ★ | | ★ ★ ★ ★ ★ 

  $n+d-1$ 个位置选取 $d-1$ 个作为 bar, 将 $n$ 个 ★ 分成 $d$ 组. 数量

  $
    binom(n+d-1,d-1) = binom(n+d-1,n,d-1)
  $
]
#tag("dimension-of-symmetric-tensor") 也得到对称张量空间 $(𝕂^n)^(⊙ k)$ 的维数是 $binom(k+n-1,k,n-1)$, 基 $e_1^(⊙ k_1) ⊙ ⋯ ⊙ e_n^(⊙ k_n)$

重复数量 $binom(n,k_1 ,…, k_d)$ 会有用于例如计算 $L^2$ 归一化

#tag("conjugate-class-of-permutation-is-cycle") #link(<conjugate-class>)[] of $S_n$ <==> cycle := 置换 $a$ with $i_1 ⇝^a i_2 ⇝^a ⋯ ⇝^a i_k ⇝^a i_1$

置换的 $sign$ 分解

张量空间的 $sign$ 分解, $⊕$ irreducible represenation