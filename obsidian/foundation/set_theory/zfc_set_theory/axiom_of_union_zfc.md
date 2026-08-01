---
title: 并集公理
tags:
  - set_theory
  - foundation
  - zfc
---

# 并集公理

并集公理保证：一个集合的元素若本身也是集合，则这些元素中的全部元素可以合并成一个新集合。由此可定义二元并集、对称差，并整理出基本集合算律。

<!-- axiom_of_union_zfc -->
> [!Axiom]
> **并集公理 Axiom of Union**：对任意集合 $A$，存在集合 $U$，使得对每个对象 $x$ 都有
> $$
> x \in U \iff \exists B(B \in A \text{ 且 } x \in B).
> $$
> 该集合记作 $\bigcup A$。

<!-- binary_union_definition -->
> [!Definition]
> **并集 Union**：设 $A,B$ 为集合。定义
> $$
> A \cup B := \bigcup \{A,B\}.
> $$

<!-- symmetric_difference_definition -->
> [!Definition]
> **对称差 Symmetric Difference**：设 $A,B$ 为集合。定义
> $$
> A \triangle B := (A \setminus B) \cup (B \setminus A).
> $$

<!-- union_membership_characterization -->
> [!Theorem]
> **并集的元素判定 Union Membership Characterization**：对任意集合 $A,B,x$，
> $$
> x \in A \cup B \iff (x \in A \text{ 或 } x \in B).
> $$
> 
> **证明思路**：由 $A \cup B = \bigcup\{A,B\}$ 与并集公理的定义直接展开即可。

<!-- symmetric_difference_membership_characterization -->
> [!Theorem]
> **对称差的元素判定 Symmetric Difference Characterization**：对任意集合 $A,B,x$，
> $$
> x \in A \triangle B \iff (x \in A \text{ 与 } x \in B \text{ 中恰有一个成立}).
> $$
> 
> **证明思路**：由对称差定义展开，再用差集与并集的元素判定整理逻辑条件。

<!-- elementary_set_laws -->
> [!Theorem]
> **集合算律 Elementary Set Laws**：对任意集合 $A,B,C$，有
> 1. $A \cup B = B \cup A$，$A \cap B = B \cap A$；
> 2. $(A \cup B) \cup C = A \cup (B \cup C)$，$(A \cap B) \cap C = A \cap (B \cap C)$；
> 3. $A \cup A = A$，$A \cap A = A$；
> 4. $A \cap (B \cup C) = (A \cap B) \cup (A \cap C)$；
> 5. $A \cup (B \cap C) = (A \cup B) \cap (A \cup C)$。
> 
> **证明思路**：对每条等式逐个证明两边对任意对象 $x$ 的隶属关系等价，再由外延公理得结论。