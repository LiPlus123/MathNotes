# 子表示与商表示 Subrepresentation and Quotient Representation

<!-- g_invariant_subspace -->
> [!Definition]
> **$G$-不变子空间 $G$-Invariant Subspace**：设 $\rho: G \to GL(V)$ 是群 $G$ 的一个表示，$W \leq V$ 是 $V$ 的子空间。若对所有 $g \in G$ 均有
> $$\rho(g)(W) \subseteq W,$$
> 则称 $W$ 是 $\rho$ 的一个 **$G$-不变子空间**（或 **$G$-子模**）。

> **注**：$\{0\}$ 和 $V$ 本身总是 $G$-不变子空间，称为**平凡不变子空间**。

<!-- subrepresentation -->
> [!Definition]
> **子表示 Subrepresentation**：设 $W \leq V$ 是 $\rho$ 的 $G$-不变子空间。定义
> $$\rho|_W: G \to GL(W), \quad (\rho|_W)(g) = \rho(g)|_W,$$
> 则 $\rho|_W$ 是 $G$ 在 $W$ 上的表示，称为 $\rho$ 的**子表示**。

<!-- quotient_representation -->
> [!Definition]
> **商表示 Quotient Representation**：设 $W \leq V$ 是 $\rho$ 的 $G$-不变子空间，$V/W$ 是商线性空间。定义
> $$\bar{\rho}: G \to GL(V/W), \quad \bar{\rho}(g)(v + W) = \rho(g)v + W.$$
> 此定义良好（因为 $W$ 是 $G$-不变的），$\bar{\rho}$ 是 $G$ 在 $V/W$ 上的表示，称为 $\rho$ 的**商表示**，维数为 $\dim V - \dim W$。

<!-- subrepresentation_example -->
> [!Example]+
> **子表示与商表示的例子**：考虑 $S_3$ 的置换表示 $\rho: S_3 \to GL(F^3)$（$\rho(\sigma)(e_i) = e_{\sigma(i)}$）。
> - 令 $W = \mathrm{span}(e_1 + e_2 + e_3)$，则 $W$ 是 $G$-不变的（每个 $\rho(\sigma)$ 保持 $e_1 + e_2 + e_3$），$\rho|_W$ 是平凡表示。
> - 令 $U = \{(a_1, a_2, a_3) \mid a_1 + a_2 + a_3 = 0\}$，则 $U$ 也是 $G$-不变的，$\rho|_U$ 是 $S_3$ 的标准表示。
> - 商空间 $F^3 / U \cong W$ 上的商表示同构于平凡表示。
