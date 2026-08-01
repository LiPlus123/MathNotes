# Poisson 求和公式

## Poisson 求和公式

<!-- poisson_summation_formula -->
> [!Theorem]
> **Poisson 求和公式 Poisson Summation Formula**：若 $f\in\mathcal{S}(\mathbb{R}^n)$，则
> $$
> \sum_{k\in\mathbb{Z}^n}f(k)
> =\sum_{k\in\mathbb{Z}^n}\widehat f(k).
> $$
> 两侧级数都绝对收敛。更一般地，对 $a\in\mathbb{R}^n$，有
> $$
> \sum_{k\in\mathbb{Z}^n}f(k+a)
> =\sum_{m\in\mathbb{Z}^n}\widehat f(m)e^{2\pi i m\cdot a}.
> $$
>
> **证明思路**：将 $f$ 对晶格 $\mathbb{Z}^n$ 作周期化，得到光滑的 $\mathbb{Z}^n$-周期函数。计算其 Fourier 系数可知第 $m$ 个系数为 $\widehat f(m)$，再在 $a$ 处使用周期函数的 Fourier 级数展开。

<!-- poisson_summation_scaled_formula -->
> [!Corollary]
> **缩放 Poisson 求和公式 Scaled Poisson Summation Formula**：若 $f\in\mathcal{S}(\mathbb{R}^n)$ 且 $t>0$，则
> $$
> \sum_{k\in\mathbb{Z}^n}f(tk)
> =t^{-n}\sum_{m\in\mathbb{Z}^n}\widehat f(m/t).
> $$
>
> **证明思路**：对函数 $x\mapsto f(tx)$ 应用 Poisson 求和公式，再使用 Fourier 变换的缩放性质。

## Jacobi $\vartheta$ 函数

<!-- jacobi_theta_function_definition -->
> [!Definition]
> **Jacobi $\vartheta$ 函数 Jacobi Theta Function**：对 $t>0$，定义
> $$
> \vartheta(t)=\sum_{n\in\mathbb{Z}}e^{-\pi n^2t}.
> $$
> 该级数绝对收敛。

<!-- jacobi_theta_functional_equation -->
> [!Theorem]
> **Jacobi $\vartheta$ 函数的函数方程 Functional Equation of the Jacobi Theta Function**：对每个 $t>0$，有
> $$
> \vartheta(t)=t^{-1/2}\vartheta(1/t).
> $$
>
> **证明思路**：对 Gauss 函数 $f_t(x)=e^{-\pi t x^2}$ 使用 Poisson 求和公式。由 Gauss 函数的 Fourier 变换公式，$\widehat f_t(\xi)=t^{-1/2}e^{-\pi\xi^2/t}$，代入即得。

<!-- poisson_summation_lattice_values_example -->
> [!Example]+
> **晶格值求和 Lattice-Value Summation**：令 $f(x)=e^{-\pi x^2}$。Poisson 求和公式和 $\widehat f=f$ 给出
> $$
> \sum_{n\in\mathbb{Z}}e^{-\pi n^2}
> =\sum_{n\in\mathbb{Z}}e^{-\pi n^2}.
> $$
> 虽然此式本身是恒等式，但它揭示 Gauss 函数的自对偶性；引入缩放参数后便得到 $\vartheta$ 函数的非平凡函数方程。

> **来源**：Elias M. Stein and Rami Shakarchi, *Fourier Analysis: An Introduction*, Chapter 3；Henryk Iwaniec and Emmanuel Kowalski, *Analytic Number Theory*, Chapter 3。