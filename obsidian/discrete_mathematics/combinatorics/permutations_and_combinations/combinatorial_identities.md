---
title: 组合恒等式
tags:
  - combinatorics
  - permutations_and_combinations
refs:
  - "[[combinations]]"
  - "[[binomial_theorem]]"
---

# 组合恒等式

组合恒等式是涉及二项式系数 $\dbinom{n}{k}$ 的等式。这些恒等式既可以通过代数运算（如二项式定理求导、积分、特殊取值）证明，也可以通过组合学的“双计数”方法直观地说明。本节列出若干最常见的组合恒等式。

## 基本恒等式

<!-- proposition_id_symmetry -->
> [!Proposition]
> **对称恒等式**：对 $0 \le k \le n$，
> $$\binom{n}{k} = \binom{n}{n-k}$$

> **注**：源自[[discrete_mathematics/combinatorics/permutations_and_combinations/combinations|组合]]中的对称性。

<!-- proposition_id_pascal -->
> [!Proposition]
> **帕斯卡恒等式 Pascal's Identity**：对 $1 \le k \le n$，
> $$\binom{n}{k} = \binom{n-1}{k-1} + \binom{n-1}{k}$$

> **注**：源自[[discrete_mathematics/combinatorics/permutations_and_combinations/combinations|组合]]中的帕斯卡法则。

<!-- proposition_id_absorption -->
> [!Proposition]
> **吸收恒等式 Absorption Identity**：对 $1 \le k \le n$，
> $$k \binom{n}{k} = n \binom{n-1}{k-1}$$
> 等价地
> $$\binom{n}{k} = \frac{n}{k} \binom{n-1}{k-1}$$

> **证明思路**：由组合数公式
> $$k \binom{n}{k} = k \cdot \frac{n!}{k!(n-k)!} = \frac{n!}{(k-1)!(n-k)!} = n \cdot \frac{(n-1)!}{(k-1)!(n-k)!} = n \binom{n-1}{k-1}$$
> **组合学解释**：从 $n$ 人中选 $k$ 人组成委员会并指定一名主席，有两种计数方式：先选委员会再选主席（$\dbinom{n}{k} \cdot k$）；先选主席再从剩余 $n-1$ 人中选 $k-1$ 名委员（$n \cdot \dbinom{n-1}{k-1}$）。

## 由二项式定理推出的恒等式

二项式定理通过对 $x, y$ 选取特殊值或施行简单运算，可以推出大量组合恒等式。

<!-- alternating_sum_identity -->
> [!Corollary]
> **交错和恒等式 Alternating Sum Identity**：对任意正整数 $n$，
> $$\sum_{k=0}^{n} (-1)^k \binom{n}{k} = 0.$$

> **证明思路**：在[[binomial_theorem|二项式定理]]中令 $x = 1$，$y = -1$，则左端为 $(1 + (-1))^n = 0^n = 0$（$n \geq 1$），右端即为该交错和。

> **注**：将此恒等式与[[combinations|组合数总和]] $\sum_{k=0}^n \binom{n}{k} = 2^n$ 相加、相减，可分别得到偶数项与奇数项二项式系数之和：
> $$\sum_{k \text{ 偶}} \binom{n}{k} = \sum_{k \text{ 奇}} \binom{n}{k} = 2^{n-1} \quad (n \geq 1).$$

<!-- weighted_sum_identity -->
> [!Corollary]
> **加权和恒等式 Weighted Sum Identity**：对任意正整数 $n$，
> $$\sum_{k=0}^{n} k \binom{n}{k} = n \cdot 2^{n-1}.$$

> **证明思路（代数证明）**：对二项式定理 $(1 + y)^n = \sum_{k=0}^{n} \binom{n}{k} y^{k}$ 关于 $y$ 求导，得
> $$n(1 + y)^{n-1} = \sum_{k=0}^{n} k \binom{n}{k} y^{k-1}.$$
> 令 $y = 1$ 即得 $\sum_{k=0}^{n} k \binom{n}{k} = n \cdot 2^{n-1}$。
> 
> **证明思路（组合证明）**：等式两端均统计如下事件的方案数——从 $n$ 个人中选出一个**非空**子集，再从子集中指定一名"组长"。左端按子集大小 $k$ 分类：先选 $k$ 元子集有 $\binom{n}{k}$ 种，再从中选组长有 $k$ 种。右端先选组长 $n$ 种，再让其余 $n - 1$ 人独立决定是否参加，共 $2^{n-1}$ 种。

<!-- vandermonde_identity -->
> [!Theorem]
> **范德蒙德恒等式 Vandermonde's Identity**：对任意非负整数 $m, n, r$，
> $$\binom{m + n}{r} = \sum_{k=0}^{r} \binom{m}{k} \binom{n}{r - k}.$$

