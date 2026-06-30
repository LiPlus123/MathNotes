---
title: 条件数
tags:
  - linear_algebra
  - matrix_norm
---

# 条件数

<!-- condition_number_definition -->
> [!Definition]
> **条件数 Condition Number**：设 $A\in M_n(F)$ 可逆，$\|\cdot\|$ 为 $M_n(F)$ 上的矩阵范数。定义 $A$ 关于 $\|\cdot\|$ 的**条件数**为
> $$
> \kappa(A) = \|A\|\,\|A^{-1}\|.
> $$
> 当 $\|\cdot\|$ 为谱范数 $\|\cdot\|_2$ 时，$\kappa_2(A)=\|A\|_2\|A^{-1}\|_2=\dfrac{\sqrt{\lambda_{\max}(A^*A)}}{\sqrt{\lambda_{\min}(A^*A)}}$。

> **注**：对奇异矩阵，通常约定 $\kappa(A)=+\infty$。

<!-- condition_number_basic_properties -->
> [!Theorem]
> **条件数的基本性质 Basic Properties of Condition Number**：设 $A\in M_n(F)$ 可逆，$\|\cdot\|$ 为满足次乘性的矩阵范数，则
> 1. $\kappa(A)\ge 1$；
> 2. $\kappa(\alpha A)=\kappa(A)$，对任意非零标量 $\alpha\in F$；
> 3. $\kappa(A^{-1})=\kappa(A)$；
> 4. $\kappa(A^*A)=\kappa(A)^2$（对谱范数）。

> **证明思路**：性质 1：$1=\|I\|=\|AA^{-1}\|\leq\|A\|\|A^{-1}\|=\kappa(A)$。性质 2：$(\alpha A)^{-1}=\alpha^{-1}A^{-1}$，故 $\kappa(\alpha A)=|\alpha|\|A\|\cdot|\alpha|^{-1}\|A^{-1}\|=\kappa(A)$。性质 3 和 4 由定义直接验证。

<!-- condition_number_and_perturbation -->
> [!Theorem]
> **条件数与线性方程组的扰动 Condition Number and Perturbation of Linear Systems**：设 $A\in M_n(F)$ 可逆，$b\neq\mathbf{0}$，$x$ 是线性方程组 $Ax=b$ 的精确解。若 $b$ 有扰动 $\delta b$，令 $\delta x$ 满足 $A(\delta x)=\delta b$，则
> $$
> \frac{\|\delta x\|}{\|x\|} \le \kappa(A)\,\frac{\|\delta b\|}{\|b\|}.
> $$
> 类似地，若 $A$ 有扰动 $\delta A$（满足 $\|\delta A\|<\|A^{-1}\|^{-1}$），则解的相对误差满足
> $$
> \frac{\|\delta x\|}{\|x\|} \lesssim \kappa(A)\,\frac{\|\delta A\|}{\|A\|}.
> $$

> **证明思路**：由 $\delta x = A^{-1}\delta b$，得 $\|\delta x\|\leq\|A^{-1}\|\|\delta b\|$；而 $\|b\|=\|Ax\|\leq\|A\|\|x\|$，故 $\|x\|\geq\|b\|/\|A\|$，两式相除即得第一个不等式。

> **注**：$\kappa(A)$ 的大小衡量 $A$ 的**病态程度**：$\kappa(A)$ 越大，方程组对数据扰动越敏感，数值求解越不稳定；$\kappa(A)$ 接近 $1$ 时称为**良态**矩阵。

<!-- condition_number_of_orthogonal_matrix -->
> [!Example]+
> **正交矩阵与酉矩阵的条件数 Condition Number of Orthogonal/Unitary Matrices**：若 $U\in M_n(F)$ 为酉矩阵（即 $U^*U=I$），则
> $$
> \kappa_2(U) = \|U\|_2\,\|U^{-1}\|_2 = 1.
> $$
> 因此酉矩阵是条件数最小的可逆矩阵，数值上是绝对良态的。

> **证明思路**：$U^*U=I$ 意味着 $A^*A=I$ 的全部特征值为 $1$，故 $\|U\|_2=1$；类似地 $U^{-1}=U^*$ 满足 $\|U^{-1}\|_2=1$。
