---
title: 线性算子的定义
tags:
  - linear_algebra
  - linear_operator
---

# 线性算子的定义

<!-- linear_map_definition -->
> [!Definition]
> **线性映射 Linear Map**（又称**线性算子 Linear Operator**）：设 $V, W$ 是数域 $F$ 上的线性空间，映射 $T: V \to W$ 称为**线性映射**，若满足：
>
> 1. **加法保持**：$\forall u, v \in V,\quad T(u + v) = T(u) + T(v)$
> 2. **数乘保持**：$\forall \lambda \in F,\ \forall v \in V,\quad T(\lambda v) = \lambda T(v)$
>
> 等价地，$T$ 是线性映射当且仅当
> $$
> \forall \lambda, \mu \in F,\ \forall u, v \in V,\quad T(\lambda u + \mu v) = \lambda T(u) + \mu T(v).
> $$

> **注**：
> - 线性映射将零向量映射到零向量：$T(\mathbf{0}) = \mathbf{0}$。
> - 线性映射保持线性组合：$T\!\left(\sum_{i=1}^k \lambda_i v_i\right) = \sum_{i=1}^k \lambda_i T(v_i)$。
> - $V$ 与 $W$ 之间所有线性映射的全体记作 $\mathrm{Hom}_F(V, W)$，简记为 $\mathrm{Hom}(V, W)$。

<!-- linear_transformation_definition -->
> [!Definition]
> **线性变换 Linear Transformation**（又称**线性自同态**）：若 $T: V \to V$ 是线性映射（定义域与陪域相同），则称 $T$ 是 $V$ 上的**线性变换**。$V$ 上所有线性变换的全体记作 $\mathrm{End}_F(V)$，简记为 $\mathrm{End}(V)$。

<!-- linear_isomorphism_definition -->
> [!Definition]
> **线性同构 Linear Isomorphism**：若线性映射 $T: V \to W$ 是双射（既是单射又是满射），则称 $T$ 是 $V$ 到 $W$ 的**线性同构**，并称 $V$ 与 $W$ **同构**，记作 $V \cong W$。

<!-- linear_functional_definition -->
> [!Definition]
> **线性泛函 Linear Functional**：称 $F$ 上线性空间 $V$ 到数域 $F$ 本身的线性映射 $f: V \to F$ 为 $V$ 上的**线性泛函**（线性形式）。

<!-- inverse_of_linear_isomorphism -->
> [!Theorem]
> **线性同构的逆映射**：若 $T: V \to W$ 是线性同构，则其逆映射 $T^{-1}: W \to V$ 也是线性映射，从而也是线性同构。

> **证明思路**：对任意 $\lambda, \mu \in F$，$w_1, w_2 \in W$，令 $v_i = T^{-1}(w_i)$，则
> $$
> T(\lambda v_1 + \mu v_2) = \lambda T(v_1) + \mu T(v_2) = \lambda w_1 + \mu w_2,
> $$
> 因此 $T^{-1}(\lambda w_1 + \mu w_2) = \lambda v_1 + \mu v_2 = \lambda T^{-1}(w_1) + \mu T^{-1}(w_2)$。

<!-- isomorphism_preserves_dimension -->
> [!Theorem]
> **同构保持维数**：若 $V \cong W$，则 $\dim V = \dim W$。

> **证明思路**：设 $T: V \to W$ 为线性同构，$\mathcal{B} = (e_1, \ldots, e_n)$ 为 $V$ 的基，则 $(T(e_1), \ldots, T(e_n))$ 构成 $W$ 的基（利用双射性验证线性无关性与张成性）。

<!-- finite_dim_isomorphism_classification -->
> [!Theorem]
> **有限维线性空间的同构分类**：数域 $F$ 上两个有限维线性空间同构，当且仅当它们的维数相等。特别地，$n$ 维线性空间 $V \cong F^n$。

> **证明思路**：若 $\dim V = \dim W = n$，取 $V$ 的基 $\mathcal{B}$ 和 $W$ 的基 $\mathcal{C}$，定义映射 $T: V \to W$ 将 $\mathcal{B}$ 中第 $i$ 个基向量映射到 $\mathcal{C}$ 中第 $i$ 个基向量，并线性延拓，可验证这是线性同构。
