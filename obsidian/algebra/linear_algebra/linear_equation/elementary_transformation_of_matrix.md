---
title: 矩阵的初等变换
tags:
  - linear_algebra
  - linear_equation
---

# 矩阵的初等变换

<!-- elementary_row_operations_definition -->
> [!Definition]
> **初等行变换 Elementary Row Operations**：对矩阵允许的三类基本行操作为：
> 1. 交换两行；
> 2. 以非零常数乘某一行；
> 3. 把某一行的若干倍加到另一行。

<!-- elementary_column_operations_definition -->
> [!Definition]
> **初等列变换 Elementary Column Operations**：与初等行变换对应地，可定义三类基本列操作：交换两列、某列乘非零常数、把某列的若干倍加到另一列。

<!-- row_equivalent_definition -->
> [!Definition]
> **行等价 Row Equivalence**：若矩阵 $B$ 可由矩阵 $A$ 经过有限次初等行变换得到，则称 $A$ 与 $B$ 行等价。

<!-- elementary_transform_preserve_rank -->
> [!Theorem]
> **初等变换保持秩**：矩阵经任意有限次初等行变换或初等列变换后，秩不变。

> **证明思路**：每个初等变换对应一个可逆线性变换；左乘（行变换）或右乘（列变换）可逆矩阵不改变行空间或列空间的维数，故秩保持不变。

<!-- elementary_matrix_correspondence -->
> [!Theorem]
> **初等矩阵对应关系**：对 $n$ 阶矩阵，任一初等行变换都等价于左乘某个 $n$ 阶初等矩阵 $E$；任一初等列变换都等价于右乘某个初等矩阵。

> **证明思路**：把单位矩阵 $I_n$ 做同样的单步初等变换得到 $E$，则对任意同型矩阵 $A$，有 $EA$（或 $AE$）恰好实现对应行（或列）操作。
