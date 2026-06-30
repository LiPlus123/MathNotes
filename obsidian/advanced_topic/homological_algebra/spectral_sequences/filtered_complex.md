# 滤过链复形

## 滤过链复形

<!-- filtered_chain_complex_def -->
> [!Definition]
> **滤过链复形 Filtered Chain Complex**：设 $(C_\bullet, \partial)$ 是链复形。一个**递增滤过**（increasing filtration）是对每个 $n\in\mathbb{Z}$ 给出子模列
> $$
> \cdots \subseteq F_{p-1}C_n \subseteq F_p C_n \subseteq F_{p+1}C_n \subseteq \cdots \subseteq C_n,
> $$
> 满足
> $$
> \partial_n(F_p C_n) \subseteq F_p C_{n-1}
> $$
> 对所有 $p,n$ 成立。此时称 $(C_\bullet, F)$ 为**滤过链复形**。
>
> 类似地，也可定义递减滤过 $\cdots \supseteq F^{p+1}C_n \supseteq F^p C_n \supseteq F^{p-1}C_n$。在谱序列构造中，两种约定都常见，本文以下主要采用递增滤过记号。

## 相伴分次复形

<!-- associated_graded_complex_def -->
> [!Definition]
> **相伴分次复形 Associated Graded Complex**：设 $(C_\bullet,F)$ 是滤过链复形。其**相伴分次对象**定义为
> $$
> \operatorname{gr}_p^F C_n := F_p C_n / F_{p-1} C_n.
> $$
> 由于微分保持滤过，$\partial_n$ 诱导出
> $$
> \operatorname{gr}_p^F \partial_n: \operatorname{gr}_p^F C_n \to \operatorname{gr}_p^F C_{n-1},
> $$
> 从而 $\operatorname{gr}^F C_\bullet$ 成为按 $p$ 分次的链复形族，称为**相伴分次复形**。

> **注**：谱序列的第一页通常正是从相伴分次复形及其同调抽取出来的。

## 滤过的有界性

<!-- bounded_filtration_def -->
> [!Definition]
> **滤过的有界性 Boundedness of a Filtration**：滤过 $(F_p C_n)$ 称为：
> - **有下界的**（bounded below），若对每个固定 $n$，存在 $p_0$ 使得 $F_p C_n=0$ 对所有 $p<p_0$；
> - **有上界的**（bounded above），若对每个固定 $n$，存在 $p_1$ 使得 $F_p C_n=C_n$ 对所有 $p\ge p_1$；
> - **有界的**（bounded），若既有下界又有上界。
>
> 若对所有总次数只涉及有限多个滤过层，则称滤过是**穷尽的**（exhaustive）与**分离的**（separated），即
> $$
> \bigcup_p F_p C_n = C_n, \qquad \bigcap_p F_p C_n = 0.
> $$

<!-- filtration_note_spectral_sequence -->
> [!Corollary]
> **有界滤过与收敛性 Bounded Filtrations and Convergence**：有界性与穷尽性是谱序列良好收敛的关键条件。特别地，当滤过有界时，由滤过链复形构造出的谱序列通常会在有限页后稳定到某个极限页 $E_\infty$。