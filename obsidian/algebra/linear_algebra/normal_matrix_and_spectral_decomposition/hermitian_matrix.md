---
title: 厄米矩阵
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 厄米矩阵

<!-- hermitian_matrix_definition -->
> [!Definition]
> **厄米矩阵 Hermitian Matrix**：设 $A \in M_n(\mathbb{C})$。若
> $$
> A^* = A,
> $$
> 则称 $A$ 为**厄米矩阵**（Hermitian matrix）。

> **注**：当 $A$ 的元素都为实数时，Hermitian 条件退化为 $A^T = A$，所以实对称矩阵是 Hermitian 矩阵的特例。

<!-- hermitian_matrix_real_quadratic_form -->
> [!Proposition]
> **Hermitian 矩阵的二次型取实值 Reality of Quadratic Form**：若 $A$ 为 Hermitian 矩阵，则对任意 $x \in \mathbb{C}^n$，有
> $$
> x^*Ax \in \mathbb{R}.
> $$
>
> **证明思路**：由 $A^* = A$，
> $$
> \overline{x^*Ax} = x^*A^*x = x^*Ax,
> $$
> 故它等于自身的复共轭，从而为实数。

<!-- hermitian_matrix_basic_properties -->
> [!Theorem]
> **Hermitian 矩阵的基本性质**：设 $A \in M_n(\mathbb{C})$ 为 Hermitian 矩阵，则：
> 1. $A$ 的对角元素都是实数；
> 2. $A$ 的全部特征值都是实数；
> 3. 属于不同特征值的特征向量彼此正交；
> 4. $A$ 是正规矩阵。
>
> **证明思路**：第 1 条由 $a_{ii} = \overline{a_{ii}}$ 得到。第 2 条设 $Ax = \lambda x$，则
> $$
> \lambda \langle x,x \rangle = \langle Ax, x \rangle = \langle x, Ax \rangle = \overline{\lambda}\langle x,x \rangle,
> $$
> 因而 $\lambda \in \mathbb{R}$。第 3 条与实对称矩阵情形完全类似。第 4 条由 $A^* = A$ 推得 $A^*A = A^2 = AA^*$。

<!-- hermitian_matrix_diagonalizable_corollary -->
> [!Corollary]
> **Hermitian 矩阵可酉对角化**：任意 Hermitian 矩阵都可以被酉相似对角化，且对角元全为实数。
>
> **证明思路**：Hermitian 矩阵是正规矩阵，应用正规矩阵谱定理即可；又 Hermitian 矩阵的特征值全为实数，所以所得对角矩阵是实对角矩阵。

<!-- hermitian_matrix_example -->
> [!Example]+
> **Hermitian 矩阵例子 Example of Hermitian Matrix**：矩阵
> $$
> A =
> \begin{pmatrix}
> 2 & 1+i \\
> 1-i & 3
> \end{pmatrix}
> $$
> 满足 $A^* = A$，因此是 Hermitian 矩阵。它的对角元为实数，且全部特征值都为实数。
