---
title: 形式语言的定义
tags:
  - logic
  - mathematical_logic
  - formal_language
---

# 形式语言的定义

<!-- alphabet_of_formal_language -->
> [!Definition]
> **字母表 Alphabet**：字母表是一个非空有限集合，记为 $\Sigma$，其元素称为符号或字母。字母表中的每个符号都被看作不可再分的基本记号。

> **注**：在形式语言理论中，字母表只规定可用符号的种类，不预先赋予这些符号任何固有语义。

<!-- string_over_alphabet -->
> [!Definition]
> **字符串 String**：设 $\Sigma$ 是一个字母表。由 $\Sigma$ 中符号按有限次线性排列得到的序列称为 $\Sigma$ 上的字符串。长度为 $n$ 的字符串通常记为
> $$
> w = a_1 a_2 \cdots a_n \quad (a_i \in \Sigma).
> $$
> 当 $n=0$ 时得到空字符串，记为 $\varepsilon$。

<!-- set_of_all_strings -->
> [!Definition]
> **全体字符串集合 Set of All Strings**：设 $\Sigma$ 是一个字母表，所有由 $\Sigma$ 上符号组成的有限字符串构成的集合记为 $\Sigma^*$，即
> $$
> \Sigma^* = \{ w \mid w \text{ 是 } \Sigma \text{ 上的有限字符串} \}.
> $$
> 所有长度恰为 $n$ 的字符串组成的集合记为 $\Sigma^n$。

> **注**：有
> $$
> \Sigma^* = \bigcup_{n \in \mathbb{N}} \Sigma^n,
> $$
> 并且总有 $\varepsilon \in \Sigma^*$。

<!-- concatenation_of_strings -->
> [!Definition]
> **字符串连接 Concatenation of Strings**：设
> $$
> u = a_1 a_2 \cdots a_m, \quad v = b_1 b_2 \cdots b_n
> $$
> 是 $\Sigma$ 上的两个字符串，则它们的连接定义为
> $$
> uv = a_1 a_2 \cdots a_m b_1 b_2 \cdots b_n.
> $$
> 该字符串的长度满足 $|uv| = |u| + |v|$。

<!-- formal_language_definition -->
> [!Definition]
> **形式语言 Formal Language**：设 $\Sigma$ 是一个字母表。$\Sigma^*$ 的任意子集 $L \subseteq \Sigma^*$ 称为 $\Sigma$ 上的一个形式语言，简称语言。

> **注**：形式语言本质上是“字符串的集合”，因此对语言的研究可以转化为对字符串集合及其生成机制的研究。

<!-- operations_on_languages -->
> [!Definition]
> **形式语言的运算 Operations on Formal Languages**：设 $L_1,L_2 \subseteq \Sigma^*$ 是两个形式语言，则常见运算定义如下：
> 1. 并运算：$L_1 \cup L_2$
> 2. 交运算：$L_1 \cap L_2$
> 3. 差运算：$L_1 \setminus L_2$
> 4. 连接运算：
> $$
> L_1 L_2 = \{ uv \mid u \in L_1,\ v \in L_2 \}
> $$
> 5. 幂运算：规定 $L^0 = \{\varepsilon\}$，并递归定义 $L^{n+1} = L^n L$
> 6. Kleene 星运算：
> $$
> L^* = \bigcup_{n \in \mathbb{N}} L^n
> $$

<!-- methods_to_describe_languages -->
> [!Definition]
> **形式语言的描述方法 Methods of Describing Formal Languages**：给定字母表 $\Sigma$ 上的语言 $L \subseteq \Sigma^*$，常见描述方法有：
> 1. 枚举式描述：直接列出语言中的全部字符串；这种方法只适用于有限语言或模式极其简单的情形。
> 2. 集合描述：给出字符串满足的判定条件，从而将语言表示为某性质所确定的子集。
> 3. 生成式描述：通过文法、自动机、递归规则或归纳规则给出语言的生成机制。

<!-- finite_language_example -->
> [!Example]+
> **有限语言的三种描述 Three Descriptions of a Finite Language**：设 $\Sigma = \{a,b\}$，定义语言
> $$
> L = \{ ab, aab, aaab \}.
> $$
> 则：
> 1. 枚举式描述可直接写为 $L = \{ ab, aab, aaab \}$；
> 2. 集合描述可写为
> $$
> L = \{ a^n b \mid 1 \le n \le 3 \};
> $$
> 3. 生成式描述可通过有限个产生规则生成这三个字符串。

> **注**：本小节只刻画“语言是什么”，而不讨论“哪些机制能够生成哪些语言”；后者属于文法与自动机理论的内容。