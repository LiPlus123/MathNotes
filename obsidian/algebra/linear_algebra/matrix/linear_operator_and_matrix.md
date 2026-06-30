---
title: 线性算子与矩阵
tags:
  - linear_algebra
  - matrix
---

# 线性算子与矩阵

<!-- matrix_representation_definition -->
> [!Definition]
> **线性映射的矩阵表示 Matrix Representation**：设 $V, W$ 分别是数域 $F$ 上的 $n, m$ 维线性空间，$\mathcal{B} = (e_1, \ldots, e_n)$ 是 $V$ 的有序基，$\mathcal{C} = (f_1, \ldots, f_m)$ 是 $W$ 的有序基，$T: V \to W$ 是线性映射。将每个 $T(e_j)$ 用基 $\mathcal{C}$ 表示：
> $$
> T(e_j) = \sum_{i=1}^m a_{ij} f_i, \quad j = 1, \ldots, n,
> $$
> 则称矩阵 $[T]_{\mathcal{B}}^{\mathcal{C}} = (a_{ij}) \in M_{m \times n}(F)$ 为 $T$ 在基 $\mathcal{B}$ 和 $\mathcal{C}$ 下的**矩阵表示**（$[T]_{\mathcal{B}}^{\mathcal{C}}$ 的第 $j$ 列为 $T(e_j)$ 在基 $\mathcal{C}$ 下的坐标）。当 $V = W$，$\mathcal{B} = \mathcal{C}$ 时，简记为 $[T]_{\mathcal{B}}$。

<!-- coordinate_matrix_multiplication -->
> [!Theorem]
> **坐标的矩阵计算**：设 $A = [T]_{\mathcal{B}}^{\mathcal{C}}$，向量 $v \in V$ 在基 $\mathcal{B}$ 下的坐标为列向量 $\xi$，则 $T(v)$ 在基 $\mathcal{C}$ 下的坐标为 $A\xi$：
> $$
> [T(v)]_{\mathcal{C}} = A\, [v]_{\mathcal{B}}.
> $$

> **证明思路**：$v = \sum_j \xi_j e_j$，由线性性 $T(v) = \sum_j \xi_j T(e_j) = \sum_j \xi_j \sum_i a_{ij} f_i = \sum_i \left(\sum_j a_{ij} \xi_j\right) f_i = \sum_i (A\xi)_i f_i$。

<!-- hom_matrix_isomorphism -->
> [!Theorem]
> **线性映射空间与矩阵空间同构**：映射 $\Phi: \mathrm{Hom}_F(V, W) \to M_{m \times n}(F)$，$T \mapsto [T]_{\mathcal{B}}^{\mathcal{C}}$ 是线性空间的同构，从而
> $$
> \dim \mathrm{Hom}_F(V, W) = mn.
> $$

> **证明思路**：$\Phi$ 是线性的（$[S+T]_{\mathcal{B}}^{\mathcal{C}} = [S]_{\mathcal{B}}^{\mathcal{C}} + [T]_{\mathcal{B}}^{\mathcal{C}}$，$[\lambda T]_{\mathcal{B}}^{\mathcal{C}} = \lambda [T]_{\mathcal{B}}^{\mathcal{C}}$）；是单射（矩阵为零则 $T$ 将所有基向量映到零，故 $T = O$）；是满射（给定矩阵 $A$，令 $T(e_j) = \sum_i a_{ij} f_i$ 定义线性映射）。

<!-- composition_and_matrix_product -->
> [!Theorem]
> **复合映射对应矩阵乘积**：设 $U, V, W$ 分别有有序基 $\mathcal{A}, \mathcal{B}, \mathcal{C}$，$S: U \to V$ 和 $T: V \to W$ 为线性映射，则
> $$
> [T \circ S]_{\mathcal{A}}^{\mathcal{C}} = [T]_{\mathcal{B}}^{\mathcal{C}} \cdot [S]_{\mathcal{A}}^{\mathcal{B}}.
> $$

> **证明思路**：对基向量 $g_k \in \mathcal{A}$，$(T \circ S)(g_k)$ 在 $\mathcal{C}$ 下坐标为 $[T]_{\mathcal{B}}^{\mathcal{C}} [S(g_k)]_{\mathcal{B}} = [T]_{\mathcal{B}}^{\mathcal{C}} \cdot ([S]_{\mathcal{A}}^{\mathcal{B}})_{\cdot k}$，这恰好是 $[T]_{\mathcal{B}}^{\mathcal{C}} [S]_{\mathcal{A}}^{\mathcal{B}}$ 的第 $k$ 列。

<!-- linear_operator_similarity -->
> [!Corollary]
> **线性变换在不同基下的矩阵相似**：设 $T: V \to V$ 是线性变换，$\mathcal{B}$ 和 $\mathcal{B}'$ 是 $V$ 的两组有序基，$P$ 是从 $\mathcal{B}$ 到 $\mathcal{B}'$ 的过渡矩阵，则
> $$
> [T]_{\mathcal{B}'} = P^{-1} [T]_{\mathcal{B}}\, P.
> $$
> 即同一线性变换在不同有序基下的矩阵互相相似。

> **证明思路**：由坐标变换公式和矩阵乘积对应复合映射，$[T]_{\mathcal{B}'} = [\mathrm{Id}]_{\mathcal{B}}^{\mathcal{B}'} \cdot [T]_{\mathcal{B}} \cdot [\mathrm{Id}]_{\mathcal{B}'}^{\mathcal{B}} = P^{-1} [T]_{\mathcal{B}} P$。
