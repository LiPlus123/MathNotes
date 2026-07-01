---
title: 无限制文法
tags:
  - logic
  - mathematical_logic
  - formal_language
---

# 无限制文法

<!-- unrestricted_grammar_definition -->
> [!Definition]
> **无限制文法 Unrestricted Grammar**：若形式文法 $G = (V_N, V_T, P, S)$ 的每个产生式都形如
> $$
> \alpha \to \beta,
> $$
> 其中 $\alpha,\beta \in (V_N \cup V_T)^*$，并且 $\alpha$ 至少含有一个非终结符，则称 $G$ 为无限制文法，也称 0 型文法。

> **注**：要求 $\alpha$ 含有非终结符，是为了保证产生式确实作用于可重写的中间符号，而不是任意改写纯终结符串。

<!-- recursively_enumerable_language_definition -->
> [!Definition]
> **递归可枚举语言 Recursively Enumerable Language**：语言 $L \subseteq \Sigma^*$ 称为递归可枚举的，如果存在一台图灵机 $M$，使得对任意 $w \in \Sigma^*$：
> 1. 当 $w \in L$ 时，$M$ 在输入 $w$ 上停机并接受；
> 2. 当 $w \notin L$ 时，$M$ 在输入 $w$ 上可以拒绝，也可以不停机。

<!-- unrestricted_generates_re_theorem -->
> [!Theorem]
> **0 型文法与递归可枚举语言的对应 Correspondence Between Type-0 Grammars and Recursively Enumerable Languages**：语言 $L$ 是某个 0 型文法生成的，当且仅当 $L$ 是递归可枚举语言。

> **注**：证明思路分两步。其一，将文法推导编码为图灵机上的搜索过程，从而枚举所有可推导终结符串；其二，将图灵机的配置和一步转移编码为产生式，从而把图灵机计算模拟为文法推导。

<!-- turing_equivalence_theorem -->
> [!Theorem]
> **无限制文法与图灵机等价 Equivalence with Turing Machines**：0 型文法与图灵机在语言识别能力上等价。更准确地说，给定任意 0 型文法 $G$，存在图灵机 $M_G$ 识别 $L(G)$；反之，给定任意图灵机 $M$，存在 0 型文法 $G_M$ 使得
> $$
> L(G_M) = L(M).
> $$

<!-- semi_decidability_definition -->
> [!Definition]
> **半判定性 Semidecidability**：若一个语言类中的每个语言都存在某种算法过程，使得对属于该语言的输入一定在有限步内给出肯定答案，而对不属于该语言的输入不要求在有限步内终止，则称这类语言具有半判定性。递归可枚举语言正是半判定语言。

<!-- unrestricted_grammar_example -->
> [!Example]+
> **枚举机制的典型解释 A Typical Enumeration Mechanism**：设 $G$ 是一个 0 型文法。若从开始符号 $S$ 出发，系统地按长度和推导步数枚举所有可能推导，则每当某一推导结束于纯终结符串 $w$ 时，就可以输出 $w$。因此 0 型文法天然给出一种“可枚举”而不一定“可判定”的语言生成机制。

> **注**：0 型文法是 Chomsky 层级中最宽的类，它刻画一般算法可枚举的字符串集合，而不是有效可判定的所有性质。