# 线性群

## 一般线性群

<!-- general_linear_group_def -->
> [!Definition]
> **一般线性群 General Linear Group**：设 $F$ 为域，$n$ 为正整数。$n$ 阶可逆矩阵（行列式不为零的矩阵）全体在矩阵乘法下构成群，称为域 $F$ 上的 **$n$ 阶一般线性群**，记作 $GL(n, F)$ 或 $GL_n(F)$：
> $$
> GL(n, F) = \{A \in M_n(F) \mid \det A \neq 0\}
> $$
> 其中 $M_n(F)$ 为 $F$ 上所有 $n \times n$ 矩阵的集合。

> **注**：当 $F = \mathbb{R}$ 时，常记 $GL(n, \mathbb{R})$；当 $F = \mathbb{C}$ 时，记 $GL(n, \mathbb{C})$。若 $F = \mathbb{F}_q$ 为有限域，则 $|GL(n, \mathbb{F}_q)| = \prod_{k=0}^{n-1}(q^n - q^k)$。

## 特殊线性群

<!-- special_linear_group_def -->
> [!Definition]
> **特殊线性群 Special Linear Group**：域 $F$ 上行列式为 $1$ 的 $n$ 阶矩阵全体构成群，称为 **$n$ 阶特殊线性群**，记作 $SL(n, F)$ 或 $SL_n(F)$：
> $$
> SL(n, F) = \{A \in GL(n, F) \mid \det A = 1\}
> $$
> $SL(n, F)$ 是 $GL(n, F)$ 的子群，且是行列式同态 $\det: GL(n, F) \to F^\times$ 的核。

## 正交群

<!-- orthogonal_group_def -->
> [!Definition]
> **正交群 Orthogonal Group**：实数域上满足 $A^T A = I_n$（即 $A^{-1} = A^T$）的 $n$ 阶矩阵全体构成群，称为 **$n$ 阶正交群**，记作 $O(n)$：
> $$
> O(n) = \{A \in GL(n, \mathbb{R}) \mid A^T A = I_n\}
> $$
> 正交矩阵的行列式为 $\pm 1$。

<!-- special_orthogonal_group_def -->
> [!Definition]
> **特殊正交群 Special Orthogonal Group**：$O(n)$ 中行列式为 $1$ 的矩阵全体构成子群，称为 **$n$ 阶特殊正交群**（旋转群），记作 $SO(n)$：
> $$
> SO(n) = \{A \in O(n) \mid \det A = 1\}
> $$

## 酉群

<!-- unitary_group_def -->
> [!Definition]
> **酉群 Unitary Group**：复数域上满足 $A^\dagger A = I_n$（即 $A^{-1} = A^\dagger$，其中 $A^\dagger = \bar{A}^T$ 为共轭转置）的 $n$ 阶矩阵全体构成群，称为 **$n$ 阶酉群**，记作 $U(n)$：
> $$
> U(n) = \{A \in GL(n, \mathbb{C}) \mid A^\dagger A = I_n\}
> $$
> 酉矩阵的行列式满足 $|\det A| = 1$。

<!-- special_unitary_group_def -->
> [!Definition]
> **特殊酉群 Special Unitary Group**：$U(n)$ 中行列式为 $1$ 的矩阵全体构成子群，称为 **$n$ 阶特殊酉群**，记作 $SU(n)$：
> $$
> SU(n) = \{A \in U(n) \mid \det A = 1\}
> $$

## 例子

<!-- linear_group_example_GL1 -->
> [!Example]+
> **一维情形 One-dimensional Case**：$GL(1, F) \cong F^\times$（域 $F$ 的乘法群），$SL(1, F) = \{1\}$（平凡群）；$O(1) = \{1, -1\} \cong \mathbb{Z}/2\mathbb{Z}$，$SO(1) = \{1\}$；$U(1) = \{e^{i\theta} \mid \theta \in \mathbb{R}\}$ 为单位圆群。

<!-- linear_group_example_SU2 -->
> [!Example]+
> **二阶特殊酉群 $SU(2)$**：$SU(2)$ 由形如
> $$
> \begin{pmatrix} \alpha & -\bar{\beta} \\ \beta & \bar{\alpha} \end{pmatrix},\quad |\alpha|^2 + |\beta|^2 = 1
> $$
> 的矩阵构成，与三维球面 $S^3$ 微分同胚，作为拓扑空间是紧致且单连通的。$SU(2)$ 是旋转群 $SO(3)$ 的二重覆盖。

<!-- linear_group_containment -->
> [!Theorem]
> **线性群的包含关系 Containment Relations of Linear Groups**：
> $$
> SU(n) \leq U(n) \leq GL(n, \mathbb{C}),\quad SO(n) \leq O(n) \leq GL(n, \mathbb{R}),\quad SL(n, F) \leq GL(n, F)
> $$
> 且 $O(n) \leq U(n)$（将实矩阵视为复矩阵），$SO(n) \leq SU(n)$。
