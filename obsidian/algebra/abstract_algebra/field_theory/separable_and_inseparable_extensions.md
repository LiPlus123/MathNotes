# 可分扩张与不可分扩张

## 可分元素与可分扩张

<!-- separable_element_def -->
> [!Definition]
> **可分元素 Separable Element**：设 $E/F$ 为代数扩张，$\alpha \in E$。若 $\alpha$ 的极小多项式 $m_{\alpha,F}(x)$ 在某个（等价地任一）分裂域中没有重根，则称 $\alpha$ 在 $F$ 上**可分**。

<!-- inseparable_element_def -->
> [!Definition]
> **不可分元素 Inseparable Element**：若代数元素 $\alpha$ 的极小多项式有重根，则称 $\alpha$ 在 $F$ 上**不可分**。

<!-- separable_extension_def -->
> [!Definition]
> **可分扩张 Separable Extension**：代数扩张 $E/F$ 中每个元素都可分时，称 $E/F$ 为**可分扩张**。若存在不可分元素，则称为**不可分扩张**。

## 判别与性质

<!-- separable_derivative_criterion -->
> [!Theorem]
> **导数判别法**：设 $\alpha$ 代数于 $F$，极小多项式为 $m(x)$。则
> $$
> \alpha\text{ 可分 }\Longleftrightarrow \gcd(m(x), m'(x))=1.
> $$
>
> **证明思路**：多项式有重根当且仅当与其导数有公共因子；对不可约多项式只可能互素或整除。

<!-- char_zero_perfect_theorem -->
> [!Theorem]
> **特征 $0$ 与有限域情形**：
> 1. 若 $\mathrm{char}(F)=0$，则任意代数扩张均可分；
> 2. 若 $F$ 为有限域，则任意代数扩张均可分。
>
> **证明思路**：特征 $0$ 时不可约多项式导数不恒为零；有限域是完美域，Frobenius 映射自同构，故不可约多项式无重根。

<!-- simple_purely_inseparable_form -->
> [!Theorem]
> **纯不可分的典型形式**：当 $\mathrm{char}(F)=p>0$ 时，若 $\alpha$ 不可分，则存在 $n\ge1$ 使
> $$
> \alpha^{p^n}\in F.
> $$
>
> **证明思路**：不可分不可约多项式必为 $x^{p^n}$ 型多项式复合的多项式，进而得到上述关系。

## 例子

<!-- separable_example_char_zero -->
> [!Example]+
> **特征 $0$ 的可分性**：$\mathbb{Q}(\sqrt[3]{2})/\mathbb{Q}$ 是可分扩张（尽管 $x^3-2$ 不在基域上完全分裂）。

<!-- inseparable_example_fp_t -->
> [!Example]+
> **不可分扩张例子**：设 $F=\mathbb{F}_p(t)$，$t$ 为超越元。多项式
> $$
> x^p-t
> $$
> 在 $F[x]$ 中不可约，设 $\alpha^p=t$，则 $F(\alpha)/F$ 为不可分扩张，且 $m_{\alpha,F}(x)=x^p-t$ 有重根。
