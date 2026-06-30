---
title: 非齐次线性方程组
tags:
  - linear_algebra
  - linear_equation
---

# 非齐次线性方程组

<!-- nonhomogeneous_linear_system_definition -->
> [!Definition]
> **非齐次线性方程组 Nonhomogeneous Linear System**：常数向量不全为零（或一般给定）的线性方程组
> $$
> Ax=b
> $$
> 称为非齐次线性方程组。

<!-- rouche_capelli_theorem -->
> [!Theorem]
> **Rouche-Capelli 判定定理**：非齐次方程组 $Ax=b$ 有解当且仅当
> $$
> \mathrm{rank}(A)=\mathrm{rank}([A\mid b]).
> $$

> **证明思路**：将增广矩阵作行变换化为阶梯形。若出现形如
> $$
> [0\ \cdots\ 0\mid c],\quad c\neq 0,
> $$
> 则无解；否则有解。该矛盾行是否出现正对应秩是否相等。

<!-- nonhomogeneous_solution_structure_theorem -->
> [!Theorem]
> **解的结构（特解 + 齐次解）**：若 $x_p$ 是 $Ax=b$ 的一个特解，则全部解为
> $$
> x=x_p+x_h,
> $$
> 其中 $x_h$ 遍历齐次方程组 $Ax=\mathbf{0}$ 的全部解。

> **证明思路**：若 $Ax=b$，则 $A(x-x_p)=0$，故 $x-x_p\in\ker A$；反之任取 $x_h\in\ker A$，有 $A(x_p+x_h)=b$。

<!-- nonhomogeneous_solution_expression -->
> [!Corollary]
> **通解表达式**：若齐次方程组基础解系为 $\{\eta_1,\ldots,\eta_k\}$，则非齐次方程组通解可写为
> $$
> x=x_p+c_1\eta_1+\cdots+c_k\eta_k,\quad c_i\in F.
> $$

<!-- uniqueness_criterion_nonhomogeneous -->
> [!Corollary]
> **唯一解判定**：若 $A\in M_{m\times n}(F)$ 且 $Ax=b$ 有解，则其解唯一当且仅当
> $$
> \mathrm{rank}(A)=n.
> $$

> **注**：当有解且 $\mathrm{rank}(A)<n$ 时，解集是一个平移子空间（仿射子空间），自由参数个数为 $n-\mathrm{rank}(A)$。
