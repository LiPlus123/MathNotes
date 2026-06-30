---
title: 正规矩阵的定义
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 正规矩阵的定义

<!-- normal_matrix_definition -->
> [!Definition]
> **正规矩阵 Normal Matrix**：设 $A \in M_n(\mathbb{C})$。若
> $$
> A^*A = AA^*,
> $$
> 则称 $A$ 为**正规矩阵**（normal matrix）。

> **注**：在实数域上，因 $A^* = A^T$，条件变为 $A^T A = A A^T$。对角矩阵、实对称矩阵、Hermitian 矩阵、正交矩阵与酉矩阵都是正规矩阵。

<!-- normal_matrix_norm_criterion -->
> [!Proposition]
> **正规矩阵的范数判据 Norm Criterion for Normality**：设 $A \in M_n(\mathbb{C})$，则以下条件等价：
> 1. $A$ 是正规矩阵；
> 2. 对任意 $x \in \mathbb{C}^n$，有
> $$
> \|Ax\|_2 = \|A^*x\|_2.
> $$
>
> **证明思路**：由
> $$
> \|Ax\|_2^2 = \langle Ax, Ax \rangle = \langle A^*Ax, x \rangle,
> \quad
> \|A^*x\|_2^2 = \langle AA^*x, x \rangle,
> $$
> 对所有 $x$ 相等当且仅当 $A^*A = AA^*$。

<!-- normal_matrix_eigenspace_orthogonality -->
> [!Theorem]
> **不同特征值对应特征向量正交 Orthogonality of Eigenvectors**：设 $A \in M_n(\mathbb{C})$ 为正规矩阵，$x,y \neq \mathbf{0}$ 分别是属于不同特征值 $\lambda,\mu$ 的特征向量，且 $\lambda \neq \mu$，则
> $$
> \langle x,y \rangle = 0.
> $$
>
> **证明思路**：由 $Ax = \lambda x$ 得
> $$
> \langle Ax, y \rangle = \lambda \langle x,y \rangle.
> $$
> 对正规矩阵可证明 $A^*y = \overline{\mu}\, y$ 对应于同一正交分解中的伴随作用，于是
> $$
> \langle Ax, y \rangle = \langle x, A^*y \rangle = \mu \langle x,y \rangle.
> $$
> 故 $(\lambda - \mu)\langle x,y \rangle = 0$，从而 $\langle x,y \rangle = 0$。

<!-- normal_matrix_kernel_property -->
> [!Corollary]
> **正规矩阵的核性质 Kernel Property of Normal Matrix**：若 $A$ 为正规矩阵，则
> $$
> \ker A = \ker A^*.
> $$
>
> **证明思路**：若 $Ax = \mathbf{0}$，则由范数判据有 $\|A^*x\|_2 = \|Ax\|_2 = 0$，故 $A^*x = \mathbf{0}$。反向同理。

<!-- normal_matrix_example -->
> [!Example]+
> **正规矩阵例子 Examples of Normal Matrices**：
> 1. 任意对角矩阵 $D = \mathrm{diag}(\lambda_1, \ldots, \lambda_n)$ 满足 $D^*D = DD^*$；
> 2. 任意实对称矩阵满足 $A^T = A$，从而 $A^T A = A^2 = A A^T$；
> 3. 任意酉矩阵 $U$ 满足 $U^*U = UU^* = I_n$，因此也是正规矩阵。
