---
title: 置换矩阵
tags:
  - linear_algebra
  - linear_equation
---

# 置换矩阵

<!-- permutation_matrix_definition -->
> [!Definition]
> **置换矩阵 Permutation Matrix**：由单位矩阵 $I_n$ 经过若干次行交换得到的 $n$ 阶矩阵称为置换矩阵。等价地，每行每列恰有一个元素为 $1$，其余为 $0$ 的方阵即置换矩阵。

<!-- permutation_matrix_and_permutation -->
> [!Definition]
> **置换与置换矩阵的对应**：给定置换 $\sigma\in S_n$，定义矩阵 $P_\sigma=(p_{ij})$ 为
> $$
> p_{ij}=\begin{cases}
> 1,& j=\sigma(i),\\
> 0,& j\neq\sigma(i).
> \end{cases}
> $$
> 则 $P_\sigma$ 为置换矩阵，且任一置换矩阵都可唯一写成某个 $P_\sigma$。

<!-- permutation_matrix_properties -->
> [!Theorem]
> **置换矩阵的基本性质**：对任意置换矩阵 $P$，有：
> 1. $P^{-1}=P^T$；
> 2. $P$ 可逆且 $P^TP=PP^T=I_n$；
> 3. $\det(P)=\pm 1$，且 $\det(P)=\mathrm{sgn}(\sigma)$（若 $P=P_\sigma$）。

> **证明思路**：置换矩阵的列（行）是标准基向量的重排，因此两两正交且范数为 $1$，得 $P^{-1}=P^T$。行交换一次行列式变号，故总体符号与置换奇偶性一致。

<!-- permutation_matrix_action -->
> [!Theorem]
> **左乘与右乘的作用**：设 $A\in M_{m\times n}(F)$，则：
> - 左乘适当维度的置换矩阵实现行置换；
> - 右乘适当维度的置换矩阵实现列置换。

> **注**：在带主元选取的消元与 LU 分解中，常写作 $PA=LU$，其中 $P$ 记录行交换。
