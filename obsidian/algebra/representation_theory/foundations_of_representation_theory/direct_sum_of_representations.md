# 表示的直和 Direct Sum of Representations

<!-- direct_sum_representation -->
> [!Definition]
> **表示的（外）直和 External Direct Sum of Representations**：设 $\rho: G \to GL(V)$ 与 $\sigma: G \to GL(W)$ 是群 $G$ 的两个表示。在直和空间 $V \oplus W$ 上定义
> $$(\rho \oplus \sigma): G \to GL(V \oplus W), \quad (\rho \oplus \sigma)(g)(v, w) = (\rho(g)v,\, \sigma(g)w).$$
> 称 $\rho \oplus \sigma$ 为 $\rho$ 与 $\sigma$ 的**直和表示**，维数为 $\dim V + \dim W$。

<!-- direct_sum_matrix_form -->
> [!Proposition]
> **直和的矩阵分块形式 Block Diagonal Matrix Form**：分别选定 $V$ 和 $W$ 的基，则 $(\rho \oplus \sigma)(g)$ 在 $V \oplus W$ 的对应基下的矩阵为分块对角矩阵
> $$(\rho \oplus \sigma)(g) \longleftrightarrow \begin{pmatrix} \rho(g) & 0 \\ 0 & \sigma(g) \end{pmatrix}.$$
> 反之，若存在基使得 $\rho$ 的所有矩阵均为上述分块对角形，则 $\rho \cong \rho_1 \oplus \rho_2$，其中 $\rho_1, \rho_2$ 分别对应两个对角块。

<!-- decomposition_into_irreducibles -->
> [!Definition]
> **表示的直和分解 Direct Sum Decomposition**：若 $V = W_1 \oplus W_2 \oplus \cdots \oplus W_k$，且每个 $W_i$ 均为 $\rho$ 的 $G$-不变子空间，则
> $$\rho \cong \rho|_{W_1} \oplus \rho|_{W_2} \oplus \cdots \oplus \rho|_{W_k}.$$
> 若每个 $\rho|_{W_i}$ 均为不可约表示，则称此为 $\rho$ 的**不可约分解**。

> **注**：马施克定理（Maschke's Theorem）保证：当 $G$ 是有限群且 $\mathrm{char}(F) \nmid |G|$ 时，$G$ 的每个有限维表示均可分解为不可约表示的直和。
