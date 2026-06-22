---
title: 卡特兰数
tags:
  - combinatorics
  - special_sequences
refs: "[[../recurrence_relations/recurrence_modeling]], [[../generating_functions/ordinary_generating_functions]]"
---
# 卡特兰数

卡特兰数 Catalan Numbers 是组合数学中出现频率极高的一类数列，描述了大量看似不同实则等价的计数问题——括号配对、二叉树计数、三角剖分等，其统一背后是同一个递推结构。

<!-- catalan_number_def -->
> [!Definition]
> **卡特兰数 Catalan Number**：第 $n$ 个**卡特兰数** $C_n$（$n \geq 0$）定义为含 $n$ 对合法括号序列（即由 $n$ 个左括号和 $n$ 个右括号构成的、任意前缀中左括号不少于右括号的序列）的数目。规定 $C_0 = 1$。前若干项为
> $$C_0 = 1,\ C_1 = 1,\ C_2 = 2,\ C_3 = 5,\ C_4 = 14,\ C_5 = 42, \ldots$$

<!-- catalan_recurrence -->
> [!Theorem]
> **卡特兰数的递推关系 Recurrence Relation for Catalan Numbers**：卡特兰数满足（$n \geq 1$）：
> $$C_n = \sum_{k=0}^{n-1} C_k C_{n-1-k}, \quad C_0 = 1.$$

> **证明思路**：对合法括号序列，考虑第一个左括号对应的右括号所在位置 $2k+2$（$k = 0, 1, \ldots, n-1$），则该右括号将序列分为内部（$k$ 对括号，$C_k$ 种）和外部（$n-1-k$ 对括号，$C_{n-1-k}$ 种），由乘法原理和加法原理得递推式。

<!-- catalan_closed_form -->
> [!Theorem]
> **卡特兰数的封闭公式 Closed Form for Catalan Numbers**：
> $$C_n = \frac{1}{n+1}\binom{2n}{n} = \frac{(2n)!}{(n+1)!\, n!}, \quad n \geq 0.$$

> **证明思路（生成函数法）**：设 $C(x) = \sum_{n=0}^{\infty} C_n x^n$，由递推关系知 $C(x) = 1 + x C(x)^2$，解二次方程得 $C(x) = \dfrac{1 - \sqrt{1-4x}}{2x}$（取使 $C(0)=1$ 的根）。利用广义二项式定理展开 $\sqrt{1-4x}$，提取 $x^n$ 系数即得 $C_n = \dfrac{1}{n+1}\dbinom{2n}{n}$。

> **证明思路（格路径法）**：$C_n$ 等于从 $(0,0)$ 到 $(2n,0)$ 的、每步向右上 $(+1,+1)$ 或向右下 $(+1,-1)$ 且不穿越 $x$ 轴（始终 $\geq 0$）的格路径数。总路径数（允许穿越）为 $\binom{2n}{n}$，穿越 $x$ 轴的坏路径数由**反射原理 Reflection Principle** 得为 $\binom{2n}{n-1}$，故 $C_n = \binom{2n}{n} - \binom{2n}{n-1} = \dfrac{1}{n+1}\binom{2n}{n}$。

<!-- catalan_ogf -->
> [!Theorem]
> **卡特兰数的生成函数 Generating Function for Catalan Numbers**：卡特兰数的普通生成函数为
> $$C(x) = \sum_{n=0}^{\infty} C_n x^n = \frac{1 - \sqrt{1-4x}}{2x}.$$

<!-- catalan_interpretations -->
> [!Theorem]
> **卡特兰数的等价组合解释 Combinatorial Interpretations of $C_n$**：以下计数问题的答案均为 $C_n$：
> 1. 含 $n$ 对括号的合法括号序列数。
> 2. $n+1$ 个叶节点的**满二叉树**（每个内节点恰有两个子节点）的数目。
> 3. 凸 $(n+2)$ 边形的**三角剖分**（用不相交对角线分成三角形）数目。
> 4. $\{1, 2, \ldots, n\}$ 上的**不交叉划分**（Non-crossing Partition，即不存在 $a < b < c < d$ 使 $a,c$ 同块、$b,d$ 同块）数目。
> 5. 由 $n$ 个 $+1$ 和 $n$ 个 $-1$ 组成的、所有前缀和均 $\geq 0$ 的序列数。
> 6. 用栈将 $1, 2, \ldots, n$（按序入栈）排列的出栈序列数。

> **证明思路（一）与（二）的等价性**：合法括号序列与满二叉树之间存在自然双射：将序列递归解析，每对括号对应一个内节点，内部序列对应左子树，后续序列对应右子树。

<!-- example_catalan_triangulation -->
> [!Example]+
> **凸多边形三角剖分数**：凸四边形（$n=2$）的三角剖分数为 $C_2 = 2$：两条对角线各给出一种剖分。凸五边形（$n=3$）的三角剖分数为 $C_3 = 5$，可逐一验证。

<!-- example_catalan_binary_tree -->
> [!Example]+
> **$n=3$ 的满二叉树**：$4$ 个叶节点的满二叉树共 $C_3 = 5$ 棵，对应 $3$ 对括号的合法序列 $((()))$，$(()())$，$(())()$，$()(())$，$()()()$。
