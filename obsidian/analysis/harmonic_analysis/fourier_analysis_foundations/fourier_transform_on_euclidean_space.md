# Euclidean 空间上的 Fourier 变换

以下采用 $2\pi$ 归一化：$\widehat f(\xi)=\int_{\mathbb{R}^n}f(x)e^{-2\pi i x\cdot\xi}\,dx$。

## Schwartz 空间与温和分布

<!-- harmonic_schwartz_space_definition -->
> [!Definition]
> **Schwartz 空间 Schwartz Space**：$\mathcal{S}(\mathbb{R}^n)$ 是满足
> $$
> \sup_{x\in\mathbb{R}^n}|x^\alpha\partial^\beta f(x)|<+\infty
> $$
> 对任意多重指标 $\alpha,\beta$ 均成立的全体 $f\in C^\infty(\mathbb{R}^n)$ 构成的空间。其连续对偶记为 $\mathcal{S}'(\mathbb{R}^n)$，称为温和分布空间。

<!-- harmonic_fourier_schwartz_automorphism -->
> [!Theorem]
> **Schwartz 空间上的 Fourier 自同构 Fourier Automorphism of Schwartz Space**：Fourier 变换给出 $\mathcal{S}(\mathbb{R}^n)$ 的连续线性自同构，且
> $$
> \mathcal{F}^2f(x)=f(-x).
> $$
>
> **证明思路**：积分分部与参数微分将 $\widehat f$ 的各个 Schwartz 半范数控制为 $f$ 的有限个 Schwartz 半范数；反演公式给出逆变换。

<!-- harmonic_tempered_distribution_fourier_transform -->
> [!Definition]
> **温和分布的 Fourier 变换 Fourier Transform of a Tempered Distribution**：对 $T\in\mathcal{S}'(\mathbb{R}^n)$，定义 $\widehat T\in\mathcal{S}'(\mathbb{R}^n)$ 为
> $$
> \langle\widehat T,\varphi\rangle=\langle T,\widehat\varphi\rangle,
> \qquad\varphi\in\mathcal{S}(\mathbb{R}^n).
> $$

## 反演与等距性

<!-- harmonic_fourier_inversion_theorem -->
> [!Theorem]
> **Fourier 反演公式 Fourier Inversion Formula**：若 $f\in L^1(\mathbb{R}^n)$ 且 $\widehat f\in L^1(\mathbb{R}^n)$，则在 $f$ 的每个 Lebesgue 点 $x$，
> $$
> f(x)=\int_{\mathbb{R}^n}\widehat f(\xi)e^{2\pi i x\cdot\xi}\,d\xi.
> $$
>
> **证明思路**：先以 Gauss 核将 Fourier 反演正则化；Fubini 定理将其改写为 $f$ 与逼近恒等元的卷积，随后在 Lebesgue 点取极限。

<!-- harmonic_plancherel_theorem -->
> [!Theorem]
> **Plancherel 定理 Plancherel Theorem**：Fourier 变换唯一延拓为 $L^2(\mathbb{R}^n)$ 上的酉算子，并对任意 $f,g\in L^2(\mathbb{R}^n)$ 满足
> $$
> \int_{\mathbb{R}^n}f(x)\overline{g(x)}\,dx
> =\int_{\mathbb{R}^n}\widehat f(\xi)\overline{\widehat g(\xi)}\,d\xi.
> $$
>
> **证明思路**：先在 Schwartz 空间上由反演公式证明内积守恒，再利用其在 $L^2$ 中的稠密性延拓。

<!-- harmonic_hausdorff_young_inequality -->
> [!Theorem]
> **Hausdorff-Young 不等式 Hausdorff-Young Inequality**：若 $1\leq p\leq2$ 且 $p'=p/(p-1)$，则对 $f\in L^p(\mathbb{R}^n)$，
> $$
> \|\widehat f\|_{p'}\leq\|f\|_p.
> $$
>
> **证明思路**：$L^1\to L^\infty$ 的估计来自积分定义，$L^2\to L^2$ 的等距性来自 Plancherel 定理；对这两个端点应用 Riesz-Thorin 插值定理。

## 对称性

<!-- euclidean_fourier_transform_symmetries -->
> [!Theorem]
> **Fourier 变换的基本对称性 Basic Fourier Symmetries**：若定义 $\tau_af(x)=f(x-a)$、$M_bf(x)=e^{2\pi i b\cdot x}f(x)$，并令 $f_\lambda(x)=f(\lambda x)$（$\lambda\ne0$），则
> $$
> \widehat{\tau_af}(\xi)=e^{-2\pi i a\cdot\xi}\widehat f(\xi),
> \qquad
> \widehat{M_bf}(\xi)=\widehat f(\xi-b),
> $$
> $$
> \widehat{f_\lambda}(\xi)=|\lambda|^{-n}\widehat f(\xi/\lambda).
> $$
> 此外，对 $f\in\mathcal{S}(\mathbb{R}^n)$，有 $\widehat{\partial_jf}(\xi)=2\pi i\xi_j\widehat f(\xi)$ 与 $\widehat{x_jf}(\xi)=-(2\pi i)^{-1}\partial_{\xi_j}\widehat f(\xi)$。
>
> **证明思路**：前三式分别作变量平移、合并指数和线性变量替换；后二式分别作积分分部和在积分号下求导。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 1；Gerald B. Folland, *Real Analysis*, 2nd ed., Chapter 8。
