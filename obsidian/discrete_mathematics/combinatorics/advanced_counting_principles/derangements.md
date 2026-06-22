---
title: 错位排列
tags:
  - combinatorics
  - advanced_counting_principles
refs: "[[inclusion_exclusion_principle]]"
---
# 错位排列

错位排列 Derangement 是置换理论与容斥原理结合的经典问题：$n$ 个元素的错位排列是指每个元素都不在其"原始位置"的排列，其计数公式由[[inclusion_exclusion_principle|容斥原理]]导出，并随 $n \to \infty$ 趋近于 $n!/e$。

<!-- derangement_def -->
> [!Definition]
> **错位排列 Derangement**：集合 $\{1, 2, \ldots, n\}$ 的一个**错位排列**是满足 $\sigma(i) \neq i$（$i = 1, 2, \ldots, n$）的置换 $\sigma$。$n$ 元集的错位排列数记为 $D_n$（有时也记为 $!n$），规定 $D_0 = 1$（空集的唯一置换视为错位排列），$D_1 = 0$。

<!-- derangement_formula -->
> [!Theorem]
> **错位排列公式 Derangement Formula**：$n$ 元集的错位排列数为
> $$D_n = n! \sum_{k=0}^{n} \frac{(-1)^k}{k!} = n!\left(1 - 1 + \frac{1}{2!} - \frac{1}{3!} + \cdots + \frac{(-1)^n}{n!}\right).$$
> 等价的展开形式为
> $$D_n = \sum_{k=0}^{n} (-1)^k \binom{n}{k}(n-k)!.$$

> **证明思路**：设全集 $U$ 为 $\{1,\ldots,n\}$ 的所有 $n!$ 个排列，$A_i$（$i=1,\ldots,n$）为第 $i$ 个位置恰好放元素 $i$ 的排列集合，则 $D_n = |\bar{A}_1 \cap \bar{A}_2 \cap \cdots \cap \bar{A}_n|$。对任意 $k$ 元子集 $\{i_1,\ldots,i_k\} \subseteq \{1,\ldots,n\}$，有 $|A_{i_1} \cap \cdots \cap A_{i_k}| = (n-k)!$（固定 $k$ 个位置后其余 $(n-k)$ 个任意排列），且 $\{1,\ldots,n\}$ 中 $k$ 元子集共 $\binom{n}{k}$ 个。由[[inclusion_exclusion_principle|容斥原理的补集形式]]：
> $$D_n = \sum_{k=0}^{n} (-1)^k \binom{n}{k}(n-k)! = \sum_{k=0}^{n} (-1)^k \frac{n!}{k!} = n!\sum_{k=0}^{n}\frac{(-1)^k}{k!}.$$

<!-- derangement_recurrence -->
> [!Theorem]
> **错位排列递推关系 Recurrence for Derangements**：错位排列数满足以下递推关系（$n \geq 2$）：
> $$D_n = (n-1)(D_{n-1} + D_{n-2}).$$
> 等价地，也有一阶递推：
> $$D_n = n \cdot D_{n-1} + (-1)^n.$$

> **证明思路（$(n-1)(D_{n-1}+D_{n-2})$ 的推导）**：考虑元素 $n$ 在错位排列中所在的位置 $j$（$j \in \{1, \ldots, n-1\}$，共 $n-1$ 种选择）。固定 $j$ 后，考虑元素 $j$ 的去向：
> - **情形一：元素 $j$ 不放位置 $n$**。此时 $n$ 个元素中，$n$ 占位置 $j$，剩余 $n-1$ 个元素（含 $j$）需错位排列，但元素 $j$ 被"禁止"的位置是 $j$（原始位置）而非 $n$（已被占），等价于 $n-1$ 元错位排列，共 $D_{n-1}$ 种。
> - **情形二：元素 $j$ 放位置 $n$**。即 $n \leftrightarrow j$ 互换，其余 $n-2$ 个元素作错位排列，共 $D_{n-2}$ 种。
>
> 两种情形合计 $D_{n-1} + D_{n-2}$，乘以 $j$ 的选法 $n-1$，得 $D_n = (n-1)(D_{n-1}+D_{n-2})$。

<!-- derangement_limit -->
> [!Theorem]
> **错位排列的极限概率 Limiting Probability of Derangements**：当 $n \to \infty$ 时，
> $$\frac{D_n}{n!} \to \frac{1}{e} \approx 0.3679.$$
> 即随机排列恰为错位排列的概率趋向 $e^{-1}$。

> **证明思路**：由公式 $D_n/n! = \sum_{k=0}^{n} (-1)^k / k!$，而 $e^{-1} = \sum_{k=0}^{\infty} (-1)^k / k!$，截断误差为 $|D_n/n! - e^{-1}| = \left|\sum_{k=n+1}^{\infty} (-1)^k/k!\right| \leq 1/(n+1)! \to 0$。

<!-- derangement_closed_approx -->
> [!Corollary]
> **错位排列数的取整公式 Nearest Integer Formula**：对 $n \geq 1$，
> $$D_n = \left\lfloor \frac{n!}{e} + \frac{1}{2} \right\rfloor,$$
> 即 $D_n$ 是 $n!/e$ 的最近整数。

> **证明思路**：由交错级数余项估计，$|D_n/n! - e^{-1}| < 1/((n+1)!) \leq 1/(2 \cdot n!)$（$n \geq 1$），即 $|D_n - n!/e| < 1/2$，故 $D_n$ 是 $n!/e$ 的最近整数。

<!-- example_derangement_small -->
> [!Example]+
> **小数值错位排列 Derangements of Small Sets**：
> $$\begin{align*}
> D_0 &= 1, \\
> D_1 &= 0, \\
> D_2 &= 1 \quad (21), \\
> D_3 &= 2 \quad (231,\ 312), \\
> D_4 &= 9, \\
> D_5 &= 44.
> \end{align*}$$
> 用公式验证 $D_3$：$D_3 = 3!\left(1 - 1 + \frac{1}{2} - \frac{1}{6}\right) = 6 \cdot \frac{2}{6} = 2$，正确。
> 用递推验证 $D_4$：$D_4 = 3(D_3 + D_2) = 3(2 + 1) = 9$，正确。

<!-- example_derangement_letters -->
> [!Example]+
> **信件错放问题 Problème des ménages**：将 $n$ 封信随机放入 $n$ 个对应的信封，恰好所有信都放错信封的概率为 $D_n / n!$。当 $n = 5$ 时，$D_5 = 44$，$5! = 120$，概率为 $44/120 = 11/30 \approx 36.7\%$，已接近极限值 $1/e \approx 36.8\%$。
