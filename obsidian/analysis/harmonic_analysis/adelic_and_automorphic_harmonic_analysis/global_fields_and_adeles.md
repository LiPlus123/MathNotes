# 全局域、赋值与阿代尔

## 完备化与受限直积

<!-- adelic_global_field_definition -->
> [!Definition]
> **全局域 Global Field**：全局域 $K$ 是数域（有限扩张 $K/\mathbb{Q}$）或一元函数域（有限扩张 $K/\mathbb{F}_q(t)$）。其位置 $v$ 包含 Archimedean 位置与非 Archimedean 位置；相应完备化记为 $K_v$。

<!-- adelic_product_formula -->
> [!Theorem]
> **赋值乘积公式 Product Formula**：可将各位置的绝对值适当归一化，使对每个 $x\in K^\times$，
> $$
> \prod_v|x|_v=1.
> $$
> 等价地，仅有限个因子不为 $1$，且 $\sum_v\log|x|_v=0$。
>
> **证明思路**：数域情形按素理想分解与 Archimedean 范数比较；函数域情形由主除子的次数为零得到。

<!-- adelic_adele_ring_definition -->
> [!Definition]
> **阿代尔环 Adele Ring**：令 $\mathcal O_v$ 为非 Archimedean $K_v$ 的整数环。阿代尔环定义为受限直积
> $$
> \mathbb A_K=\prod_v'K_v
> $$
> ，即所有元组 $(x_v)_v$，其中对几乎所有非 Archimedean $v$ 有 $x_v\in\mathcal O_v$。其拓扑由有限个位置的局部开集与其余位置的 $\mathcal O_v$ 直积给出。

<!-- adelic_idele_group_definition -->
> [!Definition]
> **idele 群 Idele Group**：idele 群是乘法受限直积
> $$
> \mathbb A_K^\times=\prod_v'K_v^\times,
> $$
> 其中对几乎所有非 Archimedean $v$ 有 $x_v\in\mathcal O_v^\times$。idele 类群为 $K^\times\backslash\mathbb A_K^\times$，它在类域论和 Tate zeta 积分中起基本作用。

<!-- adelic_diagonal_embedding -->
> [!Theorem]
> **对角嵌入与紧商 Diagonal Embedding and Compact Quotient**：对角映射
> $$
> K\hookrightarrow\mathbb A_K,
> \qquad x\longmapsto(x)_v
> $$
> 将 $K$ 嵌入为离散子群，且商群 $\mathbb A_K/K$ 是紧的。它是阿代尔 Poisson 求和的全局几何基础。
>
> **证明思路**：离散性由某个位置的基本邻域与 $K$ 的逼近性质给出；紧性通过在各完备化中选取基本区域，并用全局域的离散嵌入控制代表元实现。

> **来源**：André Weil, *Basic Number Theory*, Chapters II, IV；J. W. S. Cassels and A. Fröhlich (eds.), *Algebraic Number Theory*。
