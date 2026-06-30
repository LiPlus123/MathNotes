# 序拓扑

## 序拓扑的定义

<!-- simply_ordered_set -->
> [!Definition]
> **全序集 Simply Ordered Set**：集合 $X$ 上的**全序关系（线序关系）Simply Order Relation** 是一个二元关系 $<$，满足：
> 1. **不可比较律**：$\forall x \in X$，$x \not< x$；
> 2. **传递性**：若 $x < y$ 且 $y < z$，则 $x < z$；
> 3. **完全性**：$\forall x, y \in X$，$x < y$，或 $x = y$，或 $y < x$（三者恰有一成立）。
>
> 配备了全序关系的集合 $(X, <)$ 称为**全序集 Simply Ordered Set**（或**线序集 Linearly Ordered Set**）。

<!-- order_topology_definition -->
> [!Definition]
> **序拓扑 Order Topology**：设 $(X, <)$ 是含多于一个元素的全序集。以如下形式的子集作为**子基（准基）Subbasis**：
> $$\mathcal{S} = \{(a, +\infty) \mid a \in X\} \cup \{(-\infty, b) \mid b \in X\}$$
> 其中 $(a, +\infty) = \{x \in X \mid x > a\}$，$(-\infty, b) = \{x \in X \mid x < b\}$。由 $\mathcal{S}$ 的有限交生成的集族
> $$\mathcal{B} = \{(a, b) \mid a, b \in X,\ a < b\} \cup \{[a_0, b) \mid b \in X\} \cup \{(a, b_0] \mid a \in X\}$$
> 构成 $X$ 上一个拓扑的基（其中若 $X$ 有最小元 $a_0$ 则包含 $[a_0, b)$ 型，若 $X$ 有最大元 $b_0$ 则包含 $(a, b_0]$ 型），由此基生成的拓扑称为 $(X, <)$ 上的**序拓扑 Order Topology**，记为 $\mathcal{T}_{<}$。

> **注**：$(a, b) = \{x \in X \mid a < x < b\}$ 是 $X$ 中两元素间的**开区间**。序拓扑的基中各类开集：开区间（内部情形）、有最小元时加入以最小元为左端的半开区间、有最大元时加入以最大元为右端的半开区间。

## 序拓扑的性质

<!-- order_topology_properties -->
> [!Theorem]
> **序拓扑的基本性质 Basic Properties of Order Topology**：设 $(X, <)$ 是全序集，$\mathcal{T}_{<}$ 是其序拓扑，则：
> 1. 对任意 $a < b \in X$，开区间 $(a, b)$ 是开集；若 $a_0$ 是最小元，$[a_0, b)$ 是开集；若 $b_0$ 是最大元，$(a, b_0]$ 是开集；
> 2. 对任意 $a < b \in X$，闭区间 $[a, b] = \{x \mid a \leq x \leq b\}$ 是闭集；
> 3. $\mathcal{T}_{<}$ 使 $(X, \mathcal{T}_{<})$ 成为 $T_2$（Hausdorff）空间：对不同的 $x, y \in X$（不妨 $x < y$），取 $z$ 使 $x < z < y$（若存在），则 $(- \infty, z)$ 和 $(z, +\infty)$ 是分离 $x$ 与 $y$ 的开邻域；
>
> **证明思路**：(1)(2) 由基的构造直接得到。(3) 若 $x < y$ 之间无元素，取 $(-\infty, y)$ 和 $(x, +\infty)$ 分离。

<!-- standard_topology_as_order_topology -->
> [!Example]+
> **实数轴的标准拓扑是序拓扑 Standard Topology as Order Topology**：$\mathbb{R}$ 上的标准拓扑 $\mathcal{T}_{\mathrm{std}}$ 恰好是由通常的全序 $<$ 生成的序拓扑 $\mathcal{T}_{<}$：基中的开区间 $(a, b)$ 生成 $\mathbb{R}$ 的所有开集，故 $\mathcal{T}_{\mathrm{std}} = \mathcal{T}_{<}$。

<!-- order_topology_example_integers -->
> [!Example]+
> **整数集的序拓扑 Order Topology on $\mathbb{Z}$**：$\mathbb{Z}$ 上由通常顺序生成的序拓扑是离散拓扑：每个单点集 $\{n\} = (n-1, n+1) \cap \mathbb{Z}$ 是开集（$(n-1, n+1)$ 是 $\mathbb{Z}$ 中的开区间）。

<!-- ordered_square_example -->
> [!Example]+
> **字典序方形的序拓扑 Order Topology on Ordered Square**：$[0,1]^2$ 上的字典序 $<_L$：$(x_1, y_1) <_L (x_2, y_2)$ 若 $x_1 < x_2$，或 $x_1 = x_2$ 且 $y_1 < y_2$。由此生成的序拓扑与乘积拓扑（标准拓扑的积）不同，前者严格比后者精细。
