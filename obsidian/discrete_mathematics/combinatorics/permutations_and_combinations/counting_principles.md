---
title: 计数原理
tags:
  - combinatorics
  - permutations_and_combinations
---
# 计数原理

计数 Counting 是组合数学最基本的任务，其核心是确定满足某一条件的对象的个数。一切复杂的计数问题都可以归结为对若干基本计数原理的反复使用。本节介绍两个最基本的计数原理：**加法原理 Addition Principle** 和 **乘法原理 Multiplication Principle**。

记有限集合 $A$ 的元素个数为 $|A|$，称为 $A$ 的**基数 Cardinality**。下面所讨论的集合若无特别声明均默认为有限集合。

## 加法原理

加法原理刻画的是“把若干互不相容的方案合并起来，方案数相加”这一基本事实。

<!-- addition_principle -->
> [!Theorem]
> **加法原理 Addition Principle**：设 $A$ 与 $B$ 是两个有限集合，且 $A \cap B = \varnothing$，则
> $$|A \cup B| = |A| + |B|.$$


> **证明思路**：将 $A \cup B$ 中的元素按其归属于 $A$ 还是 $B$ 进行分类。由于 $A \cap B = \varnothing$，每个元素恰属于其中一个集合，因此 $A \cup B$ 的元素个数等于 $A$ 与 $B$ 各自的元素个数之和。该结论是有限集合基数可加性的直接体现。

> **注**：加法原理常用如下通俗表述：若完成一件事有两类互不相容的方案，第一类方案有 $m$ 种做法，第二类方案有 $n$ 种做法，则完成这件事共有 $m + n$ 种做法。这里“互不相容”对应集合之间的不相交，即同一种做法不会同时属于两类方案。

> **注**：加法原理要求两集合无交，若 $A,B$ 有交集 $A \cap B \neq \varnothing$，则考虑[[inclusion_exclusion_principle|容斥原理]]。


<!-- generalized_addition_principle -->
> [!Corollary]
> **加法原理的推广 Generalized Addition Principle**：设 $A_1, A_2, \ldots, A_n$ 是 $n$ 个两两不相交的有限集合，即对任意 $i \neq j$ 有 $A_i \cap A_j = \varnothing$，则
> $$\left| \bigcup_{i=1}^{n} A_i \right| = \sum_{i=1}^{n} |A_i|.$$

证明思路：对集合个数 $n$ 作数学归纳。$n = 1$ 时结论平凡成立；归纳步利用加法原理，将 $\bigcup_{i=1}^{n} A_i$ 拆为 $\left(\bigcup_{i=1}^{n-1} A_i\right) \cup A_n$，并验证两部分不相交。

<!-- example_addition_principle -->
> [!Example]+
> **从扑克牌中抽取一张**：从一副去掉大小王后共 $52$ 张的扑克牌中任取一张。设方案 $A$ 为"抽出红心"，方案 $B$ 为"抽出黑桃"。由于一张牌不能既是红心又是黑桃，两类方案互不相容，故由加法原理，"抽出红心或黑桃"的方案数为
> $$|A| + |B| = 13 + 13 = 26.$$

<!-- example_addition_principle_book -->
> [!Example]+
> **按字数分类的书籍**：书架上有 $5$ 本不同的中文书、$3$ 本不同的英文书、$2$ 本不同的法文书。从中任取一本，共有多少种取法？由于"取中文书"、"取英文书"、"取法文书"三类方案两两互不相容，由加法原理（推广形式），共有
> $$5 + 3 + 2 = 10$$
> 种取法。

## 乘法原理

乘法原理刻画的是"分步完成一件事，各步之间相互独立，方案数相乘"这一基本事实。

<!-- multiplication_principle -->
> [!Theorem]
> **乘法原理 Multiplication Principle**：设 $A$ 与 $B$ 是两个有限集合，则它们的笛卡尔积 $A \times B = \{(a,b) \mid a \in A, b \in B\}$ 也是有限集合，且
> $$|A \times B| = |A| \cdot |B|.$$

> **注**：乘法原理常用如下通俗表述：若完成一件事需要依次完成两个步骤，第一步有 $m$ 种做法，对第一步的任何一种做法，第二步都有 $n$ 种做法，则完成这件事共有 $m \cdot n$ 种做法。这里要求"第二步的做法数与第一步的具体做法无关"，即各步骤的方案数相互独立。

证明思路：将 $A \times B$ 按第一分量分解为
$$A \times B = \bigcup_{a \in A} \big(\{a\} \times B\big),$$
其中各集合 $\{a\} \times B$ 两两不相交，且每个 $\{a\} \times B$ 与 $B$ 之间存在双射 $(a, b) \mapsto b$，故 $|\{a\} \times B| = |B|$。由加法原理对 $|A|$ 个不相交集合求和即得 $|A \times B| = |A| \cdot |B|$。

<!-- generalized_multiplication_principle -->
> [!Corollary]
> **乘法原理的推广 Generalized Multiplication Principle**：设 $A_1, A_2, \ldots, A_n$ 是 $n$ 个有限集合，则
> $$|A_1 \times A_2 \times \cdots \times A_n| = \prod_{i=1}^{n} |A_i|.$$

证明思路：对集合个数 $n$ 作数学归纳。$n = 1$ 时结论平凡成立；归纳步利用乘法原理及笛卡尔积的结合性 $A_1 \times \cdots \times A_n \cong (A_1 \times \cdots \times A_{n-1}) \times A_n$。

<!-- example_multiplication_principle -->
> [!Example]+
> **分步路线选择**：从 $A$ 地到 $B$ 地有 $3$ 条不同的路线，从 $B$ 地到 $C$ 地有 $4$ 条不同的路线。由乘法原理，从 $A$ 地经 $B$ 地到 $C$ 地的不同走法共有
> $$3 \times 4 = 12 \text{ 种}.$$

<!-- example_multiplication_principle_license -->
> [!Example]+
> **车牌号的方案数**：某地区车牌号由 $2$ 位英文字母后接 $4$ 位阿拉伯数字组成，且字母与数字均允许重复。每位字母有 $26$ 种选择，每位数字有 $10$ 种选择，由乘法原理，车牌号的总数为
> $$26^2 \cdot 10^4 = 6\,760\,000.$$

