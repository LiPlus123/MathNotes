---
title: LU 分解
tags:
  - linear_algebra
  - linear_equation
---

# LU 分解

<!-- lu_decomposition_definition -->
> [!Definition]
> **LU 分解 LU Decomposition**：设 $A\in M_n(F)$。若存在下三角矩阵 $L$（通常取单位下三角）与上三角矩阵 $U$，使
> $$
> A=LU,
> $$
> 则称 $A$ 存在 LU 分解。

<!-- lu_existence_without_pivoting -->
> [!Theorem]
> **无主元交换时的存在条件**：若 $A$ 的各阶顺序主子式均非零，则可以在不进行行交换的情况下完成消元，从而得到分解 $A=LU$（其中 $L$ 为单位下三角，$U$ 为上三角）。

> **证明思路**：顺序主子式非零保证每一步消元主元非零，故可逐步构造消元乘子并写入 $L$，消元结果即为 $U$。

<!-- plu_decomposition_theorem -->
> [!Theorem]
> **带置换的 LU 分解（PLU）**：对任意可进行部分主元消元的方阵 $A$，存在置换矩阵 $P$ 使得
> $$
> PA=LU,
> $$
> 其中 $L$ 为单位下三角矩阵，$U$ 为上三角矩阵。

> **证明思路**：把消元中的每次行交换累积成置换矩阵 $P$，其余消元步骤累积为单位下三角因子，最终得到 $PA$ 的上三角形式。

<!-- lu_for_solving_linear_system -->
> [!Corollary]
> **用于解线性方程组**：若 $A=LU$，则求解 $Ax=b$ 可分两步：先解前代方程
> $$
> Ly=b,
> $$
> 再解回代方程
> $$
> Ux=y.
> $$
> 若是 $PA=LU$，则先解 $Ly=Pb$，再解 $Ux=y$。
