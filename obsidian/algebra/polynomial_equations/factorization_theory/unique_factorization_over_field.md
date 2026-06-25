# 数域上多项式的唯一分解定理 Unique Factorization Over a Field

## 唯一分解定理

<!-- polynomial_unique_factorization_over_field_theorem -->
> [!Theorem]
> **数域上多项式唯一分解定理 Unique Factorization in $K[x]$**：设 $K$ 为数域，$f(x)\in K[x]$ 为非零非常数多项式，则存在不可约多项式 $p_1(x),\ldots,p_m(x)\in K[x]$ 与非零常数 $c\in K$，使得
> $$f(x)=c\,p_1(x)p_2(x)\cdots p_m(x).$$
> 该分解在相伴意义下唯一：若
> $$f(x)=c\,p_1\cdots p_m=d\,q_1\cdots q_n$$
> 且 $p_i,q_j$ 均不可约，则 $m=n$，并可重排使得 $p_i\sim q_i$（$i=1,\ldots,m$）。

> **证明思路**：存在性用次数归纳。若 $f$ 可约，则写为低次数多项式之积并继续分解。唯一性利用不可约元在 $K[x]$ 中是素元：若 $p$ 不可约且 $p\mid gh$，则 $p\mid g$ 或 $p\mid h$；反复应用即可比较两组分解因子。

<!-- kx_is_ufd_corollary -->
> [!Corollary]
> **$K[x]$ 是唯一分解整环 $K[x]$ as a UFD**：任意非零非单位元在 $K[x]$ 中都可分解为不可约元乘积，且该分解在相伴与次序意义下唯一。

> **注**：本条是环论语言下的概括性表述，详细一般理论可见“抽象代数”章节。