# 正则表示的分解 Decomposition of Regular Representation

<!-- regular_representation_decomposition -->
> [!Theorem]
> **正则表示的不可约分解 Irreducible Decomposition of Regular Representation**：设 $G$ 是有限群，$F$ 是域且 $\mathrm{char}(F) \nmid |G|$。设 $V_1, V_2, \ldots, V_k$ 是 $G$ 的全部不可约 $F$-表示的代表元（不计同构），$n_i = \deg V_i = \dim_F V_i$。则群代数 $FG$ 作为左 $FG$-模有同构
> $$FG \cong \bigoplus_{i=1}^{k} n_i \cdot V_i = \bigoplus_{i=1}^{k} \underbrace{V_i \oplus V_i \oplus \cdots \oplus V_i}_{n_i \text{ 个}},$$
> 即每个不可约表示 $V_i$ 在正则表示中恰好出现 $n_i = \dim V_i$ 次。

> **证明思路**：由上一节，$V_i$ 在 $\rho_{\mathrm{reg}}$ 中的重数为 $m_i = \deg V_i = n_i$（通过特征标内积计算）。由马施克定理，$FG$ 完全可约，故
> $$FG \cong \bigoplus_{i=1}^{k} m_i \cdot V_i = \bigoplus_{i=1}^k n_i \cdot V_i.$$

<!-- dimension_formula -->
> [!Corollary]
> **维数公式 Dimension Formula**：在上述假设下，比较两边的 $F$-维数得
> $$|G| = \dim_F FG = \sum_{i=1}^{k} n_i \cdot \dim V_i = \sum_{i=1}^{k} n_i^2,$$
> 即群的阶等于所有不可约表示维数的平方和：
> $$\sum_{i=1}^{k} (\dim V_i)^2 = |G|.$$

<!-- regular_decomposition_example -->
> [!Example]+
> **$S_3$ 的正则表示分解 Decomposition of Regular Representation of $S_3$**：$S_3$ 有三个不可约复表示：平凡表示 $V_1$（维数 $1$）、符号表示 $V_2$（维数 $1$）、标准表示 $V_3$（维数 $2$）。正则表示分解为
> $$\mathbb{C}S_3 \cong 1 \cdot V_1 \oplus 1 \cdot V_2 \oplus 2 \cdot V_3,$$
> 维数验证：$1^2 + 1^2 + 2^2 = 1 + 1 + 4 = 6 = |S_3|$。

<!-- decomposition_uniqueness -->
> [!Corollary]
> **不可约分解的唯一性 Uniqueness of Irreducible Decomposition**：设 $\mathrm{char}(F) \nmid |G|$，$G$ 的任意有限维 $F$-表示 $\rho$ 的不可约分解（到同构意义下）是唯一的，即对每个不可约表示 $V_i$，其在 $\rho$ 中的重数
> $$m_i = \langle \chi_\rho, \chi_i \rangle = \frac{1}{|G|} \sum_{g \in G} \chi_\rho(g)\, \overline{\chi_i(g)}$$
> 由 $\rho$ 唯一确定。

> **注**：维数公式 $\sum_{i=1}^k n_i^2 = |G|$ 是有限群表示论的基本关系，与不可约特征标个数等于共轭类个数（从 Wedderburn 分解导出）共同构成特征标表的结构约束。
