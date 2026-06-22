---
title: 组合
tags:
  - combinatorics
  - permutations_and_combinations
refs:
  - "[[combinations]]"
  - "[[permutations]]"
---
# 组合

组合 Combination 关心的是**无序选取**的方案数：从给定集合中选出若干元素构成一个子集，问共有多少种不同的选法。本节基于[[permutations|排列]]给出组合的精确定义和组合数的公式，并讨论组合数的若干基本性质。

## 组合与组合数

<!-- k_combination -->
> [!Definition]
> **$k$ 组合 $k$-Combination**：设 $S$ 是含 $n$ 个元素的有限集合，$k$ 是满足 $0 \leq k \leq n$ 的整数。称 $S$ 的任一含 $k$ 个元素的子集为 $S$ 的一个 **$k$ 组合**（也称从 $n$ 个元素中取 $k$ 个的组合）。

> **注**：组合与[[permutations|排列]]的本质区别在于：组合**不考虑元素的次序**，只关心选出了哪些元素。$k$ 组合就是 $S$ 的一个 $k$ 元子集。$0$ 组合规定为唯一的空集 $\varnothing$。

<!-- combination_number -->
> [!Theorem]
> **组合数公式 Formula for the Number of Combinations**：设 $n, k$ 是满足 $0 \leq k \leq n$ 的非负整数，从 $n$ 个不同元素中取出 $k$ 个的 $k$ 组合总数记为 $\binom{n}{k}$（也常记作 $\mathrm{C}_n^k$），则
> $$\binom{n}{k} = \frac{\mathrm{A}_n^k}{k!} = \frac{n!}{k!\,(n-k)!}.$$

> **注**：$\binom{n}{k}$ 也称为**二项式系数 Binomial Coefficient**，读作"$n$ 选 $k$"。当 $k > n$ 或 $k < 0$ 时约定 $\binom{n}{k} = 0$。

> **证明思路**：考虑从 $n$ 个不同元素中取 $k$ 个排成一列的所有 $k$ 排列。由[[permutations|排列数公式]]，共有 $\mathrm{A}_n^k$ 种。另一方面，可分两步完成此事：第一步先选出 $k$ 个元素构成 $k$ 子集，方案数记为 $\binom{n}{k}$；第二步把这 $k$ 个元素排成一列，方案数为 $k!$。由[[counting_principles|乘法原理]]，
> $$\mathrm{A}_n^k = \binom{n}{k} \cdot k!,$$
> 故 $\binom{n}{k} = \dfrac{\mathrm{A}_n^k}{k!} = \dfrac{n!}{k!\,(n-k)!}$。

<!-- example_combination -->
> [!Example]+
> **从班级中选委员**：从 $10$ 名学生中选出 $3$ 名担任班委（不分职务），不同的选法数为
> $$\binom{10}{3} = \frac{10!}{3!\,7!} = \frac{10 \times 9 \times 8}{3 \times 2 \times 1} = 120.$$

<!-- example_lottery -->
> [!Example]+
> **彩票中奖号码组合**：某彩票从 $\{1, 2, \ldots, 35\}$ 中**无序**地选出 $5$ 个号码作为开奖号码。不同的开奖号码总数为
> $$\binom{35}{5} = \frac{35!}{5!\,30!} = 324\,632.$$

## 组合数的基本性质

组合数 $\binom{n}{k}$ 满足若干重要的恒等式，它们是组合数学的基石。

<!-- combination_symmetry -->
> [!Corollary]
> **对称性 Symmetry**：对任意满足 $0 \leq k \leq n$ 的非负整数 $n, k$，
> $$\binom{n}{k} = \binom{n}{n-k}.$$

> **证明思路**：从代数上，由组合数公式 $\binom{n}{k} = \frac{n!}{k!(n-k)!}$ 与 $\binom{n}{n-k} = \frac{n!}{(n-k)!\,k!}$ 显然相等。从组合上，从 $n$ 个元素中"选出 $k$ 个"与"剩下 $n-k$ 个"是同一件事，只是视角不同，故对应的方案数相等。

<!-- pascal_identity -->
> [!Theorem]
> **帕斯卡恒等式 Pascal's Identity**：对任意满足 $1 \leq k \leq n - 1$ 的正整数 $n, k$，
> $$\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}.$$

> **证明思路（组合证明）**：在 $n$ 个不同元素中固定一个元素 $a$。从 $n$ 个元素中取出 $k$ 个的组合，按"是否含元素 $a$"分两类：
> 1. 含 $a$ 的组合：另需从剩余 $n-1$ 个元素中取 $k-1$ 个，方案数为 $\binom{n-1}{k-1}$；
> 2. 不含 $a$ 的组合：需从剩余 $n-1$ 个元素中取 $k$ 个，方案数为 $\binom{n-1}{k}$。
> 
> 两类互不相容，由[[counting_principles|加法原理]]即得结论。代数上也可用阶乘表达式直接验证。

<!-- combination_sum -->
> [!Corollary]
> **二项式系数的总和**：对任意非负整数 $n$，
> $$\sum_{k=0}^{n} \binom{n}{k} = 2^n.$$

> **证明思路（组合证明）**：等式左端按子集大小分类，统计 $n$ 元集合 $S$ 的所有子集（含空集与全集）；右端 $2^n$ 是 $n$ 元集合子集总数（每个元素独立地选"在子集中"或"不在子集中"，共 $2^n$ 种选择）。两者均为 $|2^S|$，故相等。

## 重复组合

若允许同一元素被多次取用，则得到重复组合 Repeated Combination，又称多重集 $k$ 组合。

<!-- repeated_combination -->
> [!Theorem]
> **重复组合数 Number of Repeated Combinations**：从 $n$ 个不同元素中**允许重复**地无序取出 $k$ 个，所得不同重复组合的总数为
> $$\binom{n + k - 1}{k}.$$

> **证明思路（隔板法 Stars and Bars）**：将一个重复组合等价地表示为 $(x_1, x_2, \ldots, x_n)$，其中 $x_i \geq 0$ 表示第 $i$ 个元素被取的次数，且满足 $x_1 + x_2 + \cdots + x_n = k$。把 $k$ 个相同的"星号"和 $n - 1$ 个"隔板"排成一列共 $n + k - 1$ 个位置，从中选出 $n - 1$ 个位置放置隔板（其余放星号），即与每个非负整数解一一对应。故方案数为 $\binom{n + k - 1}{n - 1} = \binom{n + k - 1}{k}$。

<!-- example_repeated_combination -->
> [!Example]+
> **从三种水果中买十个**：水果店有苹果、香蕉、橙子三种水果（每种数量充足），现要购买共 $10$ 个水果（同种水果之间不区分），不同的购买方案数为
> $$\binom{3 + 10 - 1}{10} = \binom{12}{10} = \binom{12}{2} = 66.$$
