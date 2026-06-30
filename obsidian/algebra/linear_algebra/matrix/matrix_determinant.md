---
title: 行列式
tags:
  - linear_algebra
  - matrix
---

# 行列式

<!-- determinant_definition -->
> [!Definition]
> **行列式 Determinant**：$n$ 阶方阵 $A = (a_{ij}) \in M_n(F)$ 的**行列式**定义为
> $$
> \det(A) = \sum_{\sigma \in S_n} \mathrm{sgn}(\sigma) \prod_{i=1}^n a_{i,\sigma(i)},
> $$
> 其中求和遍历所有 $n$ 阶置换 $\sigma \in S_n$，$\mathrm{sgn}(\sigma) \in \{+1, -1\}$ 是置换 $\sigma$ 的符号。记作 $\det(A)$ 或 $|A|$。

> **注**：$n$ 阶行列式是 $n!$ 项之和。$1 \times 1$ 矩阵 $[a]$ 的行列式为 $a$；$2 \times 2$ 矩阵的行列式为 $a_{11}a_{22} - a_{12}a_{21}$。

<!-- determinant_axiomatic -->
> [!Theorem]
> **行列式的公理化刻画**：$\det: M_n(F) \to F$ 是满足以下三条性质的唯一函数：
> 1. **行的多线性**：关于每一行是线性函数（其余行固定时）；
> 2. **行的交替性**：交换任意两行，行列式变号；
> 3. **规范化**：$\det(I_n) = 1$。

> **证明思路**：由多线性与交替性，$\det$ 完全由置换项 $\mathrm{sgn}(\sigma) \prod_i a_{i,\sigma(i)}$ 确定；规范化条件唯一固定系数，从而与 Leibniz 公式等价，唯一性得证。

<!-- cofactor_expansion -->
> [!Theorem]
> **Laplace 展开定理**：设 $A \in M_n(F)$，记 $M_{ij}$ 为删去第 $i$ 行第 $j$ 列后所得 $(n-1)$ 阶子方阵的行列式（称为**余子式**），令 $C_{ij} = (-1)^{i+j} M_{ij}$（称为**代数余子式**），则沿第 $i$ 行展开：
> $$
> \det(A) = \sum_{j=1}^n a_{ij} C_{ij}, \quad 1 \leq i \leq n,
> $$
> 沿第 $j$ 列展开：
> $$
> \det(A) = \sum_{i=1}^n a_{ij} C_{ij}, \quad 1 \leq j \leq n.
> $$

> **证明思路**：由 Leibniz 公式，将求和按第 $i$ 行的元素 $a_{ij}$ 分组，每组之和恰为 $a_{ij}$ 乘以其代数余子式 $C_{ij}$。

<!-- determinant_basic_properties -->
> [!Theorem]
> **行列式的基本性质**：对 $A, B \in M_n(F)$，有：
> 1. $\det(A^T) = \det(A)$；
> 2. 若 $A$ 有两行（列）相同，则 $\det(A) = 0$；
> 3. 若 $A$ 有某行（列）全为零，则 $\det(A) = 0$；
> 4. $\det(\lambda A) = \lambda^n \det(A)$；
> 5. **乘积公式**：$\det(AB) = \det(A)\det(B)$。

> **证明思路**：性质 1 利用置换 $\sigma \mapsto \sigma^{-1}$ 是 $S_n$ 上的双射；性质 2 由交替性得（交换相同两行行列式变号又不变，故为零）；性质 4 由多线性得（$n$ 行各提出 $\lambda$）；性质 5 通过行操作或直接展开两侧验证。

<!-- determinant_and_invertibility -->
> [!Theorem]
> **行列式与可逆性**：$n$ 阶方阵 $A$ 可逆当且仅当 $\det(A) \neq 0$。

> **证明思路**：若 $A$ 可逆，则 $\det(A)\det(A^{-1}) = \det(AA^{-1}) = \det(I_n) = 1$，故 $\det(A) \neq 0$。反向利用伴随矩阵公式 $A \cdot \mathrm{adj}(A) = \det(A) I_n$ 构造逆矩阵。
