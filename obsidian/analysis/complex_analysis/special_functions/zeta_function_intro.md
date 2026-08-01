# Riemann zeta 函数初步

## 级数、积分与 Euler 乘积

<!-- zeta_dirichlet_series_definition -->
> [!Definition]
> **Riemann zeta 函数的 Dirichlet 级数 Dirichlet Series of the Riemann Zeta Function**：当 $\operatorname{Re}s>1$ 时，定义
> $$
> \zeta(s)=\sum_{n=1}^{\infty}\frac1{n^s}.
> $$
> 该级数在半平面 $\operatorname{Re}s>1$ 内绝对且局部一致收敛，因而定义全纯函数。

<!-- zeta_integral_representation -->
> [!Theorem]
> **zeta 函数的积分表示 Integral Representation of the Zeta Function**：当 $\operatorname{Re}s>1$ 时，
> $$
> \Gamma(s)\zeta(s)=\int_0^\infty\frac{t^{s-1}}{e^t-1}\,dt.
> $$
>
> **证明思路**：使用 $1/(e^t-1)=\sum_{n=1}^{\infty}e^{-nt}$，在绝对收敛区域内交换求和与积分，并对每一项应用 Gamma 积分。

<!-- zeta_euler_product -->
> [!Theorem]
> **zeta 函数的 Euler 乘积 Euler Product of the Zeta Function**：当 $\operatorname{Re}s>1$ 时，
> $$
> \zeta(s)=\prod_{p\ \mathrm{prime}}\frac1{1-p^{-s}}.
> $$
> 因此 zeta 函数在该半平面内没有零点。
>
> **证明思路**：展开每个几何因子并使用算术基本定理，将所有正整数唯一表示为素数幂的乘积；绝对收敛保证乘积与重排合法。

## 解析延拓与函数方程

<!-- zeta_meromorphic_continuation -->
> [!Theorem]
> **zeta 函数的解析延拓 Meromorphic Continuation of the Zeta Function**：zeta 函数可从 $\operatorname{Re}s>1$ 解析延拓为整个复平面上的亚纯函数，在 $s=1$ 处有一个留数为 $1$ 的单极点，除此之外没有极点。
>
> 一种延拓表达是交错级数
> $$
> \zeta(s)=\frac1{1-2^{1-s}}\sum_{n=1}^{\infty}\frac{(-1)^{n-1}}{n^s},
> $$
> 其中右侧先在 $\operatorname{Re}s>0$ 表示延拓，再继续处理分母的可去奇点。
>
> **证明思路**：对交错 Dirichlet 级数使用 Abel 分部求和得到半平面 $\operatorname{Re}s>0$ 的全纯延拓，并结合积分表示或 Euler-Maclaurin 公式继续延拓到全平面。

<!-- zeta_functional_equation -->
> [!Theorem]
> **zeta 函数的函数方程 Functional Equation of the Zeta Function**：定义完成 zeta 函数
> $$
> \xi(s)=\frac12s(s-1)\pi^{-s/2}\Gamma\left(\frac{s}{2}\right)\zeta(s).
> $$
> 则 $\xi$ 是整函数，并满足
> $$
> \xi(s)=\xi(1-s).
> $$
> 等价地，zeta 函数满足含 Gamma 因子的对称函数方程；其平凡零点位于负偶数
> $$
> s=-2,-4,-6,\ldots.
> $$
>
> **证明思路**：对 Jacobi theta 函数应用 Poisson 求和公式，利用 theta 变换关系对 Mellin 积分作对称化，再由解析延拓得到函数方程。

<!-- zeta_trivial_zeros -->
> [!Corollary]
> **zeta 函数的平凡零点 Trivial Zeros of the Zeta Function**：zeta 函数在负偶整数处为零；这些零点抵消函数方程中 Gamma 因子的极点。除这些零点外的零点称为非平凡零点，其分布属于解析数论的主题。
>
> **证明思路**：在函数方程中考察 $\Gamma(s/2)$ 在负偶整数附近的极点，并利用完成函数的全纯性。

<!-- zeta_special_values -->
> [!Example]+
> **zeta 函数的特殊值 Special Values of the Zeta Function**：由级数定义和解析延拓可得
> $$
> \zeta(0)=-\frac12,
> \qquad
> \zeta(-1)=-\frac1{12}.
> $$
> 这些等式中的负整数值不是由原 Dirichlet 级数逐项代入得到，而是由解析延拓定义。

> **注**：Riemann zeta 函数的初步理论参见 E. T. Whittaker and G. N. Watson, *A Course of Modern Analysis*, Chapter XIII；详细零点理论见解析数论相关章节。
