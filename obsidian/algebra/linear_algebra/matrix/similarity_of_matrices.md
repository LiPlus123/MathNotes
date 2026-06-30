---
title: 矩阵的相似
tags:
  - linear_algebra
  - matrix
---

# 矩阵的相似

<!-- similar_matrices_definition -->
> [!Definition]
> **相似矩阵 Similar Matrices**：设 $A, B \in M_n(F)$，若存在可逆矩阵 $P \in M_n(F)$ 使得
> $$
> B = P^{-1} A P,
> $$
> 则称 $A$ 与 $B$ **相似**，记作 $A \sim B$，$P$ 称为**相似变换矩阵**。

<!-- similarity_equivalence_relation -->
> [!Theorem]
> **相似是等价关系**：$M_n(F)$ 上的相似关系是等价关系，即满足：
> 1. **自反性**：$A \sim A$（取 $P = I_n$）；
> 2. **对称性**：若 $A \sim B$，则 $B \sim A$（取 $P^{-1}$ 代替 $P$）；
> 3. **传递性**：若 $A \sim B$ 且 $B \sim C$，则 $A \sim C$（取 $P_1 P_2$）。

> **证明思路**：自反性和对称性显然。传递性：设 $B = P_1^{-1} A P_1$，$C = P_2^{-1} B P_2$，则 $C = P_2^{-1} P_1^{-1} A P_1 P_2 = (P_1 P_2)^{-1} A (P_1 P_2)$。

<!-- similarity_invariants -->
> [!Theorem]
> **相似不变量**：若 $A \sim B$（即 $B = P^{-1}AP$），则：
> 1. $\det(B) = \det(A)$；
> 2. $\mathrm{tr}(B) = \mathrm{tr}(A)$；
> 3. $\mathrm{rank}(B) = \mathrm{rank}(A)$；
> 4. $A$ 与 $B$ 有相同的特征多项式，从而有相同的特征值（含代数重数）。

> **证明思路**：
> - 行列式：$\det(B) = \det(P^{-1})\det(A)\det(P) = \det(A)$；
> - 迹：由迹的循环性质 $\mathrm{tr}(P^{-1}AP) = \mathrm{tr}(APP^{-1}) = \mathrm{tr}(A)$；
> - 秩：可逆矩阵乘法不改变秩；
> - 特征多项式：$\det(\lambda I - B) = \det(\lambda I - P^{-1}AP) = \det(P^{-1}(\lambda I - A)P) = \det(\lambda I - A)$。

> **注**：以上不变量均为**相似不变量**，即在相似变换下保持不变。但相似不变量相同并不意味着矩阵相似（如单位矩阵与非单位对角矩阵可能有相同的迹和行列式）。
