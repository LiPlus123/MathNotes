---
title: 双线性型
tags:
  - linear_algebra
  - quadratic_form
---

# 双线性型

<!-- bilinear_form_definition -->
> [!Definition]
> **双线性型 Bilinear Form**：设 $V$ 是域 $F$ 上的线性空间。映射 $B: V \times V \to F$ 称为 $V$ 上的**双线性型**（bilinear form），若对任意 $x, y, z \in V$ 及 $\alpha \in F$，满足：
> 1. **左线性**：$B(x + y, z) = B(x, z) + B(y, z)$，$B(\alpha x, z) = \alpha B(x, z)$；
> 2. **右线性**：$B(x, y + z) = B(x, y) + B(x, z)$，$B(x, \alpha y) = \alpha B(x, y)$。

> **注**：双线性型是对每个变量均线性的二元函数。若 $F = \mathbb{R}$，则称为**实双线性型**；若 $F = \mathbb{C}$，则称为**复双线性型**。

<!-- bilinear_form_matrix -->
> [!Definition]
> **双线性型的矩阵 Matrix of a Bilinear Form**：设 $V$ 是 $F$ 上 $n$ 维线性空间，$\mathcal{B} = (e_1, e_2, \ldots, e_n)$ 是 $V$ 的一组有序基，$B$ 是 $V$ 上的双线性型。矩阵
> $$
> A = (B(e_i, e_j))_{1 \leq i,j \leq n} \in M_n(F)
> $$
> 称为双线性型 $B$ 在基 $\mathcal{B}$ 下的**矩阵**（matrix of $B$ w.r.t. $\mathcal{B}$）。
>
> 设 $x = \sum_i \xi_i e_i$，$y = \sum_j \eta_j e_j$，坐标列向量分别为 $\boldsymbol{\xi} = (\xi_1, \ldots, \xi_n)^T$，$\boldsymbol{\eta} = (\eta_1, \ldots, \eta_n)^T$，则
> $$
> B(x, y) = \boldsymbol{\xi}^T A \boldsymbol{\eta}.
> $$

> **注**：双线性型与矩阵之间存在一一对应：每个双线性型在给定基下唯一确定一个矩阵，反之每个矩阵也确定一个双线性型。

<!-- bilinear_form_basis_change -->
> [!Theorem]
> **双线性型矩阵的基变换 Basis Change of Bilinear Form Matrix**：设 $B$ 是 $V$ 上的双线性型，在基 $\mathcal{B}$ 下的矩阵为 $A$，从基 $\mathcal{B}$ 到基 $\mathcal{B}'$ 的过渡矩阵为 $P$，则 $B$ 在基 $\mathcal{B}'$ 下的矩阵为
> $$
> A' = P^T A P.
> $$
>
> **证明思路**：设 $x$ 在基 $\mathcal{B}$ 下坐标为 $\boldsymbol{\xi}$，在基 $\mathcal{B}'$ 下坐标为 $\boldsymbol{\xi}'$，则 $\boldsymbol{\xi} = P\boldsymbol{\xi}'$。代入 $B(x,y) = \boldsymbol{\xi}^T A \boldsymbol{\eta}$ 即得 $B(x,y) = (\boldsymbol{\xi}')^T (P^T A P) \boldsymbol{\eta}'$。

<!-- symmetric_bilinear_form -->
> [!Definition]
> **对称双线性型与反对称双线性型 Symmetric and Skew-Symmetric Bilinear Forms**：设 $B$ 是 $V$ 上的双线性型。
> - 若对任意 $x, y \in V$ 有 $B(x, y) = B(y, x)$，则称 $B$ 为**对称双线性型**（symmetric bilinear form）；其对应矩阵满足 $A^T = A$。
> - 若对任意 $x, y \in V$ 有 $B(x, y) = -B(y, x)$，则称 $B$ 为**反对称双线性型**（skew-symmetric bilinear form）；其对应矩阵满足 $A^T = -A$。

> **注**：对称双线性型是二次型理论的基础；实对称双线性型也常称为**实内积形式**（在不要求正定时）。
