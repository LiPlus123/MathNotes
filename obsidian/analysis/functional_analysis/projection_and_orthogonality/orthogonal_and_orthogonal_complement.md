# 正交与正交补

<!-- functional_analysis_orthogonality_definition_hilbert -->
> [!Definition]
> **正交 Orthogonality**：Hilbert 空间 $H$ 中若 $\langle x,y\rangle=0$，则称 $x,y$ 正交，记为 $x\perp y$。

<!-- functional_analysis_orthogonal_complement_definition_hilbert -->
> [!Definition]
> **正交补 Orthogonal Complement**：对 $M\subseteq H$，定义
> $$
> M^\perp=\{x\in H:\langle m,x\rangle=0,\ \forall m\in M\}.
> $$

<!-- functional_analysis_orthogonal_complement_properties -->
> [!Theorem]
> **正交补的性质 Properties of Orthogonal Complements**：$M^\perp$ 是闭子空间，且
> $$
> (M^\perp)^\perp=\overline{\operatorname{span}M}.
> $$
> 特别地，线性子空间 $M$ 闭当且仅当 $(M^\perp)^\perp=M$。
>
> **证明思路**：正交条件在极限下保持，故 $M^\perp$ 闭；利用最佳逼近定理可将不属于闭线性张成空间的向量以连续泛函分离，从而得到双正交补公式。