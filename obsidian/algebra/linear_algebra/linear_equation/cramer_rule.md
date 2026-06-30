---
title: 克莱姆法则
tags:
  - linear_algebra
  - linear_equation
---

# 克莱姆法则

<!-- cramer_rule_theorem -->
> [!Theorem]
> **克莱姆法则 Cramer's Rule**：设 $A\in M_n(F)$ 且 $\det(A)\neq 0$，考虑线性方程组
> $$
> Ax=b,
> $$
> 记 $A_i$ 为把 $A$ 的第 $i$ 列替换为 $b$ 后得到的矩阵，则该方程组有唯一解 $x=(x_1,\ldots,x_n)^T$，并且
> $$
> x_i=\frac{\det(A_i)}{\det(A)},\quad i=1,2,\ldots,n.
> $$

> **证明思路**：由 $\det(A)\neq 0$ 知 $A$ 可逆，解唯一。再由伴随矩阵公式 $A^{-1}=\dfrac{1}{\det(A)}\mathrm{adj}(A)$ 写出 $x=A^{-1}b$，按行列式对列的线性性与代数余子式展开即可得到各分量公式。

<!-- cramer_rule_applicability -->
> [!Corollary]
> **适用条件与结论**：克莱姆法则仅适用于系数矩阵为可逆方阵的情形；若 $\det(A)=0$，则不能用该公式判定或给出解。

<!-- cramer_rule_example -->
> [!Example]+
> **二元方程组示例 Example for 2x2 System**：方程组
> $$
> \begin{cases}
> a_{11}x_1+a_{12}x_2=b_1,\\
> a_{21}x_1+a_{22}x_2=b_2
> \end{cases}
> $$
> 若
> $$
> \Delta=\begin{vmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{vmatrix}\neq 0,
> $$
> 则
> $$
> x_1=\frac{\begin{vmatrix}b_1&a_{12}\\b_2&a_{22}\end{vmatrix}}{\Delta},\qquad
> x_2=\frac{\begin{vmatrix}a_{11}&b_1\\a_{21}&b_2\end{vmatrix}}{\Delta}.
> $$
