---
title: 生成函数基本运算与卷积
tags:
  - combinatorics
  - generating_functions
refs: "[[ordinary_generating_functions]]"
---
# 生成函数基本运算与卷积

生成函数的代数运算（加法、数乘、乘法、移位、微分、积分）对应数列的相应变换，其中最重要的是**卷积 Convolution**，它将两个数列的乘积数列的计数解释与代数乘法联系起来。

<!-- ogf_addition -->
> [!Theorem]
> **线性运算 Linear Operations**：设 $(a_n)$ 的生成函数为 $A(x)$，$(b_n)$ 的生成函数为 $B(x)$，$\alpha, \beta$ 为常数，则数列 $(\alpha a_n + \beta b_n)$ 的生成函数为
> $$\alpha A(x) + \beta B(x) = \sum_{n=0}^{\infty} (\alpha a_n + \beta b_n) x^n.$$

<!-- ogf_shift -->
> [!Theorem]
> **移位运算 Shift Operations**：设 $(a_n)_{n \geq 0}$ 的生成函数为 $A(x)$，则：
> 1. **右移 $k$ 位（前补零）**：数列 $(0, 0, \ldots, 0, a_0, a_1, \ldots)$（前 $k$ 项为 0，第 $n$ 项为 $a_{n-k}$，$n \geq k$）的生成函数为 $x^k A(x)$。
> 2. **左移 $k$ 位（去掉前 $k$ 项）**：数列 $(a_k, a_{k+1}, a_{k+2}, \ldots)$ 的生成函数为
> $$\frac{A(x) - a_0 - a_1 x - \cdots - a_{k-1} x^{k-1}}{x^k}.$$

<!-- ogf_convolution -->
> [!Definition]
> **卷积 Convolution**：给定数列 $(a_n)_{n \geq 0}$ 和 $(b_n)_{n \geq 0}$，它们的**卷积**是数列 $(c_n)_{n \geq 0}$，其中
> $$c_n = \sum_{k=0}^{n} a_k b_{n-k} = a_0 b_n + a_1 b_{n-1} + \cdots + a_n b_0.$$

<!-- ogf_product_convolution -->
> [!Theorem]
> **乘积与卷积 Product and Convolution**：设 $(a_n)$ 的生成函数为 $A(x)$，$(b_n)$ 的生成函数为 $B(x)$，则乘积 $A(x) \cdot B(x)$ 是 $(a_n)$ 与 $(b_n)$ 的卷积 $(c_n)$ 的生成函数：
> $$A(x) \cdot B(x) = \sum_{n=0}^{\infty} \left( \sum_{k=0}^{n} a_k b_{n-k} \right) x^n.$$

> **证明思路**：将 $A(x) = \sum_{i \geq 0} a_i x^i$ 与 $B(x) = \sum_{j \geq 0} b_j x^j$ 相乘，整理 $x^n$ 的系数为 $\sum_{k=0}^{n} a_k b_{n-k}$，即为卷积定义。

<!-- ogf_differentiation -->
> [!Theorem]
> **微分运算 Differentiation**：设 $(a_n)_{n \geq 0}$ 的生成函数为 $A(x) = \sum_{n=0}^{\infty} a_n x^n$，则：
> - 数列 $((n+1)a_{n+1})_{n \geq 0}$ 的生成函数为 $A'(x) = \sum_{n=0}^{\infty} (n+1) a_{n+1} x^n$。
> - 等价地，数列 $(n \cdot a_n)_{n \geq 0}$ 的生成函数为 $x A'(x) = \sum_{n=0}^{\infty} n a_n x^n$。

<!-- ogf_integration -->
> [!Theorem]
> **积分运算 Integration**：设 $(a_n)_{n \geq 0}$ 的生成函数为 $A(x)$，则数列 $\left(\dfrac{a_{n-1}}{n}\right)_{n \geq 1}$（补充 $n=0$ 时为 $0$）的生成函数为 $\displaystyle\int_0^x A(t)\, \mathrm{d}t = \sum_{n=1}^{\infty} \frac{a_{n-1}}{n} x^n$。

<!-- example_convolution_counting -->
> [!Example]+
> **卷积的组合意义 Combinatorial Interpretation of Convolution**：设 $a_k$ 为从集合 $A$ 中选 $k$ 个元素的方案数，$b_{n-k}$ 为从集合 $B$ 中选 $n-k$ 个元素的方案数，则 $c_n = \sum_{k=0}^{n} a_k b_{n-k}$ 是从 $A \cup B$（$A, B$ 不相交）中选总共 $n$ 个元素的方案数——分配多少来自 $A$（$k$ 个）和来自 $B$（$n-k$ 个）。这正是 $A(x) \cdot B(x)$ 的组合含义。

<!-- example_ogf_diff_application -->
> [!Example]+
> **利用微分求 $\sum n x^n$**：由 $\dfrac{1}{1-x} = \sum_{n \geq 0} x^n$ 对 $x$ 求导得 $\dfrac{1}{(1-x)^2} = \sum_{n \geq 1} n x^{n-1}$，两端乘 $x$ 得
> $$\frac{x}{(1-x)^2} = \sum_{n=0}^{\infty} n x^n.$$
> 这给出数列 $(0, 1, 2, 3, \ldots)$ 的生成函数。
