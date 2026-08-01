# 完备度量空间的定义

## 度量空间与柯西列

<!-- functional_analysis_metric_space_definition -->
> [!Definition]
> **度量空间 Metric Space**：设 $X$ 为非空集合。若映射 $d:X\times X\to[0,+\infty)$ 满足：对任意 $x,y,z\in X$，
> $$
> d(x,y)=0\Longleftrightarrow x=y,
> \qquad d(x,y)=d(y,x),
> \qquad d(x,z)\leq d(x,y)+d(y,z),
> $$
> 则称 $d$ 为 $X$ 上的**度量 Metric**，并称 $(X,d)$ 为**度量空间 Metric Space**。

<!-- functional_analysis_cauchy_sequence_definition -->
> [!Definition]
> **柯西列 Cauchy Sequence**：设 $(X,d)$ 是度量空间，$(x_n)_{n\geq1}$ 是 $X$ 中的序列。若对任意 $\varepsilon>0$，存在 $N\in\mathbb{Z}^+$，使得任意 $m,n\geq N$ 均有
> $$
> d(x_m,x_n)<\varepsilon,
> $$
> 则称 $(x_n)_{n\geq1}$ 为 $X$ 中的**柯西列 Cauchy Sequence**。

<!-- functional_analysis_convergent_sequence_is_cauchy -->
> [!Proposition]
> **收敛列必为柯西列 Convergent Sequences are Cauchy**：度量空间中的每个收敛序列都是柯西列。
>
> **证明思路**：若 $x_n\to x$，则对给定的 $\varepsilon>0$，当 $m,n$ 充分大时，$d(x_m,x)$ 与 $d(x_n,x)$ 都小于 $\varepsilon/2$。由三角不等式得到 $d(x_m,x_n)<\varepsilon$。

## 完备性

<!-- functional_analysis_complete_metric_space_definition -->
> [!Definition]
> **完备度量空间 Complete Metric Space**：设 $(X,d)$ 是度量空间。若 $X$ 中的每个柯西列都收敛到 $X$ 中的某一点，则称 $(X,d)$ 是**完备的 Complete**，或称为**完备度量空间 Complete Metric Space**。

<!-- functional_analysis_cauchy_convergence_characterization -->
> [!Proposition]
> **完备性的柯西列刻画 Cauchy Criterion for Completeness**：度量空间 $(X,d)$ 完备，当且仅当 $X$ 中任一柯西列都存在极限于 $X$ 的收敛子列。
>
> **证明思路**：必要性显然。反之，设柯西列 $(x_n)$ 有子列 $x_{n_k}\to x\in X$。对任意 $\varepsilon>0$，柯西性保证充分后的 $x_n$ 都与充分后的 $x_{n_k}$ 相距小于 $\varepsilon/2$；再选取 $x_{n_k}$ 与 $x$ 相距小于 $\varepsilon/2$，即可推出 $x_n\to x$。

## 例子

<!-- functional_analysis_euclidean_space_complete_example -->
> [!Example]+
> **欧几里得空间的完备性 Completeness of Euclidean Space**：对任意 $n\in\mathbb{Z}^+$，带欧几里得度量的 $\mathbb{R}^n$ 是完备度量空间。
>
> **证明思路**：$\mathbb{R}^n$ 中的柯西列逐坐标都是实数域中的柯西列，故各坐标收敛。坐标收敛再蕴含原序列依欧几里得度量收敛。

<!-- functional_analysis_rational_numbers_incomplete_example -->
> [!Example]+
> **有理数空间的不完备性 Incompleteness of Rational Numbers**：带通常距离 $d(x,y)=|x-y|$ 的度量空间 $\mathbb{Q}$ 不完备。
>
> **证明思路**：取一列有理数 $(q_n)_{n\geq1}$ 收敛到 $\sqrt{2}$。它在 $\mathbb{R}$ 中收敛，因而是柯西列；但 $\sqrt{2}\notin\mathbb{Q}$，故该列不在 $\mathbb{Q}$ 中收敛。

<!-- functional_analysis_closed_subspace_complete -->
> [!Theorem]
> **闭子空间的完备性 Closed Subspaces are Complete**：设 $(X,d)$ 为完备度量空间，$F\subseteq X$。则赋予限制度量的 $F$ 完备，当且仅当 $F$ 在 $X$ 中是闭集。
>
> **证明思路**：若 $F$ 闭，则 $F$ 中的柯西列在 $X$ 中收敛，其极限由闭性仍属于 $F$。反之，若 $F$ 完备而 $x\in\overline{F}$，可从 $F\cap B(x,1/n)$ 依次选取 $x_n$；该列在 $X$ 中收敛到 $x$，也在 $F$ 中为柯西列，故完备性给出 $x\in F$。