# 圆周上的 Fourier 级数

令 $\mathbb{T}=\mathbb{R}/(2\pi\mathbb{Z})$，并以归一化 Haar 测度 $dt$ 积分，故 $\int_{\mathbb{T}}1\,dt=1$。以下记 $e_n(t)=e^{int}$。

## 三角多项式与 Fourier 系数

<!-- circle_trigonometric_polynomial_definition -->
> [!Definition]
> **圆周上的三角多项式 Trigonometric Polynomial on the Circle**：形如
> $$
> P(t)=\sum_{|n|\leq N}c_ne_n(t),
> $$
> 其中 $N\in\mathbb{N}$ 且 $c_n\in\mathbb{C}$，的函数称为圆周 $\mathbb{T}$ 上的三角多项式。

<!-- circle_fourier_coefficient_definition -->
> [!Definition]
> **圆周上的 Fourier 系数 Fourier Coefficient on the Circle**：若 $f\in L^1(\mathbb{T})$，则其第 $n$ 个 Fourier 系数定义为
> $$
> \widehat f(n)=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(t)e^{-int}\,dt,
> \qquad n\in\mathbb{Z}.
> $$
> 相应的第 $N$ 个对称部分和为 $S_Nf(t)=\sum_{|n|\leq N}\widehat f(n)e_n(t)$。

<!-- circle_exponential_orthogonality -->
> [!Theorem]
> **圆周指数系的正交性 Orthogonality of Circle Exponentials**：对任意 $m,n\in\mathbb{Z}$，有
> $$
> \int_{\mathbb{T}}e_m(t)\overline{e_n(t)}\,dt=\delta_{mn}.
> $$
> 因而 $(e_n)_{n\in\mathbb{Z}}$ 是 $L^2(\mathbb{T})$ 中的标准正交系。
>
> **证明思路**：当 $m=n$ 时被积函数恒为 $1$；否则其为非平凡角色，在一个周期上的积分为零。

<!-- circle_parseval_identity -->
> [!Theorem]
> **Parseval 恒等式 Parseval Identity**：对任意 $f\in L^2(\mathbb{T})$，有
> $$
> \|f\|_2^2=\sum_{n\in\mathbb{Z}}|\widehat f(n)|^2.
> $$
> 且 $S_Nf\to f$ 于 $L^2(\mathbb{T})$ 中。
>
> **证明思路**：Stone-Weierstrass 定理表明三角多项式在 $C(\mathbb{T})$ 中稠密，进而在 $L^2(\mathbb{T})$ 中稠密；故指数正交系完备。对该完备正交系应用 Hilbert 空间的一般 Parseval 恒等式，即得结论。

## Dirichlet 核与 Fejer 核

<!-- circle_dirichlet_kernel_definition -->
> [!Definition]
> **Dirichlet 核 Dirichlet Kernel**：第 $N$ 个 Dirichlet 核定义为
> $$
> D_N(t)=\sum_{|n|\leq N}e^{int}
> =\frac{\sin((N+\tfrac12)t)}{\sin(t/2)}
> $$
> （在 $t\in\mathbb{Z}$ 处取连续延拓）。它满足 $S_Nf=f*D_N$，其中圆周卷积为 $(f*g)(t)=\int_{\mathbb{T}}f(t-s)g(s)\,ds$。

<!-- circle_fejer_kernel_definition -->
> [!Definition]
> **Fejer 核 Fejer Kernel**：第 $N$ 个 Fejer 核定义为
> $$
> F_N(t)=\frac{1}{N+1}\sum_{k=0}^{N}D_k(t)
> =\frac{1}{N+1}\left(\frac{\sin((N+1)t/2)}{\sin(t/2)}\right)^2.
> $$
> 它满足 $F_N\geq0$ 及 $\int_{\mathbb{T}}F_N(t)\,dt=1$。

<!-- fejer_summation_theorem_circle -->
> [!Theorem]
> **Fejer 求和定理 Fejer Summation Theorem**：若 $f\in C(\mathbb{T})$，则其 Cesaro 平均
> $$
> \sigma_Nf=\frac{1}{N+1}\sum_{k=0}^{N}S_kf=f*F_N
> $$
> 一致收敛到 $f$。更一般地，对 $f\in L^p(\mathbb{T})$，$1\leq p<+\infty$，有 $\sigma_Nf\to f$ 于 $L^p$ 中。
>
> **证明思路**：$(F_N)$ 是正的逼近恒等元。将卷积误差分为原点附近和远离原点的部分：前者由平移连续性控制，后者由 $F_N$ 在任何远离原点的闭集上一致趋于零控制。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapters 1--2；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapter 3。
