---
title: 实对称矩阵的分类
tags:
  - linear_algebra
  - quadratic_form
---

# 实对称矩阵的分类

<!-- positive_definite_matrix_definition -->
> [!Definition]
> **正定矩阵 Positive Definite Matrix**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵。若对任意非零向量 $x \in \mathbb{R}^n$，均有
> $$
> x^T A x > 0,
> $$
> 则称 $A$ 为**正定矩阵**（positive definite matrix），记作 $A \succ 0$。对应的二次型 $q(x) = x^T A x$ 称为**正定二次型**。

<!-- positive_semidefinite_matrix_definition -->
> [!Definition]
> **半正定矩阵（非负定矩阵） Positive Semidefinite Matrix**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵。若对任意 $x \in \mathbb{R}^n$，均有
> $$
> x^T A x \geq 0,
> $$
> 则称 $A$ 为**半正定矩阵**（positive semidefinite matrix），也称**非负定矩阵**（nonnegative definite matrix），记作 $A \succeq 0$。

> **注**：正定矩阵是半正定矩阵的特例：$A \succ 0$ 当且仅当 $A \succeq 0$ 且 $\ker A = \{\mathbf{0}\}$（即 $A$ 可逆）。

<!-- negative_definite_matrix_definition -->
> [!Definition]
> **负定矩阵 Negative Definite Matrix**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵。若对任意非零向量 $x \in \mathbb{R}^n$，均有
> $$
> x^T A x < 0,
> $$
> 则称 $A$ 为**负定矩阵**（negative definite matrix），记作 $A \prec 0$。

<!-- negative_semidefinite_matrix_definition -->
> [!Definition]
> **半负定矩阵（非正定矩阵） Negative Semidefinite Matrix**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵。若对任意 $x \in \mathbb{R}^n$，均有
> $$
> x^T A x \leq 0,
> $$
> 则称 $A$ 为**半负定矩阵**（negative semidefinite matrix），也称**非正定矩阵**（nonpositive definite matrix），记作 $A \preceq 0$。

<!-- indefinite_matrix_definition -->
> [!Definition]
> **不定矩阵 Indefinite Matrix**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵。若存在 $x, y \in \mathbb{R}^n$ 使得
> $$
> x^T A x > 0 \quad \text{且} \quad y^T A y < 0,
> $$
> 则称 $A$ 为**不定矩阵**（indefinite matrix）。

> **注**：$A \prec 0 \iff -A \succ 0$，$A \preceq 0 \iff -A \succeq 0$。实对称矩阵必属于以上五类之一。

<!-- definiteness_eigenvalue_criterion -->
> [!Theorem]
> **正定性的特征值判据 Eigenvalue Criterion for Definiteness**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵，其特征值为 $\lambda_1, \ldots, \lambda_n \in \mathbb{R}$，则：
> 1. $A \succ 0 \iff \lambda_i > 0$，$\forall i$；
> 2. $A \succeq 0 \iff \lambda_i \geq 0$，$\forall i$；
> 3. $A \prec 0 \iff \lambda_i < 0$，$\forall i$；
> 4. $A \preceq 0 \iff \lambda_i \leq 0$，$\forall i$；
> 5. $A$ 不定 $\iff$ $A$ 同时存在正特征值和负特征值。
>
> **证明思路**：由实对称矩阵的正交对角化，存在正交矩阵 $Q$ 使得 $Q^T A Q = \Lambda = \mathrm{diag}(\lambda_1, \ldots, \lambda_n)$。令 $y = Q^T x$，则 $x^T A x = y^T \Lambda y = \sum_i \lambda_i y_i^2$。各条件即由求和式的符号性质直接得出。

<!-- sylvester_criterion -->
> [!Theorem]
> **正定性的 Sylvester 判据 Sylvester's Criterion**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵，记其 $k$ 阶顺序主子式（leading principal minor）为
> $$
> \Delta_k = \det(A[1:k,\, 1:k]), \quad k = 1, 2, \ldots, n.
> $$
> 则：
> 1. $A \succ 0 \iff \Delta_k > 0$，$\forall k = 1, \ldots, n$；
> 2. $A \prec 0 \iff (-1)^k \Delta_k > 0$，$\forall k = 1, \ldots, n$。
>
> **证明思路**：对正定情形：$A \succ 0$ 等价于 $A$ 的每个顺序主子矩阵均正定，而 $1 \times 1$ 矩阵 $(a_{11})$ 正定当且仅当 $a_{11} > 0$；正定矩阵行列式为正特征值之积故为正；归纳可得所有 $\Delta_k > 0$。对负定情形，$A \prec 0 \iff -A \succ 0$，利用 $\det(-A[1:k]) = (-1)^k \Delta_k$ 即得。

<!-- positive_semidefinite_principal_minor_criterion -->
> [!Theorem]
> **半正定性的主子式判据 Principal Minor Criterion for Positive Semidefiniteness**：设 $A \in M_n(\mathbb{R})$ 为实对称矩阵，则
> $$
> A \succeq 0 \iff \text{$A$ 的所有主子式（principal minors）均} \geq 0.
> $$
>
> **证明思路**：对 $A \succeq 0$，取任意主子矩阵 $B$，由 $A \succeq 0$ 的定义可证 $B \succeq 0$，故 $\det B \geq 0$（半正定矩阵行列式非负）。反方向由归纳法证明。

<!-- definiteness_example -->
> [!Example]+
> **正定矩阵例子 Example of Positive Definite Matrix**：矩阵
> $$
> A =
> \begin{pmatrix}
> 2 & 1 \\
> 1 & 3
> \end{pmatrix}
> $$
> 的顺序主子式为 $\Delta_1 = 2 > 0$，$\Delta_2 = 2 \cdot 3 - 1 \cdot 1 = 5 > 0$，故 $A \succ 0$。其特征值为 $\dfrac{5 \pm \sqrt{5}}{2} > 0$，与特征值判据一致。
