# 对角矩阵

<!-- diagonal_matrix_def -->
> [!Definition]
> **对角矩阵 Diagonal Matrix**：设 $A = (a_{ij}) \in M_n(F)$，若对所有满足 $i \neq j$ 的下标对 $(i, j)$ 均有 $a_{ij} = 0$，则称 $A$ 为**对角矩阵**。对角矩阵通常记作
> $$A = \mathrm{diag}(a_1, a_2, \ldots, a_n) = \begin{pmatrix} a_1 & & & \\ & a_2 & & \\ & & \ddots & \\ & & & a_n \end{pmatrix}$$
> 其中 $a_i = a_{ii}$ 为对角元素。

> **注**：对角矩阵是最简单的方阵之一，既是上三角矩阵，也是下三角矩阵。单位矩阵 $I_n = \mathrm{diag}(1, 1, \ldots, 1)$ 是特殊的对角矩阵。

<!-- diagonal_matrix_arithmetic -->
> [!Proposition]
> **对角矩阵的运算 Arithmetic of Diagonal Matrices**：设 $A = \mathrm{diag}(a_1, \ldots, a_n)$，$B = \mathrm{diag}(b_1, \ldots, b_n) \in M_n(F)$，则：
> 1. $A + B = \mathrm{diag}(a_1 + b_1, \ldots, a_n + b_n)$
> 2. $kA = \mathrm{diag}(ka_1, \ldots, ka_n)$（$k \in F$）
> 3. $AB = \mathrm{diag}(a_1 b_1, \ldots, a_n b_n) = BA$（对角矩阵乘法可交换）
> 4. $\det(A) = a_1 a_2 \cdots a_n$
> 5. $A$ 可逆当且仅当所有 $a_i \neq 0$，此时 $A^{-1} = \mathrm{diag}(a_1^{-1}, \ldots, a_n^{-1})$

<!-- diagonal_matrix_eigenvalues -->
> [!Theorem]
> **对角矩阵的特征值 Eigenvalues of Diagonal Matrix**：设 $A = \mathrm{diag}(a_1, a_2, \ldots, a_n) \in M_n(F)$，则 $A$ 的特征多项式为
> $$p_A(\lambda) = (a_1 - \lambda)(a_2 - \lambda) \cdots (a_n - \lambda)$$
> $A$ 的特征值为 $a_1, a_2, \ldots, a_n$（计代数重数），对应特征向量为标准基向量 $e_i$（当 $a_i$ 是单特征值时）。更一般地，对特征值 $\lambda_0 \in \{a_1, \ldots, a_n\}$，其对应的特征子空间为
> $$V_{\lambda_0} = \mathrm{span}\{e_i : a_i = \lambda_0\}$$
> 故几何重数等于代数重数。
>
> **证明思路**：$A - \lambda I_n = \mathrm{diag}(a_1 - \lambda, \ldots, a_n - \lambda)$ 仍是对角矩阵，其行列式为对角元素之积即得特征多项式。特征子空间的描述由 $(A - \lambda_0 I_n)x = 0$ 直接给出。

<!-- diagonal_matrix_polynomial -->
> [!Proposition]
> **对角矩阵的多项式 Polynomial of Diagonal Matrix**：设 $A = \mathrm{diag}(a_1, \ldots, a_n) \in M_n(F)$，$f \in F[x]$ 为多项式，则
> $$f(A) = \mathrm{diag}(f(a_1), f(a_2), \ldots, f(a_n))$$
>
> **证明思路**：由 $A^k = \mathrm{diag}(a_1^k, \ldots, a_n^k)$ 和矩阵加法、数乘的定义逐项展开即得。
