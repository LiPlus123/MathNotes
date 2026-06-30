---
title: 二次型的定义
tags:
  - linear_algebra
  - quadratic_form
---

# 二次型的定义

<!-- quadratic_form_definition -->
> [!Definition]
> **二次型 Quadratic Form**：设 $V$ 是域 $F$ 上的 $n$ 维线性空间，$B: V \times V \to F$ 是对称双线性型。由 $B$ 诱导的映射 $q: V \to F$，
> $$
> q(x) = B(x, x),
> $$
> 称为 $V$ 上的**二次型**（quadratic form）。

> **注**：在 $\mathbb{R}^n$ 上，二次型通常直接写成坐标的二次齐次多项式形式。

<!-- quadratic_form_coordinate_expression -->
> [!Proposition]
> **二次型的坐标表达式 Coordinate Expression of Quadratic Form**：设 $\mathcal{B} = (e_1, \ldots, e_n)$ 是 $V$ 的有序基，$B$ 在 $\mathcal{B}$ 下的矩阵为对称矩阵 $A = (a_{ij}) \in M_n(F)$，$x$ 的坐标为 $\boldsymbol{\xi} = (\xi_1, \ldots, \xi_n)^T$，则
> $$
> q(x) = \boldsymbol{\xi}^T A \boldsymbol{\xi} = \sum_{i=1}^n \sum_{j=1}^n a_{ij} \xi_i \xi_j.
> $$
> 展开为显式形式：
> $$
> q(x) = \sum_{i=1}^n a_{ii} \xi_i^2 + 2\sum_{1 \leq i < j \leq n} a_{ij} \xi_i \xi_j.
> $$
>
> **证明思路**：由 $q(x) = B(x,x) = \boldsymbol{\xi}^T A \boldsymbol{\xi}$ 展开求和得到；系数 $2a_{ij}$（$i < j$）来自 $a_{ij} + a_{ji} = 2a_{ij}$（对称性）。

<!-- quadratic_form_symmetric_matrix_correspondence -->
> [!Theorem]
> **二次型与对称矩阵的一一对应 Correspondence Between Quadratic Forms and Symmetric Matrices**：在给定基 $\mathcal{B}$ 下，$n$ 维线性空间上的二次型与 $n$ 阶对称矩阵之间存在一一对应。具体地：
> - 每个二次型 $q$ 唯一对应一个对称矩阵 $A$（满足 $q(x) = \boldsymbol{\xi}^T A \boldsymbol{\xi}$）；
> - 每个对称矩阵 $A$ 唯一确定一个二次型 $q(x) = \boldsymbol{\xi}^T A \boldsymbol{\xi}$。
>
> **证明思路**：给定二次型 $q$，令 $a_{ij} = \dfrac{1}{2}\bigl(q(e_i + e_j) - q(e_i) - q(e_j)\bigr)$（$i \neq j$），$a_{ii} = q(e_i)$，则 $A = (a_{ij})$ 是对称矩阵，且 $q(x) = \boldsymbol{\xi}^T A \boldsymbol{\xi}$。唯一性由展开的线性无关性保证。

> **注**：矩阵 $A$ 称为二次型 $q$ 的**矩阵**（matrix of the quadratic form）。由于 $A$ 是对称矩阵，对任意二次齐次多项式，总可以通过令交叉项系数取平均来唯一确定对称矩阵。

<!-- quadratic_form_example -->
> [!Example]+
> **三元实二次型 Three-Variable Real Quadratic Form**：设二次型
> $$
> q(\xi_1, \xi_2, \xi_3) = \xi_1^2 + 2\xi_2^2 + 3\xi_3^2 + 2\xi_1\xi_2 - 4\xi_1\xi_3,
> $$
> 则其对应的对称矩阵为
> $$
> A =
> \begin{pmatrix}
> 1 & 1 & -2 \\
> 1 & 2 & 0 \\
> -2 & 0 & 3
> \end{pmatrix}.
> $$
> 交叉项系数 $2a_{ij}$ 对应原多项式中 $\xi_i\xi_j$ 的系数，故 $a_{ij} = a_{ji}$ 为其一半。
