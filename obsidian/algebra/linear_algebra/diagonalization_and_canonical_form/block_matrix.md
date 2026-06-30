# 分块矩阵

<!-- block_matrix_def -->
> [!Definition]
> **分块矩阵 Block Matrix**：将矩阵 $A \in M_{m \times n}(F)$ 的行和列分别用水平线和垂直线分割，得到若干子矩阵（称为**块**），由这些块构成的矩阵表示称为 $A$ 的**分块矩阵**（block matrix）或**分划**（partition）。若 $A$ 被分割为 $p \times q$ 个块，记为
> $$A = \begin{pmatrix} A_{11} & A_{12} & \cdots & A_{1q} \\ A_{21} & A_{22} & \cdots & A_{2q} \\ \vdots & \vdots & \ddots & \vdots \\ A_{p1} & A_{p2} & \cdots & A_{pq} \end{pmatrix}$$
> 其中 $A_{ij} \in M_{m_i \times n_j}(F)$，$\sum_{i=1}^p m_i = m$，$\sum_{j=1}^q n_j = n$。

> **注**：分块矩阵是一种简化大型矩阵运算和理论分析的重要工具。单个矩阵本身（不分块）和将每个元素视为 $1 \times 1$ 块都是分块矩阵的特殊情形。

<!-- block_matrix_addition -->
> [!Proposition]
> **分块矩阵的加法 Block Matrix Addition**：设 $A, B \in M_{m \times n}(F)$ 有相同的分块方式（即对应块具有相同尺寸），分别记为 $A = (A_{ij})$ 和 $B = (B_{ij})$，则
> $$A + B = (A_{ij} + B_{ij})$$
> 即对应块相加。

<!-- block_matrix_scalar_mult -->
> [!Proposition]
> **分块矩阵的数乘 Scalar Multiplication of Block Matrix**：设 $A = (A_{ij}) \in M_{m \times n}(F)$，$k \in F$，则
> $$kA = (kA_{ij})$$

<!-- block_matrix_multiplication -->
> [!Proposition]
> **分块矩阵的乘法 Block Matrix Multiplication**：设 $A \in M_{m \times l}(F)$ 按 $p \times r$ 方式分块为 $A = (A_{ik})$，$B \in M_{l \times n}(F)$ 按 $r \times q$ 方式分块为 $B = (B_{kj})$，且 $A$ 列方向的分块尺寸与 $B$ 行方向的分块尺寸相同（即 $A_{ik}$ 的列数等于 $B_{kj}$ 的行数），则
> $$C = AB = (C_{ij}), \quad C_{ij} = \sum_{k=1}^r A_{ik} B_{kj}$$
> 即块乘法与普通矩阵乘法形式相同，但需注意块乘法的顺序（块矩阵乘法不可交换）。

<!-- block_diagonal_matrix_def -->
> [!Definition]
> **分块对角矩阵 Block Diagonal Matrix**：若方阵 $A \in M_n(F)$ 分块后非对角位置的块均为零矩阵，即
> $$A = \begin{pmatrix} A_{11} & & \\ & \ddots & \\ & & A_{pp} \end{pmatrix}$$
> 其中 $A_{ii} \in M_{n_i}(F)$，$\sum_{i=1}^p n_i = n$，则称 $A$ 为**分块对角矩阵**。

<!-- block_triangular_matrix_def -->
> [!Definition]
> **分块三角矩阵 Block Triangular Matrix**：若方阵 $A \in M_n(F)$ 分块后，对角线以下（或以上）的块均为零矩阵，则称 $A$ 为**分块上（下）三角矩阵**。例如分块上三角矩阵形如
> $$A = \begin{pmatrix} A_{11} & A_{12} & \cdots & A_{1p} \\ O & A_{22} & \cdots & A_{2p} \\ \vdots & \ddots & \ddots & \vdots \\ O & \cdots & O & A_{pp} \end{pmatrix}$$

<!-- block_diagonal_determinant -->
> [!Proposition]
> **分块对角矩阵的行列式 Determinant of Block Diagonal Matrix**：设 $A = \mathrm{diag}(A_{11}, \ldots, A_{pp})$ 为分块对角矩阵，则
> $$\det(A) = \det(A_{11}) \cdot \det(A_{22}) \cdots \det(A_{pp})$$
>
> **证明思路**：对分块阶数归纳，利用行列式按块展开以及各块之间无交叉影响即得。

<!-- block_triangular_determinant -->
> [!Proposition]
> **分块三角矩阵的行列式 Determinant of Block Triangular Matrix**：设 $A$ 为分块上三角矩阵（对角块为 $A_{11}, \ldots, A_{pp}$），则
> $$\det(A) = \det(A_{11}) \cdot \det(A_{22}) \cdots \det(A_{pp})$$
>
> **证明思路**：对分块数 $p$ 归纳，利用行列式按最后一组行（或列）的 Laplace 展开，非对角块不影响对角块之积。
