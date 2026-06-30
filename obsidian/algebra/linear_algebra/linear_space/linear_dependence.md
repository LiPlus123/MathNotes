---
title: 线性相关性
tags:
  - linear_algebra
  - linear_space
---

# 线性相关性

<!-- linear_combination_definition -->
> [!Definition]
> **线性组合 Linear Combination**：设 $V$ 是数域 $F$ 上的线性空间，$v_1, v_2, \ldots, v_n \in V$，$\lambda_1, \lambda_2, \ldots, \lambda_n \in F$，则称
> $$
> \lambda_1 v_1 + \lambda_2 v_2 + \cdots + \lambda_n v_n = \sum_{i=1}^{n} \lambda_i v_i
> $$
> 为向量 $v_1, \ldots, v_n$ 的一个**线性组合**，$\lambda_i$ 称为**系数**。若向量 $v \in V$ 可以表示为 $v_1, \ldots, v_n$ 的线性组合，则称 $v$ 可由 $v_1, \ldots, v_n$ **线性表示**。

<!-- linear_span_definition -->
> [!Definition]
> **张成子空间 Span**：设 $S \subseteq V$ 为非空向量集合，$S$ 的所有有限线性组合构成的集合称为 $S$ 的**张成子空间**（或**生成子空间**），记作 $\mathrm{span}(S)$：
> $$
> \mathrm{span}(S) = \left\{\sum_{i=1}^{n} \lambda_i v_i\ \middle|\ n \in \mathbb{Z}^+,\ v_i \in S,\ \lambda_i \in F\right\}.
> $$
> 对有限集 $S = \{v_1, \ldots, v_n\}$，也记为 $\mathrm{span}(v_1, \ldots, v_n)$。规定 $\mathrm{span}(\varnothing) = \{\mathbf{0}\}$。

> **注**：$\mathrm{span}(S)$ 是 $V$ 中包含 $S$ 的最小子空间，即 $\mathrm{span}(S) \leq V$，且对任意满足 $S \subseteq W \leq V$ 的子空间 $W$，均有 $\mathrm{span}(S) \leq W$。

<!-- linear_dependence_definition -->
> [!Definition]
> **线性相关与线性无关 Linear Dependence and Independence**：设 $v_1, v_2, \ldots, v_n \in V$（$n \geq 1$）。
> - 若存在**不全为零**的 $\lambda_1, \ldots, \lambda_n \in F$，使得 $\displaystyle\sum_{i=1}^{n} \lambda_i v_i = \mathbf{0}$，则称 $v_1, \ldots, v_n$ **线性相关 Linearly Dependent**。
> - 若 $\displaystyle\sum_{i=1}^{n} \lambda_i v_i = \mathbf{0}$ 仅当 $\lambda_1 = \lambda_2 = \cdots = \lambda_n = 0$ 时成立，则称 $v_1, \ldots, v_n$ **线性无关 Linearly Independent**。
>
> 对于无限集 $S \subseteq V$，若其任意有限子集均线性无关，则称 $S$ 线性无关。

<!-- linear_dependence_basic_properties -->
> [!Theorem]
> **线性相关性的基本性质**：设 $V$ 是数域 $F$ 上的线性空间，则：
> 1. 包含零向量 $\mathbf{0}$ 的向量组必线性相关。
> 2. 单个非零向量 $\{v\}$（$v \neq \mathbf{0}$）线性无关。
> 3. 线性无关向量组的任意子集仍线性无关；线性相关向量组的任意超集仍线性相关。
> 4. $v_1, \ldots, v_n$（$n \geq 2$）线性相关，当且仅当其中至少一个向量可由其余向量线性表示。

> **证明思路**：
> 1. 取对应 $\mathbf{0}$ 的系数为 $1$，其余为 $0$，即得非零系数的线性组合为零。
> 2. $\lambda v = \mathbf{0}$ 且 $v \neq \mathbf{0}$，由线性空间性质得 $\lambda = 0$。
> 3. 子集的线性组合等于零可直接作为全集的线性组合（将其余系数取零）；超集类似。
> 4. 若 $\sum \lambda_i v_i = \mathbf{0}$ 有不全为零的解，设 $\lambda_k \neq 0$，则 $v_k = -\lambda_k^{-1}\sum_{i \neq k} \lambda_i v_i$；反之，若 $v_k = \sum_{i \neq k} \mu_i v_i$，则 $v_k - \sum_{i \neq k} \mu_i v_i = \mathbf{0}$ 是非零系数的线性组合。

<!-- steinitz_exchange_lemma -->
> [!Lemma]
> **Steinitz 替换引理 Steinitz Exchange Lemma**：设 $v_1, \ldots, v_m \in V$ 线性无关，且每个 $v_i$ 均可由 $u_1, \ldots, u_n$ 线性表示，则 $m \leq n$。

> **证明思路**：对 $m$ 进行归纳。$m = 1$ 时，$v_1$ 为非零向量，可由某个 $u_i$ 表示，故 $n \geq 1$。归纳步：将 $v_1, \ldots, v_{m-1}$ 替换掉 $u$ 中的 $m-1$ 个，新组 $\{v_1, \ldots, v_{m-1}, u_{m}, \ldots, u_n\}$ 仍能表示 $v_m$；若 $m > n$，则表示式中 $u$ 的系数全零，导致 $v_m$ 是 $v_1, \ldots, v_{m-1}$ 的线性组合，矛盾。

<!-- linear_independence_extension -->
> [!Theorem]
> **线性无关组的扩充**：设 $V$ 是有限维线性空间，$v_1, \ldots, v_k \in V$ 线性无关，且 $\mathrm{span}(v_1, \ldots, v_k) \neq V$，则存在 $v_{k+1} \in V$，使得 $v_1, \ldots, v_k, v_{k+1}$ 仍线性无关。

> **证明思路**：取任意 $v_{k+1} \in V \setminus \mathrm{span}(v_1, \ldots, v_k)$，若 $v_1, \ldots, v_k, v_{k+1}$ 线性相关，则 $v_{k+1} \in \mathrm{span}(v_1, \ldots, v_k)$，矛盾。
