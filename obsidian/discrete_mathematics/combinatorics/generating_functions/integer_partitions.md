---
title: 整数拆分
tags:
  - combinatorics
  - generating_functions
refs: "[[ordinary_generating_functions]], [[gf_basic_operation]]"
---
# 整数拆分

整数拆分 Integer Partition 研究将正整数 $n$ 表示为正整数之和的方式数，是生成函数技术的经典应用，同时与数论和 $q$-级数有深刻联系。

<!-- integer_partition_def -->
> [!Definition]
> **整数拆分 Integer Partition**：正整数 $n$ 的一个**拆分（划分）**是将 $n$ 写成若干正整数之和的方式：
> $$n = \lambda_1 + \lambda_2 + \cdots + \lambda_k, \quad \lambda_1 \geq \lambda_2 \geq \cdots \geq \lambda_k \geq 1.$$
> 其中正整数 $\lambda_1, \lambda_2, \ldots, \lambda_k$ 称为该拆分的**部分（Parts）**，$k$ 为**部分数**。不同排列视为同一拆分（即拆分是无序的）。$n$ 的不同拆分个数记为 $p(n)$，规定 $p(0) = 1$（空拆分）。

> **注**：例如 $n = 4$ 的拆分有：$4$，$3+1$，$2+2$，$2+1+1$，$1+1+1+1$，共 $p(4) = 5$ 种。

<!-- partition_generating_function -->
> [!Theorem]
> **整数拆分的生成函数 Generating Function for Integer Partitions**：整数拆分数列 $(p(n))_{n \geq 0}$ 的普通生成函数为
> $$\sum_{n=0}^{\infty} p(n) x^n = \prod_{k=1}^{\infty} \frac{1}{1 - x^k}.$$

> **证明思路**：每个正整数 $k$ 在拆分中可以出现 $0, 1, 2, \ldots$ 次，其贡献的生成函数为 $1 + x^k + x^{2k} + \cdots = \dfrac{1}{1-x^k}$。由乘法原理，将所有正整数的贡献独立相乘，$x^n$ 的系数即为选取各正整数个数使总和为 $n$ 的方案数，恰为 $p(n)$。

<!-- partition_restricted_def -->
> [!Definition]
> **受限拆分 Restricted Partitions**：对整数拆分加以限制，常见类型包括：
> - **部分数限制**：部分数不超过 $m$，生成函数为 $\prod_{k=1}^{m} \dfrac{1}{1-x^k}$。
> - **部分大小限制**：每个部分至多为 $m$，生成函数为 $\prod_{k=1}^{m} \dfrac{1}{1-x^k}$（形式相同，但含义不同）。
> - **部分互不相同（Distinct Parts）**：每个正整数至多出现一次，生成函数为 $\prod_{k=1}^{\infty} (1 + x^k)$。
> - **部分为奇数（Odd Parts）**：只用奇数正整数，生成函数为 $\prod_{k=0}^{\infty} \dfrac{1}{1 - x^{2k+1}}$。

<!-- euler_partition_theorem -->
> [!Theorem]
> **欧拉拆分定理 Euler's Partition Theorem**：正整数 $n$ 拆分为**互不相同**的正整数之和的方案数，等于拆分为**奇数部分**（允许重复）之和的方案数。

> **证明思路**：比较两类拆分的生成函数：
> $$\prod_{k=1}^{\infty}(1 + x^k) = \prod_{k=1}^{\infty} \frac{1 - x^{2k}}{1 - x^k} = \frac{\prod_{k=1}^{\infty}(1 - x^{2k})}{\prod_{k=1}^{\infty}(1 - x^k)}.$$
> 分子的因子 $(1-x^{2k})$ 消去分母中所有偶数 $k$ 的因子 $(1-x^{2k})$（因为偶数 $k$ 可写为 $k = 2j$），剩余恰为奇数 $k$ 的因子 $\prod_{j=0}^{\infty}\dfrac{1}{1-x^{2j+1}}$，从而两类拆分的生成函数相等，故对所有 $n$ 方案数相同。

<!-- example_partition_small -->
> [!Example]+
> **小数值拆分 Partitions of Small Numbers**：
> $$\begin{align*}
> p(0) &= 1, \\
> p(1) &= 1 \quad (1), \\
> p(2) &= 2 \quad (2,\ 1+1), \\
> p(3) &= 3 \quad (3,\ 2+1,\ 1+1+1), \\
> p(4) &= 5 \quad (4,\ 3+1,\ 2+2,\ 2+1+1,\ 1+1+1+1), \\
> p(5) &= 7 \quad (5,\ 4+1,\ 3+2,\ 3+1+1,\ 2+2+1,\ 2+1+1+1,\ 1+1+1+1+1).
> \end{align*}$$

<!-- example_euler_verification -->
> [!Example]+
> **欧拉定理验证 Verification of Euler's Theorem**：取 $n = 6$：
>
> **互不相同的部分**：$6$，$5+1$，$4+2$，$3+2+1$ — 共 **4** 种。
>
> **奇数部分（允许重复）**：$5+1$，$3+3$，$3+1+1+1$，$1+1+1+1+1+1$ — 共 **4** 种。
>
> 两者相等，验证了欧拉拆分定理。

<!-- partition_pentagonal_theorem -->
> [!Theorem]
> **欧拉五边形数定理 Euler's Pentagonal Number Theorem**：
> $$\prod_{k=1}^{\infty}(1 - x^k) = \sum_{j=-\infty}^{+\infty} (-1)^j x^{j(3j-1)/2} = 1 - x - x^2 + x^5 + x^7 - x^{12} - x^{15} + \cdots,$$
> 其中 $\omega_j = \dfrac{j(3j-1)}{2}$（$j = 0, \pm 1, \pm 2, \ldots$）称为**广义五边形数 Generalized Pentagonal Numbers**。

> **证明思路**：此定理可通过 Young 图的组合双射（Franklin 的组合证明）证明：对拆分为奇数个不同部分和偶数个不同部分的计数建立几乎完美的对消对应，仅五边形数处无法对消，给出上式的非零项。

> **注**：五边形数定理给出 $p(n)$ 的递推公式：由 $\left(\sum_{n \geq 0} p(n) x^n\right) \cdot \prod_{k \geq 1}(1-x^k) = 1$，展开后比较 $x^n$ 系数，可得
> $$p(n) = \sum_{j \neq 0} (-1)^{j+1} p\!\left(n - \frac{j(3j-1)}{2}\right),$$
> 其中求和对所有使 $n - \omega_j \geq 0$ 的广义五边形数 $\omega_j$ 进行。此递推可高效计算 $p(n)$。
