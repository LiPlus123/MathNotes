# Hardy 空间上的奇异积分

## 端点估计与取消条件

<!-- hardy_cz_h1_to_l1_theorem -->
> [!Theorem]
> **Calderón-Zygmund 算子的 $H^1\to L^1$ 有界性 $H^1$ to $L^1$ Boundedness**：设 $T$ 是 $L^2(\mathbb{R}^n)$ 有界的标准 Calderón-Zygmund 算子，则 $T$ 唯一地延拓为
> $$
> T:H^1(\mathbb{R}^n)\longrightarrow L^1(\mathbb{R}^n)
> $$
> 的有界算子。
>
> **证明思路**：只须检验 $H^1$ 原子。对原子支撑立方体的邻域，使用 $L^2$ 有界性和原子大小条件；在邻域外，使用原子的零均值与核的光滑性，将核差估计为可积的衰减量。原子有界性判据遂给出结论。

<!-- hardy_hp_cz_boundedness -->
> [!Theorem]
> **$H^p$ 上的奇异积分有界性 Singular Integrals on $H^p$**：设 $T$ 的核具有 $\delta$ 阶 Hölder 光滑性，$0<\delta\leq1$，并满足适当的取消条件，例如 $T^*(x^\alpha)=0$（$|\alpha|\leq s$，分布意义），其中
> $$
> s\geq\left\lfloor n\left(\frac1p-1\right)\right\rfloor.
> $$
> 当
> $$
> \frac{n}{n+\delta}<p\leq1
> $$
> 且上述矩条件足以保持原子消去时，$T$ 有界于 $H^p(\mathbb{R}^n)$。
>
> **证明思路**：对 $(p,q,s)$-原子使用核的光滑性及 $T^*$ 的消去条件，验证其像具有可控的 $H^p$ 极大函数或分子分解；再通过原子级数延拓。较小的 $p$ 需要更高阶核光滑性与更多矩消去。

<!-- hardy_riesz_transform_characterization -->
> [!Theorem]
> **Riesz 变换的 $H^1$ 刻画 Riesz Transform Characterization of $H^1$**：对温和分布 $f$，有
> $$
> f\in H^1(\mathbb{R}^n)
> \quad\Longleftrightarrow\quad
> f,R_1f,\ldots,R_nf\in L^1(\mathbb{R}^n).
> $$
> 并且
> $$
> \|f\|_{H^1}\asymp\|f\|_1+\sum_{j=1}^n\|R_jf\|_1.
> $$
>
> **证明思路**：一个方向由 Riesz 变换的 $H^1\to L^1$ 有界性得到。反方向通过 Poisson 延拓的共轭调和函数与其 Cauchy-Riemann 型关系，控制 Hardy 极大函数或面积函数。

<!-- hardy_endpoint_estimate_significance -->
> [!Corollary]
> **端点估计的意义 Significance of Endpoint Estimates**：$H^1\to L^1$ 有界性严格强于 $L^1\to L^{1,\infty}$ 弱型估计：$H^1$ 的原子消去条件抵消了奇异核在远场的主导项。因此 $H^1$ 是奇异积分在 $L^1$ 端点的自然替代空间。

> **来源**：Elias M. Stein, *Harmonic Analysis*, Chapter III；Ronald R. Coifman and Guido Weiss, *Extensions of Hardy Spaces and Their Use in Analysis*, Bulletin of the American Mathematical Society 83 (1977)。
