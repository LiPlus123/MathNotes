# Gamma 函数

## Gamma 函数的定义与基本表示

<!-- gamma_euler_integral_definition -->
> [!Definition]
> **Gamma 函数的 Euler 积分 Euler Integral of the Gamma Function**：当 $\operatorname{Re}z>0$ 时，定义
> $$
> \Gamma(z)=\int_0^\infty t^{z-1}e^{-t}\,dt.
> $$
> 该积分在半平面 $\operatorname{Re}z>0$ 上绝对收敛，并且定义了一个全纯函数。

<!-- gamma_functional_equation -->
> [!Theorem]
> **Gamma 函数方程 Functional Equation of the Gamma Function**：对 $\operatorname{Re}z>0$，有
> $$
> \Gamma(z+1)=z\Gamma(z),\qquad \Gamma(1)=1.
> $$
> 因此 Gamma 函数可唯一解析延拓为整个复平面上的亚纯函数，其极点为 $0,-1,-2,\ldots$，且均为单极点，留数满足
> $$
> \operatorname{Res}(\Gamma,-n)=\frac{(-1)^n}{n!}.
> $$
>
> **证明思路**：对 Euler 积分分部积分得到函数方程；利用函数方程逐步向左延拓，并由局部表达式确定极点和留数。

<!-- gamma_weierstrass_product -->
> [!Theorem]
> **Gamma 函数的 Weierstrass 乘积 Weierstrass Product for the Gamma Function**：对任意 $z\in\mathbb{C}$，有
> $$
> \frac1{\Gamma(z)}=ze^{\gamma z}\prod_{n=1}^{\infty}\left(1+\frac zn\right)e^{-z/n},
> $$
> 其中 $\gamma$ 为 Euler-Mascheroni 常数。该乘积在紧集上一致收敛，说明 $1/\Gamma$ 是整函数。
>
> **证明思路**：先由有限乘积和 Gamma 函数的极限表示得到部分积，再取极限；一致收敛由 Weierstrass 初等因子估计保证。

<!-- gamma_gauss_limit_formula -->
> [!Theorem]
> **Gamma 函数的 Gauss 极限 Gauss Limit Formula**：当 $z$ 不为 $0,-1,-2,\ldots$ 时，
> $$
> \Gamma(z)=\lim_{n\to\infty}\frac{n!\,n^z}{z(z+1)\cdots(z+n)}.
> $$
>
> **证明思路**：将 Euler 积分与 Beta 积分结合，先得到有限参数表达式，再令参数趋于无穷并使用一致估计。

## 反射、倍元与渐近展开

<!-- gamma_reflection_formula -->
> [!Theorem]
> **Gamma 函数的反射公式 Reflection Formula for the Gamma Function**：若 $z\notin\mathbb{Z}$，则
> $$
> \Gamma(z)\Gamma(1-z)=\frac{\pi}{\sin\pi z}.
> $$
>
> **证明思路**：比较 $1/\Gamma(z)$ 的整函数乘积与 $\sin\pi z$ 的乘积展开，或使用 Beta 积分与留数计算。

<!-- gamma_legendre_duplication_formula -->
> [!Theorem]
> **Legendre 倍元公式 Legendre Duplication Formula**：对任意 $z\in\mathbb{C}$，经亚纯延拓后有
> $$
> \Gamma(z)\Gamma\left(z+\frac12\right)=2^{1-2z}\sqrt{\pi}\,\Gamma(2z).
> $$
>
> **证明思路**：将 Beta 函数积分中的变量作三角代换，或比较两侧的极点、函数方程和归一化值。

<!-- gamma_stirling_formula -->
> [!Theorem]
> **Gamma 函数的 Stirling 公式 Stirling Formula for the Gamma Function**：在任意固定的扇形 $|\arg z|\le\pi-\delta$（$\delta>0$）内，当 $|z|\to\infty$ 时，
> $$
> \Gamma(z)=\sqrt{2\pi}\,z^{z-\frac12}e^{-z}\left(1+O\left(\frac1z\right)\right).
> $$
> 更精细地，存在渐近展开
> $$
> \log\Gamma(z)\sim\left(z-\frac12\right)\log z-z+\frac12\log(2\pi)+\sum_{k=1}^{\infty}\frac{B_{2k}}{2k(2k-1)z^{2k-1}}.
> $$
>
> **证明思路**：对 $\log\Gamma$ 的积分表示应用 Euler-Maclaurin 公式，或对 Euler 积分使用 Laplace 方法。

## Gamma 函数的零点与极点

<!-- gamma_zero_pole_distribution -->
> [!Theorem]
> **Gamma 函数的零极点分布 Zeros and Poles of the Gamma Function**：Gamma 函数本身没有零点；它在
> $$
> 0,-1,-2,\ldots
> $$
> 处有且仅有单极点。相应地，$1/\Gamma(z)$ 是整函数，其零点恰为这些点，且均为单零点。
>
> **证明思路**：Euler 积分在右半平面内不为零，函数方程向左延拓；Weierstrass 乘积直接给出 $1/\Gamma$ 的零点及其重数。

> **注**：Gamma 函数的经典理论参见 E. T. Whittaker and G. N. Watson, *A Course of Modern Analysis*, Chapter XII，以及 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 5。
