---
title: 向量组的秩
tags:
  - linear_algebra
  - linear_space
---

# 向量组的秩

<!-- maximal_independent_set_definition -->
> [!Definition]
> **极大线性无关组 Maximal Linearly Independent Subset**：设 $S = \{v_1, v_2, \ldots, v_m\}$ 是线性空间 $V$ 中的有限向量组，$S$ 的子集 $\{v_{i_1}, \ldots, v_{i_r}\}$ 称为 $S$ 的一个**极大线性无关组**，若：
> 1. $v_{i_1}, \ldots, v_{i_r}$ 线性无关；
> 2. $S$ 中任意向量均可由 $v_{i_1}, \ldots, v_{i_r}$ 线性表示（即向 $\{v_{i_1}, \ldots, v_{i_r}\}$ 中再添加 $S$ 中任意其他向量后变为线性相关）。

> **注**：向量组 $S$ 的极大线性无关组恰好是子空间 $\mathrm{span}(S)$ 的一组基。

<!-- rank_of_vector_set_definition -->
> [!Definition]
> **向量组的秩 Rank of a Vector Set**：有限向量组 $S = \{v_1, \ldots, v_m\}$ 的极大线性无关组所含向量的个数称为 $S$ 的**秩**，记作 $\mathrm{rank}(S)$ 或 $r(S)$。特别地，只含零向量的向量组的秩为 $0$。

<!-- rank_well_defined -->
> [!Theorem]
> **秩的合理性**：有限向量组 $S$ 的任意两个极大线性无关组含有相同数量的向量，即 $\mathrm{rank}(S) = \dim\,\mathrm{span}(S)$。

> **证明思路**：$S$ 的两个极大线性无关组均为子空间 $\mathrm{span}(S)$ 的基，由维数的合理性（任意两组基等势）即得。

<!-- rank_and_span -->
> [!Theorem]
> **秩与张成子空间**：有限向量组 $S = \{v_1, \ldots, v_m\}$ 的秩等于其张成子空间的维数：
> $$
> \mathrm{rank}(S) = \dim\,\mathrm{span}(v_1, \ldots, v_m).
> $$

> **证明思路**：极大线性无关组是 $\mathrm{span}(S)$ 的基，故秩等于 $\mathrm{span}(S)$ 的维数。

<!-- rank_properties -->
> [!Theorem]
> **向量组秩的基本性质**：设 $S, T$ 为数域 $F$ 上线性空间 $V$ 中的有限向量组，则：
> 1. $\mathrm{rank}(S) \leq |S|$（秩不超过向量组的向量个数）；$\mathrm{rank}(S) = |S|$ 当且仅当 $S$ 线性无关。
> 2. 若 $S \subseteq T$，则 $\mathrm{rank}(S) \leq \mathrm{rank}(T)$。
> 3. $S$ 与 $T$ 互相可线性表示（即 $\mathrm{span}(S) = \mathrm{span}(T)$）当且仅当 $\mathrm{rank}(S) = \mathrm{rank}(T)$ 且 $S \cup T$ 与 $S$（或 $T$）等秩。
> 4. $\mathrm{rank}(S) = 0$ 当且仅当 $S$ 只含零向量（或为空集）。

> **证明思路**：
> 1. 极大线性无关组是 $S$ 的子集，故其大小不超过 $|S|$；$S$ 线性无关时 $S$ 本身是极大无关组。
> 2. $S$ 的极大无关组也是 $T$ 中的线性无关组，由 Steinitz 引理知 $\mathrm{rank}(S) \leq \mathrm{rank}(T)$。
> 3. 等价于 $\mathrm{span}(S) = \mathrm{span}(T)$，两个空间的维数相等且相互包含即等价。
> 4. 由定义直接验证。

<!-- rank_and_linear_equivalence -->
> [!Definition]
> **向量组的等价 Equivalent Vector Sets**：若有限向量组 $S$ 与 $T$ 满足 $\mathrm{span}(S) = \mathrm{span}(T)$（即 $S$ 中每个向量可由 $T$ 线性表示，$T$ 中每个向量也可由 $S$ 线性表示），则称 $S$ 与 $T$ **等价**。

<!-- rank_equals_dimension_of_span -->
> [!Corollary]
> **向量组等价的判定**：两个有限向量组 $S$ 与 $T$ 等价，当且仅当它们具有相同的张成子空间，等价地，当且仅当它们的极大线性无关组生成同一子空间。

> **证明思路**：直接由"等价"与"张成子空间相等"的定义等价得出。
