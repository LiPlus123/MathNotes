---
title: 等价关系
tags:
  - set_theory
  - foundation
  - relation
---

# 等价关系

等价关系把对象按“本质相同”进行归类。等价类与商集是处理分类问题、同余关系和商结构时的基本工具。

<!-- equivalence_relation_definition -->
> [!Definition]
> **等价关系 Equivalence Relation**：集合 $A$ 上的二元关系 $\sim$ 若满足自反性、对称性和传递性，则称为 $A$ 上的**等价关系**。

<!-- equivalence_class_definition -->
> [!Definition]
> **等价类 Equivalence Class**：设 $\sim$ 是集合 $A$ 上的等价关系，$a \in A$。定义 $a$ 的**等价类**为
> $$
> [a] := \{x \in A \mid x \sim a\}.
> $$

<!-- quotient_set_definition -->
> [!Definition]
> **商集 Quotient Set**：设 $\sim$ 是集合 $A$ 上的等价关系。所有等价类组成的集合
> $$
> A/{\sim} := \{[a] \mid a \in A\}
> $$
> 称为 $A$ 关于 $\sim$ 的**商集**。

<!-- partition_definition -->
> [!Definition]
> **划分 Partition**：集合 $A$ 的一个子集族 $\mathcal{P}$ 称为 $A$ 的一个**划分**，若满足
> 1. 每个 $X \in \mathcal{P}$ 都非空；
> 2. 若 $X,Y \in \mathcal{P}$ 且 $X \neq Y$，则 $X \cap Y = \varnothing$；
> 3. $\bigcup \mathcal{P} = A$。

<!-- equivalence_class_characterization -->
> [!Theorem]
> **等价类相等或不交 Equivalence Classes Are Equal or Disjoint**：设 $\sim$ 是集合 $A$ 上的等价关系，$a,b \in A$。则
> $$
> [a]=[b] \iff a \sim b,
> $$
> 且若 $[a] \neq [b]$，则
> $$
> [a] \cap [b] = \varnothing.
> $$
> 
> **证明思路**：若 $a \sim b$，用对称性和传递性证明两个等价类互相包含。若两类有公共元素，则借助传递性可推出 $a \sim b$，从而两类相等。

<!-- equivalence_relation_partition_correspondence -->
> [!Theorem]
> **等价关系与划分的对应 Correspondence Between Equivalence Relations and Partitions**：集合 $A$ 上的每个等价关系都确定 $A$ 的一个划分；反之，$A$ 的每个划分都唯一确定一个等价关系。
> 
> **证明思路**：前向由等价类相等或不交得到。后向对给定划分，定义 $a \sim b$ 当且仅当 $a,b$ 落在同一个分块中，再验证自反、对称、传递三条性质。