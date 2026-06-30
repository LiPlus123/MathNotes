# 子范畴

## 子范畴的定义

<!-- subcategory_def -->
> [!Definition]
> **子范畴 Subcategory**：设 $\mathcal{C}$ 为范畴。**子范畴** $\mathcal{D} \subseteq \mathcal{C}$ 由如下数据构成：
> 1. $\mathrm{Ob}(\mathcal{D}) \subseteq \mathrm{Ob}(\mathcal{C})$；
> 2. 对每一对 $A, B \in \mathrm{Ob}(\mathcal{D})$，$\mathrm{Hom}_{\mathcal{D}}(A, B) \subseteq \mathrm{Hom}_{\mathcal{C}}(A, B)$。
>
> 且满足以下封闭性：
> - **恒等态射封闭**：对每个 $A \in \mathrm{Ob}(\mathcal{D})$，$\mathrm{id}_A \in \mathrm{Hom}_{\mathcal{D}}(A, A)$；
> - **复合封闭**：若 $f \in \mathrm{Hom}_{\mathcal{D}}(A, B)$，$g \in \mathrm{Hom}_{\mathcal{D}}(B, C)$，则 $g \circ f \in \mathrm{Hom}_{\mathcal{D}}(A, C)$。
>
> 在上述数据下，$\mathcal{D}$ 自身亦构成一个范畴。

<!-- full_subcategory_def -->
> [!Definition]
> **满子范畴 Full Subcategory**：子范畴 $\mathcal{D} \subseteq \mathcal{C}$ 称为**满子范畴**，若对任意 $A, B \in \mathrm{Ob}(\mathcal{D})$，
> $$
> \mathrm{Hom}_{\mathcal{D}}(A, B) = \mathrm{Hom}_{\mathcal{C}}(A, B).
> $$
> 换言之，满子范畴由 $\mathcal{C}$ 中对象的一个子类完全决定。

> **注**：未必满的子范畴需另行指明哪些态射被保留，故有时也称为**宽子范畴**或一般子范畴。

## 子范畴的例子

<!-- subcategory_example_ab_in_grp -->
> [!Example]+
> **$\mathbf{Ab}$ 是 $\mathbf{Grp}$ 的满子范畴**：阿贝尔群是群，且两个阿贝尔群之间的群同态自动构成 $\mathbf{Ab}$ 中的态射，故 $\mathbf{Ab}$ 是 $\mathbf{Grp}$ 的**满子范畴**。

<!-- subcategory_example_finite_set -->
> [!Example]+
> **$\mathbf{FinSet}$ 是 $\mathbf{Set}$ 的满子范畴**：以所有有限集为对象、以集合间的映射为态射的范畴 $\mathbf{FinSet}$，是 $\mathbf{Set}$ 的满子范畴。类似地，$\mathbf{FinGrp}$（有限群范畴）是 $\mathbf{Grp}$ 的满子范畴。

<!-- subcategory_example_not_full -->
> [!Example]+
> **非满子范畴**：在拓扑空间范畴 $\mathbf{Top}$ 中，考虑仅以**开映射**为态射、对象仍为所有拓扑空间的子范畴；这是 $\mathbf{Top}$ 的子范畴，但不是满子范畴，因为并非每个连续映射都是开映射。

<!-- subcategory_example_haus -->
> [!Example]+
> **$\mathbf{Haus}$ 是 $\mathbf{Top}$ 的满子范畴**：以所有 Hausdorff 拓扑空间为对象、以连续映射为态射的范畴 $\mathbf{Haus}$，是 $\mathbf{Top}$ 的满子范畴。
