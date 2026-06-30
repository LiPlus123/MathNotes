# 特征向量与特征子空间

## 特征向量

<!-- eigenvector_def -->
> [!Definition]
> **特征向量 Eigenvector**：设 $A \in M_n(F)$，$\lambda_0$ 是 $A$ 的特征值。若非零向量 $v \in F^n$ 满足
> $$Av = \lambda_0 v$$
> 则称 $v$ 为矩阵 $A$ 关于特征值 $\lambda_0$ 的**特征向量**。

> **注**：特征向量必须是非零向量；零向量满足 $A \cdot \mathbf{0} = \lambda \cdot \mathbf{0}$ 对任意 $\lambda$ 成立，故不视为特征向量。

## 特征子空间

<!-- eigenspace_def -->
> [!Definition]
> **特征子空间 Eigenspace**：设 $A \in M_n(F)$，$\lambda_0$ 是 $A$ 的特征值，称 $\lambda_0 I_n - A$ 的核
> $$V_{\lambda_0} = \ker(\lambda_0 I_n - A) = \{v \in F^n : Av = \lambda_0 v\}$$
> 为矩阵 $A$ 关于特征值 $\lambda_0$ 的**特征子空间**。

> **注**：$V_{\lambda_0}$ 是 $F^n$ 的非零子空间（因为 $\lambda_0$ 是特征值，故 $\lambda_0 I - A$ 奇异，$V_{\lambda_0}$ 包含非零向量）。$V_{\lambda_0}$ 由 $\lambda_0$ 的所有特征向量与零向量共同构成。

## 几何重数

<!-- geometric_multiplicity_def -->
> [!Definition]
> **几何重数 Geometric Multiplicity**：设 $\lambda_0$ 是矩阵 $A \in M_n(F)$ 的特征值，称特征子空间的维数
> $$m_g(\lambda_0) = \dim V_{\lambda_0} = \dim \ker(\lambda_0 I_n - A) = n - \mathrm{rank}(\lambda_0 I_n - A)$$
> 为 $\lambda_0$ 的**几何重数**。

## 几何重数与代数重数的关系

<!-- geometric_algebraic_multiplicity_inequality -->
> [!Theorem]
> **几何重数不超过代数重数 Geometric Multiplicity Does Not Exceed Algebraic Multiplicity**：设 $\lambda_0$ 是矩阵 $A \in M_n(F)$ 的特征值，则
> $$1 \leq m_g(\lambda_0) \leq m_a(\lambda_0)$$
>
> **证明思路**：设 $m = m_g(\lambda_0)$，取 $V_{\lambda_0}$ 的基 $v_1, \ldots, v_m$，将其扩充为 $F^n$ 的基，在该基下 $A$ 的矩阵具有分块形式
> $$\begin{pmatrix} \lambda_0 I_m & * \\ O & B \end{pmatrix}$$
> 从而 $p_A(\lambda) = (\lambda - \lambda_0)^m \cdot p_B(\lambda)$，故 $m_a(\lambda_0) \geq m = m_g(\lambda_0)$。

## 特征值与特征向量的关系

<!-- eigenvectors_different_eigenvalues_linearly_independent -->
> [!Theorem]
> **不同特征值对应的特征向量线性无关 Eigenvectors for Distinct Eigenvalues are Linearly Independent**：设 $\lambda_1, \lambda_2, \ldots, \lambda_k$ 是矩阵 $A \in M_n(F)$ 的两两不同的特征值，$v_1, v_2, \ldots, v_k$ 分别是对应的特征向量，则 $v_1, v_2, \ldots, v_k$ 线性无关。
>
> **证明思路**：对 $k$ 进行归纳。假设 $c_1 v_1 + \cdots + c_k v_k = \mathbf{0}$，对两边同乘 $A - \lambda_k I$ 并利用 $Av_i = \lambda_i v_i$，得到关于 $v_1, \ldots, v_{k-1}$ 的线性关系；由归纳假设知 $c_i(\lambda_i - \lambda_k) = 0$，从而 $c_i = 0$（$i < k$），再代回得 $c_k = 0$。

<!-- eigenspaces_sum_is_direct -->
> [!Corollary]
> **不同特征子空间的和是直和 Sum of Eigenspaces for Distinct Eigenvalues is Direct**：设 $\lambda_1, \lambda_2, \ldots, \lambda_k$ 是矩阵 $A \in M_n(F)$ 的两两不同的特征值，则
> $$V_{\lambda_1} + V_{\lambda_2} + \cdots + V_{\lambda_k} = V_{\lambda_1} \oplus V_{\lambda_2} \oplus \cdots \oplus V_{\lambda_k}$$
>
> **证明思路**：由上述定理，不同特征子空间中分别取出的非零向量组合成的向量组线性无关，由此直和条件成立。
