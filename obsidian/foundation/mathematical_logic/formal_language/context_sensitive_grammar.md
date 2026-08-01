---
title: 上下文有关文法
tags:
  - logic
  - mathematical_logic
  - formal_language
---

# 上下文有关文法

<!-- context_sensitive_grammar_definition -->
> [!Definition]
> **上下文有关文法 Context-sensitive Grammar**：形式文法 $G = (V_N, V_T, P, S)$ 称为上下文有关文法，若其每个产生式都可写成
> $$
> \alpha A \beta \to \alpha \gamma \beta,
> $$
> 其中 $A \in V_N$，$\alpha,\beta \in (V_N \cup V_T)^*$，$\gamma \in (V_N \cup V_T)^+$。也就是说，非终结符 $A$ 可以在上下文 $\alpha,\beta$ 中被替换为非空串 $\gamma$。

> **注**：等价地，也常用“长度不减”的表述：若 $\mu \to \nu \in P$，则满足 $|\mu| \le |\nu|$，并允许在某些约定下加入 $S \to \varepsilon$ 的特例。

<!-- context_sensitive_language_definition -->
> [!Definition]
> **上下文有关语言 Context-sensitive Language**：若语言 $L \subseteq \Sigma^*$ 能由某个上下文有关文法生成，则称 $L$ 为上下文有关语言，简称 CSL。

<!-- linear_bounded_automaton_definition -->
> [!Definition]
> **线性有界自动机 Linear Bounded Automaton**：线性有界自动机是图灵机的一种受限形式。对输入长度为 $n$ 的字符串，其读写头始终只能在输入所在纸带区域及其线性界限扩张的有限区间内活动，因此可用空间被某个关于 $n$ 的线性函数所界定。

<!-- csg_lba_equivalence_theorem -->
> [!Theorem]
> **上下文有关文法与线性有界自动机等价 Equivalence of CSG and LBA**：语言 $L$ 是上下文有关语言，当且仅当 $L$ 能被某台线性有界自动机识别。

> **注**：证明思路是将长度不减的推导看作受空间约束的符号改写过程；反过来，线性有界自动机的有限配置空间可以编码为上下文有关推导，从而实现模拟。

<!-- noncontracting_property_lemma -->
> [!Lemma]
> **非缩短性质 Noncontracting Property**：若 $G$ 是上下文有关文法，且不含特殊的空串产生式，则任意一步推导都不会缩短字符串长度，即若
> $$
> \alpha \Rightarrow_G \beta,
> $$
> 则有 $|\alpha| \le |\beta|$。

> **注**：这正是上下文有关文法能够与线性空间限制联系起来的关键原因之一，因为推导过程中不会任意压缩中间句型。

<!-- context_sensitive_example -->
> [!Example]+
> **典型上下文有关语言 A Typical Context-sensitive Language**：语言
> $$
> L = \{ a^n b^n c^n \mid n \in \mathbb{N}, n \ge 1 \}
> $$
> 是上下文有关语言。

> **注**：其证明思路通常是构造一套能同步记录三段长度相等关系的产生式，或直接构造线性有界自动机逐段标记并核对三个计数是否一致。