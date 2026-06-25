# 陪集与拉格朗日定理

## 陪集

<!-- left_coset_def -->
> [!Definition]
> **左陪集 Left Coset**：设 $G$ 为群，$H \leq G$，$a \in G$。集合
> $$
> aH = \{a \cdot h \mid h \in H\}
> $$
> 称为 $H$ 在 $G$ 中关于 $a$ 的**左陪集**。

<!-- right_coset_def -->
> [!Definition]
> **右陪集 Right Coset**：设 $G$ 为群，$H \leq G$，$a \in G$。集合
> $$
> Ha = \{h \cdot a \mid h \in H\}
> $$
> 称为 $H$ 在 $G$ 中关于 $a$ 的**右陪集**。

> **注**：一般地，左陪集与右陪集不相等。当 $G$ 为阿贝尔群时，$aH = Ha$ 对所有 $a \in G$ 成立。

## 陪集的基本性质

<!-- coset_properties -->
> [!Theorem]
> **陪集的基本性质 Basic Properties of Cosets**：设 $G$ 为群，$H \leq G$，则：
> 1. $H$ 本身是一个左陪集（也是右陪集），即 $eH = H = He$；
> 2. 对任意 $a \in G$，有 $a \in aH$；
> 3. $aH = bH$ 当且仅当 $b^{-1}a \in H$（等价地，$a^{-1}b \in H$）；
> 4. 两个左陪集要么相等，要么不相交：$aH = bH$ 或 $aH \cap bH = \varnothing$；
> 5. 每个左陪集 $aH$ 与 $H$ 等势：存在双射 $H \to aH$，$h \mapsto ah$。
>
> **证明思路**：性质 3 由 $aH = bH \Leftrightarrow a^{-1}(aH) = a^{-1}(bH) \Leftrightarrow H = (a^{-1}b)H \Leftrightarrow a^{-1}b \in H$ 推导；性质 4 由性质 3 得。

## 群的划分

<!-- coset_partition -->
> [!Theorem]
> **陪集划分 Coset Partition**：设 $G$ 为群，$H \leq G$。$H$ 的所有不同左陪集构成 $G$ 的一个划分，即
> $$
> G = \bigsqcup_{a \in R} aH
> $$
> 其中 $R$ 是 $G$ 中左陪集代表元的完全集合（每个陪集取一个代表元）。
>
> **证明思路**：由陪集性质 2 知每个元素属于某个陪集；由性质 4 知不同陪集不相交。

<!-- index_def -->
> [!Definition]
> **指数 Index**：$H$ 在 $G$ 中不同左陪集的个数称为 $H$ 在 $G$ 中的**指数**，记作 $[G : H]$。

## 拉格朗日定理

<!-- lagrange_theorem -->
> [!Theorem]
> **拉格朗日定理 Lagrange's Theorem**：设 $G$ 为有限群，$H \leq G$，则 $|H|$ 整除 $|G|$，且
> $$
> |G| = [G : H] \cdot |H|
> $$
>
> **证明思路**：由陪集划分，$G$ 被分成 $[G:H]$ 个互不相交的左陪集，每个陪集的元素个数均为 $|H|$，故 $|G| = [G:H] \cdot |H|$。

<!-- lagrange_corollary_element_order -->
> [!Corollary]
> **元素阶整除群阶 Element Order Divides Group Order**：设 $G$ 为有限群，$a \in G$，则 $\mathrm{ord}(a)$ 整除 $|G|$。
>
> **证明思路**：$\langle a \rangle$ 是 $G$ 的子群，其阶为 $\mathrm{ord}(a)$，由拉格朗日定理知 $\mathrm{ord}(a) \mid |G|$。

<!-- lagrange_corollary_prime_order -->
> [!Corollary]
> **素数阶群是循环群 Prime Order Group is Cyclic**：若 $|G| = p$ 为素数，则 $G$ 是循环群，且 $G$ 的每个非单位元均为生成元。
>
> **证明思路**：取 $a \neq e$，则 $\mathrm{ord}(a) \mid p$ 且 $\mathrm{ord}(a) > 1$，故 $\mathrm{ord}(a) = p$，$\langle a \rangle = G$。

<!-- lagrange_corollary_fermat -->
> [!Corollary]
> **费马小定理（群论形式）Fermat's Little Theorem (Group-theoretic Form)**：设 $G$ 为阶为 $n$ 的有限群，则对所有 $a \in G$，$a^n = e$。
>
> **证明思路**：由 $\mathrm{ord}(a) \mid n$ 即得 $a^n = (a^{\mathrm{ord}(a)})^{n/\mathrm{ord}(a)} = e$。
