# Mittag-Leffler 定理

## 主要部分与一致收敛

<!-- principal_part_definition -->
> [!Definition]
> **主要部分 Principal Part**：设 $a\in\mathbb{C}$，有限 Laurent 负幂和
> $$
> P(z)=\sum_{k=1}^{m}\frac{c_k}{(z-a)^k}
> $$
> 称为 $a$ 处的主要部分。它描述了一个极点的奇异部分。

<!-- meromorphic_principal_parts_data -->
> [!Definition]
> **极点数据 Principal Parts Data**：设 $D$ 为区域，$A\subset D$ 为无聚点集。对每个 $a\in A$，给定一个以 $(z-a)^{-1}$ 的有限多项式 $P_a(z)$，称 $(P_a)_{a\in A}$ 为 $D$ 上的一组离散主要部分数据。

<!-- principal_parts_compact_finiteness -->
> [!Lemma]
> **离散极点集的局部有限性 Local Finiteness of a Discrete Set**：若 $A\subset D$ 在 $D$ 内无聚点，则每个紧集 $K\subset D$ 只与 $A$ 的有限个点相交。
>
> **证明思路**：若某个紧集与 $A$ 有无穷多个交点，由紧性可取收敛子列，其极限属于 $D$，与无聚点性矛盾。

## Mittag-Leffler 定理

<!-- mittag_leffler_theorem -->
> [!Theorem]
> **Mittag-Leffler 定理 Mittag-Leffler Theorem**：设 $D$ 为区域，$A\subset D$ 为无聚点集。对每个 $a\in A$ 给定主要部分 $P_a(z)$，则存在 $D$ 上的亚纯函数 $f$，使得 $f$ 在每个 $a\in A$ 处的 Laurent 展开的主要部分恰为 $P_a$，并且 $f$ 在 $D\setminus A$ 上全纯。
>
> **证明思路**：按紧集穷竭 $D$，将每个 $P_a$ 减去适当的 Taylor 多项式，使得到的修正项在紧集上求和一致收敛；所得级数在 $D\setminus A$ 上定义全纯函数，并逐点恢复指定主要部分。

<!-- mittag_leffler_entire_correction -->
> [!Corollary]
> **整函数修正项的自由性 Entire Correction Freedom**：若 $f$ 与 $g$ 是具有同一组主要部分的两个亚纯函数，则 $f-g$ 在 $D$ 上全纯。特别地，所有解构成一个整函数（在 $D=\mathbb C$ 时）平移的族。
>
> **证明思路**：每个 $a\in A$ 处，$f-g$ 的主要部分相消，故奇点可去；Riemann 可去奇点定理给出全纯延拓。

<!-- mittag_leffler_partial_fraction_expansion -->
> [!Example]+
> **部分分式展开 Partial Fraction Expansion**：在适当收敛修正下，Mittag-Leffler 定理可将亚纯函数表示为极点主要部分之和加上一个整函数：
> $$
> f(z)=h(z)+\sum_{a\in A}\bigl(P_a(z)-Q_a(z)\bigr),
> $$
> 其中 $h$ 为整函数，$Q_a$ 是为保证局部一致收敛而选取的整函数修正项。该表示不是唯一的，因为修正项可以重新分配给 $h$。

> **注**：Mittag-Leffler 定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 8，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
