# 延拓与保范延拓定理

<!-- functional_analysis_linear_functional_extension_definition -->
> [!Definition]
> **线性泛函的延拓 Extension of a Linear Functional**：设 $M\subseteq X$ 是线性子空间，$f:M\to\mathbb{F}$ 是线性泛函。若线性泛函 $F:X\to\mathbb{F}$ 满足
> $$
> F|_M=f,
> $$
> 则称 $F$ 是 $f$ 从 $M$ 到 $X$ 的**延拓 Extension**。

<!-- functional_analysis_norm_preserving_extension_theorem -->
> [!Theorem]
> **保范延拓定理 Norm-Preserving Extension Theorem**：设 $M$ 是赋范空间 $X$ 的线性子空间，$f\in M^*$。则存在 $F\in X^*$，使得 $F|_M=f$ 且
> $$
> \|F\|=\|f\|.
> $$
>
> **证明思路**：这是 Hahn-Banach 定理在控制泛函 $p(x)=\|f\|\|x\|$ 下的直接应用。

<!-- functional_analysis_norm_preserving_extension_nonuniqueness -->
> [!Proposition]
> **保范延拓一般不唯一 Norm-Preserving Extensions Need Not Be Unique**：保范延拓一般不唯一。例如令 $M=\operatorname{span}\{(1,0)\}\subseteq(\mathbb{R}^2,\|\cdot\|_1)$，并定义 $f(a,0)=a$。则对每个 $c\in[-1,1]$，
> $$
> F_c(x_1,x_2)=x_1+cx_2
> $$
> 都是 $f$ 的保范延拓，且 $\|F_c\|=1$。
>
> **证明思路**：$F_c$ 在 $M$ 上限制为 $f$；由 $|x_1+cx_2|\leq|x_1|+|x_2|$ 得 $\|F_c\|\leq1$，而 $F_c(1,0)=1$ 给出等号。