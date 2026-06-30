---
title: 贝塞尔不等式
tags:
  - linear_algebra
  - normed_space_and_inner_product_space
---

# 贝塞尔不等式

<!-- bessel_inequality_theorem -->
> [!Theorem]
> **贝塞尔不等式 Bessel Inequality**：设 $V$ 为内积空间，$\{e_1,\ldots,e_n\}$ 为 $V$ 中一组标准正交组，则对任意 $x\in V$，有
> $$
> \sum_{i=1}^n |\langle x,e_i\rangle|^2\le \|x\|^2.
> $$

> **证明思路**：令
> $$
> y=x-\sum_{i=1}^n\langle x,e_i\rangle e_i,
> $$
> 则 $y\perp e_i$（$1\le i\le n$）。由正交展开
> $$
> \|x\|^2=\left\|\sum_{i=1}^n\langle x,e_i\rangle e_i\right\|^2+\|y\|^2
> =\sum_{i=1}^n|\langle x,e_i\rangle|^2+\|y\|^2
> \ge \sum_{i=1}^n|\langle x,e_i\rangle|^2.
> $$

<!-- bessel_equality_condition -->
> [!Corollary]
> **贝塞尔不等式取等条件**：在上述条件下，
> $$
> \sum_{i=1}^n |\langle x,e_i\rangle|^2=\|x\|^2
> $$
> 当且仅当 $x\in\mathrm{span}(e_1,\ldots,e_n)$。

> **证明思路**：由上式中余项 $\|y\|^2$ 为零当且仅当 $y=\mathbf{0}$，即 $x$ 等于其在该正交组上的投影。

<!-- parseval_identity_finite_dimensional -->
> [!Corollary]
> **Parseval 恒等式（有限维情形） Parseval Identity (Finite-Dimensional Case)**：若 $\{e_1,\ldots,e_n\}$ 是有限维内积空间 $V$ 的一组标准正交基，则对任意 $x\in V$，有
> $$
> \|x\|^2=\sum_{i=1}^n |\langle x,e_i\rangle|^2.
> $$

> **证明思路**：因正交组是基，任意 $x$ 属于其张成空间，代入取等条件即可。

<!-- fourier_coefficients_definition_finite_orthonormal_system -->
> [!Definition]
> **傅里叶系数（有限正交组） Fourier Coefficients**：对标准正交组 $\{e_1,\ldots,e_n\}$ 与向量 $x\in V$，称
> $$
> c_i=\langle x,e_i\rangle\quad (i=1,\ldots,n)
> $$
> 为 $x$ 关于该正交组的傅里叶系数。

> **注**：贝塞尔不等式说明这些系数平方和受 $\|x\|^2$ 控制，是正交展开收敛与误差估计的基础。