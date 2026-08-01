---
title: 外延公理
tags:
  - set_theory
  - foundation
  - zfc
---

# 外延公理

在 ZFC 集合论中，集合由其元素完全决定。外延公理刻画了这一基本思想，并由此导出集合相等与子集关系的基本判定准则。

<!-- axiom_of_extensionality_zfc -->
> [!Axiom]
> **外延公理 Axiom of Extensionality**：对任意集合 $A,B$，若对每个对象 $x$ 都有
> $$
> x \in A \iff x \in B,
> $$
> 则 $A=B$。

<!-- subset_definition -->
> [!Definition]
> **子集 Subset**：设 $A,B$ 为集合。若对每个对象 $x$，只要 $x \in A$ 就有 $x \in B$，则称 $A$ 是 $B$ 的**子集**，记作 $A \subseteq B$。

<!-- proper_subset_definition -->
> [!Definition]
> **真子集 Proper Subset**：设 $A,B$ 为集合。若 $A \subseteq B$ 且 $A \neq B$，则称 $A$ 是 $B$ 的**真子集**，记作 $A \subsetneq B$。

<!-- subset_characterization_by_membership -->
> [!Theorem]
> **子集判定等价条件 Subset Characterization**：对任意集合 $A,B$，
> $$
> A \subseteq B \iff \forall x(x \in A \Rightarrow x \in B).
> $$
> 
> **证明思路**：这是子集定义的直接形式化重述。

<!-- set_equality_by_mutual_inclusion -->
> [!Theorem]
> **集合相等的等价条件 Equality by Mutual Inclusion**：对任意集合 $A,B$，
> $$
> A=B \iff (A \subseteq B \text{ 且 } B \subseteq A).
> $$
> 
> **证明思路**：必要性由相等集合有相同元素直接得到。充分性由互相包含推出任意对象对 $A,B$ 的隶属关系等价，再由外延公理得 $A=B$。