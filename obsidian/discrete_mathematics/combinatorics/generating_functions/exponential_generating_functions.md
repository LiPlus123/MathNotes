---
title: 指数生成函数
tags:
  - combinatorics
  - generating_functions
refs: "[[ordinary_generating_functions]]"
---
# 指数生成函数

指数生成函数 Exponential Generating Function (EGF) 将数列中的 $n!$ 纳入权重，特别适合处理**有标号**的组合结构（如排列、有标号图等），是计数排列类问题的核心工具。

<!-- egf_def -->
> [!Definition]
> **指数生成函数 Exponential Generating Function**：数列 $(a_n)_{n \geq 0}$ 的**指数生成函数**定义为形式幂级数
> $$\hat{G}(x) = \sum_{n=0}^{\infty} a_n \frac{x^n}{n!}.$$
> 对应地，$a_n = n! \cdot [x^n] \hat{G}(x)$，即 $a_n$ 等于 $\hat{G}(x)$ 在 $x^n/n!$ 处的系数乘以 $n!$。

> **注**：与普通生成函数相比，EGF 在计数**有标号**结构时更自然。若 $a_n$ 是 $n$ 个有标号对象构成某结构的方案数，则 EGF 的乘积自动处理标号分配（即二项式系数因子）。

<!-- egf_common -->
> [!Theorem]
> **常用指数生成函数 Common EGFs**：
> 1. $a_n = 1$（常数列）：$\hat{G}(x) = \displaystyle\sum_{n=0}^{\infty} \frac{x^n}{n!} = e^x$。
> 2. $a_n = c^n$：$\hat{G}(x) = \displaystyle\sum_{n=0}^{\infty} \frac{c^n x^n}{n!} = e^{cx}$。
> 3. $a_n = n!$（全排列数）：$\hat{G}(x) = \displaystyle\sum_{n=0}^{\infty} x^n = \frac{1}{1-x}$。
> 4. $a_n = \binom{m}{n}$（$0 \leq n \leq m$）：$\hat{G}(x) = \displaystyle\sum_{n=0}^{m} \binom{m}{n} \frac{x^n}{n!}$（无简单封闭形式，但与 $(e^x)^m$ 有关）。

<!-- egf_product_formula -->
> [!Theorem]
> **指数生成函数的乘积公式 Product Formula for EGFs**：设数列 $(a_n)$ 的 EGF 为 $A(x)$，$(b_n)$ 的 EGF 为 $B(x)$，则乘积 $A(x) \cdot B(x)$ 是数列 $(c_n)$ 的 EGF，其中
> $$c_n = \sum_{k=0}^{n} \binom{n}{k} a_k b_{n-k}.$$

> **证明思路**：展开 $A(x) \cdot B(x) = \left(\sum_i a_i \frac{x^i}{i!}\right)\left(\sum_j b_j \frac{x^j}{j!}\right)$，整理 $x^n/n!$ 的系数为 $\sum_{k=0}^{n} \frac{n!}{k!(n-k)!} a_k b_{n-k} = \sum_{k=0}^{n} \binom{n}{k} a_k b_{n-k}$。

> **注**：系数 $\binom{n}{k}$ 的出现有组合意义：将 $n$ 个有标号元素分成大小为 $k$ 和 $n-k$ 的两组，方案数为 $\binom{n}{k}$，分别以 $a_k$ 和 $b_{n-k}$ 种方式构建结构。这使得 EGF 乘积自然对应有标号结构的"并置"操作。

<!-- egf_derivation -->
> [!Theorem]
> **EGF 的微分 Differentiation of EGF**：设 $(a_n)_{n \geq 0}$ 的 EGF 为 $\hat{G}(x)$，则 $\hat{G}'(x)$ 是数列 $(a_{n+1})_{n \geq 0}$ 的 EGF：
> $$\hat{G}'(x) = \sum_{n=0}^{\infty} a_{n+1} \frac{x^n}{n!}.$$

> **证明思路**：对 $\hat{G}(x) = \sum_{n=0}^{\infty} a_n \frac{x^n}{n!}$ 逐项微分，得 $\hat{G}'(x) = \sum_{n=1}^{\infty} a_n \frac{x^{n-1}}{(n-1)!} = \sum_{n=0}^{\infty} a_{n+1} \frac{x^n}{n!}$。

<!-- example_egf_exponential -->
> [!Example]+
> **$e^x$ 与全排列**：$n$ 元集合全排列数为 $a_n = n!$，其 EGF 为
> $$\hat{G}(x) = \sum_{n=0}^{\infty} n! \cdot \frac{x^n}{n!} = \sum_{n=0}^{\infty} x^n = \frac{1}{1-x}.$$
> 反过来，$e^x$ 的展开式 $e^x = \sum_{n \geq 0} \frac{x^n}{n!}$ 表明其对应数列 $a_n = 1$——即 $n$ 个有标号元素排成一个**非空子集（大小为 $n$）的"无序集合"**方案数恒为 $1$，或等价地，$n$ 元集合所有元素"贴一个标签"只有 $1$ 种选择，符合 EGF 的计数语义。

<!-- example_egf_two_color -->
> [!Example]+
> **两类对象的 EGF 乘积**：设将 $n$ 个有标号球染色，其中恰好 $k$ 个染红色（$k$ 个红球的 EGF 为 $e^x$，对应 $a_k = 1$），$n-k$ 个染蓝色（EGF 也为 $e^x$），则两色方案的总 EGF 为 $e^x \cdot e^x = e^{2x}$，其中 $[x^n/n!] e^{2x} = 2^n$，即每个球独立染两色共 $2^n$ 种方案，与直接计数一致。
