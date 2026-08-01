---
title: 集合的势与基数
tags:
  - set_theory
  - foundation
  - cardinal
---

# 集合的势与基数

比较不同集合“有多少元素”需要超越有限计数。集合的势以双射为标准刻画大小，而基数则把这种大小类型当作数学对象来研究。

<!-- equipotent_definition -->
> [!Definition]
> **等势 Equipotent Sets**：设 $A,B$ 为集合。若存在双射
> $$
> f: A \to B,
> $$
> 则称 $A$ 与 $B$ **等势**，记作
> $$
> A \approx B.
> $$

<!-- cardinality_definition -->
> [!Definition]
> **势 Cardinality**：集合 $A$ 的**势**是指与 $A$ 等势的全部集合所代表的大小类型。通常用 $|A|$ 表示 $A$ 的势。

<!-- finite_and_infinite_definition -->
> [!Definition]
> **有限集与无限集 Finite and Infinite Sets**：集合 $A$ 称为**有限集**，若存在自然数 $n \in \omega$ 使得 $A$ 与
> $$
> n = \{0,1,\ldots,n-1\}
> $$
> 等势。若 $A$ 不是有限集，则称其为**无限集**。

<!-- countable_definition -->
> [!Definition]
> **可数集与不可数集 Countable and Uncountable Sets**：集合 $A$ 称为**可数集**，若 $A$ 是有限集，或与 $\omega$ 等势。若 $A$ 不是可数集，则称其为**不可数集**。

<!-- finite_cardinal_definition -->
> [!Definition]
> **有限集的基数 Cardinal Number of a Finite Set**：若有限集 $A$ 与自然数 $n$ 等势，则称 $n$ 是 $A$ 的**基数**，记作
> $$
> |A| = n.
> $$

<!-- equipotence_is_equivalence_relation -->
> [!Theorem]
> **等势是等价关系 Equipotence Is an Equivalence Relation**：集合类上的等势关系 $\approx$ 满足自反性、对称性与传递性。
> 
> **证明思路**：自反性由恒等函数给出，对称性由双射的逆函数给出，传递性由双射的复合给出。

<!-- proper_subset_of_finite_set_theorem -->
> [!Theorem]
> **有限集不同于其真子集 A Finite Set Is Not Equipotent to a Proper Subset**：若 $A$ 是有限集而 $B \subsetneq A$，则
> $$
> A \not\approx B.
> $$
> 
> **证明思路**：可对有限集的基数做归纳，或利用抽屉原理说明有限集合不可能与其真子集存在双射。