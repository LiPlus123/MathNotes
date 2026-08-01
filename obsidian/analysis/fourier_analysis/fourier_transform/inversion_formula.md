# 反演公式

## Fourier 反演

<!-- inverse_fourier_transform_definition -->
> [!Definition]
> **Fourier 反变换 Inverse Fourier Transform**：若 $g\in L^1(\mathbb{R}^n)$，定义其 Fourier 反变换为
> $$
> \mathcal{F}^{-1}g(x)=\int_{\mathbb{R}^n}g(\xi)e^{2\pi i x\cdot\xi}\,d\xi.
> $$

<!-- fourier_inversion_theorem_l1 -->
> [!Theorem]
> **Fourier 反演公式 Fourier Inversion Formula**：设 $f\in L^1(\mathbb{R}^n)$ 且 $\widehat f\in L^1(\mathbb{R}^n)$。则在 $f$ 的每个 Lebesgue 点 $x$，有
> $$
> f(x)=\int_{\mathbb{R}^n}\widehat f(\xi)e^{2\pi i x\cdot\xi}\,d\xi.
> $$
> 特别地，若 $f$ 连续，则该等式对每个 $x\in\mathbb{R}^n$ 成立。
>
> **证明思路**：以 Gauss 核构成逼近恒等元，并先对 $f$ 作平滑。利用 Fubini 定理将平滑后的函数写为其 Fourier 变换的反变换，最后令平滑参数趋于零并在 Lebesgue 点使用逼近恒等性。

<!-- fourier_duality_theorem -->
> [!Theorem]
> **Fourier 对偶性 Fourier Duality**：若 $f\in L^1(\mathbb{R}^n)$ 且 $\widehat f\in L^1(\mathbb{R}^n)$，则
> $$
> \widehat{\widehat f}(x)=f(-x).
> $$
> 等价地，Fourier 反变换满足
> $$
> \mathcal{F}^{-1}f(x)=\widehat f(-x).
> $$
>
> **证明思路**：对 $\widehat f$ 应用反演公式，并将变量替换为 $-x$。这也说明在当前归一化下，连续函数类上 $\mathcal{F}^2$ 是反射算子。

<!-- fourier_transform_injectivity -->
> [!Corollary]
> **Fourier 变换的单射性 Injectivity of the Fourier Transform**：若 $f\in L^1(\mathbb{R}^n)$ 且 $\widehat f=0$，则 $f=0$ 几乎处处。
>
> **证明思路**：可将 $f$ 与 Gauss 逼近恒等元卷积；卷积定理说明每个平滑函数的 Fourier 变换为零，故该平滑函数为零。再由逼近恒等性令参数趋于零。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 1。