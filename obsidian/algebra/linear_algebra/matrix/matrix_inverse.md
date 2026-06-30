---
title: 逆矩阵
tags:
  - linear_algebra
  - matrix
---

# 逆矩阵

<!-- invertible_matrix_definition -->
> [!Definition]
> **可逆矩阵 Invertible Matrix**（非奇异矩阵）：$n$ 阶方阵 $A \in M_n(F)$ 称为**可逆矩阵**，若存在 $B \in M_n(F)$ 使得
> $$
> AB = BA = I_n.
> $$
> 满足此条件的 $B$ 是唯一的，称为 $A$ 的**逆矩阵**，记作 $A^{-1}$。

> **注**：逆矩阵的唯一性：若 $AB = I$ 且 $CA = I$，则 $C = C(AB) = (CA)B = B$。

<!-- invertibility_criteria -->
> [!Theorem]
> **可逆性的等价条件**：对 $n$ 阶方阵 $A$，以下条件等价：
> 1. $A$ 可逆；
> 2. $\det(A) \neq 0$；
> 3. $\mathrm{rank}(A) = n$；
> 4. $A$ 的列向量组线性无关；
> 5. $A$ 的行向量组线性无关；
> 6. 齐次方程组 $Ax = \mathbf{0}$ 只有零解；
> 7. 对任意 $b \in F^n$，方程组 $Ax = b$ 有唯一解。

> **证明思路**：$1 \Leftrightarrow 2$ 由行列式与可逆性的关系；$2 \Leftrightarrow 3$ 通过初等变换化行阶梯形；$3 \Leftrightarrow 4 \Leftrightarrow 5$ 由秩的定义；$3 \Leftrightarrow 6 \Leftrightarrow 7$ 由线性方程组的解的结构。

<!-- adjugate_matrix_definition -->
> [!Definition]
> **伴随矩阵 Adjugate Matrix**（经典伴随）：设 $A \in M_n(F)$，$C_{ij}$ 为 $A$ 的第 $(i,j)$ 代数余子式，定义 $A$ 的**伴随矩阵**为
> $$
> \mathrm{adj}(A) = (C_{ji})_{n \times n},
> $$
> 即 $\mathrm{adj}(A)$ 的第 $(i,j)$ 位元素为 $C_{ji}$（将代数余子式矩阵转置）。

<!-- adjugate_formula -->
> [!Theorem]
> **伴随矩阵公式**：对任意 $A \in M_n(F)$，有
> $$
> A \cdot \mathrm{adj}(A) = \mathrm{adj}(A) \cdot A = \det(A)\, I_n.
> $$
> 当 $A$ 可逆时，$A^{-1} = \dfrac{1}{\det(A)} \mathrm{adj}(A)$。

> **证明思路**：$(A \cdot \mathrm{adj}(A))_{ij} = \sum_k a_{ik} C_{jk}$，当 $i = j$ 时为 $\det(A)$（按第 $j$ 行展开），当 $i \neq j$ 时为零（异行展开，相当于将矩阵的第 $j$ 行替换为第 $i$ 行后求行列式，两行相同故为零）。

<!-- inverse_properties -->
> [!Theorem]
> **逆矩阵的运算性质**：设 $A, B \in M_n(F)$ 均可逆，$\lambda \in F \setminus \{0\}$，则：
> 1. $A^{-1}$ 可逆，且 $(A^{-1})^{-1} = A$；
> 2. $AB$ 可逆，且 $(AB)^{-1} = B^{-1} A^{-1}$；
> 3. $\lambda A$ 可逆，且 $(\lambda A)^{-1} = \lambda^{-1} A^{-1}$；
> 4. $A^T$ 可逆，且 $(A^T)^{-1} = (A^{-1})^T$；
> 5. $\det(A^{-1}) = (\det A)^{-1}$。

> **证明思路**：逐条直接验证可逆性定义。以性质 2 为例：$(AB)(B^{-1}A^{-1}) = A(BB^{-1})A^{-1} = AA^{-1} = I_n$，同理另一侧为 $I_n$。