> **证明思路（组合证明）**：等式左端是从 $m + n$ 个对象（其中 $m$ 个"红"、$n$ 个"蓝"）中无序选出 $r$ 个的方案数。按"红色被选中的数量 $k$"分类（$k = 0, 1, \ldots, r$）：先在 $m$ 个红色中选 $k$ 个有 $\binom{m}{k}$ 种，再在 $n$ 个蓝色中选 $r - k$ 个有 $\binom{n}{r-k}$ 种。由[[counting_principles|加法原理]]与[[counting_principles|乘法原理]]即得。
> 
> **证明思路（代数证明）**：比较等式 $(1 + x)^{m+n} = (1+x)^m (1+x)^n$ 两端 $x^r$ 项的系数：左端为 $\binom{m+n}{r}$，右端展开后 $x^r$ 项的系数为 $\sum_{k=0}^{r} \binom{m}{k} \binom{n}{r-k}$。

<!-- sum_of_squares_identity -->
> [!Corollary]
> **平方和恒等式**：对任意非负整数 $n$，
> $$\sum_{k=0}^{n} \binom{n}{k}^2 = \binom{2n}{n}.$$

> **证明思路**：在[[combinatorial_identities#vandermonde_identity|范德蒙德恒等式]]中取 $m = n$，$r = n$，并利用[[combinations|对称性]] $\binom{n}{n-k} = \binom{n}{k}$ 即得。

## 与组合数递推有关的恒等式

下列恒等式可由组合数的阶乘公式或[[combinations|帕斯卡恒等式]]直接推得。

<!-- absorption_identity -->
> [!Theorem]
> **吸收恒等式 Absorption Identity**：对任意满足 $1 \leq k \leq n$ 的正整数 $n, k$，
> $$k \binom{n}{k} = n \binom{n-1}{k-1}, \qquad \text{等价地} \qquad \binom{n}{k} = \frac{n}{k} \binom{n-1}{k-1}.$$

> **证明思路（代数证明）**：由组合数公式
> $$k \binom{n}{k} = k \cdot \frac{n!}{k!\,(n-k)!} = \frac{n!}{(k-1)!\,(n-k)!} = n \cdot \frac{(n-1)!}{(k-1)!\,(n-k)!} = n \binom{n-1}{k-1}.$$
> 
> **证明思路（组合证明）**：等式两端均统计"从 $n$ 个人中选出一个 $k$ 人小组并指定一名组长"的方案数。左端先选 $k$ 元小组（$\binom{n}{k}$ 种），再从中选组长（$k$ 种）；右端先在 $n$ 人中选一名组长（$n$ 种），再从剩下 $n - 1$ 人中选 $k - 1$ 名组员（$\binom{n-1}{k-1}$ 种）。

<!-- hockey_stick_identity -->
> [!Theorem]
> **曲棍球棒恒等式 Hockey Stick Identity**：对任意满足 $0 \leq k \leq n$ 的非负整数 $n, k$，
> $$\sum_{i=k}^{n} \binom{i}{k} = \binom{n+1}{k+1}.$$

> **注**：此恒等式得名于其在帕斯卡三角形中对应的图形——从 $\binom{k}{k}$ 出发沿一条斜线累加至 $\binom{n}{k}$，结果落在另一条斜线的 $\binom{n+1}{k+1}$ 处，三者相连形似一根曲棍球棒。

> **证明思路（归纳证明）**：对 $n$ 作归纳。$n = k$ 时，左端 $= \binom{k}{k} = 1 = \binom{k+1}{k+1}$，结论成立。设结论对 $n - 1$ 成立，则
> $$\sum_{i=k}^{n} \binom{i}{k} = \binom{n}{k+1} + \binom{n}{k} = \binom{n+1}{k+1},$$
> 末步用[[combinations|帕斯卡恒等式]]。
> 
> **证明思路（组合证明）**：等式右端是从 $\{1, 2, \ldots, n+1\}$ 中选出 $k+1$ 个元素的方案数。按"所选元素中最大的那个"分类：若最大为 $i+1$（$i = k, k+1, \ldots, n$），其余 $k$ 个元素须从 $\{1, 2, \ldots, i\}$ 中选取，方案数为 $\binom{i}{k}$。由[[counting_principles|加法原理]]即得。

<!-- example_hockey_stick -->
> [!Example]+
> **小数据验证**：取 $k = 2$，$n = 5$：
> $$\binom{2}{2} + \binom{3}{2} + \binom{4}{2} + \binom{5}{2} = 1 + 3 + 6 + 10 = 20 = \binom{6}{3}. \checkmark$$

## 求和恒等式

<!-- proposition_id_row_sum -->
> [!Proposition]
> **行和恒等式**：对 $n \ge 0$，
> $$\sum_{k=0}^{n} \binom{n}{k} = 2^n$$

> **证明思路**：见[[discrete_mathematics/combinatorics/permutations_and_combinations/binomial_theorem|二项式定理]]推论。

<!-- proposition_id_alt_row_sum -->
> [!Proposition]
> **行交错和恒等式**：对 $n \ge 1$，
> $$\sum_{k=0}^{n} (-1)^k \binom{n}{k} = 0$$

> **证明思路**：见[[discrete_mathematics/combinatorics/permutations_and_combinations/binomial_theorem|二项式定理]]推论。

<!-- proposition_id_hockey_stick -->
> [!Proposition]
> **曲棍球棒恒等式 Hockey Stick Identity**（又称**朱世杰恒等式**）：对整数 $0 \le r \le n$，
> $$\sum_{i=r}^{n} \binom{i}{r} = \binom{n+1}{r+1}$$

> **证明思路**：对 $n$ 用归纳法。$n = r$ 时左右都为 $1$。假设 $\sum_{i=r}^{n} \dbinom{i}{r} = \dbinom{n+1}{r+1}$，则
> $$\sum_{i=r}^{n+1} \binom{i}{r} = \binom{n+1}{r+1} + \binom{n+1}{r} = \binom{n+2}{r+1}$$
> 最后一步用了帕斯卡恒等式。**组合学解释**：从 $\{1,2,\cdots,n+1\}$ 中选 $r+1$ 个元素，按其最大元素 $i+1 \in \{r+1,\cdots,n+1\}$ 分类：最大元为 $i+1$ 的选法数为 $\dbinom{i}{r}$。


## 范德蒙德卷积

<!-- proposition_id_vandermonde -->
> [!Proposition]
> **范德蒙德卷积 Vandermonde's Identity**：对非负整数 $m, n$ 与 $0 \le r \le m+n$，
> $$\binom{m+n}{r} = \sum_{k=0}^{r} \binom{m}{k} \binom{n}{r-k}$$

> **证明思路**（双计数）：从 $m + n$ 人（$m$ 男 $n$ 女）中选出 $r$ 人。一方面共 $\dbinom{m+n}{r}$ 种；另一方面，按所选男生数 $k$（$0 \le k \le r$）分类：选 $k$ 个男生有 $\dbinom{m}{k}$ 种、选 $r-k$ 个女生有 $\dbinom{n}{r-k}$ 种，由乘法原理与加法原理即得。
> 也可比较 $(1+x)^{m+n} = (1+x)^m (1+x)^n$ 两端 $x^r$ 的系数得到。

<!-- corollary_id_vandermonde_squares -->
> [!Corollary]
> **平方和恒等式**：对 $n \ge 0$，
> $$\sum_{k=0}^{n} \binom{n}{k}^2 = \binom{2n}{n}$$

> **证明思路**：在范德蒙德卷积中取 $m = n$，$r = n$，并利用对称性 $\dbinom{n}{n-k} = \dbinom{n}{k}$，得
> $$\binom{2n}{n} = \sum_{k=0}^{n} \binom{n}{k} \binom{n}{n-k} = \sum_{k=0}^{n} \binom{n}{k}^2$$

## 加权恒等式（由求导得到）

<!-- proposition_id_weighted_sum -->
> [!Proposition]
> **加权求和恒等式**：对 $n \ge 1$，
> $$\sum_{k=0}^{n} k \binom{n}{k} = n \cdot 2^{n-1}$$

> **证明思路**：对二项式定理 $(1+x)^n = \sum_{k=0}^{n} \dbinom{n}{k} x^k$ 关于 $x$ 求导，得 $n(1+x)^{n-1} = \sum_{k=1}^{n} k \dbinom{n}{k} x^{k-1}$，再令 $x = 1$ 即得。
> 也可由吸收恒等式 $k\dbinom{n}{k} = n\dbinom{n-1}{k-1}$ 直接求和：
> $$\sum_{k=0}^{n} k \binom{n}{k} = n \sum_{k=1}^{n} \binom{n-1}{k-1} = n \cdot 2^{n-1}$$

<!-- proposition_id_alt_weighted_sum -->
> [!Proposition]
> **加权交错和恒等式**：对 $n \ge 2$，
> $$\sum_{k=0}^{n} (-1)^k k \binom{n}{k} = 0$$

> **证明思路**：对 $(1+x)^n$ 求导得 $n(1+x)^{n-1} = \sum_{k=1}^{n} k\dbinom{n}{k} x^{k-1}$，令 $x = -1$ 即得（$n \ge 2$ 时右端为 $0$）。