---
title: 上下文无关文法
tags:
  - logic
  - mathematical_logic
  - formal_language
---

# 上下文无关文法

<!-- context_free_grammar_definition -->
> [!Definition]
> **上下文无关文法 Context-free Grammar**：形式文法 $G = (V_N, V_T, P, S)$ 称为上下文无关文法，若每个产生式都具有形式
> $$
> A \to \gamma,
> $$
> 其中 $A \in V_N$，$\gamma \in (V_N \cup V_T)^*$。这意味着每一步替换只依赖于被替换的单个非终结符，而与其所在上下文无关。

> [!Example]+
> 命题逻辑语言 $\mathcal{L}_0$ 的形式文法 $G$ 为：
> 1. 非终结符集为：$V=\{S\}$
> 2. 终结符集为：$\Sigma=\{\neg,\to,(,),p_0,p_1,\cdots\}$
> 3. 产生式集为：$P=\{S\to p_i,\ S\to\neg S,(S\to S)\}$
> 4. 开始符号为：$S$
> 
> 其中，产生式集 $P$ 按要求式一个有限集，但 $p_i,i=1,2,\cdots$ 可数无穷多，因此 $S\to p_i$ 并不是一条产生式，而是一条“产生式模式”，表示用任意一个命题变元 $p_i$ 替换 $S$。这与命题逻辑语言公式形成规则完全等价，$\mathcal{L}_0 = L(G)$。

<!-- leftmost_rightmost_derivation_definition -->
> [!Definition]
> **最左推导与最右推导 Leftmost and Rightmost Derivations**：在上下文无关文法中，如果每一步总是替换当前句型中最左边的非终结符，则称该推导为最左推导；若每一步总是替换最右边的非终结符，则称为最右推导。

> **注**：最左推导和最右推导虽然在步骤次序上可能不同，但它们都刻画同一个字符串的生成结构。

> [!Example]+
> 以命题逻辑语言中，公式 $\neg(p_0 \to \neg p_1)$ 为例，采用最左推导，形成过程为：
> $$
> \begin{align*}
> S &\Rightarrow \neg S \\
> &\Rightarrow \neg(S \to S) \\
> &\Rightarrow \neg(p_0 \to S) \\
> &\Rightarrow \neg(p_0 \to \neg S) \\  
> &\Rightarrow \neg(p_0 \to \neg p_1)
> \end{align*}
> $$

<!-- parse_tree_definition -->
> [!Definition]
> **语法树 Parse Tree**：设 $G$ 是上下文无关文法。若一个树形结构满足：
> 1. 根结点标记为开始符号 $S$；
> 2. 每个内部结点标记为某个非终结符；
> 3. 若内部结点标记为 $A$，其子结点从左到右依次标记为 $X_1,\ldots,X_n$，则必有产生式
> $$
> A \to X_1 \cdots X_n \in P;
> $$
> 4. 叶结点标记为终结符或空串标记；
> 
> 则称该树为文法 $G$ 的一棵语法树。按叶结点从左到右读出的终结符串称为该语法树产生的字符串。



<!-- ambiguity_definition -->
> [!Definition]
> **二义性 Ambiguity**：上下文无关文法 $G$ 称为二义的，如果存在某个字符串 $w \in L(G)$，使得 $w$ 至少有两棵不同的语法树，或者等价地，至少有两个不同的最左推导。若不存在这样的字符串，则称 $G$ 为无二义文法。

<!-- inherently_ambiguous_language_definition -->
> [!Definition]
> **固有二义语言 Inherently Ambiguous Language**：若一个上下文无关语言 $L$ 的任意上下文无关文法表示都是二义的，则称 $L$ 为固有二义语言。

<!-- cfg_example_balanced_parentheses -->
> [!Example]+
> **括号匹配语言 Balanced Parentheses Language**：字母表 $\Sigma = \{ (, ) \}$ 上的括号匹配语言可由文法
> $$
> S \to SS \mid (S) \mid \varepsilon
> $$
> 生成，因此它是上下文无关语言。

> **注**：语法树在这里自然反映括号的嵌套结构，这正是上下文无关文法擅长描述的层级结构。

<!-- ambiguous_cfg_example -->
> [!Example]+
> **二义文法示例 An Ambiguous Grammar**：文法
> $$
> E \to E + E \mid E * E \mid (E) \mid a
> $$
> 是二义的。

> **注**：字符串 $a+a*a$ 可以对应不同的运算结合方式，从而得到不同语法树。消除二义性通常需要引入优先级和结合律分层的非终结符系统。