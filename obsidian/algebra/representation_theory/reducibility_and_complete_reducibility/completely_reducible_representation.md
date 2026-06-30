# 完全可约表示 Completely Reducible Representation

<!-- completely_reducible_representation -->
> [!Definition]
> **完全可约表示 Completely Reducible Representation**：设 $\rho: G \to GL(V)$ 是群 $G$ 的一个表示。若存在 $G$-不变子空间 $V_1, V_2, \ldots, V_k \leq V$，使得
> $$V = V_1 \oplus V_2 \oplus \cdots \oplus V_k,$$
> 且每个 $\rho|_{V_i}$ 均为不可约表示，则称 $\rho$ 是**完全可约表示**（也称**半单表示**）。此分解称为 $\rho$ 的**不可约分解**。

> **注**：零表示（$V = 0$）约定为完全可约（空直和）。完全可约是对"直和分解到不可约"的全局要求，而可约表示仅表示存在非平凡不变子空间，两者不同。

<!-- complement_characterization -->
> [!Theorem]
> **完全可约的等价刻画 Equivalent Characterization of Complete Reducibility**：设 $\rho: G \to GL(V)$ 是有限维表示，以下三个条件等价：
> 1. $\rho$ 是完全可约表示；
> 2. $V$ 的每个 $G$-不变子空间 $W$ 均存在 $G$-不变补空间，即存在 $G$-不变子空间 $W' \leq V$ 使得 $V = W \oplus W'$；
> 3. $V$ 可以写成不可约 $G$-不变子空间的和（不一定是直和）：$V = \sum_{i} V_i$，每个 $V_i$ 不可约。

> **证明思路**：$(1) \Rightarrow (2)$：若 $V = \bigoplus_i V_i$ 是不可约分解，对给定的不变子空间 $W$，利用不可约子空间的投影构造不变补。$(2) \Rightarrow (1)$：对 $\dim V$ 归纳，若 $V$ 可约则取非平凡不变子空间 $W$，再由条件取不变补 $W'$，对 $W$ 和 $W'$ 递归分解。$(3) \Rightarrow (1)$：从有限维中取极小（不可约）子空间逐步提取直和分量。

<!-- isotypic_decomposition -->
> [!Definition]
> **同型分量 Isotypic Component**：设 $\rho: G \to GL(V)$ 是完全可约表示，$\tau$ 是 $G$ 的某个不可约表示（同构类）。$V$ 中所有与 $\tau$ 同构的不可约子表示之和称为 $\tau$-**同型分量**，记为 $V(\tau)$。则
> $$V = \bigoplus_{\tau \in \widehat{G}} V(\tau),$$
> 其中 $\widehat{G}$ 是 $G$ 的不可约表示的同构类全体，$\tau$ 在 $V$ 中出现的次数称为**重数** $m_\tau$，有 $V(\tau) \cong \tau^{\oplus m_\tau}$。

> **注**：同型分量分解是唯一的，但每个同型分量内部的直和分解方式一般不唯一（当重数 $m_\tau \geq 2$ 时）。

<!-- completely_reducible_example -->
> [!Example]+
> **完全可约表示的例子**：设 $G = \mathbb{Z}/2\mathbb{Z} = \{e, g\}$，$F = \mathbb{C}$，令 $\rho: G \to GL(\mathbb{C}^2)$ 由
> $$\rho(g) = \begin{pmatrix} 0 & 1 \\ 1 & 0 \end{pmatrix}$$
> 给出。不变子空间为 $V_+ = \mathrm{span}(e_1 + e_2)$ 和 $V_- = \mathrm{span}(e_1 - e_2)$，且 $\mathbb{C}^2 = V_+ \oplus V_-$。$\rho|_{V_+}$ 为平凡表示，$\rho|_{V_-}$ 为符号表示（$\rho(g) = -1$），故 $\rho$ 完全可约。
