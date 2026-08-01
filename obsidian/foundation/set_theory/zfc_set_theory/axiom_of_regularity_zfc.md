---
title: 正则公理
tags:
  - set_theory
  - foundation
  - zfc
---

# 正则公理

正则公理排除了“集合无限向下隶属”的病态情形，保证每个非空集合都能找到一个与自身几乎无交的元素。它常被用来排除自属于和长度有限的隶属循环。

<!-- axiom_of_regularity_zfc -->
> [!Axiom]
> **正则公理 Axiom of Regularity**：对任意非空集合 $A$，存在 $x \in A$，使得
> $$
> x \cap A = \varnothing.
> $$

<!-- no_self_membership_theorem -->
> [!Theorem]
> **不存在自属于的集合 No Set Belongs to Itself**：对任意集合 $A$，
> $$
> A \notin A.
> $$
> 
> **证明思路**：若 $A \in A$，则单集 $\{A\}$ 非空。由正则公理存在 $x \in \{A\}$ 使得 $x \cap \{A\} = \varnothing$。但唯一可能的 $x$ 就是 $A$，又因为 $A \in A$ 且 $A \in \{A\}$，故 $A \in A \cap \{A\}$，矛盾。

<!-- no_membership_cycle_theorem -->
> [!Theorem]
> **不存在有限隶属循环 No Finite Membership Cycle**：不存在集合 $A_0,A_1,\ldots,A_{n-1}$ 使得
> $$
> A_0 \in A_1 \in \cdots \in A_{n-1} \in A_0.
> $$
> 
> **证明思路**：设这些集合构成的集合为 $S=\{A_0,\ldots,A_{n-1}\}$。由正则公理，$S$ 有元素 $A_i$ 满足 $A_i \cap S = \varnothing$。但按循环关系有 $A_{i-1} \in A_i$ 且 $A_{i-1} \in S$，从而 $A_{i-1} \in A_i \cap S$，矛盾。