# 链复形的同调

## 循环、边缘与同调群

<!-- cycles_and_boundaries_def -->
> [!Definition]
> **循环与边缘 Cycles and Boundaries**：设 $(C_\bullet, \partial)$ 是 $R$-模的链复形。对每个 $n \in \mathbb{Z}$，定义：
> - **$n$-循环群**（$n$-cycles）：$Z_n(C_\bullet) = \ker\partial_n \subseteq C_n$；
> - **$n$-边缘群**（$n$-boundaries）：$B_n(C_\bullet) = \mathrm{im}\,\partial_{n+1} \subseteq C_n$。
>
> 由边界条件 $\partial_n \circ \partial_{n+1} = 0$，可知 $B_n(C_\bullet) \subseteq Z_n(C_\bullet)$，故 $B_n(C_\bullet)$ 是 $Z_n(C_\bullet)$ 的子模。

<!-- homology_def -->
> [!Definition]
> **同调群 Homology**：链复形 $(C_\bullet, \partial)$ 的**第 $n$ 个同调群**（$n$-th homology group）定义为商模：
> $$
> H_n(C_\bullet) = Z_n(C_\bullet) / B_n(C_\bullet) = \ker\partial_n / \mathrm{im}\,\partial_{n+1}.
> $$
> $H_n(C_\bullet)$ 的元素称为**同调类**（homology classes）。元素 $c \in Z_n(C_\bullet)$ 所在的同调类记作 $[c] \in H_n(C_\bullet)$。若 $[c] = 0$，即 $c \in B_n(C_\bullet)$，则称 $c$ 是**正合**的（exact）。

> **注**：同调群 $H_n(C_\bullet)$ 度量了链复形在第 $n$ 级的"正合亏量"：$H_n = 0$ 当且仅当链复形在 $n$ 处正合（即 $\ker\partial_n = \mathrm{im}\,\partial_{n+1}$）。

## 上同调

<!-- cohomology_def -->
> [!Definition]
> **上同调群 Cohomology**：上链复形 $(C^\bullet, d)$ 的**第 $n$ 个上同调群**（$n$-th cohomology group）定义为：
> $$
> H^n(C^\bullet) = \ker d^n / \mathrm{im}\,d^{n-1} = Z^n(C^\bullet) / B^n(C^\bullet),
> $$
> 其中 $Z^n = \ker d^n$ 称为**上循环群**（cocycles），$B^n = \mathrm{im}\,d^{n-1}$ 称为**上边缘群**（coboundaries）。

## 拟同构

<!-- quasi_isomorphism_def -->
> [!Definition]
> **拟同构 Quasi-isomorphism**：链映射 $f_\bullet: C_\bullet \to D_\bullet$ 称为**拟同构**（quasi-isomorphism），若对所有 $n \in \mathbb{Z}$，诱导的同调群同态
> $$
> H_n(f): H_n(C_\bullet) \xrightarrow{\sim} H_n(D_\bullet)
> $$
> 是同构。

> **注**：拟同构是同调代数的核心概念之一。两个链复形可以结构迥异而同调相同，拟同构正是刻画"同调等价"的链映射。在导出范畴 $D(R\text{-}\mathbf{Mod})$ 中，拟同构被正式地"局部化"为同构，从而使所有拟同构链复形视为等同。

<!-- exact_complex_def -->
> [!Definition]
> **正合复形 Exact Complex (Acyclic Complex)**：链复形 $(C_\bullet, \partial)$ 称为**正合的**（exact）或**无环的**（acyclic），若对所有 $n \in \mathbb{Z}$，$H_n(C_\bullet) = 0$，即链复形在每一级均正合：
> $$
> \ker\partial_n = \mathrm{im}\,\partial_{n+1}.
> $$

> **注**：正合复形到零复形的链映射是拟同构。投射分解、入射分解均给出与原模拟同构的正合（或几乎正合）复形，这是导出函子计算的基础。
