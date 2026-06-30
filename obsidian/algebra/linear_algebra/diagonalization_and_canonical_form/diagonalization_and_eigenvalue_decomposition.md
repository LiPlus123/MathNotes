# 对角化与特征值分解

<!-- diagonalizable_matrix_def -->
> [!Definition]
> **可对角化矩阵 Diagonalizable Matrix**：设 $A \in M_n(F)$，若存在可逆矩阵 $P \in M_n(F)$ 使得 $P^{-1}AP = \Lambda$ 为对角矩阵，则称 $A$ 在域 $F$ 上**可对角化**（diagonalizable over $F$），此过程称为**对角化**（diagonalization）。

> **注**：可对角化意味着 $A$ 与对角矩阵相似。若 $P^{-1}AP = \mathrm{diag}(\lambda_1, \ldots, \lambda_n)$，将 $P$ 按列分块为 $P = (p_1, p_2, \ldots, p_n)$，则 $AP = P\Lambda$，即 $Ap_i = \lambda_i p_i$，说明 $p_i$ 是 $A$ 属于特征值 $\lambda_i$ 的特征向量。

<!-- diagonalization_condition_thm -->
> [!Theorem]
> **可对角化的充要条件 Conditions for Diagonalizability**：设 $A \in M_n(F)$，则以下条件等价：
> 1. $A$ 在 $F$ 上可对角化；
> 2. $A$ 有 $n$ 个线性无关的特征向量（即 $F^n$ 有由 $A$ 的特征向量构成的基）；
> 3. $A$ 的所有特征值均属于 $F$，且对每个特征值 $\lambda_i$，其几何重数等于代数重数，即 $m_g(\lambda_i) = m_a(\lambda_i)$；
> 4. $F^n = V_{\lambda_1} \oplus V_{\lambda_2} \oplus \cdots \oplus V_{\lambda_k}$（特征子空间直和为全空间），其中 $\lambda_1, \ldots, \lambda_k$ 为 $A$ 的所有不同特征值。
>
> **证明思路**：(1)$\Leftrightarrow$(2)：$P^{-1}AP$ 为对角矩阵当且仅当 $P$ 的列向量都是特征向量且 $P$ 可逆。(2)$\Leftrightarrow$(3)：属于不同特征值的特征向量线性无关，同一特征值对应特征子空间的基向量数等于几何重数，故 $n$ 个线性无关特征向量存在当且仅当各特征子空间维数之和为 $n$，即等于对应代数重数之和。(3)$\Leftrightarrow$(4)：特征子空间的直和性来自不同特征值特征向量的线性无关性。

<!-- diagonalization_sufficient_condition -->
> [!Corollary]
> **可对角化的充分条件 Sufficient Condition for Diagonalizability**：若 $A \in M_n(F)$ 有 $n$ 个不同的特征值（均属于 $F$），则 $A$ 可对角化。
>
> **证明思路**：不同特征值对应的特征向量线性无关，$n$ 个不同特征值给出 $n$ 个线性无关特征向量，即每个代数重数为 1 等于几何重数 1。

<!-- eigenvalue_decomposition_def -->
> [!Definition]
> **特征值分解 Eigenvalue Decomposition**：设 $A \in M_n(F)$ 可对角化，$P^{-1}AP = \Lambda = \mathrm{diag}(\lambda_1, \lambda_2, \ldots, \lambda_n)$，则 $A$ 的**特征值分解**（eigenvalue decomposition，EVD）为
> $$A = P \Lambda P^{-1}$$
> 其中 $P$ 的第 $i$ 列为属于特征值 $\lambda_i$ 的特征向量，$\Lambda$ 为对应特征值构成的对角矩阵。

<!-- eigenvalue_decomposition_spectral_form -->
> [!Proposition]
> **特征值分解的谱表示 Spectral Representation of EVD**：设 $A = P \Lambda P^{-1}$，将 $P^{-1}$ 按行分块为 $(q_1^T, q_2^T, \ldots, q_n^T)^T$，则
> $$A = \sum_{i=1}^n \lambda_i \, p_i q_i^T$$
> 其中 $p_i$ 为 $P$ 的第 $i$ 列，$q_i^T$ 为 $P^{-1}$ 的第 $i$ 行，满足 $q_i^T p_j = \delta_{ij}$。
>
> **证明思路**：$P \Lambda P^{-1} = \sum_{i=1}^n \lambda_i P e_i e_i^T P^{-1} = \sum_{i=1}^n \lambda_i p_i q_i^T$，展开矩阵乘积即得。

<!-- diagonalization_power -->
> [!Corollary]
> **可对角化矩阵的幂 Powers of Diagonalizable Matrix**：若 $A = P \Lambda P^{-1}$，则对任意正整数 $k$，
> $$A^k = P \Lambda^k P^{-1} = P \, \mathrm{diag}(\lambda_1^k, \ldots, \lambda_n^k) \, P^{-1}$$
> 更一般地，对任意多项式 $f \in F[x]$，$f(A) = P \, f(\Lambda) \, P^{-1} = P \, \mathrm{diag}(f(\lambda_1), \ldots, f(\lambda_n)) \, P^{-1}$。
>
> **证明思路**：由 $(P\Lambda P^{-1})^k = P\Lambda^k P^{-1}$ 归纳即得，对角矩阵的幂直接逐元素计算。
