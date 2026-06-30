# 三角矩阵

<!-- upper_triangular_matrix_def -->
> [!Definition]
> **上三角矩阵 Upper Triangular Matrix**：设 $A = (a_{ij}) \in M_n(F)$，若对所有满足 $i > j$ 的下标对 $(i, j)$ 均有 $a_{ij} = 0$，则称 $A$ 为**上三角矩阵**，即
> $$A = \begin{pmatrix} a_{11} & a_{12} & \cdots & a_{1n} \\ 0 & a_{22} & \cdots & a_{2n} \\ \vdots & \ddots & \ddots & \vdots \\ 0 & \cdots & 0 & a_{nn} \end{pmatrix}$$

<!-- lower_triangular_matrix_def -->
> [!Definition]
> **下三角矩阵 Lower Triangular Matrix**：设 $A = (a_{ij}) \in M_n(F)$，若对所有满足 $i < j$ 的下标对 $(i, j)$ 均有 $a_{ij} = 0$，则称 $A$ 为**下三角矩阵**，即
> $$A = \begin{pmatrix} a_{11} & 0 & \cdots & 0 \\ a_{21} & a_{22} & \cdots & 0 \\ \vdots & \ddots & \ddots & \vdots \\ a_{n1} & \cdots & a_{n,n-1} & a_{nn} \end{pmatrix}$$

上三角矩阵和下三角矩阵统称**三角矩阵**（triangular matrix）。

> **注**：三角矩阵在矩阵乘法下封闭，即两个同型上三角矩阵之积仍为上三角矩阵，下三角矩阵亦然。上三角矩阵的转置为下三角矩阵，反之亦然。

<!-- triangular_matrix_closure_prop -->
> [!Proposition]
> **三角矩阵乘法封闭性 Closure of Triangular Matrices**：设 $A, B \in M_n(F)$ 均为上三角矩阵，则 $AB$ 也是上三角矩阵，且 $(AB)_{ii} = a_{ii} b_{ii}$，即乘积矩阵对角元素等于对应对角元素之积。
>
> **证明思路**：设 $C = AB$，则 $c_{ij} = \sum_{k=1}^n a_{ik} b_{kj}$。当 $i > j$ 时，对任意 $k$：若 $k < i$ 则 $a_{ik} = 0$（因 $A$ 上三角），若 $k \geq i > j$ 则 $b_{kj} = 0$（因 $B$ 上三角），故 $c_{ij} = 0$。

<!-- triangular_matrix_eigenvalues_thm -->
> [!Theorem]
> **三角矩阵特征值定理 Eigenvalues of Triangular Matrix**：设 $A \in M_n(F)$ 是三角矩阵，对角元素为 $a_{11}, a_{22}, \ldots, a_{nn}$，则 $A$ 的特征多项式为
> $$p_A(\lambda) = (a_{11} - \lambda)(a_{22} - \lambda) \cdots (a_{nn} - \lambda)$$
> 从而 $A$ 的特征值恰好是其对角元素 $a_{11}, a_{22}, \ldots, a_{nn}$（计代数重数）。
>
> **证明思路**：$p_A(\lambda) = \det(A - \lambda I_n)$，而 $A - \lambda I_n$ 仍为三角矩阵，对角元素为 $a_{ii} - \lambda$。三角矩阵的行列式等于对角元素之积，故结论成立。

<!-- triangular_matrix_invertibility -->
> [!Corollary]
> **三角矩阵可逆性 Invertibility of Triangular Matrix**：三角矩阵 $A \in M_n(F)$ 可逆当且仅当其所有对角元素均不为零；且可逆上（下）三角矩阵的逆仍为上（下）三角矩阵。
>
> **证明思路**：$\det(A) = a_{11} a_{22} \cdots a_{nn}$，故 $A$ 可逆当且仅当所有 $a_{ii} \neq 0$。用消元法（或归纳法）可验证逆矩阵也保持三角结构。
