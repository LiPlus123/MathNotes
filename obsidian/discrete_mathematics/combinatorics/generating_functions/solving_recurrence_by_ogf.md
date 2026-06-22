---
title: 通过生成函数求解递推关系
tags:
  - combinatorics
  - generating_functions
refs: "[[gf_basic_operation]], [[../recurrence_relations/linear_homogeneous_const_coeff]], [[../recurrence_relations/linear_nonhomogeneous_const_coeff]]"
---
# 通过生成函数求解递推关系

普通生成函数为递推关系的求解提供了统一的代数框架：将递推关系乘以 $x^n$ 并对 $n$ 求和，把递推转化为关于生成函数 $G(x)$ 的代数方程，再通过部分分式分解提取系数。

<!-- ogf_recurrence_method -->
> [!Definition]
> **生成函数法求解递推 Method of Generating Functions for Recurrences**：给定线性常系数递推关系（齐次或非齐次）及初始条件，通过以下步骤求解：
> 1. 设 $G(x) = \sum_{n=0}^{\infty} a_n x^n$。
> 2. 将递推关系两端乘以 $x^n$，对所有有效的 $n$ 求和，利用[[gf_basic_operation|移位运算]]将 $\sum a_{n-j} x^n$ 表示为含 $G(x)$ 的代数式。
> 3. 求解关于 $G(x)$ 的代数方程，得到 $G(x)$ 的封闭表达式（通常为有理函数）。
> 4. 对 $G(x)$ 作**部分分式分解 Partial Fraction Decomposition**，利用已知生成函数（如 $\dfrac{1}{1-rx}$）提取 $[x^n]G(x) = a_n$。

<!-- example_ogf_solve_simple -->
> [!Example]+
> **生成函数法求解斐波那契数列 Fibonacci via OGF**：设 $f_n = f_{n-1} + f_{n-2}$（$n \geq 2$），$f_0 = 0$，$f_1 = 1$，$G(x) = \sum_{n=0}^{\infty} f_n x^n$。
>
> 对 $n \geq 2$ 将递推两端乘以 $x^n$ 并求和：
> $$\sum_{n=2}^{\infty} f_n x^n = \sum_{n=2}^{\infty} f_{n-1} x^n + \sum_{n=2}^{\infty} f_{n-2} x^n.$$
> 左端 $= G(x) - f_0 - f_1 x = G(x) - x$。右端第一项 $= x(G(x) - f_0) = xG(x)$，第二项 $= x^2 G(x)$，故：
> $$G(x) - x = xG(x) + x^2 G(x).$$
> 解出：
> $$G(x) = \frac{x}{1 - x - x^2}.$$
> 分母分解：$1 - x - x^2 = -(x - r_1)(x - r_2)$，其中 $r_1 = \dfrac{-1-\sqrt{5}}{2}$，$r_2 = \dfrac{-1+\sqrt{5}}{2}$。作部分分式：
> $$G(x) = \frac{1}{\sqrt{5}} \left( \frac{1}{1 - \varphi x} - \frac{1}{1 - \hat{\varphi} x} \right), \quad \varphi = \frac{1+\sqrt{5}}{2},\ \hat{\varphi} = \frac{1-\sqrt{5}}{2}.$$
> 提取系数得比内公式 $f_n = \dfrac{\varphi^n - \hat{\varphi}^n}{\sqrt{5}}$。

<!-- example_ogf_solve_nonhomogeneous -->
> [!Example]+
> **生成函数法求解非齐次递推**：设 $a_n = 3a_{n-1} + 2^n$（$n \geq 1$），$a_0 = 1$，$G(x) = \sum_{n=0}^{\infty} a_n x^n$。
>
> 对 $n \geq 1$ 乘以 $x^n$ 并求和：
> $$G(x) - 1 = 3x G(x) + \sum_{n=1}^{\infty} 2^n x^n = 3x G(x) + \frac{2x}{1 - 2x}.$$
> 整理：
> $$G(x)(1 - 3x) = 1 + \frac{2x}{1-2x} = \frac{1 - 2x + 2x}{1-2x} = \frac{1}{1-2x}.$$
> 故 $G(x) = \dfrac{1}{(1-2x)(1-3x)}$。部分分式：$\dfrac{1}{(1-2x)(1-3x)} = \dfrac{-1}{1-2x} + \dfrac{1}{1-3x} \cdot (-1)\cdots$，实际计算：
> $$\frac{1}{(1-2x)(1-3x)} = \frac{A}{1-2x} + \frac{B}{1-3x}.$$
> 令 $x = 1/2$：$A = \frac{1}{1-3/2} = -2$；令 $x = 1/3$：$B = \frac{1}{1-2/3} = 3$。故
> $$G(x) = \frac{-2}{1-2x} + \frac{3}{1-3x},$$
> 提取系数：$a_n = -2 \cdot 2^n + 3 \cdot 3^n = 3^{n+1} - 2^{n+1}$。

<!-- ogf_partial_fraction -->
> [!Theorem]
> **有理函数的部分分式分解 Partial Fraction Decomposition**：设 $G(x) = \dfrac{P(x)}{Q(x)}$ 为真分式（$\deg P < \deg Q$），且 $Q(x) = \prod_{i=1}^{s}(1 - r_i x)^{m_i}$，则
> $$G(x) = \sum_{i=1}^{s} \sum_{j=1}^{m_i} \frac{A_{i,j}}{(1 - r_i x)^j}.$$
> 利用 $[x^n]\dfrac{1}{(1-rx)^j} = \dbinom{n+j-1}{j-1} r^n$ 即可提取每项的 $x^n$ 系数，从而得到 $a_n$ 的封闭公式。
