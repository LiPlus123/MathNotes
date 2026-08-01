# 三角级数

## 三角多项式与三角级数

<!-- trigonometric_polynomial_definition -->
> [!Definition]
> **三角多项式 Trigonometric Polynomial**：对 $N\in\mathbb{N}$，形如
> $$
> T_N(x)=\frac{a_0}{2}+\sum_{n=1}^{N}\bigl(a_n\cos(nx)+b_n\sin(nx)\bigr),
> $$
> 其中 $a_0,a_n,b_n\in\mathbb{C}$，的 $2\pi$-周期函数称为次数至多为 $N$ 的三角多项式。全体这类三角多项式构成的向量空间记为 $\mathcal{T}_N$。

<!-- trigonometric_series_definition -->
> [!Definition]
> **三角级数 Trigonometric Series**：设 $(a_n)_{n\geq 0}$ 与 $(b_n)_{n\geq 1}$ 为复数列。形式表达式
> $$
> \frac{a_0}{2}+\sum_{n=1}^{\infty}\bigl(a_n\cos(nx)+b_n\sin(nx)\bigr)
> $$
> 称为三角级数；其第 $N$ 个部分和是相应的三角多项式 $T_N$。若 $T_N(x)$ 在某点 $x$ 收敛，则把该极限称为此三角级数在 $x$ 处的和。

## 三角函数系的正交性

<!-- trigonometric_system_orthogonality -->
> [!Theorem]
> **三角函数系的正交性 Orthogonality of the Trigonometric System**：在 $[-\pi,\pi]$ 上，对任意正整数 $m,n$，有
> $$
> \begin{align*}
> \frac{1}{\pi}\int_{-\pi}^{\pi}\cos(mx)\cos(nx)\,dx&=\delta_{mn},\\
> \frac{1}{\pi}\int_{-\pi}^{\pi}\sin(mx)\sin(nx)\,dx&=\delta_{mn},\\
> \int_{-\pi}^{\pi}\sin(mx)\cos(nx)\,dx&=0.
> \end{align*}
> $$
> 此外，常函数 $1$ 与每个 $\sin(nx)$、$\cos(nx)$ 正交，且 $\int_{-\pi}^{\pi}1\,dx=2\pi$。
>
> **证明思路**：应用积化和差公式，把各积分化为整数频率正弦函数在一个完整周期上的积分；仅在频率相同的余弦或正弦乘积中保留常数项。

<!-- complex_exponential_orthogonality -->
> [!Theorem]
> **复指数函数系的正交性 Orthogonality of Complex Exponentials**：对任意 $m,n\in\mathbb{Z}$，复指数函数满足
> $$
> \frac{1}{2\pi}\int_{-\pi}^{\pi}e_m(x)\overline{e_n(x)}\,dx=\delta_{mn}.
> $$
> 因而 $\{e_n:n\in\mathbb{Z}\}$ 是 $L^2([ -\pi,\pi])$ 中的标准正交系，其中内积取为
> $$
> \langle f,g\rangle=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(x)\overline{g(x)}\,dx.
> $$
>
> **证明思路**：由 $e_m\overline{e_n}=e^{i(m-n)x}$，积分直接化为频率 $m-n$ 的指数函数在 $[-\pi,\pi]$ 上的积分；该积分在 $m=n$ 时为 $2\pi$，否则为零。

> **注**：本小节采用 $2\pi$-周期的归一化；三角多项式的密度与该正交系的完备性将在“傅里叶级数的 $L^2$ 理论”中讨论。