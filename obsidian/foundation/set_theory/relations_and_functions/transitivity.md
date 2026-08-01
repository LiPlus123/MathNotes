---
title: 传递性
tags:
  - set_theory
  - foundation
  - relation
---

# 传递性

传递性反映关系在链式连接下的稳定性。序关系、等价关系以及可达性关系都依赖这一性质。

<!-- transitive_relation_definition -->
> [!Definition]
> **传递关系 Transitive Relation**：设 $R$ 是集合 $A$ 上的二元关系。若对任意 $a,b,c \in A$，
> $$
> (aRb \land bRc) \Rightarrow aRc,
> $$
> 则称 $R$ 是**传递的**。

<!-- transitive_relation_characterization -->
> [!Theorem]
> **传递性的等价条件 Characterization of Transitivity**：设 $R$ 是集合 $A$ 上的二元关系，则
> $$
> R \text{ 传递 } \iff R \circ R \subseteq R.
> $$
> 
> **证明思路**：$(a,c) \in R \circ R$ 当且仅当存在 $b$ 使 $aRb$ 且 $bRc$。因此 $R \circ R \subseteq R$ 与传递性的定义完全等价。

<!-- powers_of_transitive_relation -->
> [!Corollary]
> **传递关系的幂闭性 Closure Under Iterated Composition**：若 $R$ 是传递关系，则对每个正整数 $n$，$R$ 的 $n$ 次复合都包含于 $R$。
> 
> **证明思路**：由 $R \circ R \subseteq R$ 出发，对 $n$ 做归纳。结合关系复合的结合律即可完成递推。