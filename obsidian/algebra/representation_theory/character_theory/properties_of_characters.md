# 特征标的性质 Properties of Characters

<!-- character_value_at_identity -->
> [!Proposition]
> **单位元处的值 Value at Identity**：设 $\rho: G \to GL(V)$ 是 $G$ 的 $n$ 维表示，则
> $$\chi_\rho(e) = n = \dim V.$$

<!-- character_value_at_inverse -->
> [!Proposition]
> **逆元处的值 Value at Inverse**：设 $G$ 是有限群，$\rho: G \to GL(V)$ 是 $G$ 的复表示（$F = \mathbb{C}$），则对所有 $g \in G$，
> $$\chi_\rho(g^{-1}) = \overline{\chi_\rho(g)},$$
> 其中 $\overline{(\cdot)}$ 表示复共轭。

> **证明思路**：由于 $G$ 是有限群，$g$ 的阶 $n = \mathrm{ord}(g)$ 有限，$\rho(g)^n = \mathrm{Id}_V$，故 $\rho(g)$ 的特征值均为 $n$ 次单位根，设为 $\lambda_1, \ldots, \lambda_d$，则 $|\lambda_i| = 1$，$\overline{\lambda_i} = \lambda_i^{-1}$。故
> $$\chi_\rho(g^{-1}) = \mathrm{tr}(\rho(g)^{-1}) = \sum_{i=1}^d \lambda_i^{-1} = \sum_{i=1}^d \overline{\lambda_i} = \overline{\chi_\rho(g)}.$$

<!-- character_conjugate_representation -->
> [!Proposition]
> **共轭表示的特征标 Character of Conjugate Representation**：设 $\rho: G \to GL(V)$ 是复表示，则其共轭表示 $\bar{\rho}$ 的特征标满足
> $$\chi_{\bar{\rho}}(g) = \overline{\chi_\rho(g)}.$$

> **注**：由上述两个命题，$\chi_\rho(g^{-1}) = \overline{\chi_\rho(g)} = \chi_{\bar{\rho}}(g)$，即对有限群的复表示，$g^{-1}$ 处的特征标值等于 $g$ 处特征标值的复共轭。当 $\rho$ 是实值（$\chi_\rho(g) \in \mathbb{R}$ 对所有 $g$）时，$\rho \cong \bar{\rho}$，称 $\rho$ 为**自共轭表示**。

<!-- character_direct_sum -->
> [!Proposition]
> **直和表示的特征标 Character of Direct Sum**：设 $\rho: G \to GL(V)$ 和 $\sigma: G \to GL(W)$ 是 $G$ 的两个表示，则直和表示 $\rho \oplus \sigma: G \to GL(V \oplus W)$ 的特征标满足
> $$\chi_{\rho \oplus \sigma}(g) = \chi_\rho(g) + \chi_\sigma(g) \quad \text{对所有 } g \in G.$$

> **证明思路**：在 $V \oplus W$ 的块矩阵表示下，$(\rho \oplus \sigma)(g)$ 为块对角矩阵 $\mathrm{diag}(\rho(g), \sigma(g))$，其迹为两块迹之和。

<!-- character_tensor_product -->
> [!Proposition]
> **张量积表示的特征标 Character of Tensor Product**：设 $\rho: G \to GL(V)$ 和 $\sigma: G \to GL(W)$ 是 $G$ 的两个表示，则张量积表示 $\rho \otimes \sigma: G \to GL(V \otimes W)$ 的特征标满足
> $$\chi_{\rho \otimes \sigma}(g) = \chi_\rho(g) \cdot \chi_\sigma(g) \quad \text{对所有 } g \in G.$$

> **证明思路**：设 $\rho(g)$ 的特征值为 $\lambda_1, \ldots, \lambda_m$，$\sigma(g)$ 的特征值为 $\mu_1, \ldots, \mu_n$，则 $(\rho \otimes \sigma)(g)$ 的特征值为所有乘积 $\lambda_i \mu_j$，故 $\chi_{\rho \otimes \sigma}(g) = \sum_{i,j} \lambda_i \mu_j = \bigl(\sum_i \lambda_i\bigr)\bigl(\sum_j \mu_j\bigr) = \chi_\rho(g)\chi_\sigma(g)$。

<!-- character_dual_representation -->
> [!Proposition]
> **对偶表示的特征标 Character of Dual Representation**：设 $\rho: G \to GL(V)$ 是有限群 $G$ 的复表示，则对偶表示 $\rho^*: G \to GL(V^*)$ 的特征标满足
> $$\chi_{\rho^*}(g) = \overline{\chi_\rho(g)} = \chi_\rho(g^{-1}).$$

> **证明思路**：$\rho^*(g)$ 在对偶基下的矩阵为 $(\rho(g^{-1}))^T$，其迹等于 $\mathrm{tr}(\rho(g^{-1})) = \chi_\rho(g^{-1}) = \overline{\chi_\rho(g)}$。

<!-- character_equivalent_representations -->
> [!Proposition]
> **等价表示具有相同特征标 Equivalent Representations Have Equal Characters**：若 $\rho \cong \sigma$，则 $\chi_\rho = \chi_\sigma$。

> **证明思路**：等价表示通过可逆算子 $T: V \to W$ 联系，满足 $\sigma(g) = T \rho(g) T^{-1}$，由迹的相似不变性 $\mathrm{tr}(\sigma(g)) = \mathrm{tr}(\rho(g))$。
