---
title: 正则文法
tags:
  - logic
  - mathematical_logic
  - formal_language
---

# 正则文法

<!-- right_linear_grammar_definition -->
> [!Definition]
> **右线性文法 Right-linear Grammar**：若形式文法 $G = (V_N, V_T, P, S)$ 的每个产生式都具有下列形式之一：
> $$
> A \to aB, \quad A \to a, \quad A \to \varepsilon,
> $$
> 其中 $A,B \in V_N$，$a \in V_T$，则称 $G$ 为右线性文法。

<!-- left_linear_grammar_definition -->
> [!Definition]
> **左线性文法 Left-linear Grammar**：若形式文法 $G = (V_N, V_T, P, S)$ 的每个产生式都具有下列形式之一：
> $$
> A \to Ba, \quad A \to a, \quad A \to \varepsilon,
> $$
> 其中 $A,B \in V_N$，$a \in V_T$，则称 $G$ 为左线性文法。

<!-- regular_grammar_definition -->
> [!Definition]
> **正则文法 Regular Grammar**：右线性文法和左线性文法统称为正则文法，也称 3 型文法。由正则文法生成的语言称为正则语言。

> **注**：通常要求一个具体文法只采用右线性或只采用左线性形式，而不混合两类产生式；混合后未必仍然刻画正则语言。

<!-- finite_automaton_equivalence_theorem -->
> [!Theorem]
> **正则文法与有穷自动机等价 Equivalence of Regular Grammars and Finite Automata**：语言 $L$ 是正则语言，当且仅当存在一个有穷自动机识别 $L$。

> **注**：证明思路是将非终结符视为自动机状态，产生式对应状态转移；反过来，自动机的每条转移都可翻译为右线性产生式。

<!-- regular_expression_equivalence_theorem -->
> [!Theorem]
> **正则文法与正则表达式等价 Equivalence of Regular Grammars and Regular Expressions**：语言 $L$ 是正则语言，当且仅当存在一个正则表达式 $r$ 使得 $L = L(r)$。

> **注**：这给出正则语言的三种经典等价描述：正则文法、有穷自动机与正则表达式。

<!-- regular_language_closure_lemma -->
> [!Lemma]
> **正则语言的闭包性质 Closure Properties of Regular Languages**：正则语言类对并、连接、Kleene 星、交和补运算封闭。

> **注**：其中并、连接和 Kleene 星可由正则表达式直接看出；交与补则常通过自动机构造证明。

<!-- regular_grammar_example -->
> [!Example]+
> **偶数个 a 的语言 Language of Even Number of a's**：字母表 $\Sigma = \{a,b\}$ 上语言
> $$
> L = \{ w \in \Sigma^* \mid w \text{ 中 } a \text{ 的个数为偶数} \}
> $$
> 是正则语言。

> **注**：其证明思路是构造一个只需记录“当前已读入的 $a$ 的个数奇偶性”的两状态自动机，再将该自动机翻译为右线性文法。