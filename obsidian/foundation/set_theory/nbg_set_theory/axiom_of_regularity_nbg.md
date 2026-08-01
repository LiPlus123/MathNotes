---
title: 正则公理
tags:
  - set_theory
  - foundation
  - nbg
---

# 正则公理

NBG 中的正则性仍然首先约束集合的隶属结构，但由于类语言的加入，它也可以被表述为关于任一非空类都能找到一个与其本身不相交的集合成员。

<!-- axiom_of_regularity_nbg -->
> [!Axiom]
> **类的正则公理 Axiom of Regularity for Classes**：对任意非空类 $A$，存在集合 $x \in A$，使得
> $$
> x \cap A = \varnothing.
> $$

<!-- no_self_membership_in_nbg -->
> [!Theorem]
> **不存在自属于的集合 No Set Belongs to Itself in NBG**：对任意集合 $A$，
> $$
> A \notin A.
> $$
> 
> **证明思路**：将单类 $\{A\}$ 看作非空类并应用正则公理，论证与 ZFC 中完全相同。

<!-- no_membership_cycle_in_nbg -->
> [!Theorem]
> **不存在有限隶属循环 No Finite Membership Cycle in NBG**：不存在集合 $A_0,A_1,\ldots,A_{n-1}$ 使得
> $$
> A_0 \in A_1 \in \cdots \in A_{n-1} \in A_0.
> $$
> 
> **证明思路**：考虑由这些集合组成的类或集合，应用正则公理即可排除循环。