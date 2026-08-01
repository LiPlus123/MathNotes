# 哈恩-巴拿赫定理

<!-- functional_analysis_hahn_banach_real_theorem -->
> [!Theorem]
> **实 Hahn-Banach 定理 Real Hahn-Banach Theorem**：设 $X$ 是实线性空间，$p:X\to\mathbb{R}$ 是次线性泛函，$M\subseteq X$ 是线性子空间，$f:M\to\mathbb{R}$ 是线性泛函，且
> $$
> f(x)\leq p(x)
> \qquad(x\in M).
> $$
> 则存在 $X$ 上的线性泛函 $F:X\to\mathbb{R}$，使得
> $$
> F|_M=f,
> \qquad F(x)\leq p(x)\quad(x\in X).
> $$
>
> **证明思路**：考虑所有满足支配条件的线性延拓组成的偏序集。每条全序链的并仍为可行延拓，故 Zorn 引理给出极大元；若其定义域不等于 $X$，可在增加一个向量的子空间上选择适当函数值继续延拓，矛盾。

<!-- functional_analysis_hahn_banach_complex_theorem -->
> [!Theorem]
> **复 Hahn-Banach 定理 Complex Hahn-Banach Theorem**：设 $X$ 是复线性空间，$p:X\to\mathbb{R}$ 是半范数，$M\subseteq X$ 是复线性子空间，$f:M\to\mathbb{C}$ 是复线性泛函，且 $|f(x)|\leq p(x)$。则存在复线性泛函 $F:X\to\mathbb{C}$，使得
> $$
> F|_M=f,
> \qquad |F(x)|\leq p(x)\quad(x\in X).
> $$
>
> **证明思路**：先将 $f$ 的实部视为实线性泛函应用实 Hahn-Banach 定理，再以 $F(x)=F_0(x)-iF_0(ix)$ 重建复线性延拓；旋转相位可推出绝对值估计。

<!-- functional_analysis_hahn_banach_norm_preserving_corollary -->
> [!Corollary]
> **保范延拓推论 Norm-Preserving Extension Corollary**：设 $M$ 是赋范空间 $X$ 的线性子空间，$f\in\mathcal{L}(M,\mathbb{F})$。则存在 $F\in\mathcal{L}(X,\mathbb{F})$，使得
> $$
> F|_M=f,
> \qquad\|F\|=\|f\|.
> $$
>
> **证明思路**：取 $p(x)=\|f\|\|x\|$ 应用 Hahn-Banach 定理。延拓给出 $\|F\|\leq\|f\|$，而限制到 $M$ 给出反向不等式。

<!-- functional_analysis_hahn_banach_dual_separates_points -->
> [!Corollary]
> **对偶空间分离点 The Dual Space Separates Points**：若 $X$ 是赋范空间，$x_0\in X\setminus\{0\}$，则存在 $f\in X^*$ 使得
> $$
> \|f\|=1,
> \qquad f(x_0)=\|x_0\|.
> $$
>
> **证明思路**：在 $\operatorname{span}\{x_0\}$ 上定义 $f_0(ax_0)=a\|x_0\|$，其范数为 $1$；再应用保范延拓推论。