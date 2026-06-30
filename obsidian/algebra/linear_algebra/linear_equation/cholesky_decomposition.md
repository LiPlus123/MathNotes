---
title: Cholesky 分解
tags:
  - linear_algebra
  - linear_equation
---

# Cholesky 分解

<!-- cholesky_decomposition_theorem -->
> [!Theorem]
> **Cholesky 分解 Cholesky Decomposition**：设 $A\in M_n(\mathbb{R})$ 为实对称正定矩阵，则存在唯一的下三角矩阵 $L$（对角元全为正）使得
> $$
> A=LL^T.
> $$
> 在复数情形，若 $A$ 为厄米正定矩阵，则存在唯一下三角矩阵 $L$（对角元取正实数）使得
> $$
> A=LL^*.
> $$

> **证明思路**：按列递推构造 $L$。正定性保证递推中出现的对角项为正，从而可开平方并继续进行；唯一性来自下三角结构与对角元正性的逐项比较。

<!-- cholesky_entry_formula -->
> [!Theorem]
> **递推计算公式**：对 $A=LL^T$（实情形），元素可按
> $$
> l_{ii}=\sqrt{a_{ii}-\sum_{k=1}^{i-1}l_{ik}^2},
> $$
> $$
> l_{ji}=\frac{1}{l_{ii}}\left(a_{ji}-\sum_{k=1}^{i-1}l_{jk}l_{ik}\right),\quad j>i
> $$
> 依次计算。

<!-- cholesky_linear_system -->
> [!Corollary]
> **正定方程组求解**：若 $A=LL^T$，则 $Ax=b$ 可写为
> $$
> LL^Tx=b,
> $$
> 先解 $Ly=b$，再解 $L^Tx=y$，数值上稳定且效率高。
