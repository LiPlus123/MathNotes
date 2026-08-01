---
title: 二元关系的定义
tags:
  - set_theory
  - foundation
  - relation
---

# 二元关系的定义

集合论中，关系可以看作若干有序组所成的集合。特别地，二元关系是定义最早、应用最广的一类关系，它为函数、序关系和等价关系提供共同语言。

<!-- n_ary_relation_definition -->
> [!Definition]
> **$n$ 元关系 $n$-ary Relation**：设 $A_1,A_2,\ldots,A_n$ 为集合。集合
> $$
> R \subseteq A_1 \times A_2 \times \cdots \times A_n
> $$
> 称为 $A_1,A_2,\ldots,A_n$ 上的一个**$n$ 元关系**。若
> $$
> (a_1,a_2,\ldots,a_n) \in R,
> $$
> 则称 $a_1,a_2,\ldots,a_n$ 满足关系 $R$。

<!-- binary_relation_definition -->
> [!Definition]
> **二元关系 Binary Relation**：设 $A,B$ 为集合。集合
> $$
> R \subseteq A \times B
> $$
> 称为从 $A$ 到 $B$ 的一个**二元关系**。当 $A=B$ 时，称 $R$ 是 $A$ 上的二元关系。若 $(a,b) \in R$，也记作
> $$
> aRb.
> $$

<!-- inverse_relation_definition -->
> [!Definition]
> **逆关系 Inverse Relation**：设 $R \subseteq A \times B$ 为二元关系。定义
> $$
> R^{-1} := \{(b,a) \in B \times A \mid (a,b) \in R\}.
> $$
> 该关系称为 $R$ 的**逆关系**。

<!-- composition_of_relations_definition -->
> [!Definition]
> **关系的复合 Composition of Relations**：设 $R \subseteq A \times B$，$S \subseteq B \times C$。定义
> $$
> S \circ R := \{(a,c) \in A \times C \mid \exists b \in B\bigl((a,b) \in R \land (b,c) \in S\bigr)\}.
> $$
> 该关系称为 $R$ 与 $S$ 的**复合**。

<!-- identity_relation_definition -->
> [!Definition]
> **恒等关系 Identity Relation**：设 $A$ 为集合。定义
> $$
> \mathrm{id}_A := \{(a,a) \in A \times A \mid a \in A\}.
> $$
> 该关系称为 $A$ 上的**恒等关系**。

<!-- inverse_and_composition_properties -->
> [!Theorem]
> **二元关系运算的基本性质 Basic Properties of Relation Operations**：设 $R \subseteq A \times B$，$S \subseteq B \times C$，$T \subseteq C \times D$，则
> 1. $(R^{-1})^{-1} = R$；
> 2. $(S \circ R)^{-1} = R^{-1} \circ S^{-1}$；
> 3. $T \circ (S \circ R) = (T \circ S) \circ R$；
> 4. $R \circ \mathrm{id}_A = R$，$\mathrm{id}_B \circ R = R$。
> 
> **证明思路**：逐条对任意有序对展开定义，验证两边隶属条件等价，再用外延公理得到集合相等。