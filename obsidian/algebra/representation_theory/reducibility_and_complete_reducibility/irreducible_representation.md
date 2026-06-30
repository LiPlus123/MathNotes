# 不可约表示 Irreducible Representation

<!-- irreducible_representation -->
> [!Definition]
> **不可约表示 Irreducible Representation**：设 $\rho: G \to GL(V)$ 是群 $G$ 的一个非零表示（即 $V \neq 0$）。若 $\rho$ 没有非平凡的 $G$-不变子空间，即 $V$ 的唯一 $G$-不变子空间只有 $\{0\}$ 和 $V$ 本身，则称 $\rho$ 是**不可约表示**（也称**单表示**）。

> **注**：不可约表示不能进一步"分解"为更小的子表示。一维表示由于不存在非零真子空间，自动是不可约的。

<!-- one_dim_irreducible -->
> [!Proposition]
> **一维表示的不可约性 Irreducibility of One-Dimensional Representations**：任意一维表示 $\rho: G \to GL(V)$（$\dim V = 1$）均为不可约表示。

> **证明思路**：$\dim V = 1$ 时，$V$ 的子空间只有 $\{0\}$ 和 $V$，故无非平凡不变子空间。

<!-- trivial_representation_irreducible -->
> [!Example]+
> **平凡表示与符号表示的不可约性**：设 $F$ 是域，$G$ 是任意群。
> - 平凡表示 $\rho_{\mathrm{triv}}: G \to GL(F)$（$\rho_{\mathrm{triv}}(g) = 1$）是一维表示，故不可约。
> - 对称群 $S_n$ 的符号表示 $\rho_{\mathrm{sgn}}: S_n \to F^\times$（$\rho_{\mathrm{sgn}}(\sigma) = \mathrm{sgn}(\sigma)$）也是一维表示，故不可约。

<!-- standard_representation_irreducible -->
> [!Example]+
> **标准表示的不可约性**：设 $F = \mathbb{C}$，$n \geq 2$。$S_n$ 的置换表示 $\rho_X: S_n \to GL(\mathbb{C}^n)$ 有不变子空间
> $$W = \mathrm{span}(e_1 + e_2 + \cdots + e_n), \quad U = \{(a_1,\ldots,a_n) \mid a_1 + \cdots + a_n = 0\}.$$
> 限制到 $U$ 上所得的子表示 $\rho_X|_U$（即 $S_n$ 的**标准表示**）是不可约表示，维数为 $n-1$。

> **证明思路**：设 $W' \leq U$ 是非零 $S_n$-不变子空间，取非零向量 $v = \sum_i a_i e_i \in W'$，利用置换作用与线性组合可生成 $U$，故 $W' = U$。

<!-- reducible_representation -->
> [!Definition]
> **可约表示 Reducible Representation**：若非零表示 $\rho: G \to GL(V)$ 存在非平凡 $G$-不变子空间（即存在 $G$-不变子空间 $W$ 满足 $0 \subsetneq W \subsetneq V$），则称 $\rho$ 是**可约表示**。

> **注**：$\dim V \geq 2$ 的表示未必可约，但若可约，则 $\rho$ 在某组基下的矩阵形式为
> $$\rho(g) = \begin{pmatrix} A(g) & B(g) \\ 0 & C(g) \end{pmatrix},$$
> 其中 $A(g)$ 和 $C(g)$ 分别对应子表示与商表示的矩阵。
