# 对偶表示 Dual Representation

<!-- dual_representation -->
> [!Definition]
> **对偶表示 Dual Representation**：设 $\rho: G \to GL(V)$ 是群 $G$ 的一个表示，$V^*$ 是 $V$ 的对偶空间。定义对偶表示
> $$\rho^*: G \to GL(V^*), \quad (\rho^*(g) \cdot f)(v) = f\bigl(\rho(g^{-1}) v\bigr),$$
> 对所有 $f \in V^*$，$v \in V$，$g \in G$。称 $\rho^*$ 为 $\rho$ 的**对偶表示**（或**逆步表示**），维数为 $\dim V^* = \dim V$。

> **注**：此处必须用 $\rho(g^{-1})$ 而非 $\rho(g)$，才能保证群同态性：
> $$(\rho^*(gh) \cdot f)(v) = f(\rho((gh)^{-1})v) = f(\rho(h^{-1}g^{-1})v) = (\rho^*(g) \cdot (\rho^*(h) \cdot f))(v).$$

<!-- dual_representation_matrix_form -->
> [!Proposition]
> **对偶表示的矩阵形式 Matrix Form of Dual Representation**：选定 $V$ 的一组基 $\mathcal{B} = (e_1, \ldots, e_n)$ 及其对偶基 $\mathcal{B}^* = (e_1^*, \ldots, e_n^*)$，设 $\rho(g)$ 在基 $\mathcal{B}$ 下的矩阵为 $A$，则 $\rho^*(g)$ 在对偶基 $\mathcal{B}^*$ 下的矩阵为
> $$\bigl(\rho^*(g)\bigr) = \bigl(A^{-1}\bigr)^T = \bigl(A^T\bigr)^{-1}.$$

> **证明思路**：由对偶基的定义 $e_i^*(e_j) = \delta_{ij}$，直接计算 $(\rho^*(g) \cdot e_i^*)(e_j) = e_i^*(\rho(g^{-1}) e_j)$ 即得对偶基下的矩阵为 $\rho(g^{-1})$ 的转置，即 $(A^{-1})^T$。

<!-- dual_vs_conjugate_representation -->
> [!Proposition]
> **对偶表示与共轭表示的关系 Dual vs. Conjugate Representation**：设 $F = \mathbb{C}$，$\rho$ 是有限群 $G$ 的酉表示（即存在 $V$ 上的内积使得每个 $\rho(g)$ 是酉算子），则
> $$\rho^* \cong \bar{\rho},$$
> 其中 $\bar{\rho}$ 是 $\rho$ 的**复共轭表示**，定义为 $\bar{\rho}(g) = \overline{\rho(g)}$（矩阵元取复共轭）。

> **证明思路**：酉条件 $\rho(g)^* = \rho(g)^{-1}$ 意味着 $\rho(g^{-1}) = \rho(g)^*$，故对偶表示的矩阵 $(\rho(g^{-1}))^T = \overline{\rho(g)}$（利用酉矩阵的性质），从而 $\rho^*$ 与 $\bar{\rho}$ 在自然同构下一致。
