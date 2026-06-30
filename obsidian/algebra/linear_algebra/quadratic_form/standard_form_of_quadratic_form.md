---
title: 二次型的标准形
tags:
  - linear_algebra
  - quadratic_form
---

# 二次型的标准形

<!-- quadratic_form_standard_form_definition -->
> [!Definition]
> **二次型的标准形 Standard Form of Quadratic Form**：若二次型 $q$ 在某组基下可以表示为只含平方项（无交叉项）的形式
> $$
> q = d_1 \eta_1^2 + d_2 \eta_2^2 + \cdots + d_n \eta_n^2, \quad d_i \in F,
> $$
> 则称此表达式为 $q$ 的一个**标准形**（standard form），对应矩阵为对角矩阵 $\mathrm{diag}(d_1, \ldots, d_n)$。

> **注**：标准形不唯一，同一个二次型通过不同的非奇异坐标变换可以得到不同的标准形。但在实数域上，标准形中正系数、负系数和零系数的个数是不变量（见惯性定理）。

<!-- quadratic_form_diagonalization_theorem -->
> [!Theorem]
> **二次型化标准形定理 Reduction to Standard Form**：实数域（或复数域）上的任意二次型均可通过非奇异线性变换化为标准形。等价地，任意实（复）对称矩阵均合同于对角矩阵。
>
> **证明思路**：对实对称矩阵 $A$，由正交对角化定理，存在正交矩阵 $Q$ 使 $Q^T A Q = \Lambda = \mathrm{diag}(\lambda_1, \ldots, \lambda_n)$，其中 $\lambda_i$ 为 $A$ 的特征值。令 $\boldsymbol{\xi} = Q \boldsymbol{\eta}$，则 $q = \boldsymbol{\eta}^T \Lambda \boldsymbol{\eta} = \sum_i \lambda_i \eta_i^2$，即为标准形。也可用配方法（不限于正交变换）归纳化为标准形。

<!-- completing_square_method -->
> [!Proposition]
> **配方法化标准形 Completing the Square**：设二次型 $q = \boldsymbol{\xi}^T A \boldsymbol{\xi}$，可用如下步骤化为标准形：
> 1. 若 $a_{11} \neq 0$，将含 $\xi_1$ 的各项归并并配方，得到一个完全平方项；
> 2. 剩余部分是关于 $\xi_2, \ldots, \xi_n$ 的二次型，对其递归应用上述步骤；
> 3. 若所有对角元为零但存在 $a_{ij} \neq 0$（$i \neq j$），先作变量替换 $\xi_i = \eta_i + \eta_j$，$\xi_j = \eta_i - \eta_j$，使得出现非零对角元，再继续配方。
>
> **证明思路**：每次配方后，余下二次型的变量数严格减少，有限步必终止，最终得到标准形。

<!-- quadratic_form_canonical_form_definition -->
> [!Definition]
> **二次型的规范形 Canonical Form of Quadratic Form**：设 $q$ 是实二次型，若经过非奇异实坐标变换化得的标准形中所有系数均属于 $\{-1, 0, 1\}$，即
> $$
> q = \eta_1^2 + \cdots + \eta_p^2 - \eta_{p+1}^2 - \cdots - \eta_{p+q}^2,
> $$
> 其中 $p + q \leq n$，则称此式为 $q$ 的**规范形**（canonical form）。其中 $p$ 为正项个数（正惯性指数），$q$ 为负项个数（负惯性指数），$p + q = r = \mathrm{rank}(A)$。

> **注**：规范形是标准形的特殊情形：在标准形 $\sum_i d_i \eta_i^2$ 中，对 $d_i > 0$ 令 $\zeta_i = \sqrt{d_i}\,\eta_i$，对 $d_i < 0$ 令 $\zeta_i = \sqrt{-d_i}\,\eta_i$，对 $d_i = 0$ 令 $\zeta_i = \eta_i$，即可将任意标准形进一步化为规范形。

<!-- canonical_standard_relation -->
> [!Theorem]
> **规范形与标准形的关系 Relation Between Canonical and Standard Forms**：
> 1. 任意实二次型的规范形存在；
> 2. 规范形由 $q$ 唯一确定（由惯性定理保证）；
> 3. 标准形不唯一，但任意两个标准形中正系数的个数相等，负系数的个数相等。
>
> **证明思路**：存在性由化标准形定理与上述缩放变量得到。唯一性即为 Sylvester 惯性定理的内容。

<!-- standard_form_example -->
> [!Example]+
> **配方法化标准形例子 Example: Reduction via Completing the Square**：设二次型
> $$
> q(\xi_1, \xi_2, \xi_3) = \xi_1^2 + 2\xi_1\xi_2 - 2\xi_1\xi_3 + \xi_3^2.
> $$
> 第一步，对含 $\xi_1$ 的项配方：
> $$
> q = (\xi_1 + \xi_2 - \xi_3)^2 - \xi_2^2 + 2\xi_2\xi_3.
> $$
> 令 $\eta_1 = \xi_1 + \xi_2 - \xi_3$，对剩余部分 $-\xi_2^2 + 2\xi_2\xi_3$ 继续配方：
> $$
> -\xi_2^2 + 2\xi_2\xi_3 = -(\xi_2 - \xi_3)^2 + \xi_3^2.
> $$
> 令 $\eta_2 = \xi_2 - \xi_3$，$\eta_3 = \xi_3$，则
> $$
> q = \eta_1^2 - \eta_2^2 + \eta_3^2.
> $$
> 这已是规范形，正惯性指数 $p = 2$，负惯性指数 $q = 1$。
