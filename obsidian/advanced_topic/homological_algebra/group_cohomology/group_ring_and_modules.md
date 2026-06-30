# 群环与 G-模

## 群环

<!-- group_ring_def -->
> [!Definition]
> **群环 Group Ring**：设 $G$ 是群。其整数群环 $\mathbb{Z}[G]$ 定义为所有有限形式和
> $$
> \sum_{g\in G} n_g g, \qquad n_g\in\mathbb{Z},
> $$
> 其中仅有限多个 $n_g\neq 0$。加法逐项定义，乘法由双线性延拓群乘法：
> $$
> \left(\sum_g n_g g\right)\left(\sum_h m_h h\right)=\sum_{g,h} n_g m_h (gh).
> $$
> 这是一个带单位元的环，其单位元为群单位元 $e\in G$ 对应的基元。

> **注**：更一般地，对任意交换环 $R$，可定义群环 $R[G]$。群上同调通常取 $R=\mathbb{Z}$，再把平凡 $G$-作用的 $\mathbb{Z}$ 视为 $\mathbb{Z}[G]$-模。

## G-模与群环模的等价

<!-- g_module_equivalence_def -->
> [!Definition]
> **G-模与 $\mathbb{Z}[G]$-模 G-modules and $\mathbb{Z}[G]$-modules**：一个阿贝尔群 $M$ 称为**左 $G$-模**（left $G$-module），若给定群同态
> $$
> \rho: G\to \mathrm{Aut}_{\mathbf{Ab}}(M),
> $$
> 即对每个 $g\in G$ 给出自同构 $m\mapsto g\cdot m$，满足
> $$
> e\cdot m = m, \qquad (gh)\cdot m = g\cdot(h\cdot m).
> $$
> 这等价于给 $M$ 一个左 $\mathbb{Z}[G]$-模结构，规定
> $$
> \left(\sum_g n_g g\right)\cdot m = \sum_g n_g (g\cdot m).
> $$

> **注**：因此群上同调与群下同调可统一为 $\mathbb{Z}[G]$-模范畴中的 Ext 与 Tor。

## 不变量与协不变量

<!-- invariants_coinvariants_def -->
> [!Definition]
> **不变量与协不变量 Invariants and Coinvariants**：设 $M$ 是左 $G$-模。
> - **不变量子模**（invariants）定义为
> $$
> M^G = \{m\in M : g\cdot m = m \text{ 对所有 } g\in G\};
> $$
> - **协不变量模**（coinvariants）定义为商模
> $$
> M_G = M/\langle g\cdot m - m : g\in G,\ m\in M\rangle.
> $$
>
> 它们分别是函子
> $$
> (-)^G = \mathrm{Hom}_{\mathbb{Z}[G]}(\mathbb{Z},-),
> \qquad
> (-)_G = \mathbb{Z}\otimes_{\mathbb{Z}[G]} -
> $$
> 的值，其中 $\mathbb{Z}$ 取平凡 $G$-作用。

<!-- invariants_coinvariants_basic_properties -->
> [!Proposition]
> **不变量与协不变量的基本性质 Basic Properties of Invariants and Coinvariants**：
> 1. $(-)^G$ 是左正合函子；
> 2. $(-)_G$ 是右正合函子；
> 3. 若 $G$ 对 $M$ 的作用平凡，则 $M^G=M$，且 $M_G\cong M$。
>
> **证明思路**：第 1 条来自 Hom 函子的左正合性，第 2 条来自张量函子的右正合性，第 3 条直接由定义可见。