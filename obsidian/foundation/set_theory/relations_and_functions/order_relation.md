---
title: 序关系
tags:
  - set_theory
  - foundation
  - relation
  - order
---

# 序关系

序关系用来比较元素的先后或大小。根据是否允许相等、是否任意两元素都可比较，可得到偏序、严格偏序、全序和严格全序等基本类型。

<!-- partial_order_definition -->
> [!Definition]
> **偏序关系 Partial Order**：集合 $A$ 上的二元关系 $\leq$ 若满足自反性、反对称性和传递性，则称为 $A$ 上的**偏序关系**。此时称 $(A,\leq)$ 为**偏序集**。

<!-- strict_partial_order_definition -->
> [!Definition]
> **严格偏序关系 Strict Partial Order**：集合 $A$ 上的二元关系 $<$ 若满足反自反性和传递性，则称为 $A$ 上的**严格偏序关系**。

<!-- total_order_definition -->
> [!Definition]
> **全序关系 Total Order**：偏序关系 $\leq$ 若还满足对任意 $a,b \in A$，至少有一个成立：
> $$
> a \leq b \text{ 或 } b \leq a,
> $$
> 则称 $\leq$ 为**全序关系**，$(A,\leq)$ 称为**全序集**。

<!-- strict_total_order_definition -->
> [!Definition]
> **严格全序关系 Strict Total Order**：严格偏序关系 $<$ 若还满足对任意不同的 $a,b \in A$，恰有一个成立：
> $$
> a < b \text{ 或 } b < a,
> $$
> 则称 $<$ 为**严格全序关系**。

<!-- upper_and_lower_bound_definition -->
> [!Definition]
> **上界与下界 Upper Bound and Lower Bound**：设 $(A,\leq)$ 是偏序集，$B \subseteq A$。若 $u \in A$ 满足对每个 $b \in B$ 都有 $b \leq u$，则称 $u$ 是 $B$ 的**上界**。若 $l \in A$ 满足对每个 $b \in B$ 都有 $l \leq b$，则称 $l$ 是 $B$ 的**下界**。

<!-- supremum_and_infimum_definition -->
> [!Definition]
> **上确界与下确界 Supremum and Infimum**：设 $(A,\leq)$ 是偏序集，$B \subseteq A$。若 $s$ 是 $B$ 的上界，且对每个上界 $u$ 都有 $s \leq u$，则称 $s$ 是 $B$ 的**上确界**，记作 $\sup B$。若 $t$ 是 $B$ 的下界，且对每个下界 $l$ 都有 $l \leq t$，则称 $t$ 是 $B$ 的**下确界**，记作 $\inf B$。

<!-- maximal_minimal_greatest_least_definition -->
> [!Definition]
> **极大元、极小元、最大元、最小元 Maximal, Minimal, Greatest and Least Elements**：设 $(A,\leq)$ 是偏序集，$B \subseteq A$。
> 1. 若 $m \in B$ 且对每个 $b \in B$，只要 $m \leq b$ 就有 $m=b$，则称 $m$ 是 $B$ 的**极大元**；
> 2. 若 $n \in B$ 且对每个 $b \in B$，只要 $b \leq n$ 就有 $b=n$，则称 $n$ 是 $B$ 的**极小元**；
> 3. 若 $g \in B$ 且对每个 $b \in B$ 都有 $b \leq g$，则称 $g$ 是 $B$ 的**最大元**；
> 4. 若 $h \in B$ 且对每个 $b \in B$ 都有 $h \leq b$，则称 $h$ 是 $B$ 的**最小元**。

<!-- greatest_and_least_unique -->
> [!Theorem]
> **最大元与最小元的唯一性 Uniqueness of Greatest and Least Elements**：在偏序集中，一个子集若有最大元，则最大元唯一；若有最小元，则最小元唯一。
> 
> **证明思路**：若 $g_1,g_2$ 都是最大元，则 $g_1 \leq g_2$ 且 $g_2 \leq g_1$，由反对称性得 $g_1=g_2$。最小元同理。