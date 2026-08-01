---
title: 集合公理
tags:
  - set_theory
  - foundation
  - nbg
---

# 集合公理

NBG 除了引入类对象外，在集合层面保留了与 ZFC 平行的基本存在公理。对集合的配对、并集、幂集、无穷和替代，都可以在 NBG 中照常表述与使用。

<!-- pairing_axiom_nbg -->
> [!Axiom]
> **配对公理 Axiom of Pairing**：对任意集合 $A,B$，存在集合 $C$，使得
> $$
> x \in C \iff (x=A \text{ 或 } x=B).
> $$

<!-- union_axiom_nbg -->
> [!Axiom]
> **并集公理 Axiom of Union**：对任意集合 $A$，存在集合 $U$，使得
> $$
> x \in U \iff \exists B(B \in A \land x \in B).
> $$

<!-- power_set_axiom_nbg -->
> [!Axiom]
> **幂集公理 Axiom of Power Set**：对任意集合 $A$，存在集合 $P$，使得
> $$
> x \in P \iff x \subseteq A.
> $$

<!-- infinity_axiom_nbg -->
> [!Axiom]
> **无穷公理 Axiom of Infinity**：存在归纳集。

<!-- replacement_axiom_nbg -->
> [!Axiom]
> **替代公理 Axiom of Replacement**：若公式 $\varphi(x,y)$ 在每个输入 $x$ 上唯一确定一个输出 $y$，则任意集合在该规则下的像仍为集合。

<!-- zfc_axioms_hold_for_sets_in_nbg -->
> [!Theorem]
> **NBG 中集合满足 ZFC 型存在公理 Sets in NBG Satisfy the ZFC-style Existence Axioms**：在 NBG 中，对集合的基本构造与在 ZFC 中完全一致；因此所有依赖这些公理的集合论初等构造都可以照常进行。
> 
> **证明思路**：这些公理在 NBG 中就是作为集合层面的存在断言被直接假定，证明时只需重复 ZFC 中对应论证。

> **注**：NBG 与 ZFC 的主要差别不在集合公理本身，而在于 NBG 额外允许把某些“过大”的对象统一视为类来讨论。