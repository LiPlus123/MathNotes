---
title: 配对公理
tags:
  - set_theory
  - foundation
  - zfc
---

# 配对公理

配对公理保证：给定任意两个集合，可以组成恰好以它们为元素的集合。以此为基础，可以定义单集、无序二元集以及 Kuratowski 序偶，进而递归定义有序 $n$ 元组。

<!-- axiom_of_pairing_zfc -->
> [!Axiom]
> **配对公理 Axiom of Pairing**：对任意集合 $A,B$，存在集合 $C$，使得对每个对象 $x$ 都有
> $$
> x \in C \iff (x=A \text{ 或 } x=B).
> $$

<!-- singleton_definition -->
> [!Definition]
> **单集 Singleton**：对任意集合 $A$，称由配对公理得到的集合
> $$
> \{A\} := \{A,A\}
> $$
> 为以 $A$ 为唯一元素的**单集**。

<!-- unordered_pair_definition -->
> [!Definition]
> **无序对 Unordered Pair**：对任意集合 $A,B$，由配对公理得到的集合
> $$
> \{A,B\}
> $$
> 称为 $A,B$ 的**无序对**。

<!-- ordered_pair_definition -->
> [!Definition]
> **有序对 Ordered Pair**：对任意集合 $A,B$，定义
> $$
> (A,B) := \{\{A\},\{A,B\}\}.
> $$
> 该集合称为 $A,B$ 的**有序对**。

<!-- ordered_pair_equality_theorem -->
> [!Theorem]
> **有序对相等判定 Ordered Pair Equality**：对任意集合 $A,B,C,D$，
> $$
> (A,B) = (C,D) \iff A=C \text{ 且 } B=D.
> $$
> 
> **证明思路**：从 $(A,B)=\{\{A\},\{A,B\}\}$ 的定义出发，利用外延公理比较其元素。单集部分先确定第一坐标相等，再由无序对相等推出第二坐标相等。

<!-- ordered_n_tuple_definition -->
> [!Definition]
> **有序 $n$ 元组 Ordered $n$-tuple**：当 $n \geq 2$ 时，递归定义
> $$
> (A_1,A_2,\ldots,A_n) := ((A_1,A_2,\ldots,A_{n-1}),A_n).
> $$
> 该对象称为**有序 $n$ 元组**。特别地，三元组定义为
> $$
> (A,B,C):=((A,B),C).
> $$

> **注**：在 ZFC 中，有序对和有序 $n$ 元组最终都被解释为集合，因此关系、函数和笛卡尔积都可以在纯集合语言中定义。