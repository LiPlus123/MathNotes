---
title: 计数问题的递推建模
tags:
  - combinatorics
  - recurrence_relations
---
# 计数问题的递推建模

递推关系 Recurrence Relation 是描述数列中相邻项之间数量依赖关系的方程，是求解计数问题的重要工具。许多计数问题可以通过将规模为 $n$ 的问题分解为若干规模较小的子问题，自然地建立递推关系。

<!-- recurrence_relation_def -->
> [!Definition]
> **递推关系 Recurrence Relation**：设 $(a_n)_{n \geq 0}$ 是一个实数数列。将 $a_n$ 用其前若干项 $a_{n-1}, a_{n-2}, \ldots, a_{n-k}$（$k \geq 1$）表示的方程
> $$a_n = f(n, a_{n-1}, a_{n-2}, \ldots, a_{n-k}), \quad n \geq k$$
> 称为该数列的**递推关系**，整数 $k$ 称为递推关系的**阶 Order**。给定初始值 $a_0, a_1, \ldots, a_{k-1}$ 后，递推关系唯一确定整个数列。

> **注**：初始值 $a_0, a_1, \ldots, a_{k-1}$ 称为**初始条件 Initial Conditions**，递推关系与初始条件合称为**递推初值问题**。满足递推关系的封闭表达式 $a_n = g(n)$（不含前项引用）称为该递推关系的**封闭解 Closed-Form Solution**，又称**通项公式**。

<!-- fibonacci_recurrence -->
> [!Example]+
> **斐波那契数列 Fibonacci Sequence**：设 $f_n$ 表示第 $n$ 对兔子的对数，初始 $f_0 = 0$，$f_1 = 1$，每对成年兔每月产一对新兔（新兔需一个月后成年）。规模为 $n$ 的状态由上月已有的 $f_{n-1}$ 对加上上月成年的 $f_{n-2}$ 对新生兔，建立递推：
> $$f_n = f_{n-1} + f_{n-2}, \quad n \geq 2, \quad f_0 = 0,\ f_1 = 1.$$
> 前若干项：$0, 1, 1, 2, 3, 5, 8, 13, 21, 34, \ldots$

<!-- hanoi_recurrence -->
> [!Example]+
> **汉诺塔问题 Tower of Hanoi**：设 $H_n$ 为将 $n$ 个圆盘从柱 A 移至柱 C 所需的最少移动次数（每次只能移动一个圆盘，且大盘不能放在小盘之上）。将规模 $n$ 分解：先将上方 $n-1$ 个圆盘借助 C 移至 B（$H_{n-1}$ 次），再将最大圆盘从 A 移至 C（$1$ 次），最后将 $n-1$ 个圆盘从 B 借助 A 移至 C（$H_{n-1}$ 次），建立递推：
> $$H_n = 2H_{n-1} + 1, \quad n \geq 1, \quad H_0 = 0.$$
> 封闭解为 $H_n = 2^n - 1$。

<!-- catalan_recurrence -->
> [!Example]+
> **卡特兰数递推 Catalan Number Recurrence**：设 $C_n$ 为含 $n$ 对括号的合法括号序列数，或等价地，$n+1$ 个叶节点的满二叉树数。固定最外层括号所对应的分割点 $k$（$0 \leq k \leq n-1$），左侧有 $C_k$ 种方案，右侧有 $C_{n-1-k}$ 种方案，建立递推：
> $$C_n = \sum_{k=0}^{n-1} C_k C_{n-1-k}, \quad n \geq 1, \quad C_0 = 1.$$
> 封闭解为 $C_n = \dfrac{1}{n+1}\dbinom{2n}{n}$。

<!-- modeling_strategy -->
> [!Definition]
> **递推建模策略 Strategy for Recurrence Modeling**：建立计数问题的递推关系，通常采用以下两种思路：
> 1. **最后一步分析法**：考虑规模为 $n$ 的构型中"最后一步"（或"最后一个元素"）的所有可能情形，每种情形对应规模更小的子问题，由[[../permutations_and_combinations/counting_principles|加法原理]]与[[../permutations_and_combinations/counting_principles|乘法原理]]建立方程。
> 2. **去掉一个元素法**：从规模为 $n$ 的构型中移去一个特定元素（如最大元素、最后添加的元素等），考察剩余结构的分类，将规模 $n$ 问题的计数归结为规模较小问题的计数之和（或积）。
