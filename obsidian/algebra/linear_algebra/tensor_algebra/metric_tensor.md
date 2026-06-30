# 度量张量

## 度量张量的定义

<!-- metric_tensor_definition -->
> [!Definition]
> **度量张量 Metric Tensor**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间。**度量张量**（metric tensor）是一个 $(0, 2)$ 型张量
> $$g: V \times V \to F$$
> 满足以下条件：
> 1. **对称性**：$g(u, v) = g(v, u)$，$\forall\, u, v \in V$；
> 2. **非退化性**：若对所有 $v \in V$ 均有 $g(u, v) = 0$，则 $u = \mathbf{0}$。
>
> 度量张量在基 $\{e_i\}$ 下的分量为
> $$g_{ij} \coloneqq g(e_i, e_j) = g_{ji}, \quad 1 \leq i, j \leq n,$$
> 称为**度量系数**（metric coefficients）。非退化性等价于矩阵 $(g_{ij})$ 可逆（$\det(g_{ij}) \neq 0$）。

> **注**：若 $g$ 还满足**正定性** $g(v, v) > 0$（$v \neq \mathbf{0}$，$F = \mathbb{R}$），则 $g$ 是 $V$ 上的内积，$V$ 成为欧氏空间（或实希尔伯特空间）。在伪黎曼几何（如相对论的 Minkowski 空间）中，$g$ 允许不定，即不要求正定。

## 逆度量张量

<!-- inverse_metric_tensor -->
> [!Definition]
> **逆度量张量 Inverse Metric Tensor**：设 $(g_{ij})$ 为度量张量在基 $\{e_i\}$ 下的分量矩阵，由非退化性知 $(g_{ij})$ 可逆。定义**逆度量张量**的分量 $g^{ij}$ 为
> $$g^{ik}\, g_{kj} = \delta^i_{\ j},$$
> 即 $(g^{ij})$ 为 $(g_{ij})$ 的逆矩阵。逆度量张量 $g^{-1}$ 是一个 $(2, 0)$ 型张量，其分量为 $g^{ij}$。

> **注**：$g^{ij}$ 的存在性依赖于度量张量的非退化性，其定义不依赖于基的选取（可验证在基变换下满足 $(2,0)$ 型张量的变换规律）。

## 指标的升降

<!-- raising_lowering_indices -->
> [!Definition]
> **指标的升降 Raising and Lowering of Indices**：设 $V$ 配备度量张量 $g$。利用 $g$ 和 $g^{-1}$ 可以在 $V$ 与 $V^*$ 之间建立自然同构，从而对张量分量的指标进行升降：
>
> - **降低逆变指标**（raising → lowering）：对 $(r, s)$ 型张量 $T$，将第 $\mu$ 个逆变指标 $i_\mu$ 降为协变指标：
> $$T_{i_1 \cdots i_r\, j_1 \cdots j_s} = g_{i_\mu k}\, T^{i_1 \cdots i_{\mu-1}\, k\, i_{\mu+1} \cdots i_r}{}_{j_1 \cdots j_s}.$$
>
> - **升高协变指标**（lowering → raising）：将第 $\nu$ 个协变指标 $j_\nu$ 升为逆变指标：
> $$T^{i_1 \cdots i_r\, j_1 \cdots j_s} = g^{j_\nu k}\, T^{i_1 \cdots i_r}{}_{j_1 \cdots j_{\nu-1}\, k\, j_{\nu+1} \cdots j_s}.$$
>
> 特别地，向量 $v^i$ 的协变分量为 $v_i = g_{ij}\, v^j$，线性泛函 $\alpha_i$ 的逆变分量为 $\alpha^i = g^{ij}\, \alpha_j$。

> **注**：度量张量 $g$ 诱导了 $V$ 与 $V^*$ 之间的典范同构 $\flat: V \to V^*$（$v \mapsto g(v, \cdot)$，称为"音符降调"）和其逆 $\sharp: V^* \to V$（称为"音符升调"）。指标升降运算正是这一同构的分量表达。

## 度量张量的分量变换

<!-- metric_tensor_transformation -->
> [!Theorem]
> **度量张量分量的变换规律 Transformation of Metric Tensor Components**：在基变换 $e'_i = A^j_{\ i}\, e_j$ 下，度量系数按 $(0, 2)$ 型张量的规律变换：
> $$g'_{ij} = A^k_{\ i}\, A^l_{\ j}\, g_{kl}.$$
> 等价地，以矩阵记号写作 $G' = A^T G A$（其中 $G = (g_{ij})$，$A = (A^j_{\ i})$）。
>
> **证明思路**：将 $e'_i = A^k_{\ i} e_k$，$e'_j = A^l_{\ j} e_l$ 代入 $g'_{ij} = g(e'_i, e'_j)$，利用 $g$ 的双线性性展开即得。
