---
title: 实对称矩阵
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 实对称矩阵

<!-- real_symmetric_matrix_definition -->
> [!Definition]
> **实对称矩阵 Real Symmetric Matrix**：设 $A \in M_n(\mathbb{R})$。若
> $$
> A^T = A,
> $$
> 则称 $A$ 为**实对称矩阵**（real symmetric matrix）。

> **注**：实对称矩阵是 Hermitian 矩阵在实数域上的特例，因此也是正规矩阵。

<!-- real_symmetric_matrix_basic_properties -->
> [!Theorem]
> **实对称矩阵的基本性质**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵，则：
> 1. $A$ 的全部特征值都是实数；
> 2. 属于不同特征值的特征向量彼此正交；
> 3. 存在一组由 $A$ 的特征向量组成的标准正交基。
>
> **证明思路**：由 $A^T = A$，对任意特征向量 $x \neq \mathbf{0}$ 满足 $Ax = \lambda x$，有
> $$
> \lambda \langle x,x \rangle = \langle Ax, x \rangle = \langle x, Ax \rangle = \overline{\lambda}\langle x,x \rangle,
> $$
> 故 $\lambda \in \mathbb{R}$。不同特征值的正交性由对称性与同样的内积计算得到。再由谱定理可得标准正交特征向量基存在。

<!-- real_symmetric_matrix_orthogonal_diagonalization -->
> [!Theorem]
> **实对称矩阵的正交对角化 Orthogonal Diagonalization of Real Symmetric Matrices**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵，则存在正交矩阵 $Q \in M_n(\mathbb{R})$ 与实对角矩阵
> $$
> \Lambda = \mathrm{diag}(\lambda_1, \ldots, \lambda_n)
> $$
> 使得
> $$
> Q^TAQ = \Lambda,
> \quad \text{即} \quad
> A = Q\Lambda Q^T.
> $$
>
> **证明思路**：由上一条性质，$\mathbb{R}^n$ 存在由 $A$ 的标准正交特征向量构成的基。以这些向量为列组成矩阵 $Q$，则 $Q$ 为正交矩阵，且 $Q^TAQ$ 为对角矩阵。

<!-- real_symmetric_matrix_spectral_form -->
> [!Corollary]
> **实对称矩阵的谱表示**：若 $A = Q\Lambda Q^T$，其中 $Q = (q_1, \ldots, q_n)$，则
> $$
> A = \sum_{i=1}^n \lambda_i q_i q_i^T.
> $$
>
> **证明思路**：将 $\Lambda$ 按坐标投影展开后代入 $Q\Lambda Q^T$ 即得。

<!-- real_symmetric_matrix_example -->
> [!Example]+
> **二维实对称矩阵 Two-Dimensional Symmetric Matrix**：矩阵
> $$
> A =
> \begin{pmatrix}
> a & b \\
> b & d
> \end{pmatrix}
> $$
> 是实对称矩阵。它总可以通过某个正交矩阵化为对角形，这说明在适当的正交坐标系下，实对称线性变换只表现为沿互相正交方向的伸缩。
