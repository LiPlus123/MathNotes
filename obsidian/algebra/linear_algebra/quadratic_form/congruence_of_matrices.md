---
title: 矩阵合同
tags:
  - linear_algebra
  - quadratic_form
---

# 矩阵合同

<!-- matrix_congruence_definition -->
> [!Definition]
> **矩阵合同 Congruence of Matrices**：设 $A, B \in M_n(F)$。若存在可逆矩阵 $C \in M_n(F)$ 使得
> $$
> B = C^T A C,
> $$
> 则称 $A$ 与 $B$ **合同**（congruent），记作 $A \simeq B$，$C$ 称为从 $A$ 到 $B$ 的**合同变换矩阵**。

> **注**：矩阵合同是基变换在对称双线性型矩阵上的体现（参见双线性型的基变换定理）。矩阵合同与矩阵相似（$A \sim B$，存在可逆 $P$ 使 $P^{-1}AP = B$）是不同的概念：合同保持的是二次型的等价性，相似保持的是线性变换的等价性。

<!-- matrix_congruence_equivalence_relation -->
> [!Theorem]
> **合同是等价关系 Congruence is an Equivalence Relation**：矩阵合同 $\simeq$ 是 $M_n(F)$ 上的等价关系，即满足：
> 1. **自反性**：$A \simeq A$（取 $C = I_n$）；
> 2. **对称性**：若 $A \simeq B$，则 $B \simeq A$；
> 3. **传递性**：若 $A \simeq B$ 且 $B \simeq C'$，则 $A \simeq C'$。
>
> **证明思路**：自反性显然。对称性：若 $B = C^T A C$，则 $A = (C^{-1})^T B C^{-1}$，故 $B \simeq A$。传递性：若 $B = C_1^T A C_1$，$C' = C_2^T B C_2$，则 $C' = (C_1 C_2)^T A (C_1 C_2)$。

<!-- matrix_congruence_rank_invariance -->
> [!Theorem]
> **合同不变量：秩 Rank is a Congruence Invariant**：合同矩阵具有相同的秩，即若 $A \simeq B$，则
> $$
> \mathrm{rank}(A) = \mathrm{rank}(B).
> $$
>
> **证明思路**：$B = C^T A C$，而 $C$ 可逆，$C^T$ 也可逆，左右乘可逆矩阵不改变矩阵的秩。

<!-- symmetric_matrix_congruence -->
> [!Proposition]
> **对称矩阵在合同下的封闭性 Congruence Preserves Symmetry**：若 $A$ 是对称矩阵，$C$ 是任意可逆矩阵，则 $B = C^T A C$ 也是对称矩阵。
>
> **证明思路**：$(C^T A C)^T = C^T A^T (C^T)^T = C^T A C$（利用 $A^T = A$），故 $B$ 是对称矩阵。

<!-- quadratic_form_congruence -->
> [!Theorem]
> **二次型合同的判定 Congruence of Quadratic Forms**：设 $q$，$q'$ 分别是 $n$ 维实线性空间 $V$ 上的二次型，在某组基下矩阵分别为 $A$，$A'$。则以下等价：
> 1. 存在 $V$ 的非奇异线性变换（坐标变换），将 $q$ 变为 $q'$；
> 2. $A \simeq A'$（即 $A' = C^T A C$，$C$ 可逆）。
>
> **证明思路**：设坐标变换 $\boldsymbol{\xi} = C \boldsymbol{\xi}'$，代入 $q(x) = \boldsymbol{\xi}^T A \boldsymbol{\xi}$ 得 $q(x) = (\boldsymbol{\xi}')^T (C^T A C) \boldsymbol{\xi}'$，故新坐标下的矩阵为 $C^T A C$。

<!-- matrix_congruence_example -->
> [!Example]+
> **合同矩阵例子 Example of Congruent Matrices**：设
> $$
> A =
> \begin{pmatrix}
> 1 & 0 \\
> 0 & 1
> \end{pmatrix}, \quad
> C =
> \begin{pmatrix}
> 1 & 1 \\
> 0 & 1
> \end{pmatrix},
> $$
> 则
> $$
> B = C^T A C =
> \begin{pmatrix}
> 1 & 0 \\
> 1 & 1
> \end{pmatrix}
> \begin{pmatrix}
> 1 & 1 \\
> 0 & 1
> \end{pmatrix}
> =
> \begin{pmatrix}
> 1 & 1 \\
> 1 & 2
> \end{pmatrix}.
> $$
> $A \simeq B$，二者均对称且秩为 2，对应同一个二次型在不同基下的矩阵表示。
