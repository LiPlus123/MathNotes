# 卷积、逼近恒等式与 Poisson 求和

## Young 不等式与逼近恒等式

<!-- young_convolution_inequality -->
> [!Theorem]
> **Young 卷积不等式 Young's Convolution Inequality**：设 $1\leq p,q,r\leq+\infty$ 且
> $$
> 1+\frac{1}{r}=\frac{1}{p}+\frac{1}{q}.
> $$
> 若 $f\in L^p(\mathbb{R}^n)$、$g\in L^q(\mathbb{R}^n)$，则 $f*g\in L^r(\mathbb{R}^n)$ 且
> $$
> \|f*g\|_r\leq\|f\|_p\|g\|_q.
> $$
>
> **证明思路**：端点情形由 Tonelli-Fubini 定理和 Hölder 不等式得到；一般情形可由插值，或将被积函数适当分解后应用 Hölder 不等式证明。

<!-- approximation_identity_definition_euclidean -->
> [!Definition]
> **Euclidean 逼近恒等式 Approximation of Identity on Euclidean Space**：函数族 $(\phi_\varepsilon)_{\varepsilon>0}\subset L^1(\mathbb{R}^n)$ 称为逼近恒等式，若 $\sup_\varepsilon\|\phi_\varepsilon\|_1<+\infty$、$\int\phi_\varepsilon=1$，且对任意 $\delta>0$，
> $$
> \int_{|x|\geq\delta}|\phi_\varepsilon(x)|\,dx\longrightarrow0
> \qquad(\varepsilon\to0^+).
> $$

<!-- approximation_identity_convergence_euclidean -->
> [!Theorem]
> **逼近恒等式收敛定理 Approximate Identity Convergence Theorem**：若 $(\phi_\varepsilon)$ 是逼近恒等式，则对 $1\leq p<+\infty$ 和 $f\in L^p(\mathbb{R}^n)$，有
> $$
> \|f*\phi_\varepsilon-f\|_p\longrightarrow0.
> $$
> 若 $f$ 有界且一致连续，并且 $\|\phi_\varepsilon\|_1=1$，则收敛一致。
>
> **证明思路**：将误差表示成平移差 $f(\cdot-y)-f(\cdot)$ 的加权积分。小位移由平移连续性控制，远区由核质量消失与 Young 不等式控制。

## 热核、Poisson 核与周期化

<!-- euclidean_heat_kernel_definition -->
> [!Definition]
> **热核 Heat Kernel**：对 $t>0$，定义
> $$
> h_t(x)=(4\pi t)^{-n/2}e^{-|x|^2/(4t)}.
> $$
> 它满足 $\int_{\mathbb{R}^n}h_t\,dx=1$、$\widehat{h_t}(\xi)=e^{-4\pi^2t|\xi|^2}$，且 $(h_t)_{t>0}$ 是逼近恒等式。

<!-- upper_half_space_poisson_kernel -->
> [!Definition]
> **上半空间 Poisson 核 Poisson Kernel for the Upper Half-Space**：对 $y>0$，令
> $$
> P_y(x)=c_n\frac{y}{(y^2+|x|^2)^{(n+1)/2}},
> $$
> 其中 $c_n$ 唯一确定为 $\int_{\mathbb{R}^n}P_y(x)\,dx=1$。对 $f\in L^p(\mathbb{R}^n)$，$u(x,y)=(P_y*f)(x)$ 是上半空间中的调和延拓，并在 $y\to0^+$ 时收敛到 $f$ 于 $L^p$（$1\leq p<+\infty$）中。

<!-- periodization_definition -->
> [!Definition]
> **周期化 Periodization**：若 $f\in\mathcal{S}(\mathbb{R}^n)$，定义其相对于晶格 $\mathbb{Z}^n$ 的周期化为
> $$
> \operatorname{Per}f(x)=\sum_{k\in\mathbb{Z}^n}f(x+k).
> $$
> 该级数及其各阶导数一致收敛，并定义 $
> \mathbb{T}^n$ 上的光滑函数。

<!-- poisson_summation_formula_harmonic -->
> [!Theorem]
> **Poisson 求和公式 Poisson Summation Formula**：对 $f\in\mathcal{S}(\mathbb{R}^n)$，有
> $$
> \sum_{k\in\mathbb{Z}^n}f(k)=\sum_{m\in\mathbb{Z}^n}\widehat f(m).
> $$
>
> **证明思路**：对 $\operatorname{Per}f$ 计算圆环 $\mathbb{T}^n$ 上的 Fourier 系数，得到第 $m$ 个系数为 $\widehat f(m)$；在 $x=0$ 处使用其绝对收敛的 Fourier 展开。

<!-- jacobi_theta_function_definition_harmonic -->
> [!Definition]
> **Jacobi theta 函数 Jacobi Theta Function**：对 $t>0$，定义
> $$
> \vartheta(t)=\sum_{k\in\mathbb{Z}}e^{-\pi tk^2}.
> $$

<!-- jacobi_theta_functional_equation_harmonic -->
> [!Theorem]
> **theta 函数的函数方程 Theta Functional Equation**：对每个 $t>0$，
> $$
> \vartheta(t)=t^{-1/2}\vartheta(1/t).
> $$
>
> **证明思路**：将 Poisson 求和公式用于 $f_t(x)=e^{-\pi tx^2}$；直接计算得到 $\widehat f_t(\xi)=t^{-1/2}e^{-\pi\xi^2/t}$。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapters 1 and 3；Gerald B. Folland, *Real Analysis*, 2nd ed., Chapter 8。
