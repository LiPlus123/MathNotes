# 次线性泛函与范数

<!-- functional_analysis_sublinear_functional_definition -->
> [!Definition]
> **次线性泛函 Sublinear Functional**：设 $X$ 是实或复线性空间。映射 $p:X\to[0,+\infty)$ 若满足
> $$
> p(x+y)\leq p(x)+p(y),
> \qquad p(\lambda x)=|\lambda|p(x)
> $$
> 对所有 $x,y\in X$ 及标量 $\lambda$ 成立，则称 $p$ 为 $X$ 上的**次线性泛函 Sublinear Functional**。

<!-- functional_analysis_sublinear_functional_example -->
> [!Example]+
> **线性泛函绝对值 Absolute Value of a Linear Functional**：若 $f:X\to\mathbb{F}$ 是线性泛函，其中 $\mathbb{F}\in\{\mathbb{R},\mathbb{C}\}$，则 $p(x)=|f(x)|$ 是次线性泛函。
>
> **证明思路**：齐次性由线性性及绝对值的齐次性得到；次可加性由 $|f(x+y)|\leq|f(x)|+|f(y)|$ 得到。

<!-- functional_analysis_seminorm_definition -->
> [!Definition]
> **半范数 Seminorm**：设 $X$ 是实或复线性空间。若次线性泛函 $p:X\to[0,+\infty)$ 满足 $p(0)=0$，则称 $p$ 为 $X$ 上的**半范数 Seminorm**。

> **注**：由齐次性已推出 $p(0)=0$，故半范数与次线性泛函在此约定下等价。半范数可以在非零向量处取值 $0$。

<!-- functional_analysis_seminorm_example -->
> [!Example]+
> **坐标半范数 Coordinate Seminorm**：在 $\mathbb{R}^2$ 上，$p(x_1,x_2)=|x_1|$ 是半范数，但不是范数，因为 $p(0,1)=0$。

<!-- functional_analysis_quasinorm_definition -->
> [!Definition]
> **准范数 Quasinorm**：设 $X$ 是实或复线性空间。映射 $q:X\to[0,+\infty)$ 若满足正定性、绝对齐次性，且存在常数 $C\geq1$，使得
> $$
> q(x+y)\leq C\bigl(q(x)+q(y)\bigr)
> $$
> 对任意 $x,y\in X$ 成立，则称 $q$ 为 $X$ 上的**准范数 Quasinorm**。

<!-- functional_analysis_p_quasinorm_example -->
> [!Example]+
> **$0<p<1$ 的 $p$-准范数 $p$-Quasinorm for $0<p<1$**：在有限维空间 $\mathbb{F}^n$ 上，对 $0<p<1$ 定义
> $$
> q_p(x)=\left(\sum_{j=1}^n|x_j|^p\right)^{1/p}.
> $$
> 则 $q_p$ 是准范数而不是范数；事实上它满足 $q_p(x+y)^p\leq q_p(x)^p+q_p(y)^p$，但通常不满足三角不等式。

<!-- functional_analysis_norm_definition -->
> [!Definition]
> **范数 Norm**：设 $X$ 是实或复线性空间。若半范数 $\|\cdot\|:X\to[0,+\infty)$ 还满足
> $$
> \|x\|=0\Longleftrightarrow x=0,
> $$
> 则称 $\|\cdot\|$ 为 $X$ 上的**范数 Norm**。带范数的线性空间称为**赋范线性空间 Normed Linear Space**。

<!-- functional_analysis_norm_example -->
> [!Example]+
> **有限维空间上的 $p$-范数 $p$-Norms on Finite-Dimensional Spaces**：对 $1\leq p<+\infty$，
> $$
> \|x\|_p=\left(\sum_{j=1}^n|x_j|^p\right)^{1/p},
> \qquad
> \|x\|_\infty=\max_{1\leq j\leq n}|x_j|
> $$
> 都是 $\mathbb{F}^n$ 上的范数。

<!-- functional_analysis_paranorm_definition -->
> [!Definition]
> **拟范数 Paranorm**：设 $X$ 是线性空间。满足 $g(0)=0$、$g(-x)=g(x)$ 与 $g(x+y)\leq g(x)+g(y)$ 的函数 $g:X\to[0,+\infty)$，若还满足当 $x_n\to x$ 且标量列 $\lambda_n\to\lambda$ 时
> $$
> g(\lambda_nx_n-\lambda x)\to0,
> $$
> 则称 $g$ 为 $X$ 上的**拟范数 Paranorm**。若另有 $g(x)=0\Rightarrow x=0$，则称其为**全拟范数 Total Paranorm**。

> **注**：拟范数不要求绝对齐次性，因此它比范数更一般；由范数定义的 $g(x)=\|x\|$ 是全拟范数。