---
title: 外延公理
tags:
  - set_theory
  - foundation
  - nbg
---

# 外延公理

在 NBG 集合论中，基本对象是类。集合是某些类，真类则是不能作为任何类元素出现的类。类的外延公理说明：类同样由其成员完全决定。

<!-- axiom_of_extensionality_nbg -->
> [!Axiom]
> **类的外延公理 Axiom of Extensionality for Classes**：对任意类 $A,B$，若对每个集合 $x$ 都有
> $$
> x \in A \iff x \in B,
> $$
> 则 $A=B$。

<!-- proper_class_definition -->
> [!Definition]
> **真类 Proper Class**：若类 $A$ 不是集合，则称 $A$ 为**真类**。

<!-- universal_class_definition -->
> [!Definition]
> **全类 Universal Class**：定义
> $$
> V := \{x \mid x=x\}.
> $$
> 该类称为**全类**，即一切集合所成的类。

<!-- russell_class_definition -->
> [!Definition]
> **罗素类 Russell Class**：定义
> $$
> R := \{x \mid x \notin x\}.
> $$
> 该类称为**罗素类**。

<!-- subclass_definition -->
> [!Definition]
> **子类 Subclass**：设 $A,B$ 为类。若对每个集合 $x$，只要 $x \in A$ 就有 $x \in B$，则称 $A$ 是 $B$ 的**子类**，记作
> $$
> A \subseteq B.
> $$

<!-- universal_and_russell_are_proper_classes -->
> [!Theorem]
> **全类与罗素类都是真类 Universal and Russell Classes Are Proper**：类 $V$ 与类 $R$ 都不是真集合。
> 
> **证明思路**：若 $V$ 是集合，则由 NBG 中适用于集合的正则性可推出 $V \notin V$，但按定义一切集合都属于 $V$，矛盾。若 $R$ 是集合，则由定义有
> $$
> R \in R \iff R \notin R,
> $$
> 矛盾，因此 $R$ 也是真类。