# Banach-Alaoglu 定理与弱*紧性

<!-- functional_analysis_banach_alaoglu_theorem -->
> [!Theorem]
> **Banach-Alaoglu 定理 Banach-Alaoglu Theorem**：设 $X$ 是赋范线性空间，$X^*$ 的闭单位球
> $$
> B_{X^*}=\{f\in X^*:\|f\|\leq1\}
> $$
> 在弱*拓扑下紧。
>
> **证明思路**：将 $B_{X^*}$ 嵌入乘积空间 $\prod_{x\in X}\{z\in\mathbb{F}:|z|\leq\|x\|\}$，其中每个坐标由 $f\mapsto f(x)$ 给出。Tychonoff 定理给出乘积紧性；线性性和范数控制的条件定义闭子集，故 $B_{X^*}$ 为紧集。

<!-- functional_analysis_weak_star_compactness_nonsequential_note -->
> [!Proposition]
> **弱*紧性不必蕴含弱*列紧性 Weak-Star Compactness Need Not Imply Weak-Star Sequential Compactness**：一般地，弱*紧的集合不必使其每个序列都有弱*收敛子列；因此 Banach-Alaoglu 定理本身不能直接断言任意对偶空间有界序列存在弱*收敛子列。
>
> **证明思路**：弱*拓扑通常不可度量，而一般拓扑空间中的紧性不蕴含序列紧性。可分性条件将给出所需的可度量性，从而恢复序列紧性。

<!-- functional_analysis_sequential_banach_alaoglu_theorem -->
> [!Theorem]
> **序列型 Banach-Alaoglu 定理 Sequential Banach-Alaoglu Theorem**：若 $X$ 可分，则 $B_{X^*}$ 在弱*拓扑下可度量且弱*列紧。因而 $X^*$ 中任一范数有界序列都有弱*收敛子列。
>
> **证明思路**：从 $X$ 的可数稠密子集构造 $B_{X^*}$ 上弱*拓扑的可数度量化描述。Banach-Alaoglu 定理给出紧性，紧度量空间列紧；将有界序列按其范数缩放到闭单位球后即可应用。

<!-- functional_analysis_weak_star_subsequence_extraction -->
> [!Corollary]
> **弱*收敛子列的抽取 Weak-Star Subsequence Extraction**：若 $X$ 是可分 Banach 空间，$(f_n)_{n\geq1}\subseteq X^*$ 满足 $\sup_n\|f_n\|<+\infty$，则存在子列 $(f_{n_k})_{k\geq1}$ 与 $f\in X^*$，使得
> $$
> f_{n_k}\overset{*}{\rightharpoonup}f.
> $$
>
> **证明思路**：令 $C=\sup_n\|f_n\|$。若 $C=0$ 结论显然；否则将 $f_n/C$ 置于 $B_{X^*}$，由序列型 Banach-Alaoglu 定理抽取弱*收敛子列，再缩放回来。

<!-- functional_analysis_weak_star_compactness_variational_application -->
> [!Example]+
> **极小化序列中的弱*紧性 Weak-Star Compactness in Minimization Problems**：设 $X$ 是可分 Banach 空间，$F:X^*\to(-\infty,+\infty]$ 是弱*下半连续泛函。若极小化序列 $(f_n)\subseteq X^*$ 范数有界，则存在弱*收敛子列 $f_{n_k}\overset{*}{\rightharpoonup}f$；并且
> $$
> F(f)\leq\liminf_{k\to\infty}F(f_{n_k}).
> $$
> 若右端等于 $\inf_{g\in X^*}F(g)$，则 $f$ 是极小元。
>
> **证明思路**：由序列型 Banach-Alaoglu 定理抽取弱*收敛子列；弱*下半连续性将极小化不等式传递到极限。