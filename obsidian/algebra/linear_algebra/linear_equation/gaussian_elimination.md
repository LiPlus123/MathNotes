---
title: 高斯消元法
tags:
  - linear_algebra
  - linear_equation
---

# 高斯消元法

<!-- echelon_form_definition -->
> [!Definition]
> **行阶梯形与行最简阶梯形 Row Echelon Form and Reduced Row Echelon Form**：
> - 若非零行在零行之上，且每个非零行主元位置严格右移，且主元下方元素为零，则称矩阵为**行阶梯形**（REF）。
> - 在行阶梯形基础上，若每个主元为 $1$ 且主元所在列其余元素全为零，则称为**行最简阶梯形**（RREF）。

<!-- gaussian_elimination_definition -->
> [!Definition]
> **高斯消元法 Gaussian Elimination**：通过有限次初等行变换将增广矩阵 $[A\mid b]$ 化为行阶梯形（或继续化为行最简阶梯形），再用回代（或直接读解）求解线性方程组的方法。

<!-- gaussian_elimination_equivalence -->
> [!Theorem]
> **消元过程保持同解性**：高斯消元的每一步行变换都不改变线性方程组的解集。

> **证明思路**：三类初等行变换分别对应方程重排、方程两边同乘非零常数、以及用一方程线性替代另一方程；这些操作不改变满足全部方程的向量集合。

<!-- rref_uniqueness_theorem -->
> [!Theorem]
> **行最简阶梯形唯一性**：任意矩阵 $A$ 经过初等行变换得到的行最简阶梯形是唯一的。

> **证明思路**：RREF 的主元列与自由列由行空间唯一确定；主元所在列标准化后，主元行表达也唯一，故结果唯一。

<!-- gaussian_elimination_complexity_note -->
> [!Corollary]
> **算法地位**：高斯消元是线性方程组求解与秩计算的基础算法，也可用于求逆矩阵、判定可逆性与构造分解（如 LU 分解）。
