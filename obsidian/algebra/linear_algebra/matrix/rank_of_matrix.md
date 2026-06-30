---
title: 矩阵的秩
tags:
  - linear_algebra
  - matrix
---

# 矩阵的秩

<!-- matrix_column_rank_definition -->
> [!Definition]
> **列秩 Column Rank**：矩阵 $A \in M_{m \times n}(F)$ 的**列秩**是其列向量组的秩，即列向量组中线性无关向量的最大个数。

<!-- matrix_row_rank_definition -->
> [!Definition]
> **行秩 Row Rank**：矩阵 $A \in M_{m \times n}(F)$ 的**行秩**是其行向量组的秩，即行向量组中线性无关向量的最大个数。

<!-- row_rank_equals_column_rank -->
> [!Theorem]
> **行秩等于列秩**：矩阵 $A \in M_{m \times n}(F)$ 的行秩与列秩相等。

> **证明思路**：对 $A$ 施行初等行变换化为行阶梯形 $U$。初等行变换不改变行空间，故行秩不变；同时初等行变换不改变列向量组的线性相关关系，故列秩也不变。在行阶梯形中，非零行数既等于行秩（行空间的维数），也等于列秩（主元所在列构成列向量组的极大线性无关组）。

<!-- matrix_rank_definition -->
> [!Definition]
> **矩阵的秩 Rank of Matrix**：矩阵 $A \in M_{m \times n}(F)$ 的**秩**定义为其行秩（等于列秩），记作 $\mathrm{rank}(A)$ 或 $r(A)$。满足 $\mathrm{rank}(A) = \min(m, n)$ 的矩阵称为**满秩矩阵**。

> **注**：$0 \leq \mathrm{rank}(A) \leq \min(m, n)$；$\mathrm{rank}(A) = 0$ 当且仅当 $A = O$。

<!-- rank_and_linear_map -->
> [!Theorem]
> **矩阵秩与线性映射秩的关系**：设 $T_A: F^n \to F^m$ 为由矩阵 $A \in M_{m \times n}(F)$ 定义的线性映射 $x \mapsto Ax$，则
> $$
> \mathrm{rank}(A) = \mathrm{rank}(T_A).
> $$

> **证明思路**：$T_A$ 的像为 $A$ 的列向量张成的子空间，故 $\mathrm{rank}(T_A) = \dim \mathrm{Im}\, T_A$ 等于 $A$ 的列秩 $= \mathrm{rank}(A)$。

<!-- rank_product_inequality -->
> [!Theorem]
> **乘积的秩不等式**：对 $A \in M_{m \times p}(F)$，$B \in M_{p \times n}(F)$，有
> $$
> \mathrm{rank}(AB) \leq \min(\mathrm{rank}(A),\ \mathrm{rank}(B)).
> $$

> **证明思路**：$\mathrm{Im}(T_{AB}) = T_A(T_B(F^n)) \subseteq T_A(F^p) = \mathrm{Im}(T_A)$，故 $\mathrm{rank}(AB) \leq \mathrm{rank}(A)$；又 $\dim T_A(\mathrm{Im}\, T_B) \leq \dim \mathrm{Im}\, T_B = \mathrm{rank}(B)$。
