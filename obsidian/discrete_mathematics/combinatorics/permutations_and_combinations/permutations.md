---
title: 排列
tags:
  - combinatorics
  - permutations_and_combinations
refs: "[[counting_principles]]"
---
# 排列

排列 Permutation 关心的是**有序选取**的方案数：从给定集合中选出若干元素并按一定的顺序排成一列，问共有多少种不同的排法。本节基于[[counting_principles|计数原理]]，给出阶乘、排列数的精确定义，并讨论几种常见的排列模型。

## 阶乘

排列计数中最基本的算子是阶乘。

<!-- factorial -->
> [!Definition]
> **阶乘 Factorial**：设 $n$ 是非负整数，定义 $n$ 的阶乘 $n!$ 为
> $$n! = \begin{cases} 1, & n = 0, \\ 1 \cdot 2 \cdot 3 \cdots n = \prod_{i=1}^{n} i, & n \geq 1. \end{cases}$$

> **注**：约定 $0! = 1$ 是为了让后续公式（如排列数、组合数公式）在边界情形仍然成立。阶乘满足递推关系 $n! = n \cdot (n-1)!\ (n \geq 1)$。

## 选排列与排列数

最常见的排列问题是从 $n$ 个不同元素中**不重复地**选出 $k$ 个并排成一列。

<!-- k_permutation -->
> [!Definition]
> **$k$ 排列 $k$-Permutation**：设 $S$ 是含 $n$ 个元素的有限集合，$k$ 是满足 $0 \leq k \leq n$ 的整数。称由 $S$ 中 $k$ 个**互不相同**的元素按一定顺序排成的有序组 $(a_1, a_2, \ldots, a_k)$ 为 $S$ 的一个 **$k$ 排列**（也称 $S$ 的 $k$ 选排列）。当 $k = n$ 时，称为 $S$ 的**全排列 Full Permutation**。

> **注**：$k$ 排列要求"互不相同"，即同一元素不能在排列中出现两次；它要求"有序"，即元素出现的次序不同视为不同的排列。$0$ 排列规定为唯一的空排列 $()$。

<!-- permutation_number -->
> [!Theorem]
> **排列数公式 Formula for the Number of Permutations**：设 $n, k$ 是满足 $0 \leq k \leq n$ 的非负整数，从 $n$ 个不同元素中取出 $k$ 个的 $k$ 排列总数记为 $\mathrm{A}_n^k$，则
> $$\mathrm{A}_n^k = n (n-1)(n-2) \cdots (n-k+1) = \frac{n!}{(n-k)!}.$$

> **注**：排列数 $\mathrm{A}_n^k$ 也常记作 $P(n,k)$ 或 $P_n^k$。本笔记采用 $\mathrm{A}_n^k$。当 $k = 0$ 时，约定 $\mathrm{A}_n^0 = 1$；当 $k > n$ 时 $\mathrm{A}_n^k = 0$。

> **证明思路**：将构造一个 $k$ 排列分成 $k$ 步：第 $1$ 步从 $n$ 个元素中选出第 $1$ 个位置的元素，有 $n$ 种选法；第 $2$ 步从剩余 $n-1$ 个元素中选出第 $2$ 个位置的元素，有 $n-1$ 种选法；……；第 $k$ 步在剩余 $n-k+1$ 个元素中选出第 $k$ 个位置的元素，有 $n-k+1$ 种选法。各步骤的方案数相互独立，由[[counting_principles|乘法原理]]，
> $$\mathrm{A}_n^k = n(n-1)(n-2)\cdots(n-k+1) = \frac{n!}{(n-k)!}.$$

<!-- full_permutation_number -->
> [!Corollary]
> **全排列数**：$n$ 个不同元素的全排列总数为
> $$\mathrm{A}_n^n = n!.$$

> **证明思路**：在排列数公式中令 $k = n$ 即得 $\mathrm{A}_n^n = \frac{n!}{0!} = n!$。

<!-- example_full_permutation -->
> [!Example]+
> **三人排队**：甲、乙、丙三人排成一列，所有可能的排法数为 $3! = 6$，分别是
> $$(\text{甲乙丙}),(\text{甲丙乙}),(\text{乙甲丙}),(\text{乙丙甲}),(\text{丙甲乙}),(\text{丙乙甲}).$$

<!-- example_k_permutation -->
> [!Example]+
> **三人争夺金银铜牌**：从 $8$ 名运动员中评出金牌、银牌、铜牌各 $1$ 枚，且每人至多获得一枚奖牌。这是一个从 $8$ 个不同元素中取 $3$ 个的有序选取问题，方案数为
> $$\mathrm{A}_8^3 = 8 \times 7 \times 6 = 336.$$

## 重复排列

若允许同一元素被多次取用，则得到重复排列 Repeated Permutation。

<!-- repeated_permutation -->
> [!Theorem]
> **重复排列数 Number of Repeated Permutations**：从 $n$ 个不同元素中**有放回**地取出 $k$ 个排成一列，所得不同排列的总数为
> $$n^k.$$

> **证明思路**：将构造排列分成 $k$ 步，每步在 $n$ 个元素中独立选取一个，每步均有 $n$ 种选择。由[[counting_principles|乘法原理（推广形式）]]，总方案数为 $\underbrace{n \cdot n \cdots n}_{k \text{ 个}} = n^k$。

<!-- example_repeated_permutation -->
> [!Example]+
> **二进制串的个数**：长度为 $k$ 的二进制串（每位为 $0$ 或 $1$）共有 $2^k$ 个，这是从 $\{0, 1\}$ 中有放回地取 $k$ 次形成的重复排列。

## 圆排列

将元素围成一圈进行排列，称为圆排列 Circular Permutation。圆排列只关心元素之间的相对位置，不区分整体的旋转。

<!-- circular_permutation -->
> [!Definition]
> **圆排列 Circular Permutation**：把 $n$ 个不同元素放置在一个圆周的 $n$ 个位置上，若两个排列经过整体旋转可以重合，则视为同一种排列，由此得到的不同排法称为 $n$ 个元素的**圆排列**。类似地，从 $n$ 个不同元素中取出 $k$ 个 $(1 \leq k \leq n)$ 围成一圈，得到 $n$ 个元素中取 $k$ 个的圆排列。

<!-- circular_permutation_number -->
> [!Theorem]
> **圆排列数 Number of Circular Permutations**：从 $n$ 个不同元素中取 $k$ 个 $(1 \leq k \leq n)$ 的圆排列总数为
> $$\frac{\mathrm{A}_n^k}{k} = \frac{n!}{k \cdot (n-k)!}.$$
> 特别地，$n$ 个不同元素的圆排列总数为 $\dfrac{n!}{n} = (n-1)!$。

> **证明思路**：考虑普通的 $k$ 排列总数为 $\mathrm{A}_n^k$，若将每个 $k$ 排列首尾相接构成圆周，则同一个圆排列对应于 $k$ 种不同的线性排列（由起点位置的 $k$ 种选择产生）。因此圆排列数等于 $\mathrm{A}_n^k / k$。

<!-- example_circular_permutation -->
> [!Example]+
> **围圆桌就坐**：$5$ 人围一圆桌就座，本质不同的就座方式有
> $$\frac{5!}{5} = 4! = 24$$
> 种。
