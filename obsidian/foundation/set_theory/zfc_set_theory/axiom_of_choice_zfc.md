---
title: 选择公理
tags:
  - set_theory
  - foundation
  - zfc
---

# 选择公理

当面对一族彼此独立的非空集合时，选择公理断言可以同时从每个集合中选出一个元素。它是现代数学中极其重要而又带有非构造色彩的原则。

<!-- family_of_sets_definition -->
> [!Definition]
> **集族 Family of Sets**：以某个集合 $I$ 为指标的集合族，是一个函数
> $$
> \mathcal{A}
> $$
> 其定义域为 $I$，并且对每个 $i \in I$，$\mathcal{A}(i)$ 都是集合。通常记作
> $$
> \{A_i\}_{i \in I}.
> $$
> 若对每个 $i \in I$ 都有 $A_i \neq \varnothing$，则称其为**非空集族**。

<!-- choice_function_definition -->
> [!Definition]
> **选择函数 Choice Function**：设 $\{A_i\}_{i \in I}$ 是非空集族。函数 $f$ 称为该集族的**选择函数**，若
> $$
> f(i) \in A_i \quad \text{对每个 } i \in I \text{ 都成立}.
> $$

<!-- axiom_of_choice_zfc -->
> [!Axiom]
> **选择公理 Axiom of Choice**：每个非空集族都存在选择函数。等价地，若集合 $A$ 的每个元素都是非空集合，则存在函数 $f$，其定义域为 $A$，且对每个 $X \in A$ 都有
> $$
> f(X) \in X.
> $$

<!-- choice_function_for_disjoint_family_theorem -->
> [!Theorem]
> **不交集族上的选择函数 Choice Function on a Pairwise Disjoint Family**：设 $A$ 是由两两不交非空集合组成的集合，则存在集合
> $$
> C \subseteq \bigcup A
> $$
> 使得对每个 $X \in A$，集合 $C \cap X$ 恰有一个元素。
> 
> **证明思路**：由选择公理取选择函数 $f$，令 $C=\{f(X) \mid X \in A\}$。由于各 $X$ 两两不交，$C$ 在每个 $X$ 中恰好落入一个元素。反过来，这类横截集也可恢复一个选择函数。

> **注**：选择公理与良序定理、Zorn 引理等命题等价，但这些等价形式属于后续专题，不在本小节展开。