# 矩阵的直和

<!-- matrix_direct_sum_def -->
> [!Definition]
> **矩阵的直和 Direct Sum of Matrices**：设 $A_1 \in M_{n_1}(F), A_2 \in M_{n_2}(F), \ldots, A_k \in M_{n_k}(F)$，定义它们的**直和**（direct sum）为如下分块对角矩阵：
> $$A_1 \oplus A_2 \oplus \cdots \oplus A_k = \begin{pmatrix} A_1 & & & \\ & A_2 & & \\ & & \ddots & \\ & & & A_k \end{pmatrix} \in M_n(F)$$
> 其中 $n = n_1 + n_2 + \cdots + n_k$，非对角块均为零矩阵。

> **注**：矩阵的直和是分块对角矩阵的特殊表示形式，强调其由独立的子矩阵"拼接"而成。$A \oplus B$ 与 $B \oplus A$ 一般不相等，但两者相似。

<!-- matrix_direct_sum_arithmetic -->
> [!Proposition]
> **矩阵直和的运算性质 Algebraic Properties of Matrix Direct Sum**：设 $A_i, B_i \in M_{n_i}(F)$，$k \in F$，则：
> 1. **加法**：$(A_1 \oplus \cdots \oplus A_r) + (B_1 \oplus \cdots \oplus B_r) = (A_1 + B_1) \oplus \cdots \oplus (A_r + B_r)$
> 2. **数乘**：$k(A_1 \oplus \cdots \oplus A_r) = (kA_1) \oplus \cdots \oplus (kA_r)$
> 3. **乘法**：$(A_1 \oplus \cdots \oplus A_r)(B_1 \oplus \cdots \oplus B_r) = (A_1 B_1) \oplus \cdots \oplus (A_r B_r)$
> 4. **转置**：$(A_1 \oplus \cdots \oplus A_r)^T = A_1^T \oplus \cdots \oplus A_r^T$
> 5. **逆矩阵**：$A_1 \oplus \cdots \oplus A_r$ 可逆当且仅当每个 $A_i$ 均可逆，此时 $(A_1 \oplus \cdots \oplus A_r)^{-1} = A_1^{-1} \oplus \cdots \oplus A_r^{-1}$
>
> **证明思路**：由分块矩阵运算规则直接验证，各块之间无耦合。

<!-- matrix_direct_sum_determinant -->
> [!Proposition]
> **矩阵直和的行列式 Determinant of Matrix Direct Sum**：设 $A = A_1 \oplus A_2 \oplus \cdots \oplus A_k$，则
> $$\det(A) = \det(A_1) \cdot \det(A_2) \cdots \det(A_k)$$
>
> **证明思路**：分块对角矩阵行列式等于各对角块行列式之积（见分块矩阵的行列式命题）。

<!-- matrix_direct_sum_eigenvalues -->
> [!Theorem]
> **矩阵直和的特征值与特征多项式 Eigenvalues and Characteristic Polynomial of Direct Sum**：设 $A = A_1 \oplus A_2 \oplus \cdots \oplus A_k \in M_n(F)$，则：
> 1. $A$ 的特征多项式为各块特征多项式之积：
> $$p_A(\lambda) = p_{A_1}(\lambda) \cdot p_{A_2}(\lambda) \cdots p_{A_k}(\lambda)$$
> 2. $A$ 的特征值集合（计代数重数）为各 $A_i$ 特征值集合的并（计重数）；
> 3. 若 $\lambda_0$ 是 $A_i$ 的特征值，$v$ 是 $A_i$ 属于 $\lambda_0$ 的特征向量，则将 $v$ 嵌入到 $A$ 对应分量的位置（其余分量补零），得到 $A$ 属于 $\lambda_0$ 的特征向量。
>
> **证明思路**：$\det(A - \lambda I_n) = \det((A_1 - \lambda I_{n_1}) \oplus \cdots \oplus (A_k - \lambda I_{n_k}))$，由行列式的分块对角性质分解为积。特征向量由各块的独立性直接得到。

<!-- matrix_direct_sum_trace -->
> [!Proposition]
> **矩阵直和的迹 Trace of Matrix Direct Sum**：设 $A = A_1 \oplus A_2 \oplus \cdots \oplus A_k$，则
> $$\mathrm{tr}(A) = \mathrm{tr}(A_1) + \mathrm{tr}(A_2) + \cdots + \mathrm{tr}(A_k)$$
>
> **证明思路**：迹为对角元素之和，分块对角矩阵的对角元素恰为各块对角元素，由加法即得。
