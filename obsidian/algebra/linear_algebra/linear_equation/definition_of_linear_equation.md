---
title: 线性方程组的定义
tags:
  - linear_algebra
  - linear_equation
---

# 线性方程组的定义

<!-- linear_equation_definition -->
> [!Definition]
> **线性方程 Linear Equation**：在数域 $F$ 上，关于未知量 $x_1,\ldots,x_n$ 的方程
> $$
> a_1x_1+a_2x_2+\cdots+a_nx_n=b
> $$
> 称为一个线性方程，其中 $a_1,\ldots,a_n,b\in F$，且 $a_i$ 与 $b$ 为已知系数。

<!-- linear_system_definition -->
> [!Definition]
> **线性方程组 Linear System**：由 $m$ 个线性方程构成的系统
> $$
> \begin{cases}
> a_{11}x_1+\cdots+a_{1n}x_n=b_1,\\
> a_{21}x_1+\cdots+a_{2n}x_n=b_2,\\
> \vdots\\
> a_{m1}x_1+\cdots+a_{mn}x_n=b_m
> \end{cases}
> $$
> 称为 $m$ 元一次线性方程组。其矩阵形式写为
> $$
> Ax=b,
> $$
> 其中 $A=(a_{ij})\in M_{m\times n}(F)$ 为系数矩阵，$x=(x_1,\ldots,x_n)^T$ 为未知向量，$b=(b_1,\ldots,b_m)^T$ 为常数向量。

<!-- augmented_matrix_definition -->
> [!Definition]
> **增广矩阵 Augmented Matrix**：线性方程组 $Ax=b$ 的增广矩阵定义为
> $$
> [A\mid b],
> $$
> 即在系数矩阵 $A$ 右侧附加常数列向量 $b$ 得到的矩阵。

<!-- solution_and_solution_set_definition -->
> [!Definition]
> **解与解集 Solution and Solution Set**：若向量 $x^{(0)}\in F^n$ 满足 $Ax^{(0)}=b$，则称 $x^{(0)}$ 是方程组 $Ax=b$ 的一个解。全部解构成的集合称为该方程组的解集，记作
> $$
> \mathcal{S}(A,b)=\{x\in F^n\mid Ax=b\}.
> $$

<!-- equivalent_linear_system_definition -->
> [!Definition]
> **同解方程组 Equivalent Linear Systems**：若两个线性方程组的解集相同，则称它们同解（等价）。

> **注**：后续的初等行变换与高斯消元法，本质上是在同解意义下把原方程组化为更易求解的标准形。
