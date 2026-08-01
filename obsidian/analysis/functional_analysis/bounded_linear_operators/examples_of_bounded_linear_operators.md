# 有界线性算子的例子

<!-- functional_analysis_matrix_operator_example -->
> [!Example]+
> **有限维空间上的矩阵算子 Matrix Operators in Finite Dimensions**：设 $A\in\mathbb{F}^{m\times n}$。映射
> $$
> T_A:(\mathbb{F}^n,\|\cdot\|_2)\to(\mathbb{F}^m,\|\cdot\|_2),
> \qquad T_Ax=Ax
> $$
> 是有界线性算子，且 $\|T_A\|$ 等于矩阵的谱范数，即 $A$ 的最大奇异值。

<!-- functional_analysis_l2_multiplication_operator_example -->
> [!Example]+
> **$L^2$ 上的乘法算子 Multiplication Operator on $L^2$**：设 $m\in L^\infty(\mu)$。定义
> $$
> M_m:L^2(\mu)\to L^2(\mu),
> \qquad M_mf=mf.
> $$
> 则 $M_m$ 有界，且
> $$
> \|M_m\|=\|m\|_\infty.
> $$
>
> **证明思路**：由 $|mf|\leq\|m\|_\infty|f|$ 得上界；对接近本质上确界的正测度集合取限制后的函数，得到反向不等式。

<!-- functional_analysis_c1_differentiation_operator_example -->
> [!Example]+
> **$C^1$ 上的微分算子 Differentiation Operator on $C^1$**：在紧区间 $[a,b]$ 上，定义
> $$
> D:(C^1([a,b]),\|\cdot\|_{C^1})\to(C([a,b]),\|\cdot\|_\infty),
> \qquad Df=f'.
> $$
> 则 $D$ 有界，且 $\|D\|=1$，其中 $\|f\|_{C^1}=\max\{\|f\|_\infty,\|f'\|_\infty\}$。
>
> **证明思路**：由定义直接有 $\|Df\|_\infty\leq\|f\|_{C^1}$；取 $f(x)=x-a$ 即得等号。

<!-- functional_analysis_integral_operator_example -->
> [!Example]+
> **$L^p$ 上的积分泛函 Integral Functional on $L^p$**：设 $1\leq p\leq+\infty$，$q$ 为共轭指数，且 $g\in L^q(\mu)$。定义
> $$
> T_g:L^p(\mu)\to\mathbb{F},
> \qquad T_g(f)=\int_Xf\overline{g}\,d\mu.
> $$
> 则 $T_g$ 有界，且 $\|T_g\|=\|g\|_q$。
>
> **证明思路**：Hölder 不等式给出上界；当 $1<p<+\infty$ 时可由 $g$ 的适当幂次构造达到该界的函数，端点情形由对偶刻画处理。

<!-- functional_analysis_l2_fourier_operator_example -->
> [!Example]+
> **$L^2$ 上的 Fourier 变换 Fourier Transform on $L^2$**：Plancherel 延拓
> $$
> \mathcal{F}:L^2(\mathbb{R}^n)\to L^2(\mathbb{R}^n)
> $$
> 是有界线性算子，且 $\|\mathcal{F}\|=1$。
>
> **证明思路**：Plancherel 恒等式 $\|\mathcal{F}f\|_2=\|f\|_2$ 表明它是线性等距同构。

<!-- functional_analysis_l1_convolution_operator_example -->
> [!Example]+
> **$L^1$ 上的卷积算子 Convolution Operator on $L^1$**：设 $g\in L^1(\mathbb{R}^n)$。定义
> $$
> C_g:L^1(\mathbb{R}^n)\to L^1(\mathbb{R}^n),
> \qquad C_gf=f*g.
> $$
> 则 $C_g$ 有界，且 $\|C_g\|\leq\|g\|_1$。
>
> **证明思路**：Young 卷积不等式给出 $\|f*g\|_1\leq\|f\|_1\|g\|_1$。

<!-- functional_analysis_schur_kernel_operator_example -->
> [!Example]+
> **Schur 核积分算子 Schur Kernel Operator**：设 $1\leq p\leq+\infty$，可测核 $K$ 满足
> $$
> A=\operatorname*{ess\,sup}_{x}\int|K(x,y)|\,dy<+\infty,
> \qquad
> B=\operatorname*{ess\,sup}_{y}\int|K(x,y)|\,dx<+\infty.
> $$
> 则
> $$
> T_Kf(x)=\int K(x,y)f(y)\,dy
> $$
> 定义有界线性算子 $T_K:L^p\to L^p$，并满足
> $$
> \|T_K\|\leq A^{1-1/p}B^{1/p}.
> $$
>
> **证明思路**：端点 $p=\infty$ 与 $p=1$ 分别由 $A,B$ 控制；中间情形由 Riesz-Thorin 插值定理得到。

<!-- functional_analysis_translation_operator_example -->
> [!Example]+
> **$L^p$ 上的平移算子 Translation Operator on $L^p$**：对 $a\in\mathbb{R}^n$、$1\leq p\leq+\infty$，定义
> $$
> \tau_a:L^p(\mathbb{R}^n)\to L^p(\mathbb{R}^n),
> \qquad(\tau_af)(x)=f(x-a).
> $$
> 则 $\tau_a$ 是线性等距同构，故 $\|\tau_a\|=1$。
>
> **证明思路**：Lebesgue 测度的平移不变性给出 $\|\tau_af\|_p=\|f\|_p$。

<!-- functional_analysis_hilbert_projection_operator_example -->
> [!Example]+
> **Hilbert 空间上的正交投影 Orthogonal Projection on a Hilbert Space**：设 $H$ 是 Hilbert 空间，$M\subseteq H$ 是闭子空间，$P_M:H\to H$ 为到 $M$ 的正交投影。则 $P_M$ 有界，且当 $M\ne\{0\}$ 时
> $$
> \|P_M\|=1.
> $$
>
> **证明思路**：正交分解 $x=P_Mx+(I-P_M)x$ 给出 $\|P_Mx\|\leq\|x\|$；对 $x\in M\setminus\{0\}$ 有 $P_Mx=x$。