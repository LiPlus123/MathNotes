---
title: 斯特林数
tags:
  - combinatorics
  - special_sequences
refs: "[[../advanced_counting_principles/inclusion_exclusion_principle]], [[../generating_functions/exponential_generating_functions]]"
---
# 斯特林数

斯特林数分为两类：**第一类斯特林数 Stirling Numbers of the First Kind** 计数置换按轮换分解的方式；**第二类斯特林数 Stirling Numbers of the Second Kind** 计数集合划分的方式。两类均有重要的递推关系和生成函数表示，在代数组合学中居核心地位。

## 第二类斯特林数

<!-- stirling2_def -->
> [!Definition]
> **第二类斯特林数 Stirling Numbers of the Second Kind**：将 $n$ 元集 $\{1, 2, \ldots, n\}$ 划分为恰好 $k$ 个**非空无序子集**（块）的方案数，记为 $S(n, k)$，也记为 $\left\{ {n \atop k} \right\}$。规定 $S(0,0) = 1$，$S(n,0) = 0$（$n \geq 1$），$S(0,k) = 0$（$k \geq 1$）。

<!-- stirling2_recurrence -->
> [!Theorem]
> **第二类斯特林数的递推关系 Recurrence for $S(n,k)$**：对 $n \geq 1$，$1 \leq k \leq n$，
> $$S(n, k) = k \cdot S(n-1, k) + S(n-1, k-1).$$

> **证明思路**：考虑元素 $n$ 的位置：
> - **情形一：$n$ 单独成一块**。其余 $n-1$ 个元素划分为 $k-1$ 块，方案数为 $S(n-1, k-1)$。
> - **情形二：$n$ 与其他元素共处一块**。先将 $n-1$ 个元素划分为 $k$ 块（$S(n-1,k)$ 种），再将 $n$ 插入其中任意一块（$k$ 种选择），共 $k \cdot S(n-1,k)$ 种。

<!-- stirling2_explicit -->
> [!Theorem]
> **第二类斯特林数的显式公式 Explicit Formula for $S(n,k)$**：
> $$S(n,k) = \frac{1}{k!} \sum_{j=0}^{k} (-1)^{k-j} \binom{k}{j} j^n.$$

> **证明思路**：利用[[../advanced_counting_principles/inclusion_exclusion_principle|容斥原理]]：将 $n$ 个有标号球放入 $k$ 个有标号盒（每盒非空）的方案数为 $\sum_{j=0}^{k}(-1)^{k-j}\binom{k}{j}j^n$（容斥去掉空盒的情形），再除以 $k!$ 使盒无序，即得 $S(n,k)$。

<!-- stirling2_egf -->
> [!Theorem]
> **第二类斯特林数的生成函数 EGF for $S(n,k)$**：固定 $k$，关于 $n$ 的指数生成函数为
> $$\sum_{n=k}^{\infty} S(n,k) \frac{x^n}{n!} = \frac{(e^x - 1)^k}{k!}.$$

> **证明思路**：$k$ 个非空有标号块的 EGF 为 $(e^x-1)$（每块至少一个元素），$k$ 个无序块的 EGF 为 $(e^x-1)^k/k!$；展开后 $x^n/n!$ 的系数即为 $S(n,k)$。

<!-- falling_factorial_stirling2 -->
> [!Theorem]
> **幂与下降阶乘的转换 Conversion between Powers and Falling Factorials**：
> $$x^n = \sum_{k=0}^{n} S(n,k)\, x^{\underline{k}}, \quad \text{其中}\ x^{\underline{k}} = x(x-1)(x-2)\cdots(x-k+1).$$

> **证明思路**：将 $x$ 视为正整数，等式左端为将 $n$ 个有标号球放入 $x$ 个有标号盒（允许空盒）的方案数；右端枚举恰好用了 $k$ 个盒（$S(n,k)$ 种划分方式，每种选 $k$ 个有标号盒放入，有 $x^{\underline{k}}$ 种选法），两端等价，对所有正整数 $x$ 成立，由多项式恒等式推广到一般情形。

## 第一类斯特林数

<!-- stirling1_def -->
> [!Definition]
> **第一类斯特林数（无符号）Unsigned Stirling Numbers of the First Kind**：$n$ 元集的置换中，恰好有 $k$ 个**轮换 Cycle**（包括长度为 $1$ 的不动点）的置换数，记为 $c(n, k)$，也记为 $\left[ {n \atop k} \right]$。规定 $c(0,0) = 1$，$c(n,0) = 0$（$n \geq 1$），$c(0,k) = 0$（$k \geq 1$）。

