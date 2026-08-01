# $H^1$-BMO 对偶

## Fefferman 对偶定理

<!-- harmonic_h1_bmo_pairing -->
> [!Definition]
> **$H^1$ 与 BMO 的配对 $H^1$-BMO Pairing**：对有限原子和 $f=\sum_j\lambda_ja_j$ 及 $b\in\operatorname{BMO}(\mathbb{R}^n)$，定义
> $$
> \langle f,b\rangle=\sum_j\lambda_j\int_{\mathbb{R}^n}a_j(x)b(x)\,dx.
> $$
> 对每个原子 $a_j$，其零均值使积分可改写为
> $$
> \int_Qa_j(x)\bigl(b(x)-\langle b\rangle_Q\bigr)\,dx,
> $$
> 因而只依赖于 BMO 的模常数等价类。

<!-- harmonic_h1_bmo_duality_theorem -->
> [!Theorem]
> **Fefferman 对偶定理 Fefferman Duality Theorem**：连续对偶空间满足同构
> $$
> \bigl(H^1(\mathbb{R}^n)\bigr)^*=\operatorname{BMO}(\mathbb{R}^n)/\mathbb{C}.
> $$
> 更具体地，对每个 $b\in\operatorname{BMO}$，上述配对定义 $H^1$ 上的有界泛函，并且每个 $H^1$ 上的有界线性泛函都唯一地以此方式表示，唯一性模去常数。
>
> **证明思路**：原子大小与 BMO 平均振荡控制给出 $|\langle a,b\rangle|\lesssim\|b\|_{\operatorname{BMO}}$，故配对延拓到 $H^1$。反向从泛函对局部零均值测试函数的作用构造局部 $L^2$ 函数，并用一致有界性及拼接论证得到全局 BMO 代表元。

<!-- harmonic_h1_bmo_dual_norm_equivalence -->
> [!Corollary]
> **对偶范数等价 Dual Norm Equivalence**：对 $b\in\operatorname{BMO}$，
> $$
> \|b\|_{\operatorname{BMO}}
> \asymp
> \sup_{\|f\|_{H^1}\leq1}|\langle f,b\rangle|.
> $$
> 因而 BMO 半范数正是相应 $H^1$ 对偶范数的代表。

<!-- harmonic_fefferman_stein_decomposition -->
> [!Theorem]
> **Fefferman-Stein 分解 Fefferman-Stein Decomposition**：函数 $b$ 属于 $\operatorname{BMO}(\mathbb{R}^n)$ 当且仅当存在 $b_0,\ldots,b_n\in L^\infty(\mathbb{R}^n)$，使在模常数的分布意义下
> $$
> b=b_0+\sum_{j=1}^nR_jb_j.
> $$
> 并且
> $$
> \|b\|_{\operatorname{BMO}}
> \asymp\inf\left(\|b_0\|_\infty+\sum_{j=1}^n\|b_j\|_\infty\right),
> $$
> 下确界取遍上述所有表示。
>
> **证明思路**：将 $H^1$ 的 Riesz 变换刻画与 $H^1$-BMO 对偶性结合。对偶化 $H^1$ 中的有限个 $L^1$ 分量，可将 BMO 泛函表示为若干 $L^\infty$ 函数及其 Riesz 变换之和。

> **来源**：Charles Fefferman, "Characterizations of Bounded Mean Oscillation", *Bulletin of the American Mathematical Society* 77 (1971)；Charles Fefferman and Elias M. Stein, "$H^p$ Spaces of Several Variables", *Acta Mathematica* 129 (1972)。
