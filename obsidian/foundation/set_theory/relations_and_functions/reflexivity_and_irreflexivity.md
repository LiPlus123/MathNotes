---
title: 自反性与反自反性
tags:
  - set_theory
  - foundation
  - relation
---

# 自反性与反自反性

自反性与反自反性描述一个关系是否把每个元素与自身联系起来。它们是刻画序关系、等价关系等重要关系类型的基本性质。

<!-- reflexive_relation_definition -->
> [!Definition]
> **自反关系 Reflexive Relation**：设 $R$ 是集合 $A$ 上的二元关系。若对每个 $a \in A$ 都有
> $$
> aRa,
> $$
> 则称 $R$ 是 $A$ 上的**自反关系**。

<!-- irreflexive_relation_definition -->
> [!Definition]
> **反自反关系 Irreflexive Relation**：设 $R$ 是集合 $A$ 上的二元关系。若对每个 $a \in A$ 都有
> $$
> \neg(aRa),
> $$
> 则称 $R$ 是 $A$ 上的**反自反关系**。

<!-- reflexive_relation_characterization -->
> [!Theorem]
> **自反性的等价条件 Characterization of Reflexivity**：设 $R$ 是集合 $A$ 上的二元关系，则下列命题等价：
> 1. $R$ 是自反的；
> 2. $\mathrm{id}_A \subseteq R$。
> 
> **证明思路**：$\mathrm{id}_A$ 恰由所有 $(a,a)$ 组成，因此它包含于 $R$ 与“每个 $a$ 都满足 $aRa$”完全等价。

<!-- irreflexive_relation_characterization -->
> [!Theorem]
> **反自反性的等价条件 Characterization of Irreflexivity**：设 $R$ 是集合 $A$ 上的二元关系，则下列命题等价：
> 1. $R$ 是反自反的；
> 2. $R \cap \mathrm{id}_A = \varnothing$。
> 
> **证明思路**：若 $(a,a) \in R \cap \mathrm{id}_A$，则 $aRa$ 成立；反之若某个 $aRa$ 成立，则 $(a,a)$ 落入该交集。于是交集为空恰好表示没有元素与自身相关。

> **注**：一个非空集合上的关系不可能同时既自反又反自反；空集上的空关系则同时满足这两种性质。