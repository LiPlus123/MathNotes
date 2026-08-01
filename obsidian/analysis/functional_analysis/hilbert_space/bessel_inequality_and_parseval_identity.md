# 贝塞尔不等式与帕赛瓦尔等式

<!-- functional_analysis_orthonormal_system_definition -->
> [!Definition]
> **标准正交系 Orthonormal System**：设 $H$ 是内积空间，$(e_n)_{n\geq1}\subseteq H$。若
> $$
> \langle e_m,e_n\rangle=\delta_{mn}
> \qquad(m,n\geq1),
> $$
> 则称 $(e_n)$ 为 $H$ 中的**标准正交系 Orthonormal System**。

<!-- functional_analysis_bessel_inequality -->
> [!Theorem]
> **贝塞尔不等式 Bessel Inequality**：设 $(e_n)_{n\geq1}$ 是 Hilbert 空间 $H$ 中的标准正交系。则对任意 $x\in H$，
> $$
> \sum_{n=1}^{\infty}|\langle e_n,x\rangle|^2\leq\|x\|^2.
> $$
>
> **证明思路**：对每个 $N$，向量 $x-\sum_{n=1}^N\langle e_n,x\rangle e_n$ 与 $e_1,\ldots,e_N$ 正交。勾股恒等式给出有限和估计；令 $N\to\infty$ 得结论。

<!-- functional_analysis_complete_orthonormal_system_definition -->
> [!Definition]
> **完备标准正交系 Complete Orthonormal System**：标准正交系 $(e_n)$ 若满足
> $$
> \overline{\operatorname{span}\{e_n:n\geq1\}}=H,
> $$
> 则称为**完备标准正交系 Complete Orthonormal System**，也称为 Hilbert 空间的标准正交基。

<!-- functional_analysis_parseval_identity -->
> [!Theorem]
> **Parseval 等式 Parseval Identity**：若 $(e_n)_{n\geq1}$ 是 Hilbert 空间 $H$ 的完备标准正交系，则对任意 $x\in H$，
> $$
> x=\sum_{n=1}^{\infty}\langle e_n,x\rangle e_n,
> \qquad
> \|x\|^2=\sum_{n=1}^{\infty}|\langle e_n,x\rangle|^2,
> $$
> 其中第一式按 $H$ 的范数收敛。
>
> **证明思路**：部分和是 $x$ 在有限维正交子空间上的投影。其余项与该子空间正交，故余项范数平方等于 $\|x\|^2$ 减去系数平方和；完备性使余项范数趋于 $0$。

<!-- functional_analysis_parseval_completeness_equivalences -->
> [!Proposition]
> **标准正交系完备性的等价条件 Equivalent Conditions for Completeness**：对标准正交系 $(e_n)$，下列条件等价：
> 1. $(e_n)$ 完备；
> 2. 若 $x\in H$ 满足 $\langle e_n,x\rangle=0$ 对所有 $n$ 成立，则 $x=0$；
> 3. 对每个 $x\in H$，Parseval 等式成立。
>
> **证明思路**：第一、二条分别等价于其闭线性张成空间的正交补为 $\{0\}$。由 Bessel 不等式中的余项公式，第二条等价于余项为零，进而等价于 Parseval 等式。