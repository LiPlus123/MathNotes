---
title: 一阶线性递推
tags:
  - combinatorics
  - recurrence_relations
refs: "[[recurrence_modeling]]"
---
# 一阶线性递推

一阶线性递推 First-Order Linear Recurrence 是最简单的递推形式，每一项仅依赖前一项，可通过迭代法（逐步展开）求得封闭解。

<!-- first_order_linear_recurrence_def -->
> [!Definition]
> **一阶线性递推 First-Order Linear Recurrence**：形如
> $$a_n = c \cdot a_{n-1} + f(n), \quad n \geq 1$$
> 的递推关系称为**一阶线性递推关系**，其中 $c$ 为常数，$f(n)$ 为关于 $n$ 的函数。当 $f(n) = 0$ 时称为**齐次**的；当 $f(n) \not\equiv 0$ 时称为**非齐次**的。

<!-- first_order_homogeneous -->
> [!Theorem]
> **一阶齐次线性递推的解 Solution of First-Order Homogeneous Recurrence**：设 $a_n = c \cdot a_{n-1}$（$n \geq 1$），初始条件 $a_0$ 给定，则数列的封闭解为
> $$a_n = c^n \cdot a_0, \quad n \geq 0.$$

> **证明思路**：对递推关系连续迭代 $n$ 步：$a_n = c a_{n-1} = c^2 a_{n-2} = \cdots = c^n a_0$。

<!-- first_order_nonhomogeneous_iteration -->
> [!Theorem]
> **一阶非齐次线性递推的迭代解 Iterative Solution of First-Order Nonhomogeneous Recurrence**：设 $a_n = c \cdot a_{n-1} + f(n)$（$n \geq 1$），初始条件 $a_0$ 给定，则当 $c \neq 1$ 时，数列的封闭解为
> $$a_n = c^n a_0 + \sum_{j=1}^{n} c^{n-j} f(j), \quad n \geq 1.$$
> 当 $c = 1$ 时：
> $$a_n = a_0 + \sum_{j=1}^{n} f(j), \quad n \geq 1.$$

> **证明思路**：反复代入递推关系，展开得
> $$a_n = c a_{n-1} + f(n) = c(c a_{n-2} + f(n-1)) + f(n) = \cdots = c^n a_0 + \sum_{j=1}^{n} c^{n-j} f(j).$$

<!-- example_hanoi_closed -->
> [!Example]+
> **汉诺塔封闭解 Closed Form for Tower of Hanoi**：设 $H_n = 2H_{n-1} + 1$，$H_0 = 0$。这是 $c = 2$、$f(n) = 1$ 的一阶非齐次递推，由迭代公式：
> $$H_n = 2^n \cdot 0 + \sum_{j=1}^{n} 2^{n-j} \cdot 1 = \sum_{j=1}^{n} 2^{n-j} = 2^{n-1} + 2^{n-2} + \cdots + 1 = 2^n - 1.$$

<!-- example_first_order_growth -->
> [!Example]+
> **利滚利问题 Compound Interest**：设本金 $P_0$，每期利率 $r$，每期额外存入 $d$，则 $P_n = (1+r) P_{n-1} + d$。这是 $c = 1+r$、$f(n) = d$ 的一阶非齐次递推，封闭解为
> $$P_n = (1+r)^n P_0 + d \cdot \frac{(1+r)^n - 1}{r}, \quad r \neq 0.$$

> **证明思路**：将 $c = 1+r$，$f(j) = d$ 代入迭代公式，化简等比级数 $\sum_{j=1}^{n} (1+r)^{n-j} = \dfrac{(1+r)^n - 1}{r}$ 即得。
