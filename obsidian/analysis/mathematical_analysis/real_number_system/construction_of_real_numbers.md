# 实数的构造

## 有理数的不完备性

<!-- rational_numbers_incompleteness -->
> [!Theorem]
> **有理数的不完备性 Incompleteness of the Rational Numbers**：有理数有序域 $\mathbb{Q}$ 不具有最小上界性质。具体地，集合
> $$
> A=\{q\in\mathbb{Q}:q>0\text{ 且 }q^2<2\}
> $$
> 非空且在 $\mathbb{Q}$ 中有上界，但在 $\mathbb{Q}$ 中没有上确界。
>
> **证明思路**：若 $s\in\mathbb{Q}$ 是 $A$ 的上确界，则由上确界的逼近性质可推出 $s^2=2$；但不存在满足 $s^2=2$ 的有理数，矛盾。

## Dedekind 分割构造

<!-- dedekind_cut_definition -->
> [!Definition]
> **Dedekind 分割 Dedekind Cut**：称非空真子集 $D\subsetneq\mathbb{Q}$ 为一个 Dedekind 分割，若它满足：
> 1. 若 $r\in D$ 且 $q<r$，则 $q\in D$；
> 2. $D$ 没有最大元。
>
> 全体 Dedekind 分割的集合记为 $\mathbb{R}_D$；定义其序为
> $$
> D\leq E\Longleftrightarrow D\subseteq E.
> $$

<!-- real_number_as_dedekind_cut -->
> [!Definition]
> **由分割表示的实数 Real Number as a Dedekind Cut**：对每个 $r\in\mathbb{Q}$，令
> $$
> D_r=\{q\in\mathbb{Q}:q<r\}.
> $$
> 映射 $r\mapsto D_r$ 将 $\mathbb{Q}$ 保序嵌入 $\mathbb{R}_D$。不属于该像的分割表示新增的无理数；例如满足 $q>0$ 且 $q^2<2$ 的有理数所成的集合表示 $\sqrt{2}$。

<!-- dedekind_real_complete_ordered_field -->
> [!Theorem]
> **Dedekind 分割构造定理 Dedekind-Cut Construction Theorem**：在 $\mathbb{R}_D$ 上可定义加法、乘法及相反数、倒数，使其成为包含 $\mathbb{Q}$ 的完备有序域。
>
> **证明思路**：以分割的逐点和及正分割的逐点积定义运算，再以嵌入有理数的像延拓至一般分割。对任何非空且有上界的分割族，其并集仍为 Dedekind 分割，且恰为该族的上确界，从而得到完备性。

## Cauchy 序列构造

<!-- cauchy_sequence_of_rationals_definition -->
> [!Definition]
> **有理数 Cauchy 序列 Cauchy Sequence of Rational Numbers**：有理数序列 $(q_n)_{n\geq1}$ 称为 Cauchy 序列，若对任意 $\varepsilon>0$，存在 $N\in\mathbb{N}$，使得对任意 $m,n\geq N$，有
> $$
> |q_m-q_n|<\varepsilon.
> $$
> 两个 Cauchy 序列 $(q_n)_{n\geq1}$ 与 $(r_n)_{n\geq1}$ 称为等价，若
> $$
> \lim_{n\to\infty}(q_n-r_n)=0.
> $$

<!-- real_number_as_cauchy_equivalence_class -->
> [!Definition]
> **由 Cauchy 序列表示的实数 Real Number as a Cauchy-Sequence Class**：令 $\mathcal{C}(\mathbb{Q})$ 为全体有理数 Cauchy 序列构成的集合。定义
> $$
> \mathbb{R}_C=\mathcal{C}(\mathbb{Q})/{\sim}.
> $$
> 其元素称为有理数 Cauchy 序列的等价类；常值序列 $(r,r,\ldots)$ 给出 $\mathbb{Q}$ 到 $\mathbb{R}_C$ 的自然嵌入。

<!-- cauchy_real_complete_ordered_field -->
> [!Theorem]
> **Cauchy 序列构造定理 Cauchy-Sequence Construction Theorem**：在 $\mathbb{R}_C$ 上逐项定义加法和乘法，并以等价类的最终正性定义序，可使 $\mathbb{R}_C$ 成为包含 $\mathbb{Q}$ 的完备有序域。
>
> **证明思路**：先验证逐项运算与等价关系相容。对 Cauchy 序列的等价类使用有理数近似定义序；再通过从有理数逼近构造的嵌套区间或 Cauchy 序列证明每个 Cauchy 列在 $\mathbb{R}_C$ 中收敛，得到完备性。

## 两种构造的等价性与公理化刻画

<!-- equivalence_of_real_constructions -->
> [!Theorem]
> **实数构造的等价性 Equivalence of Constructions of the Real Numbers**：存在唯一保持有序域运算且在 $\mathbb{Q}$ 上为恒等的同构
> $$
> \Phi:\mathbb{R}_C\longrightarrow\mathbb{R}_D.
> $$
> 因而 Dedekind 分割构造与 Cauchy 序列构造所得实数系在保持有理数嵌入的意义下等价。
>
> **证明思路**：对 Cauchy 序列 $(q_n)_{n\geq1}$，取所有严格小于其所表示极限的有理数所成的下集，构成对应的 Dedekind 分割。验证该对应与等价关系、域运算和序相容；再由完备性或直接构造逆映射证明满射。

<!-- complete_ordered_field_definition -->
> [!Definition]
> **完备有序域 Complete Ordered Field**：设 $F$ 是有序域。若每个非空且在 $F$ 中有上界的集合 $A\subseteq F$ 都有属于 $F$ 的上确界，则称 $F$ 为完备有序域。

<!-- uniqueness_of_complete_ordered_fields -->
> [!Theorem]
> **完备有序域的唯一性 Uniqueness of Complete Ordered Fields**：任意两个完备有序域之间存在唯一保持 $1$ 的保序域同构。因此可将任一完备有序域称为实数系，并记为 $\mathbb{R}$。
>
> **证明思路**：先由 $1$ 的像唯一确定嵌入的有理数。再把一方的每个元素送至另一方中所有小于它的有理数像的上确界；利用稠密性与完备性验证此映射是保序域同构。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 1；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 1。