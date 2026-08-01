---
title: 分类公理模式
tags:
  - set_theory
  - foundation
  - zfc
---

# 分类公理模式

朴素集合论中的“任意性质都确定一个集合”会导致悖论。ZFC 中只允许在一个既有集合内部按性质筛选元素，这正是分类公理模式的内容。

<!-- axiom_schema_of_specification_zfc -->
> [!Axiom]
> **分类公理模式 Axiom Schema of Specification**：对任意公式 $\varphi(x,p_1,\ldots,p_n)$，若 $A$ 是集合，则存在集合 $B$，使得对每个对象 $x$ 都有
> $$
> x \in B \iff (x \in A \text{ 且 } \varphi(x,p_1,\ldots,p_n)).
> $$
> 通常将 $B$ 记作
> $$
> B = \{x \in A \mid \varphi(x,p_1,\ldots,p_n)\}.
> $$

<!-- empty_set_definition -->
> [!Definition]
> **空集 Empty Set**：取任意集合 $A$，定义
> $$
> \varnothing := \{x \in A \mid x \neq x\}.
> $$
> 由外延公理可知，这样得到的集合与所选 $A$ 无关，称为**空集**。

<!-- intersection_definition -->
> [!Definition]
> **交集 Intersection**：设 $A,B$ 为集合。定义
> $$
> A \cap B := \{x \in A \mid x \in B\}.
> $$

<!-- difference_definition -->
> [!Definition]
> **差集 Difference**：设 $A,B$ 为集合。定义
> $$
> A \setminus B := \{x \in A \mid x \notin B\}.
> $$

<!-- relative_complement_definition -->
> [!Definition]
> **补集 Complement**：设 $U,A$ 为集合且 $A \subseteq U$。定义 $A$ 在 $U$ 中的**补集**为
> $$
> U \setminus A = \{x \in U \mid x \notin A\}.
> $$
> 若上下文中的全集 $U$ 已固定，也记作 $\bar{A}$。

<!-- empty_set_characterization -->
> [!Theorem]
> **空集判定 Empty Set Characterization**：对任意集合 $A$，
> $$
> A=\varnothing \iff \forall x(x \notin A).
> $$
> 
> **证明思路**：一方面，空集按定义没有元素。另一方面，若 $A$ 没有元素，则 $A$ 与 $\varnothing$ 的隶属关系完全相同，由外延公理得 $A=\varnothing$。