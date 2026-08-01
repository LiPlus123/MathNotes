# 复幂级数

## 收敛半径

<!-- complex_power_series_definition -->
> [!Definition]
> **复幂级数 Complex Power Series**：给定复数列 $(a_n)_{n\ge0}$ 和中心 $z_0\in\mathbb{C}$，形式级数
> $$
> \sum_{n=0}^{\infty}a_n(z-z_0)^n
> $$
> 称为以 $z_0$ 为中心的复幂级数。对每个 $z$，其收敛性指复数项级数的通常收敛性。

<!-- complex_power_series_radius -->
> [!Theorem]
> **复幂级数的收敛半径 Radius of Convergence**：存在唯一的 $R\in[0,\infty]$，使得
> 1. 当 $|z-z_0|<R$ 时，级数绝对收敛；
> 2. 当 $|z-z_0|>R$ 时，级数发散；
> 3. 当 $|z-z_0|=R$ 时，需单独判断。
>
> 开圆盘 $B(z_0,R)$ 称为收敛圆盘，$R$ 称为收敛半径。
>
> **证明思路**：若级数在一点 $z_1$ 收敛，则 $a_n(z_1-z_0)^n\to0$，从而对更近的点使用比较判别法；若在一点发散，则对更远的点使用项不趋于零。由此收敛区域必为以 $z_0$ 为中心的圆盘。

<!-- cauchy_hadamard_formula -->
> [!Theorem]
> **Cauchy-Hadamard 公式 Cauchy-Hadamard Formula**：复幂级数的收敛半径满足
> $$
> \frac1R=\limsup_{n\to\infty}|a_n|^{1/n},
> $$
> 其中约定 $1/0=\infty$、$1/\infty=0$。
>
> **证明思路**：把 $a_n(z-z_0)^n$ 看作数项级数，应用 Cauchy 根值判别法。

<!-- complex_power_series_boundary -->
> [!Example]+
> **收敛圆周的边界行为 Boundary Behavior**：当 $R<\infty$ 时，收敛圆周 $|z-z_0|=R$ 上的行为不能仅由收敛半径决定。例如
> $$
> \sum_{n=1}^{\infty}\frac{(z-z_0)^n}{n^2R^n}
> $$
> 在整个闭圆盘上绝对收敛，而
> $$
> \sum_{n=0}^{\infty}\frac{(z-z_0)^n}{R^n}
> $$
> 在收敛圆周上的每一点都发散。

## 收敛圆盘内的性质

<!-- complex_power_series_uniform_convergence -->
> [!Theorem]
> **收敛圆盘内的一致收敛 Uniform Convergence inside the Disk**：若
> $$
> f(z)=\sum_{n=0}^{\infty}a_n(z-z_0)^n
> $$
> 的收敛半径为 $R$，则对任意 $0<r<R$，该级数在闭圆盘 $\overline{B(z_0,r)}$ 上一致且绝对收敛。因此它在 $B(z_0,R)$ 的每个紧子集上一致收敛。
>
> **证明思路**：当 $|z-z_0|\le r$ 时，$|a_n(z-z_0)^n|\le|a_n|r^n$；右侧数项级数收敛，应用 Weierstrass $M$-判别法。

<!-- complex_power_series_continuity -->
> [!Theorem]
> **幂级数和函数的连续性 Continuity of the Sum**：复幂级数的和函数在收敛圆盘内全纯，特别连续。其在任意严格内缩的闭圆盘上可由部分和一致逼近。
>
> **证明思路**：部分和是多项式，在紧子集上一致收敛；一致极限保持连续性。全纯性由逐项求导定理得到。

<!-- complex_power_series_termwise_differentiation -->
> [!Theorem]
> **幂级数逐项求导 Term-by-Term Differentiation of Power Series**：若 $f(z)=\sum_{n=0}^{\infty}a_n(z-z_0)^n$ 的收敛半径为 $R$，则在 $|z-z_0|<R$ 内
> $$
> f'(z)=\sum_{n=1}^{\infty}na_n(z-z_0)^{n-1},
> $$
> 且导数级数的收敛半径仍为 $R$。

<!-- complex_power_series_termwise_integration -->
> [!Theorem]
> **幂级数逐项积分 Term-by-Term Integration of Power Series**：在 $|z-z_0|<R$ 内，若 $\gamma$ 是收敛圆盘中的分段光滑曲线，则
> $$
> \int_\gamma f(z)\,dz
> =\sum_{n=0}^{\infty}a_n\int_\gamma(z-z_0)^n\,dz.
> $$
> 并且原函数可取为
> $$
> F(z)=C+\sum_{n=0}^{\infty}\frac{a_n}{n+1}(z-z_0)^{n+1}.
> $$
>
> **证明思路**：在曲线像所在的紧集上使用一致收敛，交换级数与线积分；逐项求导验证 $F'=f$。

> **注**：复幂级数的收敛理论参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 5。
