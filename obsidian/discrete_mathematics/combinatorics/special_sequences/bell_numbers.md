---
title: 贝尔数
tags:
  - combinatorics
  - special_sequences
refs: "[[stirling_numbers]], [[../generating_functions/exponential_generating_functions]]"
---
# 贝尔数

贝尔数 Bell Numbers 计数集合的**全部划分**数（不限块数），是[[stirling_numbers|第二类斯特林数]]按块数求和的结果。贝尔数有简洁的递推关系（贝尔三角形）和指数生成函数，并以 $e^{e^x - 1}$ 的形式与指数函数深刻相连。

<!-- bell_number_def -->
> [!Definition]
> **贝尔数 Bell Number**：$n$ 元集 $\{1, 2, \ldots, n\}$ 的所有（无序）划分（将集合分成若干非空子集，不限块数）的总数，记为 $B_n$。规定 $B_0 = 1$（空集唯一的划分为空划分）。前若干项为
> $$B_0 = 1,\ B_1 = 1,\ B_2 = 2,\ B_3 = 5,\ B_4 = 15,\ B_5 = 52, \ldots$$

<!-- bell_stirling_relation -->
> [!Theorem]
> **贝尔数与斯特林数的关系 Bell Numbers via Stirling Numbers**：
> $$B_n = \sum_{k=0}^{n} S(n, k).$$

> **证明思路**：按划分的块数 $k$ 分类，大小为 $n$、恰有 $k$ 块的划分数为 $S(n,k)$，对所有 $k$ 求和即得 $B_n$。

<!-- bell_recurrence -->
> [!Theorem]
> **贝尔数的递推关系 Recurrence for Bell Numbers**：对 $n \geq 1$，
> $$B_{n+1} = \sum_{k=0}^{n} \binom{n}{k} B_k.$$

> **证明思路**：考虑元素 $n+1$ 所在的块：设与 $n+1$ 同块的其他元素恰为 $\{1,\ldots,n\}$ 的某个大小为 $n-k$ 的子集（有 $\binom{n}{n-k} = \binom{n}{k}$ 种选法），其余 $k$ 个元素任意划分为 $B_k$ 种方式，对 $k = 0, 1, \ldots, n$ 求和即得。

<!-- bell_triangle -->
> [!Definition]
> **贝尔三角形 Bell Triangle**（也称 Aitken 三角形）：按如下规则构造的无穷三角形数阵，其每行首项即为对应的贝尔数：
> 1. 第一行为 $B_0 = 1$。
> 2. 每行末尾将上一行的第一个数移至下一行的开头（即下一行首项 = 当前行末项）。
> 3. 每行其余各项 = 同行前一项 + 正上方一项之和。
>
> 前五行为：
> $$\begin{array}{lllll}
> 1 \\
> 1 & 2 \\
> 2 & 3 & 5 \\
> 5 & 7 & 10 & 15 \\
> 15 & 20 & 27 & 37 & 52
> \end{array}$$
> 每行第一列恰为 $B_0, B_1, B_2, B_3, B_4 = 1, 1, 2, 5, 15$。

> **注**：贝尔三角形提供了一种无需计算斯特林数而逐步递推 $B_n$ 的实用方法。

<!-- bell_egf -->
> [!Theorem]
> **贝尔数的指数生成函数 EGF for Bell Numbers**：贝尔数的指数生成函数为
> $$\sum_{n=0}^{\infty} B_n \frac{x^n}{n!} = e^{e^x - 1}.$$

> **证明思路**：由[[stirling_numbers|第二类斯特林数的 EGF]] $\sum_{n \geq k} S(n,k) \frac{x^n}{n!} = \dfrac{(e^x-1)^k}{k!}$，对 $k$ 求和（交换求和顺序）：
> $$\sum_{n=0}^{\infty} B_n \frac{x^n}{n!} = \sum_{n=0}^{\infty} \sum_{k=0}^{n} S(n,k) \frac{x^n}{n!} = \sum_{k=0}^{\infty} \frac{(e^x-1)^k}{k!} = e^{e^x-1}.$$
> 最后一步使用了 $e^u = \sum_{k \geq 0} u^k/k!$，令 $u = e^x - 1$。

<!-- bell_exponential_formula -->
> [!Corollary]
> **贝尔数的指数公式 Exponential Formula for Bell Numbers**：结合 EGF $e^{e^x-1}$ 与[[../generating_functions/solving_counting_by_egf|指数公式]]，贝尔数是"将 $n$ 个有标号元素划分为任意多个非空无序块"的计数，其中每块（"连通结构"）的 EGF 为 $e^x - 1$（至少一个有标号元素的非空集合），总体结构的 EGF 为 $\exp(e^x - 1) = e^{e^x-1}$，与定义一致。

<!-- example_bell_partitions -->
> [!Example]+
> **$B_3 = 5$ 的验证**：$\{1,2,3\}$ 的所有划分为：
> $$\{1,2,3\},\quad \{1,2\}\{3\},\quad \{1,3\}\{2\},\quad \{2,3\}\{1\},\quad \{1\}\{2\}\{3\},$$
> 共 $5$ 种，对应 $S(3,1)+S(3,2)+S(3,3) = 1+3+1 = 5 = B_3$。

<!-- example_bell_triangle_verify -->
> [!Example]+
> **贝尔三角形的构造验证**：从 $B_3 = 5$ 出发构造第四行：
> - 首项（来自第三行末项）$= 5$；
> - 第二项 $= 5 + 2 = 7$（$2$ 为第三行首项）；
> - 第三项 $= 7 + 3 = 10$；
> - 第四项 $= 10 + 5 = 15 = B_4$。
> 第四行为 $5, 7, 10, 15$，末项即 $B_4 = 15$，正确。
