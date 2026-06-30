---
title: 惯性定理与惯性指数
tags:
  - linear_algebra
  - quadratic_form
---

# 惯性定理与惯性指数

<!-- inertia_index_definition -->
> [!Definition]
> **惯性指数 Index of Inertia**：设 $q$ 是秩为 $r$ 的实二次型，其规范形为
> $$
> q = \eta_1^2 + \cdots + \eta_p^2 - \eta_{p+1}^2 - \cdots - \eta_{p+q_0}^2,
> $$
> 其中 $p + q_0 = r$。称：
> - $p$ 为 $q$ 的**正惯性指数**（positive index of inertia）；
> - $q_0$ 为 $q$ 的**负惯性指数**（negative index of inertia）；
> - $(p, q_0)$ 为 $q$ 的**惯性指标**（signature）。

> **注**：惯性指数与标准形的选取无关（由惯性定理保证），是二次型的内在不变量。对于二次型的对称矩阵 $A$，$p$ 等于 $A$ 的正特征值个数（计重数），$q_0$ 等于负特征值个数（计重数）。

<!-- sylvester_law_of_inertia -->
> [!Theorem]
> **Sylvester 惯性定理 Sylvester's Law of Inertia**：设 $q$ 是实二次型。对 $q$ 的任意一个标准形
> $$
> q = d_1 \eta_1^2 + d_2 \eta_2^2 + \cdots + d_n \eta_n^2, \quad d_i \in \mathbb{R},
> $$
> 正系数 $d_i > 0$ 的个数 $p$ 与负系数 $d_i < 0$ 的个数 $q_0$ 均为不变量，与标准形的选取方式无关。
>
> **证明思路**：设两个非奇异变换分别给出标准形，正系数个数分别为 $p$ 和 $p'$。假设 $p \neq p'$，不妨设 $p > p'$。构造一个 $p + (n - p') = n - p' + p > n$ 维子空间，其中各向量在第一标准形下取值 $\geq 0$，在第二标准形下取值 $\leq 0$；由维数计数，两个子空间必有非零交向量，该向量满足 $q(x) > 0$ 和 $q(x) \leq 0$，矛盾。

<!-- inertia_and_congruence -->
> [!Corollary]
> **实对称矩阵合同的充要条件 Congruence Criterion via Inertia**：两个实对称矩阵 $A$ 与 $B$ 合同，当且仅当它们有相同的秩和相同的正惯性指数（等价地，相同的正惯性指数和负惯性指数）。
>
> **证明思路**：充分性：若 $A$、$B$ 有相同的惯性指标，则它们合同于同一规范形，从而彼此合同。必要性：合同变换保持秩（见矩阵合同性质），且由惯性定理，合同不改变惯性指数。

<!-- inertia_and_definiteness -->
> [!Theorem]
> **惯性指数与正定性的关系 Inertia and Definiteness**：设实对称矩阵 $A \in M_n(\mathbb{R})$ 的正惯性指数为 $p$，负惯性指数为 $q_0$，秩为 $r = p + q_0$，则：
> 1. $A \succ 0 \iff p = n$（即 $q_0 = 0$，$r = n$）；
> 2. $A \succeq 0 \iff q_0 = 0$（即 $p = r \leq n$）；
> 3. $A \prec 0 \iff q_0 = n$（即 $p = 0$，$r = n$）；
> 4. $A \preceq 0 \iff p = 0$（即 $q_0 = r \leq n$）；
> 5. $A$ 不定 $\iff p > 0$ 且 $q_0 > 0$。
>
> **证明思路**：由正交对角化，$x^T A x = \sum_i \lambda_i y_i^2$（$y = Q^T x$），其中 $\lambda_i$ 为特征值。正惯性指数 $p$ 恰好等于正特征值的个数，负惯性指数 $q_0$ 等于负特征值的个数，由此各条件与正定性定义等价。

<!-- inertia_example -->
> [!Example]+
> **惯性指数例子 Example: Inertia Indices**：设实二次型的标准形为
> $$
> q = 3\eta_1^2 - \eta_2^2 + 2\eta_3^2 - 5\eta_4^2.
> $$
> 正惯性指数 $p = 2$（系数 $3, 2 > 0$），负惯性指数 $q_0 = 2$（系数 $-1, -5 < 0$），秩 $r = 4 = n$。由于 $p > 0$ 且 $q_0 > 0$，该二次型为不定二次型。

> **注**：若将上例第二项改为 $+\eta_2^2$，即 $q = 3\eta_1^2 + \eta_2^2 + 2\eta_3^2 + 5\eta_4^2$，则 $p = 4 = n$，$q_0 = 0$，该二次型正定。
