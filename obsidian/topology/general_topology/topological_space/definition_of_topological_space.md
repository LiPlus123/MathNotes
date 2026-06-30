# 拓扑空间的定义

## 拓扑空间

<!-- topological_space_definition -->
> [!Definition]
> **拓扑空间 Topological Space**：设 $X$ 是一个非空集合，$\mathcal{T} \subseteq 2^X$ 是 $X$ 的某些子集构成的集族。若 $\mathcal{T}$ 满足以下公理：
> 1. **空集与全集**：$\varnothing \in \mathcal{T}$，$X \in \mathcal{T}$；
> 2. **任意并封闭**：若 $\{U_\alpha\}_{\alpha \in I} \subseteq \mathcal{T}$，则 $\bigcup_{\alpha \in I} U_\alpha \in \mathcal{T}$；
> 3. **有限交封闭**：若 $U_1, U_2, \ldots, U_n \in \mathcal{T}$，则 $\bigcap_{i=1}^{n} U_i \in \mathcal{T}$；
>
> 则称 $\mathcal{T}$ 为 $X$ 上的一个**拓扑 Topology**，称偶对 $(X, \mathcal{T})$ 为**拓扑空间 Topological Space**，$\mathcal{T}$ 中的元素称为**开集 Open Set**，$X$ 中的元素称为**点 Point**。

## 特殊拓扑

<!-- discrete_topology -->
> [!Definition]
> **离散拓扑 Discrete Topology**：设 $X$ 是非空集合，令 $\mathcal{T}_{\mathrm{disc}} = 2^X$（$X$ 的幂集，即 $X$ 的所有子集的集族），则 $\mathcal{T}_{\mathrm{disc}}$ 满足拓扑公理，称为 $X$ 上的**离散拓扑 Discrete Topology**，$(X, \mathcal{T}_{\mathrm{disc}})$ 称为**离散拓扑空间 Discrete Topological Space**。

<!-- trivial_topology -->
> [!Definition]
> **平凡拓扑（不可分拓扑）Trivial Topology (Indiscrete Topology)**：设 $X$ 是非空集合，令 $\mathcal{T}_{\mathrm{triv}} = \{\varnothing, X\}$，则 $\mathcal{T}_{\mathrm{triv}}$ 满足拓扑公理，称为 $X$ 上的**平凡拓扑 Trivial Topology**（或**不可分拓扑 Indiscrete Topology**），$(X, \mathcal{T}_{\mathrm{triv}})$ 称为**平凡拓扑空间**。

## 闭集

<!-- closed_set_topological -->
> [!Definition]
> **闭集 Closed Set**：设 $(X, \mathcal{T})$ 是拓扑空间，$F \subseteq X$。若 $X \setminus F \in \mathcal{T}$（即 $X \setminus F$ 是开集），则称 $F$ 是**闭集 Closed Set**。

<!-- closed_set_properties_topological -->
> [!Proposition]
> **闭集的性质 Properties of Closed Sets**：设 $(X, \mathcal{T})$ 是拓扑空间，则：
> 1. $\varnothing$ 与 $X$ 是闭集；
> 2. 任意个闭集的交仍是闭集；
> 3. 有限个闭集的并仍是闭集。
>
> **证明思路**：由开集公理通过 De Morgan 律取补得到。

## 拓扑空间的例子

<!-- finite_set_topology_example -->
> [!Example]+
> **有限集的拓扑 Topology on a Finite Set**：设 $X = \{a, b, c\}$，令
> $$\mathcal{T} = \{\varnothing,\ \{a\},\ \{a, b\},\ X\}$$
> 验证 $\mathcal{T}$ 是 $X$ 上的拓扑：$\varnothing, X \in \mathcal{T}$；任意并与有限交均在 $\mathcal{T}$ 中。对比：$\{\varnothing, \{a\}, \{b\}, X\}$ 不是拓扑，因为 $\{a\} \cup \{b\} = \{a,b\} \notin \mathcal{T}$。

<!-- metric_induced_topology -->
> [!Definition]
> **度量空间诱导的拓扑 Metric Topology**：设 $(X, d)$ 是度量空间，令 $\mathcal{T}_d$ 为 $X$ 中所有开集（按度量定义）的集族，则 $\mathcal{T}_d$ 是 $X$ 上的一个拓扑，称为由度量 $d$ **诱导的拓扑 Metric Topology**。$(X, \mathcal{T}_d)$ 称为**可度量化的 Metrizable**。
>
> **证明思路**：$\varnothing, X$ 是开集；任意个开集的并是开集（开球的并覆盖每个点）；有限个开集的交是开集（取最小半径）。

<!-- standard_topology_real_line -->
> [!Example]+
> **实数集的标准拓扑 Standard Topology on $\mathbb{R}$**：实数集 $\mathbb{R}$ 上由欧氏度量 $d(x,y) = |x - y|$ 诱导的拓扑 $\mathcal{T}_{\mathrm{std}}$ 称为**标准拓扑 Standard Topology**（或**通常拓扑**）。$\mathcal{T}_{\mathrm{std}}$ 中的开集恰为所有开区间的并，其拓扑基为 $\{(a, b) \mid a < b,\ a, b \in \mathbb{R}\}$。

<!-- lower_limit_topology -->
> [!Example]+
> **实数集的下限拓扑（Sorgenfrey 直线）Lower Limit Topology**：在 $\mathbb{R}$ 上，以所有形如 $[a, b)$（$a < b$，$a, b \in \mathbb{R}$）的区间为拓扑基生成的拓扑 $\mathcal{T}_{\ell}$ 称为**下限拓扑 Lower Limit Topology**，$(\mathbb{R}, \mathcal{T}_{\ell})$ 称为 **Sorgenfrey 直线**。$\mathcal{T}_{\ell}$ 严格比标准拓扑更精细：每个标准开集是 $\mathcal{T}_\ell$-开集，但 $[0, 1)$ 是 $\mathcal{T}_\ell$-开集而非标准开集。

<!-- upper_limit_topology -->
> [!Example]+
> **实数集的上限拓扑 Upper Limit Topology**：在 $\mathbb{R}$ 上，以所有形如 $(a, b]$（$a < b$，$a, b \in \mathbb{R}$）的区间为拓扑基生成的拓扑 $\mathcal{T}_{u}$ 称为**上限拓扑 Upper Limit Topology**。$\mathcal{T}_{u}$ 同样严格比标准拓扑更精细。
