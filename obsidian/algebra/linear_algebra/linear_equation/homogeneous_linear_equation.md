---
title: 齐次线性方程组
tags:
  - linear_algebra
  - linear_equation
---

# 齐次线性方程组

<!-- homogeneous_linear_system_definition -->
> [!Definition]
> **齐次线性方程组 Homogeneous Linear System**：常数向量为零的线性方程组
> $$
> Ax=\mathbf{0}
> $$
> 称为齐次线性方程组。

<!-- homogeneous_solution_space_theorem -->
> [!Theorem]
> **解空间是核空间**：齐次方程组 $Ax=\mathbf{0}$ 的解集恰为线性映射 $x\mapsto Ax$ 的核：
> $$
> \mathcal{S}_h=\ker A=\{x\in F^n\mid Ax=\mathbf{0}\},
> $$
> 因而 $\mathcal{S}_h$ 是 $F^n$ 的子空间。

> **证明思路**：由核的定义直接得到集合相同；核对加法和数乘封闭，因此为子空间。

<!-- homogeneous_solution_dimension_theorem -->
> [!Theorem]
> **解空间维数公式**：设 $A\in M_{m\times n}(F)$，则齐次方程组解空间维数为
> $$
> \dim \mathcal{S}_h=n-\mathrm{rank}(A).
> $$

> **证明思路**：把 $A$ 看作线性映射 $T_A:F^n\to F^m$，应用秩-零定理
> $$
> \dim\ker T_A + \mathrm{rank}(T_A)=n.
> $$

<!-- fundamental_solution_set_definition -->
> [!Definition]
> **基础解系 Fundamental Solution Set**：齐次方程组解空间 $\mathcal{S}_h$ 的一组基称为该方程组的基础解系。

<!-- homogeneous_general_solution_theorem -->
> [!Theorem]
> **齐次方程组通解表达**：若 $\{\eta_1,\ldots,\eta_k\}$ 是 $Ax=\mathbf{0}$ 的基础解系，则其通解为
> $$
> x=c_1\eta_1+\cdots+c_k\eta_k,\quad c_i\in F,
> $$
> 其中 $k=n-\mathrm{rank}(A)$。
