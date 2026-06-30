---
title: 转置
tags:
  - linear_algebra
  - matrix
---

# 转置

<!-- matrix_transpose_definition -->
> [!Definition]
> **矩阵转置 Matrix Transpose**：设 $A = (a_{ij}) \in M_{m \times n}(F)$，定义 $A$ 的**转置**为 $n \times m$ 矩阵
> $$
> A^T = (a_{ji})_{n \times m},
> $$
> 即将 $A$ 的行与列互换，$(A^T)_{ij} = a_{ji}$。

<!-- transpose_properties -->
> [!Theorem]
> **转置的运算性质**：对适当大小的矩阵 $A, B$ 和标量 $\lambda \in F$，有：
> 1. $(A^T)^T = A$；
> 2. $(A + B)^T = A^T + B^T$；
> 3. $(\lambda A)^T = \lambda A^T$；
> 4. $(AB)^T = B^T A^T$。

> **证明思路**：前三条由定义直接验证。对性质 4，$(AB)^T$ 的第 $(k,i)$ 元素为 $(AB)_{ik} = \sum_j a_{ij} b_{jk}$，而 $(B^T A^T)_{ki} = \sum_j (B^T)_{kj}(A^T)_{ji} = \sum_j b_{jk} a_{ij}$，两者相等。

<!-- conjugate_transpose_definition -->
> [!Definition]
> **共轭转置 Conjugate Transpose**（又称 **Hermitian 转置**）：设 $A = (a_{ij}) \in M_{m \times n}(\mathbb{C})$，定义 $A$ 的**共轭转置**为
> $$
> A^* = \overline{A^T} = (\overline{a_{ji}})_{n \times m},
> $$
> 即先转置再对每个元素取复共轭，$(A^*)_{ij} = \overline{a_{ji}}$。

> **注**：当 $F = \mathbb{R}$ 时，$A^* = A^T$。共轭转置满足 $(A^*)^* = A$，$(AB)^* = B^* A^*$，$(\lambda A)^* = \overline{\lambda} A^*$。

<!-- symmetric_matrix_definition -->
> [!Definition]
> **对称矩阵与反对称矩阵**：方阵 $A \in M_n(F)$ 称为**对称矩阵 Symmetric Matrix**，若 $A^T = A$；称为**反对称矩阵 Skew-Symmetric Matrix**（斜对称矩阵），若 $A^T = -A$。

> **注**：反对称矩阵满足 $a_{ij} = -a_{ji}$，故对角元素 $a_{ii} = 0$（在 $\mathrm{char}(F) \neq 2$ 的数域上）。任意方阵可唯一分解为对称部分与反对称部分之和：$A = \frac{A + A^T}{2} + \frac{A - A^T}{2}$。

<!-- hermitian_matrix_transpose_definition -->
> [!Definition]
> **Hermitian 矩阵与反 Hermitian 矩阵**：方阵 $A \in M_n(\mathbb{C})$ 称为 **Hermitian 矩阵**（厄米矩阵），若 $A^* = A$；称为**反 Hermitian 矩阵 Skew-Hermitian Matrix**，若 $A^* = -A$。

> **注**：Hermitian 矩阵满足 $a_{ij} = \overline{a_{ji}}$，故对角元素均为实数。实对称矩阵是 Hermitian 矩阵的特例。
