# 表示的不可约分解 Decomposition into Irreducible Representations

<!-- decomposition_theorem -->
> [!Theorem]
> **不可约分解定理 Irreducible Decomposition Theorem**：设 $G$ 是有限群，$\rho: G \to GL(V)$ 是 $G$ 的有限维复表示，$\rho_1, \ldots, \rho_k$ 是 $G$ 的全体不等价不可约复表示。则存在唯一的非负整数 $m_1, \ldots, m_k$（**重数**）使得
> $$\rho \cong m_1 \rho_1 \oplus m_2 \rho_2 \oplus \cdots \oplus m_k \rho_k,$$
> 其中 $m_i \rho_i$ 表示 $\rho_i$ 的 $m_i$ 重直和。重数由特征标内积给出：
> $$m_i = \langle \chi_\rho, \chi_i \rangle = \frac{1}{|G|} \sum_{g \in G} \chi_\rho(g) \overline{\chi_i(g)}.$$

> **证明思路**：存在性由马施克定理保证（$\mathrm{char}(F) \nmid |G|$ 时表示完全可约）；唯一性由特征标内积和不可约特征标的正交性给出，因为等价表示具有相同特征标，而不可约特征标在内积下线性无关。

<!-- decomposition_uniqueness -->
> [!Corollary]
> **特征标决定表示 Character Determines Representation**：有限群 $G$ 的两个有限维复表示 $\rho$ 和 $\sigma$ 等价（$\rho \cong \sigma$）当且仅当它们的特征标相同（$\chi_\rho = \chi_\sigma$）。

> **证明思路**：$\Rightarrow$ 方向由等价表示的特征标相等给出。$\Leftarrow$ 方向：若 $\chi_\rho = \chi_\sigma$，则对每个不可约特征标 $\chi_i$，$m_i(\rho) = \langle \chi_\rho, \chi_i \rangle = \langle \chi_\sigma, \chi_i \rangle = m_i(\sigma)$，故 $\rho$ 和 $\sigma$ 有相同的不可约分解，从而等价。

<!-- regular_representation_decomposition -->
> [!Theorem]
> **正则表示的分解 Decomposition of Regular Representation**：设 $G$ 是有限群，$\rho_1, \ldots, \rho_k$ 是 $G$ 的全体不等价不可约复表示，维数分别为 $n_1, \ldots, n_k$。则正则表示 $\rho_{\mathrm{reg}}$ 分解为
> $$\rho_{\mathrm{reg}} \cong n_1 \rho_1 \oplus n_2 \rho_2 \oplus \cdots \oplus n_k \rho_k,$$
> 即每个不可约表示 $\rho_i$ 在正则表示中以其维数 $n_i$ 为重数出现。

> **证明思路**：正则表示的特征标 $\chi_{\mathrm{reg}}(e) = |G|$，$\chi_{\mathrm{reg}}(g) = 0$（$g \neq e$）。重数公式给出 $m_i = \langle \chi_{\mathrm{reg}}, \chi_i \rangle = \frac{1}{|G|} \cdot |G| \cdot \chi_i(e) = n_i$。

<!-- decomposition_example_s3 -->
> [!Example]+
> **$S_3$ 的置换表示分解**：$S_3$ 通过置换 $\{1,2,3\}$ 作用定义置换表示 $\rho_X: S_3 \to GL(\mathbb{C}^3)$。其特征标值为：$\chi_X(e) = 3$，$\chi_X((12)) = 1$（有一个不动点），$\chi_X((123)) = 0$（无不动点）。
>
> 利用重数公式（$|S_3| = 6$，共轭类大小分别为 $1, 3, 2$）：
> $$m_{\mathrm{triv}} = \frac{1}{6}(1 \cdot 3 + 3 \cdot 1 + 2 \cdot 0) = 1,$$
> $$m_{\mathrm{sgn}} = \frac{1}{6}(1 \cdot 3 \cdot 1 + 3 \cdot 1 \cdot (-1) + 2 \cdot 0 \cdot 1) = 0,$$
> $$m_{\mathrm{std}} = \frac{1}{6}(1 \cdot 3 \cdot 2 + 3 \cdot 1 \cdot 0 + 2 \cdot 0 \cdot (-1)) = 1.$$
> 故 $\rho_X \cong \rho_{\mathrm{triv}} \oplus \rho_{\mathrm{std}}$，即置换表示分解为平凡表示与标准表示的直和。
