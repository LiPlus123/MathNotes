---
title: 柯西-施瓦兹不等式
tags:
  - linear_algebra
  - normed_space_and_inner_product_space
---

# 柯西-施瓦兹不等式

<!-- cauchy_schwarz_inequality_theorem -->
> [!Theorem]
> **柯西-施瓦兹不等式 Cauchy-Schwarz Inequality**：设 $V$ 为内积空间，则对任意 $x,y\in V$，有
> $$
> |\langle x,y\rangle|\le \|x\|\,\|y\|.
> $$
> 且等号成立当且仅当 $x,y$ 线性相关（即存在 $\lambda\in F$ 使 $x=\lambda y$ 或 $y=\lambda x$）。

> **证明思路**：若 $y=\mathbf{0}$ 结论显然。否则考虑函数
> $$
> f(t)=\|x-ty\|^2\ge0\quad (t\in F),
> $$
> 取 $t=\langle x,y\rangle/\|y\|^2$，展开并整理得
> $$
> 0\le \|x\|^2-\frac{|\langle x,y\rangle|^2}{\|y\|^2},
> $$
> 即结论。不等式取等当且仅当所取 $t$ 使 $x-ty=\mathbf{0}$。

<!-- holder_type_vector_form_example -->
> [!Example]+
> **欧几里得空间中的坐标形式**：在 $\mathbb{R}^n$ 的标准内积下，柯西-施瓦兹不等式写作
> $$
> \left|\sum_{i=1}^n x_i y_i\right|\le
> \left(\sum_{i=1}^n x_i^2\right)^{1/2}
> \left(\sum_{i=1}^n y_i^2\right)^{1/2}.
> $$

<!-- triangle_inequality_corollary -->
> [!Corollary]
> **由柯西-施瓦兹导出三角不等式**：内积诱导范数满足
> $$
> \|x+y\|\le \|x\|+\|y\|.
> $$

> **证明思路**：展开
> $$
> \|x+y\|^2=\|x\|^2+2\operatorname{Re}\langle x,y\rangle+\|y\|^2
> \le \|x\|^2+2|\langle x,y\rangle|+\|y\|^2
> \le (\|x\|+\|y\|)^2.
> $$

<!-- angle_definition_in_inner_product_space -->
> [!Definition]
> **内积空间中的夹角 Angle in Inner Product Space**：在实内积空间中，对非零向量 $x,y$ 定义夹角 $\theta\in[0,\pi]$ 为
> $$
> \cos\theta=\frac{\langle x,y\rangle}{\|x\|\,\|y\|}.
> $$

> **注**：柯西-施瓦兹不等式保证右侧落在区间 $[-1,1]$，因此定义良好。