> **注**：有符号第一类斯特林数定义为 $s(n,k) = (-1)^{n-k} c(n,k)$，满足 $x^{\overline{n}} = \sum_{k} s(n,k) x^k$ 等代数关系。

<!-- stirling1_recurrence -->
> [!Theorem]
> **第一类斯特林数的递推关系 Recurrence for $c(n,k)$**：对 $n \geq 1$，$1 \leq k \leq n$，
> $$c(n, k) = (n-1) \cdot c(n-1, k) + c(n-1, k-1).$$

> **证明思路**：考虑元素 $n$ 在置换中的位置：
> - **情形一：$n$ 构成单独的长度为 $1$ 的轮换（不动点）**。其余 $n-1$ 个元素构成 $k-1$ 个轮换，方案数为 $c(n-1, k-1)$。
> - **情形二：$n$ 插入某个已有轮换**。先将 $n-1$ 个元素形成 $k$ 个轮换（$c(n-1,k)$ 种），再将 $n$ 插入这 $n-1$ 个元素中任意一个的后面（$n-1$ 种选择），共 $(n-1) \cdot c(n-1,k)$ 种。

<!-- stirling1_ogf -->
> [!Theorem]
> **第一类斯特林数的生成函数 OGF for $c(n,k)$**：固定 $n$，关于 $k$ 的生成函数为
> $$\sum_{k=0}^{n} c(n,k)\, x^k = x(x+1)(x+2)\cdots(x+n-1) = x^{\overline{n}},$$
> 其中 $x^{\overline{n}} = x(x+1)\cdots(x+n-1)$ 为**上升阶乘 Rising Factorial**（Pochhammer 符号）。

> **证明思路**：对 $n$ 归纳。$n=1$ 时 $x^{\overline{1}} = x$，$c(1,1)=1$ 正确。若 $n-1$ 时成立，则 $x^{\overline{n}} = (x+n-1)x^{\overline{n-1}}$，利用递推 $c(n,k) = (n-1)c(n-1,k) + c(n-1,k-1)$ 展开系数，与 $(x+n-1)\sum_k c(n-1,k)x^k$ 展开吻合。

<!-- stirling_triangle -->
> [!Example]+
> **斯特林数三角形**：以下是 $S(n,k)$（第二类）和 $c(n,k)$（第一类无符号）的前几行：
>
> **第二类 $S(n,k)$**（行为 $n=0,1,\ldots,5$，列为 $k$）：
> $$\begin{array}{c|cccccc}
> n \backslash k & 0 & 1 & 2 & 3 & 4 & 5 \\ \hline
> 0 & 1 \\
> 1 & 0 & 1 \\
> 2 & 0 & 1 & 1 \\
> 3 & 0 & 1 & 3 & 1 \\
> 4 & 0 & 1 & 7 & 6 & 1 \\
> 5 & 0 & 1 & 15 & 25 & 10 & 1
> \end{array}$$
>
> **第一类无符号 $c(n,k)$**（行为 $n=0,1,\ldots,5$，列为 $k$）：
> $$\begin{array}{c|cccccc}
> n \backslash k & 0 & 1 & 2 & 3 & 4 & 5 \\ \hline
> 0 & 1 \\
> 1 & 0 & 1 \\
> 2 & 0 & 1 & 1 \\
> 3 & 0 & 2 & 3 & 1 \\
> 4 & 0 & 6 & 11 & 6 & 1 \\
> 5 & 0 & 24 & 50 & 35 & 10 & 1
> \end{array}$$

<!-- example_stirling2_counting -->
> [!Example]+
> **集合划分举例**：将 $\{1,2,3\}$ 划分为 $2$ 块：$\{1\}\{2,3\}$，$\{2\}\{1,3\}$，$\{3\}\{1,2\}$，共 $S(3,2) = 3$ 种。验证递推：$S(3,2) = 2 \cdot S(2,2) + S(2,1) = 2 \cdot 1 + 1 = 3$，正确。

<!-- example_stirling1_cycles -->
> [!Example]+
> **轮换计数举例**：$\{1,2,3\}$ 的置换中恰有 $2$ 个轮换的有：$(1)(23)$，$(2)(13)$，$(3)(12)$（括号表示轮换），共 $c(3,2) = 3$ 种。验证递推：$c(3,2) = 2 \cdot c(2,2) + c(2,1) = 2 \cdot 1 + 1 = 3$，正确。
