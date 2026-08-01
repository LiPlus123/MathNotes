---
title: 传递集与序数
tags:
  - set_theory
  - foundation
  - ordinal
---

# 传递集与序数

传递集是集合论中与隶属关系相容的一类集合。序数则用来抽象良序类型，在 von Neumann 构造下，每个序数都被实现为一个传递且被隶属关系良序的集合。

<!-- transitive_set_definition -->
> [!Definition]
> **传递集 Transitive Set**：集合 $A$ 称为**传递集**，若对每个 $x \in A$ 和每个 $y \in x$，都有
> $$
> y \in A.
> $$
> 等价地，若
> $$
> \bigcup A \subseteq A,
> $$
> 则 $A$ 是传递的。

<!-- well_order_definition -->
> [!Definition]
> **良序 Well-order**：集合 $A$ 上的全序关系 $\leq$ 称为**良序**，若 $A$ 的每个非空子集都有最小元。

<!-- ordinal_definition -->
> [!Definition]
> **序数 Ordinal Number**：集合 $\alpha$ 称为一个**序数**，若
> 1. $\alpha$ 是传递集；
> 2. 隶属关系 $\in$ 在 $\alpha$ 上给出良序。

<!-- element_of_ordinal_is_ordinal_theorem -->
> [!Theorem]
> **序数的元素仍是序数 Elements of an Ordinal Are Ordinals**：若 $\alpha$ 是序数且 $\beta \in \alpha$，则 $\beta$ 也是序数，并且
> $$
> \beta \subseteq \alpha.
> $$
> 
> **证明思路**：由 $\alpha$ 的传递性可知 $\beta \subseteq \alpha$。再将 $\in$ 在 $\alpha$ 上的良序限制到 $\beta$，可得 $\beta$ 也是传递且被 $\in$ 良序。

<!-- ordinals_are_linearly_ordered_by_membership -->
> [!Theorem]
> **序数按隶属线性排序 Ordinals Are Linearly Ordered by Membership**：若 $\alpha,\beta$ 是序数，则恰有一个成立：
> $$
> \alpha \in \beta,\quad \alpha = \beta,\quad \beta \in \alpha.
> $$
> 
> **证明思路**：比较两个序数在共同部分上的良序初段，利用良序集初段的结构性质可得两个序数必可比较，且不可能同时出现两个严格方向。

> **注**：自然数在 von Neumann 构造下都是序数，因此序数理论可看作自然数序结构的推广。