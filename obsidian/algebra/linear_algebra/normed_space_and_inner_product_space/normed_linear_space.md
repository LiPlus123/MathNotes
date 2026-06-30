---
title: 赋范线性空间
tags:
  - linear_algebra
  - normed_space_and_inner_product_space
---

# 赋范线性空间

<!-- normed_linear_space_definition -->
> [!Definition]
> **赋范线性空间 Normed Linear Space**：设 $V$ 是数域 $F$（$F=\mathbb{R}$ 或 $\mathbb{C}$）上的线性空间。若映射
> $$
> \|\cdot\|: V \to \mathbb{R}
> $$
> 满足对任意 $x,y\in V$、$\lambda\in F$：
> 1. **正定性**：$\|x\|\ge 0$，且 $\|x\|=0 \iff x=\mathbf{0}$；
> 2. **齐次性**：$\|\lambda x\|=|\lambda|\,\|x\|$；
> 3. **三角不等式**：$\|x+y\|\le \|x\|+\|y\|$，
> 则称 $\|\cdot\|$ 是 $V$ 上的一个**范数**，称 $(V,\|\cdot\|)$ 为赋范线性空间。

<!-- norm_induced_metric_definition -->
> [!Definition]
> **范数诱导的距离 Norm-Induced Metric**：在赋范线性空间 $(V,\|\cdot\|)$ 上定义
> $$
> d(x,y)=\|x-y\|,
> $$
> 则 $d$ 是 $V$ 上的一个度量（距离函数）。

> **注**：由此可在 $V$ 上讨论开球、收敛、连续与完备性；完备赋范线性空间称为 Banach 空间。

<!-- norm_induced_metric_is_metric -->
> [!Theorem]
> **范数诱导距离是度量**：$d(x,y)=\|x-y\|$ 满足非负性、同一性、对称性与三角不等式。

> **证明思路**：前三条分别由范数的正定性和齐次性（取 $\lambda=-1$）推出；三角不等式由
> $$
> d(x,z)=\|x-z\|=\|(x-y)+(y-z)\|\le \|x-y\|+\|y-z\|=d(x,y)+d(y,z)
> $$
> 得到。

<!-- p_norm_examples -->
> [!Example]+
> **$\mathbb{R}^n$ 与 $\mathbb{C}^n$ 上的常见范数 Common Norms on $F^n$**：对 $x=(x_1,\ldots,x_n)^T\in F^n$，常用范数包括
> $$
> \|x\|_1=\sum_{i=1}^n |x_i|,\qquad
> \|x\|_2=\left(\sum_{i=1}^n |x_i|^2\right)^{1/2},\qquad
> \|x\|_\infty=\max_{1\le i\le n}|x_i|.
> $$
> 它们都满足范数三公理，分别称为 $1$-范数、$2$-范数（Euclid 范数）与无穷范数。

<!-- equivalence_of_norms_in_finite_dimension -->
> [!Theorem]
> **有限维空间中的范数等价 Equivalence of Norms in Finite Dimension**：若 $V$ 为有限维线性空间，则 $V$ 上任意两个范数 $\|\cdot\|_a,\|\cdot\|_b$ 等价，即存在常数 $c,C>0$ 使得
> $$
> c\|x\|_a\le \|x\|_b\le C\|x\|_a,\quad \forall x\in V.
> $$

> **证明思路**：将 $V$ 通过选基与 $F^n$ 同构，考虑单位球上的连续函数 $x\mapsto \|x\|_b$；单位球紧致时连续函数取得正最小值与最大值，从而得到上下界。