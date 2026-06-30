---
title: 线性算子空间
tags:
  - linear_algebra
  - linear_operator
---

# 线性算子空间

<!-- zero_operator_definition -->
> [!Definition]
> **零算子 Zero Operator**：从 $V$ 到 $W$ 的**零算子** $O: V \to W$ 定义为将所有向量映射到零向量：
> $$
> O(v) = \mathbf{0},\quad \forall v \in V.
> $$
> 零算子是线性映射，满足 $\ker O = V$，$\mathrm{Im}\, O = \{\mathbf{0}\}$。

<!-- identity_operator_definition -->
> [!Definition]
> **恒等算子 Identity Operator**：$V$ 上的**恒等算子** $\mathrm{Id}_V: V \to V$ 定义为
> $$
> \mathrm{Id}_V(v) = v,\quad \forall v \in V.
> $$
> 恒等算子是线性同构，满足 $\ker \mathrm{Id}_V = \{\mathbf{0}\}$，$\mathrm{Im}\, \mathrm{Id}_V = V$。

<!-- linear_operator_addition_scalar_multiplication -->
> [!Definition]
> **线性映射的加法与数乘**：设 $S, T \in \mathrm{Hom}_F(V, W)$，$\lambda \in F$，定义逐点运算：
> $$
> (S + T)(v) = S(v) + T(v),\qquad (\lambda T)(v) = \lambda \cdot T(v),\quad \forall v \in V.
> $$
> 可验证 $S + T$ 与 $\lambda T$ 也是线性映射，故上述运算在 $\mathrm{Hom}_F(V, W)$ 上封闭。

<!-- hom_is_linear_space -->
> [!Theorem]
> **线性映射空间**：在上述加法与数乘下，$\mathrm{Hom}_F(V, W)$ 构成数域 $F$ 上的线性空间，其中零元为零算子 $O$，$T$ 的负元为 $(-T)(v) = -T(v)$。

> **证明思路**：逐一验证线性空间的八条公理，均由 $W$ 中向量的运算性质直接继承。

<!-- dimension_of_hom -->
> [!Theorem]
> **线性映射空间的维数**：设 $V, W$ 是数域 $F$ 上的有限维线性空间，$\dim V = n$，$\dim W = m$，则
> $$
> \dim \mathrm{Hom}_F(V, W) = mn.
> $$

> **证明思路**：设 $\mathcal{B} = (e_1, \ldots, e_n)$ 为 $V$ 的基，$\mathcal{C} = (f_1, \ldots, f_m)$ 为 $W$ 的基。对每对 $(i, j)$（$1 \leq i \leq n,\ 1 \leq j \leq m$），定义线性映射 $E_{ji}$ 满足 $E_{ji}(e_k) = \delta_{ik} f_j$。则 $\{E_{ji}\}$ 共 $mn$ 个，构成 $\mathrm{Hom}_F(V, W)$ 的基：任意 $T \in \mathrm{Hom}_F(V, W)$ 由 $T(e_1), \ldots, T(e_n)$ 唯一确定，每个 $T(e_i) = \sum_{j=1}^m a_{ji} f_j$，故 $T = \sum_{i,j} a_{ji} E_{ji}$，且系数唯一。

<!-- composition_of_linear_maps -->
> [!Definition]
> **线性映射的复合**：设 $T: V \to W$，$S: W \to U$ 为线性映射，其**复合**（乘积）定义为
> $$
> (S \circ T)(v) = S(T(v)),\quad \forall v \in V.
> $$

<!-- composition_is_linear -->
> [!Theorem]
> **复合映射的线性性**：若 $T: V \to W$ 和 $S: W \to U$ 均为线性映射，则 $S \circ T: V \to U$ 也是线性映射。

> **证明思路**：$(S \circ T)(\lambda u + \mu v) = S(T(\lambda u + \mu v)) = S(\lambda T(u) + \mu T(v)) = \lambda S(T(u)) + \mu S(T(v)) = \lambda (S \circ T)(u) + \mu (S \circ T)(v)$。

<!-- composition_properties -->
> [!Theorem]
> **复合的运算性质**：设线性映射 $T: V \to W$，$S: W \to U$，$R: U \to X$，$T': V \to W$，$\lambda \in F$，则：
> 1. **结合律**：$R \circ (S \circ T) = (R \circ S) \circ T$
> 2. **对加法左分配**：$S \circ (T + T') = S \circ T + S \circ T'$
> 3. **对加法右分配**：$(S + S') \circ T = S \circ T + S' \circ T$（其中 $S': W \to U$）
> 4. **与数乘相容**：$(\lambda S) \circ T = \lambda(S \circ T) = S \circ (\lambda T)$
> 5. **恒等算子**：$\mathrm{Id}_W \circ T = T$，$S \circ \mathrm{Id}_W = S$

> **证明思路**：对任意向量逐点验证，每条性质均直接由 $U$（或 $X$）中的运算性质与线性性推出。
