# 解析函数序列的一致收敛

## 内闭一致收敛

<!-- locally_uniform_convergence_definition -->
> [!Definition]
> **内闭一致收敛 Locally Uniform Convergence**：设 $D\subseteq\mathbb{C}$ 为开集，函数列 $f_n:D\to\mathbb{C}$ 收敛到 $f:D\to\mathbb{C}$。若对每个紧集 $K\subseteq D$，都有
> $$
> \sup_{z\in K}|f_n(z)-f(z)|\longrightarrow0,
> $$
> 则称 $f_n$ 在 $D$ 上内闭一致收敛，也称局部一致收敛。

<!-- weierstrass_analytic_convergence_theorem -->
> [!Theorem]
> **Weierstrass 一致收敛定理 Weierstrass Theorem**：若 $D$ 是区域，$f_n$ 在 $D$ 上全纯，且 $f_n$ 在 $D$ 上内闭一致收敛到 $f$，则 $f$ 在 $D$ 上全纯。
>
> **证明思路**：对任意三角形 $\Delta$，其内部与边界是紧集。由一致收敛可将极限与边界线积分交换，于是
> $$
> \int_{\partial\Delta}f(z)\,dz
> =\lim_{n\to\infty}\int_{\partial\Delta}f_n(z)\,dz=0.
> $$
> 再由 Morera 定理得到 $f$ 全纯。

<!-- locally_uniform_preserves_continuity -->
> [!Theorem]
> **内闭一致收敛保持连续性 Local Uniform Limits Preserve Continuity**：若连续函数列 $f_n$ 在 $D$ 上内闭一致收敛到 $f$，则 $f$ 连续。特别地，Weierstrass 定理中的极限函数不仅全纯，而且连续。

## 逐项求导

<!-- locally_uniform_derivative_convergence -->
> [!Theorem]
> **解析函数序列的逐项求导 Term-by-Term Differentiation**：设 $f_n$ 在区域 $D$ 上全纯，并且 $f_n$ 在 $D$ 上内闭一致收敛到 $f$。若导数列 $f_n'$ 在 $D$ 上内闭一致收敛到 $g$，则
> $$
> f'=g.
> $$
> 因而
> $$
> \lim_{n\to\infty}f_n'(z)=f'(z)
> $$
> 在每个紧集上一致成立。
>
> **证明思路**：对任意小圆盘应用 Cauchy 积分公式
> $$
> f_n'(z)=\frac1{2\pi i}\int_{|\zeta-z|=\rho}\frac{f_n(\zeta)}{(\zeta-z)^2}\,d\zeta.
> $$
> 内闭一致收敛允许极限与积分交换，得到导数的局部一致收敛；这也说明在本定理的全纯函数条件下，导数列的局部一致收敛事实上可由函数列的局部一致收敛推出。

<!-- derivative_series_convergence -->
> [!Theorem]
> **逐项求导的标准形式 Standard Term-by-Term Differentiation Theorem**：若 $f_n$ 在区域 $D$ 上全纯，且存在一点 $z_0\in D$ 使级数 $\sum_{n=1}^{\infty}f_n'(z_0)$ 收敛，并且级数 $\sum_{n=1}^{\infty}f_n'$ 在 $D$ 上内闭一致收敛，则 $\sum_{n=1}^{\infty}f_n$ 在每个紧集上一致收敛，并且
> $$
> \left(\sum_{n=1}^{\infty}f_n\right)'=\sum_{n=1}^{\infty}f_n'.
> $$
>
> **证明思路**：先在固定点 $z_0$ 处分离常数项，再沿连接 $z_0$ 与 $z$ 的曲线积分导数级数；局部一致收敛保证逐项积分，从而得到函数级数的收敛及导数公式。

<!-- weierstrass_m_test_for_holomorphic_series -->
> [!Theorem]
> **Weierstrass $M$-判别法在全纯级数中的应用 Weierstrass M-Test**：若 $f_n$ 在 $D$ 上全纯，且对每个紧集 $K\subseteq D$ 存在数列 $M_n(K)\ge0$，满足
> $$
> |f_n(z)|\le M_n(K)\quad(z\in K),
> $$
> $$
> \sum_{n=1}^{\infty}M_n(K)<\infty,
> $$
> 则 $\sum f_n$ 在 $D$ 上内闭一致收敛，因而其和函数全纯。
>
> **证明思路**：在每个紧集上应用数项级数的 $M$-判别法，再使用 Weierstrass 一致收敛定理。

> **注**：解析函数序列的一致收敛及逐项求导定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
