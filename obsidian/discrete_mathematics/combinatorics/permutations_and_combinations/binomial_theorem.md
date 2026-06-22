---
title: 二项式定理
tags:
  - combinatorics
  - permutations_and_combinations
refs: "[[combinations]]"
---
# 二项式定理

二项式定理 Binomial Theorem 给出二项式 $(x+y)^n$ 展开式中各项系数与[[combinations|组合数]] $\binom{n}{k}$ 的精确联系，是组合数学与代数学之间最经典的桥梁之一。

<!-- binomial -->
> [!Definition]
> **二项式 Binomial**：含有两个单项式之和的代数式称为**二项式**，一般形如 $x + y$，其中 $x, y$ 可以是数、变量、单项式乃至更一般交换环中的元素。形如 $(x + y)^n$（$n$ 是非负整数）的式子称为**二项式的 $n$ 次幂**。

<!-- binomial_theorem -->
> [!Theorem]
> **二项式定理 Binomial Theorem**：设 $n$ 是非负整数，$x, y$ 是任意实数（或交换环中的元素），则
> $$(x + y)^n = \sum_{k=0}^{n} \binom{n}{k} x^{n-k} y^{k}.$$

> **注**：展开式中 $x^{n-k} y^{k}$ 项前的系数 $\binom{n}{k}$ 称为**二项式系数 Binomial Coefficient**。当 $x = y = 1$ 时，左端为 $2^n$，右端为 $\sum_{k=0}^{n} \binom{n}{k}$，再次给出[[combinations|组合数总和恒等式]] $\sum_{k=0}^n \binom{n}{k} = 2^n$。

> **证明思路（组合证明）**：将 $(x+y)^n$ 视为 $n$ 个相同的因子 $(x+y)$ 相乘：
> $$(x+y)^n = \underbrace{(x+y)(x+y)\cdots(x+y)}_{n \text{ 个}}.$$
> 展开时，每个因子贡献 $x$ 或 $y$ 之一，得到形如 $x^{n-k} y^{k}$ 的单项式。要得到一项 $x^{n-k} y^{k}$，需要从 $n$ 个因子中**无序地**选出 $k$ 个贡献 $y$（其余贡献 $x$），方案数恰为[[combinations|组合数]] $\binom{n}{k}$。由[[counting_principles|加法原理]]合并所有相同单项式，即得展开式。
> 
> **证明思路（归纳证明）**：对 $n$ 作归纳。$n = 0$ 时左右两端均为 $1$。设结论对 $n - 1$ 成立，则
> $$(x + y)^n = (x + y) \sum_{k=0}^{n-1} \binom{n-1}{k} x^{n-1-k} y^{k},$$
> 展开并合并 $x^{n-k}y^k$ 的系数，由[[combinations|帕斯卡恒等式]] $\binom{n-1}{k-1} + \binom{n-1}{k} = \binom{n}{k}$ 即得展开式。

<!-- binomial_general_term -->
> [!Corollary]
> **二项式展开的通项 General Term of Binomial Expansion**：设 $n$ 是非负整数，记 $(x + y)^n$ 展开式中按 $y$ 的次数从低到高排列的第 $k+1$ 项为 $T_{k+1}$（$k = 0, 1, \ldots, n$），则
> $$T_{k+1} = \binom{n}{k}\, x^{n-k} y^{k}.$$

> **注**：$T_{k+1}$ 称为二项式展开的**通项公式**，其中 $\binom{n}{k}$ 是该项的二项式系数（注意区别于"项的系数"——后者还包含 $x, y$ 中可能的常数因子的幂）。

> **证明思路**：由[[binomial_theorem|二项式定理]]，$(x+y)^n = \sum_{k=0}^{n} \binom{n}{k} x^{n-k} y^k$，按 $y$ 的次数排序后第 $k+1$ 项即为 $\binom{n}{k} x^{n-k} y^k$。

<!-- example_binomial_expansion -->
> [!Example]+
> **低次二项式展开**：由二项式定理：
> $$\begin{align*}
> (x+y)^2 &= x^2 + 2xy + y^2, \\
> (x+y)^3 &= x^3 + 3x^2 y + 3xy^2 + y^3, \\
> (x+y)^4 &= x^4 + 4x^3 y + 6x^2 y^2 + 4xy^3 + y^4.
> \end{align*}$$
> 各次幂展开式的系数恰为帕斯卡三角形 Pascal's Triangle 的对应行 $1; 1,1; 1,2,1; 1,3,3,1; 1,4,6,4,1; \cdots$。

<!-- example_binomial_specific_term -->
> [!Example]+
> **指定项的系数**：求 $(2x - 3)^5$ 展开式中 $x^2$ 项的系数。在二项式定理中取 $x \mapsto 2x$，$y \mapsto -3$，$n = 5$，则一般项为
> $$\binom{5}{k} (2x)^{5-k} (-3)^k.$$
> 含 $x^2$ 的项对应 $5 - k = 2$，即 $k = 3$，其系数为
> $$\binom{5}{3} \cdot 2^{2} \cdot (-3)^{3} = 10 \cdot 4 \cdot (-27) = -1080.$$

<!-- example_middle_term -->
> [!Example]+
> **二项式中间项**：当 $n$ 为偶数时，$(x + y)^n$ 共有 $n + 1$ 项，恰存在唯一的中间项，即第 $\tfrac{n}{2} + 1$ 项
> $$T_{n/2 + 1} = \binom{n}{n/2}\, x^{n/2} y^{n/2}.$$
> 例如 $(x+y)^6$ 的中间项为 $\binom{6}{3} x^3 y^3 = 20 x^3 y^3$。当 $n$ 为奇数时，中间两项的二项式系数相等，由[[combinations|对称性]] $\binom{n}{k} = \binom{n}{n-k}$ 立得。


