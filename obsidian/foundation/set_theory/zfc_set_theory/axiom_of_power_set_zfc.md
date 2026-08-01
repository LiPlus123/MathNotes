---
title: 幂集公理
tags:
  - set_theory
  - foundation
  - zfc
---

# 幂集公理

幂集公理保证：任一集合的全部子集构成一个集合。它使得“由集合产生集合”的操作更为丰富，并为笛卡尔积等构造提供了容器。

<!-- axiom_of_power_set_zfc -->
> [!Axiom]
> **幂集公理 Axiom of Power Set**：对任意集合 $A$，存在集合 $P$，使得对每个对象 $x$ 都有
> $$
> x \in P \iff x \subseteq A.
> $$
> 该集合记作 $\mathcal{P}(A)$。

<!-- power_set_definition -->
> [!Definition]
> **幂集 Power Set**：集合 $A$ 的全体子集所成的集合
> $$
> \mathcal{P}(A) := \{X \mid X \subseteq A\}
> $$
> 称为 $A$ 的**幂集**。

<!-- cartesian_product_definition -->
> [!Definition]
> **笛卡尔积 Cartesian Product**：设 $A,B$ 为集合。定义
> $$
> A \times B := \{z \in \mathcal{P}(\mathcal{P}(A \cup B)) \mid \exists a \in A\ \exists b \in B\ (z=(a,b))\}.
> $$
> 等价地，$A \times B$ 是所有满足 $a \in A$ 且 $b \in B$ 的有序对 $(a,b)$ 所成的集合。

<!-- power_set_monotonicity -->
> [!Theorem]
> **幂集的单调性 Monotonicity of Power Set**：对任意集合 $A,B$，若 $A \subseteq B$，则
> $$
> \mathcal{P}(A) \subseteq \mathcal{P}(B).
> $$
> 
> **证明思路**：任取 $X \in \mathcal{P}(A)$，则 $X \subseteq A$。由 $A \subseteq B$ 得 $X \subseteq B$，于是 $X \in \mathcal{P}(B)$。

<!-- cartesian_product_membership_characterization -->
> [!Theorem]
> **笛卡尔积的元素判定 Cartesian Product Characterization**：对任意集合 $A,B,z$，
> $$
> z \in A \times B \iff \exists a \in A\ \exists b \in B\ (z=(a,b)).
> $$
> 
> **证明思路**：这是笛卡尔积定义的直接展开。

<!-- cartesian_product_basic_properties -->
> [!Theorem]
> **笛卡尔积的基本性质 Basic Properties of Cartesian Product**：对任意集合 $A,B,C,D$，有
> 1. 若 $A \subseteq C$ 且 $B \subseteq D$，则 $A \times B \subseteq C \times D$；
> 2. $A \times \varnothing = \varnothing$ 且 $\varnothing \times A = \varnothing$；
> 3. 若 $A,B$ 都非空，则 $A \times B$ 非空。
> 
> **证明思路**：分别利用笛卡尔积的元素判定进行逐点验证即可。