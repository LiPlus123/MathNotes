---
title: 内积空间
tags:
  - linear_algebra
  - normed_space_and_inner_product_space
---

# 内积空间

<!-- inner_product_space_definition -->
> [!Definition]
> **内积空间 Inner Product Space**：设 $V$ 是域 $F$（$F=\mathbb{R}$ 或 $\mathbb{C}$）上的线性空间。若映射
> $$
> \langle \cdot,\cdot\rangle:V\times V\to F
> $$
> 满足对任意 $x,y,z\in V$、$\lambda\in F$：
> 1. **共轭对称性**：$\langle x,y\rangle=\overline{\langle y,x\rangle}$；
> 2. **线性性（第一变量）**：$\langle \lambda x+z,y\rangle=\lambda\langle x,y\rangle+\langle z,y\rangle$；
> 3. **正定性**：$\langle x,x\rangle\ge 0$，且 $\langle x,x\rangle=0\iff x=\mathbf{0}$，
> 则称 $(V,\langle\cdot,\cdot\rangle)$ 为内积空间。

> **注**：在实内积空间中，共轭对称性退化为对称性 $\langle x,y\rangle=\langle y,x\rangle$。

<!-- norm_from_inner_product_definition -->
> [!Definition]
> **内积诱导范数 Norm Induced by Inner Product**：在内积空间中定义
> $$
> \|x\|:=\sqrt{\langle x,x\rangle},
> $$
> 则得到一个范数，称为内积诱导范数。

<!-- inner_product_basic_properties -->
> [!Theorem]
> **内积的基本性质**：设 $V$ 为内积空间，则对任意 $x,y,z\in V$、$\lambda,\mu\in F$：
> 1. $\langle x,\lambda y+\mu z\rangle=\overline{\lambda}\langle x,y\rangle+\overline{\mu}\langle x,z\rangle$；
> 2. $\langle x,\mathbf{0}\rangle=\langle \mathbf{0},x\rangle=0$；
> 3. $|\langle x,y\rangle|\le \|x\|\,\|y\|$（柯西-施瓦兹不等式）；
> 4. $\|x+y\|^2=\|x\|^2+\|y\|^2+2\operatorname{Re}\langle x,y\rangle$。

> **证明思路**：
> 1. 由共轭对称性与第一变量线性性推出第二变量的共轭线性。
> 2. 由线性性和正定性直接得到。
> 3. 见“柯西-施瓦兹不等式”小节。
> 4. 展开 $\langle x+y,x+y\rangle$ 并利用共轭对称性整理实部。

<!-- standard_inner_product_example -->
> [!Example]+
> **标准内积 Standard Inner Product**：在 $F^n$ 上定义
> $$
> \langle x,y\rangle=\sum_{i=1}^n x_i\overline{y_i},\quad x=(x_1,\ldots,x_n)^T,\ y=(y_1,\ldots,y_n)^T,
> $$
> 这是 $F^n$ 的标准内积，其诱导范数即欧几里得范数
> $$
> \|x\|_2=\left(\sum_{i=1}^n |x_i|^2\right)^{1/2}.
> $$

<!-- parallelogram_identity -->
> [!Theorem]
> **平行四边形恒等式 Parallelogram Identity**：任意内积空间满足
> $$
> \|x+y\|^2+\|x-y\|^2=2\|x\|^2+2\|y\|^2.
> $$

> **证明思路**：分别展开 $\langle x+y,x+y\rangle$ 与 $\langle x-y,x-y\rangle$，相加后交叉项抵消。