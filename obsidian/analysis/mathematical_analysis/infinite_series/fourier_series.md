# Fourier 级数

<!-- real_analysis_fourier_series_definition -->
> [!Definition]
> **Fourier 级数 Fourier Series**：设 $f$ 为定义在 $[-\pi,\pi]$ 上的可积函数，并作 $2\pi$-周期延拓。其 Fourier 系数定义为
> $$
> a_0=\frac1\pi\int_{-\pi}^{\pi}f(x)\,\mathrm{d}x,
> \qquad
> a_n=\frac1\pi\int_{-\pi}^{\pi}f(x)\cos nx\,\mathrm{d}x,
> $$
> $$
> b_n=\frac1\pi\int_{-\pi}^{\pi}f(x)\sin nx\,\mathrm{d}x\quad(n\geq1).
> $$
> 由这些系数构成的三角级数称为 $f$ 的 Fourier 级数。

<!-- real_analysis_fourier_coefficient_derivation -->
> [!Theorem]
> **Fourier 系数的推导 Derivation of Fourier Coefficients**：若三角级数绝对一致收敛到 $f$，则其系数必为上述 Fourier 系数。
>
> **证明思路**：将级数逐项乘以 $\cos mx$ 或 $\sin mx$ 后积分；绝对一致收敛允许逐项积分，三角函数系的正交性消去其余项。

<!-- real_analysis_fourier_series_uniqueness -->
> [!Theorem]
> **Fourier 级数的唯一性 Uniqueness of Fourier Series**：在绝对一致收敛的三角级数类中，表示给定函数 $f$ 的三角级数系数唯一。
>
> **证明思路**：若有两种表示，取其差并应用 Fourier 系数推导，得到全部差系数为零。

<!-- real_analysis_dirichlet_condition_for_fourier_convergence -->
> [!Theorem]
> **Fourier 级数的 Dirichlet 收敛条件 Dirichlet Convergence Condition**：设 $f$ 为 $2\pi$-周期函数，在一个周期内分段光滑，且在每点具有左右极限。则其 Fourier 级数在每个 $x$ 收敛到
> $$
> \frac{f(x-)+f(x+)}2.
> $$
> 特别地，在连续点收敛到 $f(x)$。
>
> **证明思路**：借助 Dirichlet 核表示 Fourier 部分和，并利用函数在一点附近的单侧正则性控制振荡积分。

> **注**：本小节只介绍 Fourier 展开的基本概念；更精细的收敛理论见本库 Fourier 分析部分。参见 Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 11。