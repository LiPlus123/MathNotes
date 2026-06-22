---
title: 普通生成函数
tags:
  - combinatorics
  - generating_functions
refs: "[[../recurrence_relations/recurrence_modeling]]"
---
# 普通生成函数

普通生成函数 Ordinary Generating Function (OGF) 是将一个数列"编码"为形式幂级数的工具，将离散计数问题转化为代数运算，是组合数学最核心的技术之一。

<!-- formal_power_series_def -->
> [!Definition]
> **形式幂级数 Formal Power Series**：域 $\mathbb{R}$（或 $\mathbb{C}$）上的**形式幂级数**是形如 $\sum_{n=0}^{\infty} a_n x^n$ 的表达式，其中 $(a_n)_{n \geq 0}$ 是一列实数（或复数），$x$ 是形式变量。此处不关心收敛性，所有运算均为代数意义下的形式运算。全体形式幂级数构成的环记为 $\mathbb{R}[[x]]$。

<!-- ogf_def -->
> [!Definition]
> **普通生成函数 Ordinary Generating Function**：数列 $(a_n)_{n \geq 0}$ 的**普通生成函数**定义为形式幂级数
> $$G(x) = \sum_{n=0}^{\infty} a_n x^n = a_0 + a_1 x + a_2 x^2 + \cdots.$$
> $a_n$ 称为 $G(x)$ 中 $x^n$ 的**系数**，记作 $[x^n] G(x) = a_n$。

> **注**：生成函数将数列 $(a_0, a_1, a_2, \ldots)$ 与形式幂级数 $G(x)$ 建立一一对应，对数列的运算可转化为对函数的代数运算。

<!-- ogf_geometric_series -->
> [!Theorem]
> **等比数列的生成函数 OGF of Geometric Sequence**：数列 $a_n = r^n$（$n \geq 0$，$r$ 为常数）的普通生成函数为
> $$G(x) = \sum_{n=0}^{\infty} r^n x^n = \frac{1}{1 - rx}, \quad |rx| < 1 \text{（形式意义下恒成立）}.$$
> 特别地，取 $r = 1$ 得 $\displaystyle\sum_{n=0}^{\infty} x^n = \dfrac{1}{1-x}$。

<!-- ogf_negative_binomial -->
> [!Theorem]
> **负二项式生成函数 Negative Binomial Generating Function**：对正整数 $k$，有
> $$\frac{1}{(1-x)^k} = \sum_{n=0}^{\infty} \binom{n+k-1}{k-1} x^n.$$
> 等价地，$[x^n]\dfrac{1}{(1-x)^k} = \dbinom{n+k-1}{k-1}$。

> **证明思路**：对 $\dfrac{1}{1-x} = \sum_{n \geq 0} x^n$ 连续求导 $k-1$ 次，再除以 $(k-1)!$，利用广义二项式定理（或逐步乘积）导出结论。

<!-- ogf_finite_sequence -->
> [!Theorem]
> **有限数列的生成函数 OGF of Finite Sequence**：二项式系数数列 $a_n = \dbinom{m}{n}$（$0 \leq n \leq m$，$m$ 固定）的普通生成函数为
> $$G(x) = \sum_{n=0}^{m} \binom{m}{n} x^n = (1+x)^m.$$

<!-- example_ogf_catalan_setup -->
> [!Example]+
> **常见生成函数速查**：以下是组合数学中常用的普通生成函数：
> $$\begin{align*}
> \frac{1}{1-x} &= \sum_{n=0}^{\infty} x^n, \\
> \frac{1}{1-cx} &= \sum_{n=0}^{\infty} c^n x^n, \\
> \frac{1}{(1-x)^2} &= \sum_{n=0}^{\infty} (n+1) x^n, \\
> \frac{1}{(1-x)^k} &= \sum_{n=0}^{\infty} \binom{n+k-1}{k-1} x^n, \\
> (1+x)^m &= \sum_{n=0}^{m} \binom{m}{n} x^n.
> \end{align*}$$
