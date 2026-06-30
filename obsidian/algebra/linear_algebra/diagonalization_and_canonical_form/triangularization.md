# 三角化

<!-- triangularizable_matrix_def -->
> [!Definition]
> **可三角化矩阵 Triangularizable Matrix**：设 $A \in M_n(F)$，若存在可逆矩阵 $P \in M_n(F)$ 使得 $P^{-1}AP$ 为上三角矩阵，则称 $A$ 在域 $F$ 上**可三角化**（triangularizable over $F$）。

> **注**：三角化是对角化的推广。对角化要求相似变换后为对角矩阵，而三角化只要求相似变换后为三角矩阵，条件更弱。

<!-- triangularization_condition_thm -->
> [!Theorem]
> **可三角化的充要条件 Condition for Triangularizability**：设 $A \in M_n(F)$，则 $A$ 在域 $F$ 上可三角化当且仅当 $A$ 的特征多项式 $p_A(\lambda)$ 在 $F[x]$ 上完全分裂，即 $p_A(\lambda)$ 的所有根均属于 $F$。
>
> **证明思路**：若 $P^{-1}AP$ 为上三角矩阵，则其特征值为对角元素，均属于 $F$，故 $p_A(\lambda)$ 在 $F$ 上完全分裂。反之，对矩阵阶数 $n$ 归纳：若 $p_A(\lambda)$ 在 $F$ 上有根 $\lambda_1$，取对应特征向量 $v_1$，将其扩充为 $F^n$ 的基，则 $A$ 在此基下的矩阵为分块上三角形式，再对右下角的 $(n-1) \times (n-1)$ 块使用归纳假设。

<!-- schur_decomposition_thm -->
> [!Theorem]
> **Schur 三角化定理 Schur Triangularization Theorem**：设 $A \in M_n(\mathbb{C})$，则存在酉矩阵 $U \in M_n(\mathbb{C})$（即 $U^*U = I_n$）使得 $U^*AU$ 为上三角矩阵，其对角元素为 $A$ 的特征值（含重数，顺序可选）。这一分解称为 $A$ 的 **Schur 分解**（Schur decomposition）。
>
> **证明思路**：$\mathbb{C}$ 是代数闭域，故 $p_A(\lambda)$ 在 $\mathbb{C}$ 上完全分裂。取特征向量 $v_1$，用 Gram-Schmidt 方法将其扩充为 $\mathbb{C}^n$ 的标准正交基，得到酉矩阵 $U_1$，使 $U_1^* A U_1$ 具有分块上三角结构，再对右下角子矩阵归纳。

<!-- real_schur_decomposition_thm -->
> [!Theorem]
> **实 Schur 分解定理 Real Schur Decomposition**：设 $A \in M_n(\mathbb{R})$，则存在正交矩阵 $Q \in M_n(\mathbb{R})$（即 $Q^T Q = I_n$）使得 $Q^T A Q$ 为**拟上三角矩阵**（quasi-upper triangular matrix），即分块上三角矩阵，其对角块为 $1 \times 1$ 或 $2 \times 2$ 实矩阵，$2 \times 2$ 块对应 $A$ 的一对共轭复特征值。
>
> **证明思路**：实矩阵的复特征值成共轭对出现。对实特征值用实特征向量处理，对复特征值对 $\lambda, \bar{\lambda}$ 用对应 $2 \times 2$ 不变子空间处理，逐步归约。
