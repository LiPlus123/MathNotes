# Baire 纲定理

## 稀疏集与纲

<!-- functional_analysis_nowhere_dense_set_definition -->
> [!Definition]
> **稀疏集 Nowhere Dense Set**：设 $X$ 为拓扑空间，$A\subseteq X$。若 $\operatorname{int}(\overline{A})=\varnothing$，则称 $A$ 在 $X$ 中为**稀疏的 Nowhere Dense**。

> **注**：若 $F\subseteq X$ 是闭集，则 $F$ 稀疏当且仅当 $F$ 不含任何非空开集。

<!-- functional_analysis_first_category_set_definition -->
> [!Definition]
> **第一纲集与第二纲集 First and Second Category Sets**：设 $X$ 为拓扑空间，$A\subseteq X$。若存在稀疏集列 $(A_n)_{n\geq1}$ 使得
> $$
> A\subseteq\bigcup_{n=1}^{\infty}A_n,
> $$
> 则称 $A$ 为**第一纲集 First Category Set**（或稀疏集、meagre set）。不是第一纲集的集合称为**第二纲集 Second Category Set**。

<!-- functional_analysis_open_subspace_of_second_category -->
> [!Proposition]
> **开子空间中的第二纲性 Open Subspaces are of Second Category**：若 $X$ 是完备度量空间，则任一非空开集 $U\subseteq X$ 都不是 $X$ 中的第一纲集。
>
> **证明思路**：若 $U\subseteq\bigcup_nA_n$，其中每个 $A_n$ 稀疏，则 $X\setminus\overline{A_n}$ 都是稠密开集。Baire 纲定理表明其交集稠密，故必与非空开集 $U$ 相交；这与 $U\subseteq\bigcup_nA_n$ 矛盾。

## Baire 纲定理

<!-- functional_analysis_baire_category_theorem -->
> [!Theorem]
> **Baire 纲定理 Baire Category Theorem**：设 $(X,d)$ 是完备度量空间，$(G_n)_{n\geq1}$ 是 $X$ 中稠密开集组成的序列。则
> $$
> \bigcap_{n=1}^{\infty}G_n
> $$
> 在 $X$ 中稠密。等价地，$X$ 不可能是可数个稀疏集的并。
>
> **证明思路**：对任意非空开集 $U$，递归选择闭球 $\overline{B}(x_n,r_n)\subseteq U\cap G_1\cap\cdots\cap G_n$，并令 $r_n\to0$。球心列为柯西列，完备性给出极限 $x$；由嵌套闭球及 $\overline{B}(x_n,r_n)\subseteq G_n$ 得 $x\in U\cap\bigcap_nG_n$，所以交集稠密。

<!-- functional_analysis_baire_nonempty_interior_corollary -->
> [!Corollary]
> **闭集覆盖的内点结论 Interior Point Corollary**：设 $(X,d)$ 是完备度量空间，且
> $$
> X=\bigcup_{n=1}^{\infty}F_n,
> $$
> 其中每个 $F_n$ 都是闭集。则至少存在一个 $F_n$ 具有非空内部。
>
> **证明思路**：若每个 $F_n$ 的内部都为空，则每个 $F_n$ 都稀疏，因而 $X$ 是第一纲集，这与 Baire 纲定理矛盾。

> **注**：完备性不可省略；例如 $\mathbb{Q}$ 是自身中可数个单点闭集的并，而每个单点的内部均为空。