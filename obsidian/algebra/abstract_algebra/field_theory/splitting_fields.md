# 分裂域

## 分裂域的定义

<!-- splitting_field_def -->
> [!Definition]
> **分裂域 Splitting Field**：设 $F$ 为域，$f(x) \in F[x]$ 为非常数多项式。若扩张 $E/F$ 满足：
> 1. $f(x)$ 在 $E[x]$ 中分解为一次因式之积；
> 2. $E$ 由 $f$ 的全部根在 $F$ 上生成；
>
> 则称 $E$ 为 $f$ 在 $F$ 上的**分裂域**，常记为 $\mathrm{Spl}_F(f)$。

## 分裂域的存在唯一性

<!-- splitting_field_existence -->
> [!Theorem]
> **分裂域存在性**：任意域 $F$ 上任意非常数多项式 $f(x) \in F[x]$ 都存在分裂域。
>
> **证明思路**：对次数作归纳。若 $f$ 尚未完全分裂，取其一个不可约因子 $g$，构造商域 $F[x]/(g)$ 得到 $g$ 的一个根，扩张后次数下降，继续归纳。

<!-- splitting_field_uniqueness -->
> [!Theorem]
> **分裂域唯一性（同构意义下）**：设 $E_1, E_2$ 都是 $f(x) \in F[x]$ 在 $F$ 上的分裂域，则存在保持 $F$ 不动的域同构
> $$
> \sigma: E_1 \xrightarrow{\cong} E_2.
> $$
>
> **证明思路**：利用“同态延拓到根”的引理，逐步把由根生成的子域同构延拓到整个分裂域。

<!-- splitting_field_finite_over_base -->
> [!Corollary]
> **分裂域是有限代数扩张**：若 $f(x) \in F[x]$ 非常数，则其分裂域 $E/F$ 是有限代数扩张。
>
> **证明思路**：分裂域由有限个根生成，每个根代数于 $F$，有限次代数单扩张复合后仍为有限代数扩张。

## 例子

<!-- splitting_field_example_x2_minus2 -->
> [!Example]+
> **$x^2-2$ 的分裂域**：在 $\mathbb{Q}$ 上，
> $$
> x^2-2=(x-\sqrt{2})(x+\sqrt{2}),
> $$
> 因而分裂域为 $\mathbb{Q}(\sqrt{2})$。

<!-- splitting_field_example_x3_minus2 -->
> [!Example]+
> **$x^3-2$ 的分裂域**：在 $\mathbb{Q}$ 上，$x^3-2$ 的三个根为 $\sqrt[3]{2},\ \omega\sqrt[3]{2},\ \omega^2\sqrt[3]{2}$（$\omega$ 为原三次单位根），故分裂域为
> $$
> \mathbb{Q}(\sqrt[3]{2},\omega).
> $$
