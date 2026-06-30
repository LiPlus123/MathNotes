---
title: 坐标变换
tags:
  - linear_algebra
  - matrix
---

# 坐标变换

<!-- transition_matrix_definition -->
> [!Definition]
> **过渡矩阵 Transition Matrix**：设 $V$ 是数域 $F$ 上的 $n$ 维线性空间，$\mathcal{B} = (e_1, \ldots, e_n)$ 和 $\mathcal{B}' = (e_1', \ldots, e_n')$ 是 $V$ 的两组有序基，将每个新基向量用旧基表示：
> $$
> e_j' = \sum_{i=1}^n p_{ij} e_i, \quad j = 1, \ldots, n,
> $$
> 称矩阵 $P = (p_{ij}) \in M_n(F)$ 为从基 $\mathcal{B}$ 到基 $\mathcal{B}'$ 的**过渡矩阵**，等价地记作
> $$
> (e_1', \ldots, e_n') = (e_1, \ldots, e_n)\, P.
> $$

> **注**：过渡矩阵 $P$ 必为可逆矩阵（因为 $\mathcal{B}'$ 也是 $V$ 的基），其第 $j$ 列是新基向量 $e_j'$ 在旧基 $\mathcal{B}$ 下的坐标列向量。

<!-- coordinate_transformation_formula -->
> [!Theorem]
> **坐标变换公式**：设 $P$ 是从基 $\mathcal{B}$ 到基 $\mathcal{B}'$ 的过渡矩阵，向量 $v \in V$ 在 $\mathcal{B}$ 下的坐标为列向量 $\xi$，在 $\mathcal{B}'$ 下的坐标为列向量 $\xi'$，则
> $$
> \xi = P\, \xi', \quad \text{即} \quad \xi' = P^{-1} \xi.
> $$

> **证明思路**：$v = \sum_j \xi_j' e_j' = \sum_j \xi_j' \sum_i p_{ij} e_i = \sum_i \left(\sum_j p_{ij} \xi_j'\right) e_i$，由坐标唯一性，$\xi_i = \sum_j p_{ij} \xi_j'$，即 $\xi = P\xi'$。

<!-- transition_matrix_composition -->
> [!Theorem]
> **过渡矩阵的复合**：设 $P_1$ 是从基 $\mathcal{B}$ 到 $\mathcal{B}'$ 的过渡矩阵，$P_2$ 是从基 $\mathcal{B}'$ 到 $\mathcal{B}''$ 的过渡矩阵，则从基 $\mathcal{B}$ 到 $\mathcal{B}''$ 的过渡矩阵为 $P_1 P_2$。

> **证明思路**：$(e_1'', \ldots, e_n'') = (e_1', \ldots, e_n') P_2 = (e_1, \ldots, e_n) P_1 P_2$。

<!-- operator_matrix_basis_change -->
> [!Theorem]
> **基变换下线性算子矩阵的变换**：设 $T: V \to V$ 是线性变换，$\mathcal{B}$ 和 $\mathcal{B}'$ 是 $V$ 的两组有序基，$P$ 是从 $\mathcal{B}$ 到 $\mathcal{B}'$ 的过渡矩阵，$A = [T]_{\mathcal{B}}$ 是 $T$ 在旧基下的矩阵，$A' = [T]_{\mathcal{B}'}$ 是 $T$ 在新基下的矩阵，则
> $$
> A' = P^{-1} A P.
> $$

> **证明思路**：对任意 $v \in V$，设其在 $\mathcal{B}'$ 下坐标为 $\xi'$，则在 $\mathcal{B}$ 下坐标为 $P\xi'$，$T(v)$ 在 $\mathcal{B}$ 下坐标为 $AP\xi'$，对应在 $\mathcal{B}'$ 下的坐标为 $P^{-1}AP\xi'$，故 $A' = P^{-1}AP$。
