---
title: 奇异值与奇异值分解
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 奇异值与奇异值分解

<!-- singular_value_definition -->
> [!Definition]
> **奇异值 Singular Value**：设 $A \in M_{m \times n}(\mathbb{C})$。矩阵 $A^*A$ 是 Hermitian 半正定矩阵，故其特征值全为非负实数。设这些特征值为
> $$
> \lambda_1, \lambda_2, \ldots, \lambda_n \geq 0,
> $$
> 则称
> $$
> \sigma_i = \sqrt{\lambda_i}
> $$
> 为矩阵 $A$ 的**奇异值**（singular values）。通常约定按
> $$
> \sigma_1 \geq \sigma_2 \geq \cdots \geq 0
> $$
> 排列。

<!-- singular_vector_definition -->
> [!Definition]
> **左奇异向量与右奇异向量 Left and Right Singular Vectors**：若存在单位向量 $u \in \mathbb{C}^m$、$v \in \mathbb{C}^n$ 使得
> $$
> Av = \sigma u, \quad A^*u = \sigma v,
> $$
> 则称 $\sigma$ 为 $A$ 的一个奇异值，$u$ 为对应的**左奇异向量**，$v$ 为对应的**右奇异向量**。

<!-- singular_value_decomposition_theorem -->
> [!Theorem]
> **奇异值分解定理 Singular Value Decomposition Theorem**：对任意矩阵 $A \in M_{m \times n}(\mathbb{C})$，存在酉矩阵
> $$
> U \in M_m(\mathbb{C}), \quad V \in M_n(\mathbb{C})
> $$
> 和对角形矩阵
> $$
> \Sigma = \mathrm{diag}(\sigma_1, \sigma_2, \ldots, \sigma_r, 0, \ldots, 0) \in M_{m \times n}(\mathbb{C}),
> $$
> 其中 $\sigma_1 \geq \sigma_2 \geq \cdots \geq \sigma_r > 0$，使得
> $$
> A = U\Sigma V^*.
> $$
> 这称为矩阵 $A$ 的**奇异值分解**（singular value decomposition，SVD）。
>
> **证明思路**：先对 Hermitian 半正定矩阵 $A^*A$ 应用谱定理，取其标准正交特征向量组组成酉矩阵 $V$，并将非零特征值开平方得到奇异值。再对每个非零奇异值定义
> $$
> u_i = \frac{1}{\sigma_i}Av_i,
> $$
> 可验证 $u_i$ 两两正交且单位化，将其扩充为 $\mathbb{C}^m$ 的标准正交基得到酉矩阵 $U$，从而构造出 $A = U\Sigma V^*$。

<!-- singular_value_decomposition_outer_product -->
> [!Proposition]
> **SVD 的外积表示 Outer-Product Form of SVD**：若
> $$
> A = U\Sigma V^*,
> $$
> 其中 $U = (u_1, \ldots, u_m)$，$V = (v_1, \ldots, v_n)$，则
> $$
> A = \sum_{i=1}^r \sigma_i u_i v_i^*.
> $$
>
> **证明思路**：把 $\Sigma$ 写成各个对角坐标矩阵之和，并代入 $U\Sigma V^*$ 展开即可。非零奇异值对应的项给出全部贡献。

<!-- singular_value_rank_relation -->
> [!Corollary]
> **秩与奇异值的关系 Rank and Singular Values**：矩阵 $A$ 的秩等于其非零奇异值的个数，即
> $$
> \mathrm{rank}(A) = r.
> $$
>
> **证明思路**：由外积表示，$A$ 的像空间由 $u_1, \ldots, u_r$ 张成，因此秩至多为 $r$；另一方面这些方向都实际出现，故秩恰为 $r$。等价地，$\mathrm{rank}(A) = \mathrm{rank}(A^*A)$，而 $A^*A$ 的非零特征值恰为 $\sigma_i^2$。

<!-- singular_value_eigenvalue_relation -->
> [!Proposition]
> **奇异值与 $A^*A, AA^*$ 的关系**：若 $A = U\Sigma V^*$ 是 SVD，则
> $$
> A^*A = V\Sigma^*\Sigma V^*,
> \quad
> AA^* = U\Sigma\Sigma^*U^*.
> $$
> 因此 $A^*A$ 与 $AA^*$ 的非零特征值相同，且都等于
> $$
> \sigma_1^2, \sigma_2^2, \ldots, \sigma_r^2.
> $$
>
> **证明思路**：直接将 $A = U\Sigma V^*$ 代入计算，利用 $U^*U = I_m$ 与 $V^*V = I_n$ 即得。
