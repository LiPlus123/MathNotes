# 正规族

## 正规族与局部有界性

<!-- normal_family_definition -->
> [!Definition]
> **正规族 Normal Family**：设 $D\subseteq\mathbb C$ 为区域，$\mathcal F$ 是定义在 $D$ 上的亚纯函数族。若从 $\mathcal F$ 的任意序列 $(f_n)$ 中都能选出一个子序列，在球面度量下于 $D$ 的每个紧子集上一致收敛到亚纯函数或恒等于 $\infty$，则称 $\mathcal F$ 是正规族。
>
> 若函数族中的函数全纯且极限不允许为 $\infty$，也可使用普通的局部一致收敛定义。

<!-- locally_bounded_family_definition -->
> [!Definition]
> **局部有界函数族 Locally Bounded Family**：全纯函数族 $\mathcal F$ 在区域 $D$ 上局部有界，是指对每个 $z_0\in D$，存在邻域 $U\Subset D$ 和常数 $M_U$，使
> $$
> |f(z)|\le M_U\qquad(f\in\mathcal F,\ z\in U).
> $$

<!-- arzela_ascoli_holomorphic_family -->
> [!Theorem]
> **全纯函数族的 Arzelà-Ascoli 判据 Arzelà-Ascoli Criterion**：若全纯函数族 $\mathcal F$ 在每个紧子集上一致有界，则它在紧开拓扑下相对紧；即每个序列都存在局部一致收敛的子序列。
>
> **证明思路**：Cauchy 估计给出导数在更小紧集上的统一界，从而得到等度连续性；对紧集穷竭应用 Arzelà-Ascoli 定理和对角线选取。

## Montel 与 Vitali 定理

<!-- montel_theorem -->
> [!Theorem]
> **Montel 定理 Montel's Theorem**：区域 $D$ 上的局部有界全纯函数族是正规族。特别地，若 $\mathcal F$ 中每个函数都将 $D$ 映入一个固定有界集，则 $\mathcal F$ 是正规族。
>
> **证明思路**：局部有界性通过 Cauchy 估计转化为局部等度连续性，再用紧集穷竭和 Arzelà-Ascoli 定理提取子列。

<!-- montel_bounded_domain_version -->
> [!Corollary]
> **有界值域形式的 Montel 定理 Bounded-Range Form of Montel's Theorem**：若全纯函数族 $\mathcal F$ 满足 $f(D)\subseteq E$，其中 $E\subseteq\mathbb C$ 有界，则 $\mathcal F$ 是正规族。
>
> 若函数族为亚纯函数，并且在球面中避开三个固定点，则由大 Picard 定理的正规族版本可得正规性。

<!-- vitali_convergence_theorem -->
> [!Theorem]
> **Vitali 收敛定理 Vitali's Convergence Theorem**：设 $\mathcal F=(f_n)$ 是区域 $D$ 上局部有界的全纯函数列。若存在 $D$ 中具有聚点的集合 $E$，使得对每个 $z\in E$，数列 $f_n(z)$ 收敛，则 $(f_n)$ 在 $D$ 上局部一致收敛到全纯函数。
>
> **证明思路**：Montel 定理保证任意子列都有局部一致收敛子列；点态收敛在聚点集上迫使所有可能的子列极限相同，再由恒等定理得到整个序列收敛。

<!-- normal_family_uniqueness_limit -->
> [!Corollary]
> **正规族中的极限唯一性 Uniqueness of Limits in a Normal Family**：若正规族中的一个序列在具有聚点的集合上点态收敛到某函数，则所有局部一致收敛子列的极限都相同；当该点态极限在区域上确定时，序列本身局部一致收敛。

> **注**：正规族、Montel 定理和 Vitali 收敛定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 7。
