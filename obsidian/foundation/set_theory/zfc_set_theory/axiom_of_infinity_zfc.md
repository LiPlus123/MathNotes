---
title: 无穷公理
tags:
  - set_theory
  - foundation
  - zfc
---

# 无穷公理

无穷公理保证至少存在一个包含空集并对后继运算封闭的集合。它使自然数可以在集合论内部定义出来，并赋予递归和归纳以集合论基础。

<!-- successor_definition -->
> [!Definition]
> **后继 Successor**：设 $x$ 为集合，定义 $x$ 的**后继**为
> $$
> x^+ := x \cup \{x\}.
> $$

<!-- inductive_set_definition -->
> [!Definition]
> **归纳集 Inductive Set**：集合 $I$ 称为**归纳集**，若满足
> 1. $\varnothing \in I$；
> 2. 对每个 $x \in I$，都有 $x^+ \in I$。

<!-- axiom_of_infinity_zfc -->
> [!Axiom]
> **无穷公理 Axiom of Infinity**：存在归纳集。

<!-- natural_number_definition -->
> [!Definition]
> **自然数 Natural Number**：定义
> $$
> \omega := \bigcap \{I \in \mathcal{P}(J) \mid I \text{ 是归纳集}\},
> $$
> 其中 $J$ 是任意一个归纳集。集合 $\omega$ 称为**自然数集**，其元素称为**自然数**。

> **注**：由定义可知，自然数按 von Neumann 方式实现：
> $$
> 0:=\varnothing,\quad 1:=0^+=\{0\},\quad 2:=1^+=\{0,1\},\quad \ldots
> $$

<!-- omega_is_smallest_inductive_set -->
> [!Theorem]
> **自然数集是最小的归纳集 The Natural Numbers Form the Smallest Inductive Set**：$\omega$ 是归纳集，且对任意归纳集 $I$，都有
> $$
> \omega \subseteq I.
> $$
> 
> **证明思路**：$\omega$ 被定义为所有归纳集的交，因此它自动包含于每个归纳集。再验证交集仍保留“含 $\varnothing$”和“对后继封闭”这两个性质，即得 $\omega$ 也是归纳集。

<!-- natural_order_definition -->
> [!Definition]
> **自然数的序 Order on Natural Numbers**：对 $m,n \in \omega$，定义
> $$
> m < n \iff m \in n,
> $$
> 并定义
> $$
> m \leq n \iff (m < n \text{ 或 } m=n).
> $$
> 这称为自然数上的标准序。