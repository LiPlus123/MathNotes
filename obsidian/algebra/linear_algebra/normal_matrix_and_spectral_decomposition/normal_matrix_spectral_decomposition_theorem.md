---
title: 正规矩阵谱分解定理
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 正规矩阵谱分解定理

<!-- normal_matrix_spectral_theorem -->
> [!Theorem]
> **正规矩阵谱定理 Spectral Theorem for Normal Matrices**：设 $A \in M_n(\mathbb{C})$，则以下条件等价：
> 1. $A$ 是正规矩阵；
> 2. 存在酉矩阵 $U \in M_n(\mathbb{C})$ 与对角矩阵
> $$
> \Lambda = \mathrm{diag}(\lambda_1, \lambda_2, \ldots, \lambda_n)
> $$
> 使得
> $$
> A = U\Lambda U^*.
> $$
> 换言之，正规矩阵当且仅当可被酉相似对角化。
>
> **证明思路**：由 Schur 三角化定理，任意复方阵都可写为 $A = UTU^*$，其中 $T$ 为上三角矩阵。若 $A$ 正规，则 $T$ 也正规。正规上三角矩阵必为对角矩阵，故 $T = \Lambda$。反向由
> $$
> A^*A = U\Lambda^*\Lambda U^*, \quad AA^* = U\Lambda\Lambda^*U^*
> $$
> 且对角矩阵可交换，得 $A^*A = AA^*$。

<!-- normal_matrix_spectral_decomposition_definition -->
> [!Definition]
> **正规矩阵的谱分解 Spectral Decomposition of a Normal Matrix**：设 $A$ 为正规矩阵，且不同特征值为 $\mu_1, \mu_2, \ldots, \mu_s$。记 $P_i$ 为到特征子空间 $V_{\mu_i}$ 的正交投影，则
> $$
> A = \sum_{i=1}^s \mu_i P_i
> $$
> 称为 $A$ 的**谱分解**。

> **注**：这些投影满足
> $$
> P_i^2 = P_i, \quad P_i^* = P_i, \quad P_iP_j = 0 \ (i \neq j), \quad \sum_{i=1}^s P_i = I_n.
> $$

<!-- normal_matrix_spectral_projection_form -->
> [!Proposition]
> **谱分解的投影形式 Projection Form of Spectral Decomposition**：若 $A = U\Lambda U^*$，其中 $U = (u_1, u_2, \ldots, u_n)$ 的列向量构成标准正交特征向量组，则
> $$
> A = \sum_{j=1}^n \lambda_j u_j u_j^*.
> $$
> 若把相同特征值的项合并，即得到
> $$
> A = \sum_{i=1}^s \mu_i P_i.
> $$
>
> **证明思路**：将 $\Lambda$ 写成
> $$
> \Lambda = \sum_{j=1}^n \lambda_j e_j e_j^T,
> $$
> 再代入 $A = U\Lambda U^*$ 展开即可。

<!-- normal_matrix_absolute_value_application -->
> [!Corollary]
> **正规矩阵的奇异值与特征值模的关系**：若正规矩阵 $A$ 的特征值为 $\lambda_1, \ldots, \lambda_n$，则其奇异值恰为
> $$
> |\lambda_1|, |\lambda_2|, \ldots, |\lambda_n|
> $$
> 按适当顺序排列所得。
>
> **证明思路**：由 $A = U\Lambda U^*$，可得
> $$
> A^*A = U\Lambda^*\Lambda U^*.
> $$
> 而 $\Lambda^*\Lambda$ 的对角元为 $|\lambda_j|^2$，故 $A^*A$ 的特征值为 $|\lambda_j|^2$，其平方根就是奇异值。

<!-- normal_matrix_polynomial_application -->
> [!Corollary]
> **多项式计算的简化 Polynomial Functional Calculus**：若 $A = U\Lambda U^*$ 为正规矩阵的谱分解，则对任意多项式 $f \in \mathbb{C}[x]$，有
> $$
> f(A) = U\,\mathrm{diag}(f(\lambda_1), \ldots, f(\lambda_n))\,U^*.
> $$
>
> **证明思路**：由 $A^k = U\Lambda^kU^*$ 对一切正整数 $k$ 成立，再对多项式线性组合即可。
