---
title: QR 分解
tags:
  - linear_algebra
  - linear_equation
---

# QR 分解

<!-- qr_decomposition_definition -->
> [!Definition]
> **QR 分解 QR Decomposition**：对矩阵 $A\in M_{m\times n}(F)$（通常 $m\ge n$），若可写成
> $$
> A=QR,
> $$
> 其中 $Q$ 的列向量正交归一（实情形为正交列，复情形为酉列），$R$ 为上三角（或上梯形）矩阵，则称为 $A$ 的 QR 分解。

<!-- qr_existence_theorem -->
> [!Theorem]
> **存在性**：若 $A$ 的列向量线性无关，则存在 QR 分解，其中 $Q\in M_{m\times n}(F)$ 满足 $Q^*Q=I_n$，$R\in M_n(F)$ 为上三角且对角元非零。

> **证明思路**：对 $A$ 的列向量组施行 Gram-Schmidt 正交化得到标准正交组 $q_1,\ldots,q_n$，令 $Q=(q_1,\ldots,q_n)$，再由 $a_j$ 在该组下展开的系数构成上三角矩阵 $R$，即得 $A=QR$。

<!-- qr_uniqueness_theorem -->
> [!Theorem]
> **规范化唯一性**：若 $A$ 可逆且要求 $R$ 对角元全为正，则分解 $A=QR$ 唯一。

> **证明思路**：若 $A=Q_1R_1=Q_2R_2$，则 $Q_2^*Q_1=R_2R_1^{-1}$。左侧为酉矩阵，右侧为上三角矩阵。满足对角元正的条件下，只能是单位矩阵，故 $Q_1=Q_2, R_1=R_2$。

<!-- qr_least_squares_application -->
> [!Corollary]
> **最小二乘应用**：超定方程组 $Ax\approx b$ 的最小二乘解可通过 QR 分解求得。若 $A=QR$ 且列满秩，则最小化
> $$
> \|Ax-b\|_2
> $$
> 等价于解上三角方程
> $$
> Rx=Q^*b.
> $$
