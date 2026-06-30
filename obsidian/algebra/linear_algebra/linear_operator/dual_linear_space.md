---
title: 对偶线性空间
tags:
  - linear_algebra
  - linear_operator
---

# 对偶线性空间

<!-- dual_space_definition -->
> [!Definition]
> **对偶线性空间 Dual Linear Space**：设 $V$ 是数域 $F$ 上的线性空间，$V$ 的**对偶空间**定义为所有线性泛函的全体：
> $$
> V^* = \mathrm{Hom}_F(V, F).
> $$
> $V^*$ 中的元素称为**协向量**（covector）或**线性形式**（linear form）。

> **注**：由线性映射空间的结构，$V^*$ 在逐点加法与数乘下构成 $F$ 上的线性空间。

<!-- dual_space_dimension -->
> [!Theorem]
> **对偶空间的维数**：设 $V$ 是 $n$ 维线性空间，则 $\dim V^* = n$，即 $V^* \cong V$（尽管此同构依赖于基的选取）。

> **证明思路**：由线性映射空间的维数公式，$\dim \mathrm{Hom}_F(V, F) = n \cdot 1 = n$。

<!-- dual_basis_definition -->
> [!Definition]
> **对偶基 Dual Basis**：设 $\mathcal{B} = (e_1, e_2, \ldots, e_n)$ 是 $n$ 维线性空间 $V$ 的有序基，对每个 $i \in \{1, \ldots, n\}$，定义线性泛函 $e_i^*: V \to F$ 为
> $$
> e_i^*\!\left(\sum_{j=1}^n \xi_j e_j\right) = \xi_i.
> $$
> 等价地，$e_i^*(e_j) = \delta_{ij}$（Kronecker delta）。称 $(e_1^*, e_2^*, \ldots, e_n^*)$ 为 $\mathcal{B}$ 的**对偶基**。

<!-- dual_basis_is_basis -->
> [!Theorem]
> **对偶基是基**：$(e_1^*, e_2^*, \ldots, e_n^*)$ 构成 $V^*$ 的一组基。任意 $f \in V^*$ 在对偶基下的坐标为 $(f(e_1), f(e_2), \ldots, f(e_n))$，即
> $$
> f = \sum_{i=1}^n f(e_i)\, e_i^*.
> $$

> **证明思路**：
> - **线性无关**：若 $\sum_{i=1}^n \lambda_i e_i^* = O$，对 $e_j$ 作用得 $\lambda_j = 0$，故线性无关。
> - **张成**：对任意 $f \in V^*$，令 $g = \sum_{i=1}^n f(e_i)\, e_i^*$，则 $g(e_j) = f(e_j)$ 对所有 $j$ 成立，由线性映射由基的像唯一确定知 $f = g$。

<!-- dual_map_definition -->
> [!Definition]
> **对偶映射 Dual Map**（又称**转置映射**）：设 $T: V \to W$ 是线性映射，定义 $T$ 的**对偶映射** $T^*: W^* \to V^*$ 为
> $$
> T^*(g) = g \circ T,\quad \forall g \in W^*.
> $$
> 即对任意 $v \in V$，$(T^*(g))(v) = g(T(v))$。

<!-- dual_map_is_linear -->
> [!Theorem]
> **对偶映射是线性映射**：$T^*: W^* \to V^*$ 是线性映射。

> **证明思路**：对任意 $g_1, g_2 \in W^*$，$\lambda, \mu \in F$，$v \in V$，
> $$
> T^*(\lambda g_1 + \mu g_2)(v) = (\lambda g_1 + \mu g_2)(T(v)) = \lambda g_1(T(v)) + \mu g_2(T(v)) = (\lambda T^*(g_1) + \mu T^*(g_2))(v).
> $$

<!-- dual_map_composition -->
> [!Theorem]
> **对偶映射与复合**：设 $T: V \to W$，$S: W \to U$ 为线性映射，则
> $$
> (S \circ T)^* = T^* \circ S^*.
> $$

> **证明思路**：对任意 $h \in U^*$，$(S \circ T)^*(h) = h \circ (S \circ T) = (h \circ S) \circ T = T^*(h \circ S) = T^*(S^*(h)) = (T^* \circ S^*)(h)$。

<!-- double_dual_natural_isomorphism -->
> [!Theorem]
> **自然同构**：设 $V$ 是有限维线性空间，则映射 $\iota_V: V \to V^{**}$，$v \mapsto \mathrm{ev}_v$（其中 $\mathrm{ev}_v(f) = f(v)$）是自然的线性同构（不依赖于基的选取）。

> **证明思路**：$\iota_V$ 的线性性直接验证；由 $\dim V = \dim V^* = \dim V^{**}$，只需证 $\iota_V$ 是单射，即 $\ker \iota_V = \{\mathbf{0}\}$：若 $v \neq \mathbf{0}$，将 $v$ 扩充为基并用对偶基中的某个 $e_i^*$ 将其分离，得 $\mathrm{ev}_v \neq O$。
