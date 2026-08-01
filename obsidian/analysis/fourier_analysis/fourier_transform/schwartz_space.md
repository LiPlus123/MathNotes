# Schwartz 空间

## Schwartz 函数

<!-- schwartz_space_definition -->
> [!Definition]
> **Schwartz 空间 Schwartz Space**：Schwartz 空间 $\mathcal{S}(\mathbb{R}^n)$ 是全体光滑函数 $f\in C^\infty(\mathbb{R}^n)$ 的集合，且对任意多重指标 $\alpha,\beta\in\mathbb{N}^n$，都有
> $$
> \sup_{x\in\mathbb{R}^n}|x^\alpha\partial^\beta f(x)|<+\infty.
> $$
> 换言之，$f$ 及其全部导数都比任意多项式的倒数衰减得快。

<!-- fourier_transform_schwartz_automorphism -->
> [!Theorem]
> **Schwartz 空间上的自同构 Fourier Transform as an Automorphism of Schwartz Space**：Fourier 变换给出连续双射
> $$
> \mathcal{F}:\mathcal{S}(\mathbb{R}^n)\longrightarrow\mathcal{S}(\mathbb{R}^n),
> $$
> 其逆为 Fourier 反变换。特别地，若 $f\in\mathcal{S}(\mathbb{R}^n)$，则 $\widehat f\in\mathcal{S}(\mathbb{R}^n)$。
>
> **证明思路**：积分分部表明 $\xi^\alpha\partial^\beta\widehat f(\xi)$ 可写为 $f$ 的导数乘以多项式后的 Fourier 变换。该被积函数属于 $L^1$，故其变换有界；反演公式给出双射及逆。

<!-- differentiation_and_multiplication_fourier -->
> [!Theorem]
> **微分与乘法公式 Differentiation and Multiplication Formulas**：若 $f\in\mathcal{S}(\mathbb{R}^n)$，则对每个 $j=1,\ldots,n$，
> $$
> \widehat{\partial_jf}(\xi)=2\pi i\xi_j\widehat f(\xi),
> \qquad
> \widehat{x_jf}(\xi)=-\frac{1}{2\pi i}\partial_{\xi_j}\widehat f(\xi).
> $$
>
> **证明思路**：第一式对 $x_j$ 作积分分部，边界项由快速衰减消失；第二式对参数 $\xi_j$ 在积分号下求导。

<!-- gaussian_fourier_transform_example -->
> [!Example]+
> **Gauss 函数的 Fourier 变换 Fourier Transform of the Gaussian**：函数
> $$
> \gamma(x)=e^{-\pi|x|^2}
> $$
> 属于 $\mathcal{S}(\mathbb{R}^n)$，并且满足
> $$
> \widehat\gamma(\xi)=e^{-\pi|\xi|^2}.
> $$
>
> **证明思路**：先在一维对 Gauss 积分配方，或利用微分方程刻画其 Fourier 变换；再由张量积结构得到 $n$ 维结论。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 1。