---
title: 矩阵的迹
tags:
  - linear_algebra
  - matrix
---

# 矩阵的迹

<!-- matrix_trace_definition -->
> [!Definition]
> **矩阵的迹 Matrix Trace**：设 $A = (a_{ij}) \in M_n(F)$ 是 $n$ 阶方阵，定义 $A$ 的**迹**为其主对角线元素之和：
> $$
> \mathrm{tr}(A) = \sum_{i=1}^{n} a_{ii} = a_{11} + a_{22} + \cdots + a_{nn}.
> $$

<!-- trace_linearity -->
> [!Theorem]
> **迹的线性性**：对任意 $A, B \in M_n(F)$ 和 $\lambda \in F$，有
> $$
> \mathrm{tr}(A + B) = \mathrm{tr}(A) + \mathrm{tr}(B), \quad \mathrm{tr}(\lambda A) = \lambda\, \mathrm{tr}(A).
> $$

> **证明思路**：直接由定义，$\mathrm{tr}(A+B) = \sum_i (a_{ii} + b_{ii}) = \sum_i a_{ii} + \sum_i b_{ii} = \mathrm{tr}(A) + \mathrm{tr}(B)$。

<!-- trace_cyclic_property -->
> [!Theorem]
> **迹的循环性质**：对任意 $A \in M_{m \times n}(F)$，$B \in M_{n \times m}(F)$，有
> $$
> \mathrm{tr}(AB) = \mathrm{tr}(BA).
> $$

> **证明思路**：
> $$
> \mathrm{tr}(AB) = \sum_{i=1}^m \sum_{k=1}^n a_{ik} b_{ki} = \sum_{k=1}^n \sum_{i=1}^m b_{ki} a_{ik} = \mathrm{tr}(BA).
> $$

<!-- trace_transpose_invariance -->
> [!Corollary]
> **转置不改变迹**：对任意 $A \in M_n(F)$，有 $\mathrm{tr}(A^T) = \mathrm{tr}(A)$。

> **证明思路**：$(A^T)_{ii} = a_{ii}$，故 $\mathrm{tr}(A^T) = \sum_i a_{ii} = \mathrm{tr}(A)$。

<!-- trace_similarity_invariance -->
> [!Corollary]
> **迹是相似不变量**：若 $B = P^{-1}AP$，则 $\mathrm{tr}(B) = \mathrm{tr}(A)$。

> **证明思路**：由迹的循环性质，$\mathrm{tr}(P^{-1}AP) = \mathrm{tr}(APP^{-1}) = \mathrm{tr}(A)$。
