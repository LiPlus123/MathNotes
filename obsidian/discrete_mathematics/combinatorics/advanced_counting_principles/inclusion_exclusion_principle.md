---
title: 容斥原理
tags:
  - combinatorics
  - advanced_counting_principles
refs: "[[counting_principles]]"
---
# 容斥原理

加法原理要求计数对象互不相交。当集合存在重叠时，直接求和会重复计算公共部分，**容斥原理 Inclusion-Exclusion Principle** 正是处理这种情形的核心工具：将所有子集的基数之和加减调整，使得每个元素恰好被计数一次。

## 两个集合的容斥原理

<!-- two_set_inclusion_exclusion -->
> [!Theorem]
> **两个集合的容斥原理 Inclusion-Exclusion Principle for Two Sets**：设 $A$ 与 $B$ 是两个有限集合，则
> $$|A \cup B| = |A| + |B| - |A \cap B|.$$

> **证明思路**：将 $A \cup B$ 分为三个两两不相交的部分：$A \setminus B$、$A \cap B$、$B \setminus A$，由加法原理得 $|A \cup B| = |A \setminus B| + |A \cap B| + |B \setminus A|$。注意 $|A| = |A \setminus B| + |A \cap B|$，$|B| = |B \setminus A| + |A \cap B|$，代入化简即得。

> **注**：当 $A \cap B = \varnothing$ 时，该公式退化为加法原理 $|A \cup B| = |A| + |B|$。

<!-- example_iep_two_sets -->
> [!Example]+
> **喜欢数学或物理的学生人数**：某班 $40$ 名学生中，喜欢数学的有 $25$ 人，喜欢物理的有 $20$ 人，两者都喜欢的有 $10$ 人。设 $A$ 为喜欢数学的学生集合，$B$ 为喜欢物理的学生集合，则至少喜欢其中一门的学生人数为
> $$|A \cup B| = |A| + |B| - |A \cap B| = 25 + 20 - 10 = 35.$$

## 三个集合的容斥原理

<!-- three_set_inclusion_exclusion -->
> [!Corollary]
> **三个集合的容斥原理 Inclusion-Exclusion Principle for Three Sets**：设 $A$、$B$、$C$ 是三个有限集合，则
> $$|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |A \cap C| - |B \cap C| + |A \cap B \cap C|.$$

> **证明思路**：对 $A \cup B \cup C$ 先将 $B \cup C$ 视为整体，用两集合容斥公式，再对 $|B \cup C|$ 和 $|A \cap (B \cup C)| = |(A \cap B) \cup (A \cap C)|$ 分别再次应用两集合容斥公式，展开化简即得。

## 一般容斥原理

<!-- general_inclusion_exclusion_principle -->
> [!Theorem]
> **容斥原理 Inclusion-Exclusion Principle**：设 $A_1, A_2, \ldots, A_n$ 是 $n$ 个有限集合，则
> $$\left|\bigcup_{i=1}^{n} A_i\right| = \sum_{\varnothing \neq S \subseteq \{1,2,\ldots,n\}} (-1)^{|S|-1} \left|\bigcap_{i \in S} A_i\right|.$$
> 展开写为
> $$\left|\bigcup_{i=1}^{n} A_i\right| = \sum_{i}|A_i| - \sum_{i < j}|A_i \cap A_j| + \sum_{i < j < k}|A_i \cap A_j \cap A_k| - \cdots + (-1)^{n-1}|A_1 \cap A_2 \cap \cdots \cap A_n|.$$

> **证明思路**：对任意元素 $x \in \bigcup_{i=1}^{n} A_i$，设 $x$ 属于其中恰好 $m$（$1 \le m \le n$）个集合，则 $x$ 在右端各项中的总贡献为
> $$\sum_{k=1}^{m} (-1)^{k-1}\binom{m}{k} = 1 - (1-1)^m = 1,$$
> 恰好被计数一次；不属于任何 $A_i$ 的元素贡献为 $0$。因此等式两端相等。

<!-- complement_form_iep -->
> [!Corollary]
> **容斥原理的补集形式 Complementary Form of Inclusion-Exclusion**：设全集为 $U$，$|U| = N$，$A_1, A_2, \ldots, A_n \subseteq U$，令 $\bar{A}_i = U \setminus A_i$，则不属于任何 $A_i$ 的元素个数为
> $$\left|\bar{A}_1 \cap \bar{A}_2 \cap \cdots \cap \bar{A}_n\right| = \sum_{S \subseteq \{1,\ldots,n\}} (-1)^{|S|} \left|\bigcap_{i \in S} A_i\right|,$$
> 其中约定 $\bigcap_{i \in \varnothing} A_i = U$，即 $S = \varnothing$ 时对应项为 $N$。

> **证明思路**：由德摩根定律 $\bar{A}_1 \cap \cdots \cap \bar{A}_n = \overline{A_1 \cup \cdots \cup A_n}$，故 $|\bar{A}_1 \cap \cdots \cap \bar{A}_n| = N - |A_1 \cup \cdots \cup A_n|$，将一般容斥原理代入即得。

<!-- example_iep_derangement -->
> [!Example]+
> **错位排列数**：$n$ 个元素的**错位排列 Derangement** 是指第 $i$ 个位置不放第 $i$ 个元素（$i = 1, 2, \ldots, n$）的排列。设全集 $U$ 为 $n!$ 个排列，$A_i$ 为第 $i$ 个位置恰好放第 $i$ 个元素的排列集合，则 $|A_i| = (n-1)!$，$|A_i \cap A_j| = (n-2)!$，一般地 $|A_{i_1} \cap \cdots \cap A_{i_k}| = (n-k)!$。由容斥原理的补集形式，错位排列数 $D_n$ 为
> $$D_n = \sum_{k=0}^{n} (-1)^k \binom{n}{k}(n-k)! = n! \sum_{k=0}^{n} \frac{(-1)^k}{k!}.$$
