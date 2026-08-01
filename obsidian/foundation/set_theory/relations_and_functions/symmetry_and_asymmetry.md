---
title: 对称性与反对称性
tags:
  - set_theory
  - foundation
  - relation
---

# 对称性与反对称性

对称性讨论“方向互换后关系是否保持”，反对称性则刻画“双向成立时是否只能来自相等元素”。这两种性质在等价关系和偏序关系中分别起核心作用。

<!-- symmetric_relation_definition -->
> [!Definition]
> **对称关系 Symmetric Relation**：设 $R$ 是集合 $A$ 上的二元关系。若对任意 $a,b \in A$，
> $$
> aRb \Rightarrow bRa,
> $$
> 则称 $R$ 是**对称的**。

<!-- antisymmetric_relation_definition -->
> [!Definition]
> **反对称关系 Antisymmetric Relation**：设 $R$ 是集合 $A$ 上的二元关系。若对任意 $a,b \in A$，
> $$
> (aRb \land bRa) \Rightarrow a=b,
> $$
> 则称 $R$ 是**反对称的**。

<!-- symmetric_relation_characterization -->
> [!Theorem]
> **对称性的等价条件 Characterization of Symmetry**：设 $R$ 是集合 $A$ 上的二元关系，则
> $$
> R \text{ 对称 } \iff R = R^{-1}.
> $$
> 
> **证明思路**：若 $R$ 对称，则 $(a,b) \in R$ 当且仅当 $(b,a) \in R$，这正是 $R$ 与 $R^{-1}$ 元素完全相同。反向同理。

<!-- antisymmetric_relation_characterization -->
> [!Theorem]
> **反对称性的等价条件 Characterization of Antisymmetry**：设 $R$ 是集合 $A$ 上的二元关系，则 $R$ 反对称，当且仅当
> $$
> (a,b) \in R \cap R^{-1} \Rightarrow a=b
> $$
> 对任意 $a,b \in A$ 都成立。
> 
> **证明思路**：$(a,b) \in R \cap R^{-1}$ 等价于同时有 $aRb$ 与 $bRa$，于是该条件只是反对称定义的集合化表达。

> **注**：反对称与“非对称”不同。一个关系既可能对称又反对称，例如恒等关系；而严格大小关系是反自反且反对称之外更强的非对称关系。