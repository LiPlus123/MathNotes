---
title: 通过指数生成函数求解计数问题
tags:
  - combinatorics
  - generating_functions
refs: "[[exponential_generating_functions]], [[../advanced_counting_principles/inclusion_exclusion_principle]]"
---
# 通过指数生成函数求解计数问题

指数生成函数特别适合求解**有标号结构**的计数问题，尤其是具有"将 $n$ 个元素分组、每组满足特定约束"形式的问题。通过 EGF 的乘积和指数运算，可以系统地处理元素带有限制的排列计数。

<!-- egf_labeled_structure -->
> [!Definition]
> **有标号结构与 EGF EGF for Labeled Structures**：设某类有标号结构（如有限制的排列、有标号图等）满足：大小为 $n$ 的结构数目为 $a_n$。若该结构可由若干个**独立、有标号的子结构**组合而成，且每种子结构的 EGF 已知，则整体结构的 EGF 可由子结构 EGF 的乘积（或指数）表示。

<!-- egf_set_partition_exponential -->
> [!Theorem]
> **EGF 的指数公式 Exponential Formula**：设 $C(x) = \sum_{n=1}^{\infty} c_n \frac{x^n}{n!}$ 是某类"连通"有标号结构的 EGF（$c_n$ 为大小为 $n$ 的连通结构数），则将 $n$ 个有标号元素划分为任意多个非空连通块（每块独立构建）的方案数 $a_n$ 的 EGF 为
> $$A(x) = \exp(C(x)) = e^{C(x)}.$$

> **证明思路（概要）**：将 $n$ 个元素分成若干非空块，分配标号的方式由多项式系数 $\binom{n}{k_1, k_2, \ldots}$ 计数。EGF 乘积公式（含二项式系数）的推广——当连通块可以重复且无序排列时，对应 EGF 的指数函数；形式上对 $e^{C(x)} = \sum_{m \geq 0} \frac{C(x)^m}{m!}$ 展开，$m$ 个块无序且各块独立，正好消去重复计数的 $m!$。

<!-- example_egf_derangements -->
> [!Example]+
> **错位排列的 EGF Derangements via EGF**：$n$ 元集的错位排列（无固定点置换）数为 $D_n$。设 $f_k = k!$ 为 $k$ 元全排列数（EGF $\frac{1}{1-x}$），$g_k = [k = 0]$（即 $g_0 = 1$，$k > 0$ 时 $g_k = 0$，EGF $= 1$），由包含-排除原理，恰好有 $j$ 个固定点的排列的 EGF 为 $\frac{x^j}{j!} \cdot \frac{1}{1-x} \cdot e^{-x} \cdots$。
>
> 直接方法：$D_n = n! \sum_{k=0}^{n} \frac{(-1)^k}{k!}$，故 EGF 为
> $$\hat{D}(x) = \sum_{n=0}^{\infty} D_n \frac{x^n}{n!} = \sum_{n=0}^{\infty} \left(\sum_{k=0}^{n} \frac{(-1)^k}{k!}\right) x^n \cdot \frac{n!}{n!}.$$
> 由 EGF 乘积公式：$\hat{D}(x) = e^{-x} \cdot \dfrac{1}{1-x}$，即错位排列的 EGF 为
> $$\hat{D}(x) = \frac{e^{-x}}{1-x}.$$
> 验证：$[x^n/n!]\hat{D}(x) = n! \sum_{k=0}^{n} \frac{(-1)^k}{k!} = D_n$，与包含-排除公式一致。

<!-- example_egf_restricted_permutations -->
> [!Example]+
> **有限制的排列 Permutations with Restrictions**：设 $a_n$ 为 $\{1, 2, \ldots, n\}$ 的排列数，其中每个元素 $i$ 要么在位置 $i$（固定点），要么不在（错位）。这等价于将 $n$ 个元素分为"固定点集合"和"错位子集"：固定点子集大小为 $k$（EGF $e^x$，对应 $c_k = 1$），其余 $n-k$ 个错位（EGF $e^{-x}/(1-x)$），乘积 EGF $= e^x \cdot e^{-x}/(1-x) = 1/(1-x)$，提取系数得 $a_n = n!$，与全排列一致（因为"固定点 + 错位"就是全排列）。

<!-- example_egf_word_arrangements -->
> [!Example]+
> **字母有重复限制的排列 Arrangements with Repetition Constraints**：用字母 $\{A, B\}$ 构成长度为 $n$ 的序列，要求 $A$ 出现偶数次，$B$ 出现任意次。
>
> - $A$ 出现偶数次的 EGF：$\cosh(x) = \dfrac{e^x + e^{-x}}{2} = \sum_{k \geq 0} \dfrac{x^{2k}}{(2k)!}$（即 $a_k = [2 \mid k]$）。
> - $B$ 出现任意次的 EGF：$e^x$。
>
> 总 EGF $= e^x \cdot \cosh(x) = \dfrac{e^{2x} + 1}{2}$，故方案数为
> $$a_n = n! [x^n/n!] \frac{e^{2x}+1}{2} = \frac{2^n + [n=0]}{2}.$$
> 即 $a_0 = 1$，$n \geq 1$ 时 $a_n = 2^{n-1}$。
