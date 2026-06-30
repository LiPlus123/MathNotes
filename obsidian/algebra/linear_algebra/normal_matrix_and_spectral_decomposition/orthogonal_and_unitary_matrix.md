---
title: 正交矩阵与酉矩阵
tags:
  - linear_algebra
  - normal_matrix_and_spectral_decomposition
---

# 正交矩阵与酉矩阵

<!-- orthogonal_matrix_definition -->
> [!Definition]
> **正交矩阵 Orthogonal Matrix**：设 $Q \in M_n(\mathbb{R})$。若
> $$
> Q^TQ = QQ^T = I_n,
> $$
> 则称 $Q$ 为**正交矩阵**（orthogonal matrix）。

<!-- unitary_matrix_definition -->
> [!Definition]
> **酉矩阵 Unitary Matrix**：设 $U \in M_n(\mathbb{C})$。若
> $$
> U^*U = UU^* = I_n,
> $$
> 则称 $U$ 为**酉矩阵**（unitary matrix）。

> **注**：正交矩阵是实数域上酉矩阵的特例。正交矩阵与酉矩阵都表示保持标准内积的线性变换。

<!-- orthogonal_unitary_equivalent_conditions -->
> [!Theorem]
> **正交/酉矩阵的等价刻画 Equivalent Characterizations**：设 $U \in M_n(\mathbb{C})$，则以下条件等价：
> 1. $U$ 是酉矩阵；
> 2. $U^{-1} = U^*$；
> 3. $U$ 的列向量构成 $\mathbb{C}^n$ 的一组标准正交基；
> 4. $U$ 的行向量构成 $\mathbb{C}^n$ 的一组标准正交基；
> 5. 对任意 $x,y \in \mathbb{C}^n$，有
> $$
> \langle Ux, Uy \rangle = \langle x, y \rangle.
> $$
>
> **证明思路**：$(1)\Leftrightarrow(2)$ 由定义直接得到；$(1)\Leftrightarrow(3)$ 与 $(1)\Leftrightarrow(4)$ 由 $U^*U = I_n$ 和 $UU^* = I_n$ 的矩阵元素解释得到；$(2)\Leftrightarrow(5)$ 由
> $$
> \langle Ux, Uy \rangle = \langle x, U^*Uy \rangle
> $$
> 直接推出。

<!-- orthogonal_unitary_basic_properties -->
> [!Proposition]
> **正交/酉矩阵的基本性质**：设 $U \in M_n(\mathbb{C})$ 为酉矩阵，则：
> 1. $U$ 可逆，且 $U^{-1} = U^*$；
> 2. $\|Ux\|_2 = \|x\|_2$ 对任意 $x \in \mathbb{C}^n$ 成立；
> 3. 若 $V$ 也是酉矩阵，则 $UV$ 与 $U^*$ 仍为酉矩阵；
> 4. $|\det(U)| = 1$。
>
> **证明思路**：前 3 条由 $U^*U = I_n$ 直接验证。对第 4 条，对等式 $U^*U = I_n$ 取行列式得 $\overline{\det(U)}\det(U) = 1$，故 $|\det(U)| = 1$。

<!-- unitary_eigenvalue_modulus -->
> [!Corollary]
> **酉矩阵特征值的模为 1**：若 $U$ 为酉矩阵，$Ux = \lambda x$ 且 $x \neq \mathbf{0}$，则
> $$
> |\lambda| = 1.
> $$
>
> **证明思路**：由范数保持性，
> $$
> \|x\|_2 = \|Ux\|_2 = \|\lambda x\|_2 = |\lambda|\,\|x\|_2,
> $$
> 因 $x \neq \mathbf{0}$，故 $|\lambda| = 1$。

<!-- orthogonal_matrix_example -->
> [!Example]+
> **二维旋转矩阵 Rotation Matrix**：矩阵
> $$
> Q =
> \begin{pmatrix}
> \cos\theta & -\sin\theta \\
> \sin\theta & \cos\theta
> \end{pmatrix}
> $$
> 满足 $Q^TQ = I_2$，因此是正交矩阵。它对应平面上的旋转变换，保持长度与夹角不变。
