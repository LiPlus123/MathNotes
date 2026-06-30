---
title: 基与维数
tags:
  - linear_algebra
  - linear_space
---

# 基与维数

<!-- basis_definition -->
> [!Definition]
> **基 Basis**：设 $V$ 是数域 $F$ 上的线性空间，$\mathcal{B} = \{e_1, e_2, \ldots, e_n\} \subseteq V$（有限集）称为 $V$ 的一组**基**，若：
> 1. $e_1, e_2, \ldots, e_n$ 线性无关；
> 2. $V = \mathrm{span}(e_1, e_2, \ldots, e_n)$，即 $V$ 中每个向量均可由 $e_1, \ldots, e_n$ 线性表示。

> **注**：满足条件 1 和 2 的等价说法：$\mathcal{B}$ 是 $V$ 的**极大线性无关组**，即 $\mathcal{B}$ 线性无关，且向 $\mathcal{B}$ 中添加任意 $v \in V \setminus \mathcal{B}$ 后变为线性相关。

<!-- basis_existence -->
> [!Theorem]
> **基的存在性**：每个非零有限维线性空间都有基。

> **证明思路**：若 $V \neq \{\mathbf{0}\}$，取任意非零向量 $v_1$，若 $\mathrm{span}(v_1) \neq V$，则由线性无关组的扩充定理逐步添加向量；由于 $V$ 有限维，此过程必在有限步终止。

<!-- dimension_definition -->
> [!Definition]
> **维数 Dimension**：设 $V$ 是数域 $F$ 上的有限维线性空间，其任意一组基所含向量的个数称为 $V$ 的**维数**，记作 $\dim_F V$ 或 $\dim V$。特别地，$\dim\{\mathbf{0}\} = 0$。若 $V$ 不存在有限基，则称 $V$ 为**无穷维线性空间**。

<!-- dimension_well_defined -->
> [!Theorem]
> **维数的合理性**：有限维线性空间 $V$ 的任意两组基含有相同数量的向量。

> **证明思路**：设 $\mathcal{B} = \{e_1, \ldots, e_m\}$ 和 $\mathcal{B}' = \{f_1, \ldots, f_n\}$ 均为 $V$ 的基。由于 $\mathcal{B}'$ 线性无关且每个 $f_i$ 均可由 $\mathcal{B}$ 表示，由 Steinitz 替换引理得 $n \leq m$；对称地 $m \leq n$，故 $m = n$。

<!-- coordinate_definition -->
> [!Definition]
> **坐标 Coordinates**：设 $\mathcal{B} = (e_1, e_2, \ldots, e_n)$ 是 $n$ 维线性空间 $V$ 的一组**有序基**，则对任意 $v \in V$，存在唯一的 $\xi_1, \ldots, \xi_n \in F$ 使得
> $$
> v = \xi_1 e_1 + \xi_2 e_2 + \cdots + \xi_n e_n.
> $$
> 称 $(\xi_1, \xi_2, \ldots, \xi_n)^T \in F^n$ 为向量 $v$ 在基 $\mathcal{B}$ 下的**坐标**（坐标向量）。

> **注**：坐标的唯一性由基的线性无关性保证。基的不同选取会导致坐标不同，坐标变换公式将在"坐标变换"节中讨论。

<!-- dimension_of_subspace -->
> [!Theorem]
> **子空间的维数**：设 $V$ 是 $n$ 维线性空间，$W \leq V$，则 $\dim W \leq n$；且 $\dim W = n$ 当且仅当 $W = V$。

> **证明思路**：$W$ 的任意线性无关组也是 $V$ 中的线性无关组，由 Steinitz 引理知其大小不超过 $n$，故 $W$ 是有限维的且 $\dim W \leq n$。若 $\dim W = n$，则 $W$ 的基也是 $V$ 的基，故 $W = V$。

<!-- basis_extension_theorem -->
> [!Theorem]
> **基的扩充定理**：设 $V$ 是 $n$ 维线性空间，$v_1, \ldots, v_k \in V$（$k \leq n$）线性无关，则存在 $v_{k+1}, \ldots, v_n \in V$，使得 $v_1, \ldots, v_n$ 构成 $V$ 的一组基。

> **证明思路**：若 $\mathrm{span}(v_1, \ldots, v_k) \neq V$，反复利用线性无关组扩充定理添加新向量，直到张成全空间；由维数有限，此过程在恰好 $n - k$ 步后终止。

<!-- isomorphism_same_dimension -->
> [!Theorem]
> **有限维线性空间的同构定理**：数域 $F$ 上两个有限维线性空间 $V$ 与 $W$ 同构（存在双射线性映射）当且仅当 $\dim V = \dim W$。特别地，每个 $n$ 维线性空间均与 $F^n$ 同构。

> **证明思路**：若 $\dim V = \dim W = n$，分别取基 $\mathcal{B}_V = (e_1, \ldots, e_n)$ 和 $\mathcal{B}_W = (f_1, \ldots, f_n)$，定义 $\varphi: V \to W$ 为 $\varphi(e_i) = f_i$ 并线性扩充，可验证 $\varphi$ 是线性同构。反之，线性同构将线性无关组映射为线性无关组，故保持基的大小，从而维数相等。
