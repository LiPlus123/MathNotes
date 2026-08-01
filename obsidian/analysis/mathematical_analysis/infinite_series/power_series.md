# 幂级数

<!-- real_analysis_power_series_definition -->
> [!Definition]
> **幂级数 Power Series**：以 $x_0\in\mathbb{R}$ 为中心、系数为 $(a_n)$ 的幂级数为
> $$
> \sum_{n=0}^\infty a_n(x-x_0)^n.
> $$
> 使其收敛的 $x$ 所成集合称为该幂级数的收敛域。

<!-- real_analysis_radius_of_convergence_theorem -->
> [!Theorem]
> **收敛半径定理 Radius of Convergence Theorem**：对任意幂级数，存在唯一的 $R\in[0,+\infty]$，使得当 $|x-x_0|<R$ 时绝对收敛，当 $|x-x_0|>R$ 时发散；在 $|x-x_0|=R$ 的边界点须逐点另行判别。
>
> **证明思路**：若级数在某个非中心点绝对收敛，则其在到中心距离更小的点可由几何级数比较；发散情形类似。

<!-- real_analysis_cauchy_hadamard_formula -->
> [!Theorem]
> **Cauchy-Hadamard 公式 Cauchy-Hadamard Formula**：幂级数的收敛半径满足
> $$
> \frac1R=\limsup_{n\to\infty}\sqrt[n]{|a_n|}.
> $$
> 约定 $1/0=+\infty$、$1/(+\infty)=0$。
>
> **证明思路**：对固定 $x$ 将根值判别法应用于项 $a_n(x-x_0)^n$。

<!-- real_analysis_uniform_convergence_of_power_series -->
> [!Theorem]
> **幂级数的局部一致收敛 Local Uniform Convergence of Power Series**：若 $0<r<R$，则幂级数在闭区间 $[x_0-r,x_0+r]$ 上绝对且一致收敛。
>
> **证明思路**：取 $r<\rho<R$。由在 $x_0+\rho$ 处的绝对收敛，可将各项用常数倍的几何级数项 $(r/\rho)^n$ 控制，再用 M-判别法。

<!-- real_analysis_termwise_operations_on_power_series -->
> [!Theorem]
> **幂级数的逐项运算 Termwise Operations on Power Series**：在 $|x-x_0|<R$ 内，幂级数可逐项求导和逐项积分，且
> $$
> \left(\sum_{n=0}^\infty a_n(x-x_0)^n\right)'
> =\sum_{n=1}^\infty na_n(x-x_0)^{n-1},
> $$
> $$
> \int_{x_0}^x\sum_{n=0}^\infty a_n(t-x_0)^n\,\mathrm{d}t
> =\sum_{n=0}^\infty\frac{a_n}{n+1}(x-x_0)^{n+1}.
> $$
> 两个所得幂级数的收敛半径仍为 $R$。
>
> **证明思路**：在任意严格内含于收敛区间的闭区间上一致收敛，并对导数级数应用幂级数收敛半径公式与逐项积分、求导定理。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 8。