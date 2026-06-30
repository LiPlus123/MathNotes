---
title: 矩阵的定义
tags:
  - linear_algebra
  - matrix
---

# 矩阵的定义

<!-- matrix_definition -->
> [!Definition]
> **矩阵 Matrix**：设 $F$ 是数域，$m, n$ 是正整数。由 $F$ 中 $mn$ 个元素排成的 $m$ 行 $n$ 列的矩形数表
> $$
> A = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\ a_{21} & a_{22} & \cdots & a_{2n} \\ \vdots & \vdots & \ddots & \vdots \\ a_{m1} & a_{m2} & \cdots & a_{mn} \end{pmatrix}
> $$
> 称为数域 $F$ 上的 $m \times n$ **矩阵**，记作 $A = (a_{ij})_{m \times n}$ 或简记为 $A = (a_{ij})$，其中 $a_{ij} \in F$ 称为矩阵 $A$ 的第 $i$ 行第 $j$ 列**元素**。当 $m = n$ 时，称 $A$ 为 $n$ 阶**方阵**。

> **注**：$m \times n$ 矩阵 $A$ 可视为 $n$ 个列向量 $a_{\cdot 1}, \ldots, a_{\cdot n} \in F^m$ 并排排列，也可视为 $m$ 个行向量并排排列。

<!-- zero_matrix_definition -->
> [!Definition]
> **零矩阵 Zero Matrix**：所有元素均为 $0$ 的 $m \times n$ 矩阵称为 $m \times n$ **零矩阵**，记作 $O$ 或 $O_{m \times n}$。

<!-- identity_matrix_definition -->
> [!Definition]
> **单位矩阵 Identity Matrix**：$n$ 阶方阵
> $$
> I_n = \begin{pmatrix} 1 & 0 & \cdots & 0 \\ 0 & 1 & \cdots & 0 \\ \vdots & \vdots & \ddots & \vdots \\ 0 & 0 & \cdots & 1 \end{pmatrix}
> $$
> 称为 $n$ 阶**单位矩阵**，其元素为 $(I_n)_{ij} = \delta_{ij}$，简记为 $I$。

<!-- matrix_addition_definition -->
> [!Definition]
> **矩阵的加法 Matrix Addition**：设 $A = (a_{ij}),\ B = (b_{ij})$ 是数域 $F$ 上的两个 $m \times n$ 矩阵，定义它们的**和**为
> $$
> A + B = (a_{ij} + b_{ij})_{m \times n},
> $$
> 即对应元素相加所得的 $m \times n$ 矩阵。

<!-- scalar_multiplication_of_matrix_definition -->
> [!Definition]
> **矩阵的数乘 Scalar Multiplication**：设 $A = (a_{ij})$ 是 $F$ 上的 $m \times n$ 矩阵，$\lambda \in F$，定义**数乘**为
> $$
> \lambda A = (\lambda a_{ij})_{m \times n},
> $$
> 即将每个元素乘以 $\lambda$ 所得的矩阵。

<!-- matrix_multiplication_definition -->
> [!Definition]
> **矩阵的乘法 Matrix Multiplication**：设 $A = (a_{ij})$ 是 $F$ 上的 $m \times p$ 矩阵，$B = (b_{jk})$ 是 $F$ 上的 $p \times n$ 矩阵，定义它们的**乘积** $C = AB$ 为 $m \times n$ 矩阵，其中
> $$
> c_{ik} = \sum_{j=1}^{p} a_{ij} b_{jk}, \quad 1 \leq i \leq m,\ 1 \leq k \leq n.
> $$

> **注**：
> - 矩阵乘法要求左矩阵的列数等于右矩阵的行数；
> - 矩阵乘法满足结合律 $(AB)C = A(BC)$ 及对加法的分配律，但一般**不满足交换律**（$AB \neq BA$）；
> - 单位矩阵是乘法单位元：对 $m \times n$ 矩阵 $A$，有 $I_m A = A I_n = A$。

<!-- matrix_space_definition -->
> [!Definition]
> **矩阵空间 Matrix Space**：数域 $F$ 上全体 $m \times n$ 矩阵的集合 $M_{m \times n}(F)$ 在矩阵加法和数乘下构成 $F$ 上的**线性空间**，称为**矩阵空间**。当 $m = n$ 时简记为 $M_n(F)$。

<!-- matrix_space_dimension -->
> [!Theorem]
> **矩阵空间的维数**：$\dim M_{m \times n}(F) = mn$。以所有只有第 $(i,j)$ 位为 $1$、其余位为 $0$ 的矩阵 $E_{ij}$（$1 \leq i \leq m,\ 1 \leq j \leq n$）为基，称为矩阵空间的**标准基**。

> **证明思路**：任意矩阵 $A = \sum_{i,j} a_{ij} E_{ij}$，且 $\{E_{ij}\}$ 线性无关，故 $\{E_{ij}\}$ 构成 $M_{m \times n}(F)$ 的一组基，维数为 $mn$。
