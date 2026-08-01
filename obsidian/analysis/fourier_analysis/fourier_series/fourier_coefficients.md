# 傅里叶系数

## 实形式与复形式

<!-- real_fourier_coefficients_definition -->
> [!Definition]
> **实形式傅里叶系数 Real Fourier Coefficients**：设 $f\in L^1([ -\pi,\pi])$，并将其作 $2\pi$-周期延拓。定义
> $$
> a_n=\frac{1}{\pi}\int_{-\pi}^{\pi}f(x)\cos(nx)\,dx\quad(n\geq0),
> $$
> 以及
> $$
> b_n=\frac{1}{\pi}\int_{-\pi}^{\pi}f(x)\sin(nx)\,dx\quad(n\geq1).
> $$
> 数列 $(a_n)$、$(b_n)$ 分别称为 $f$ 的余弦傅里叶系数与正弦傅里叶系数；由它们构成的三角级数称为 $f$ 的傅里叶级数。

<!-- complex_fourier_series_definition -->
> [!Definition]
> **复形式傅里叶级数 Complex Fourier Series**：设 $f\in L^1([ -\pi,\pi])$。其第 $n$ 个 Fourier 系数为
> $$
> \widehat f(n)=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(x)e^{-inx}\,dx,
> \qquad n\in\mathbb{Z}.
> $$
> $f$ 的复形式 Fourier 级数是
> $$
> \sum_{n\in\mathbb{Z}}\widehat f(n)e^{inx}.
> $$
> 对 $n\geq1$，实形式与复形式的系数关系为
> $$
> a_n=\widehat f(n)+\widehat f(-n),\qquad
> b_n=i\bigl(\widehat f(n)-\widehat f(-n)\bigr),
> $$
> 且 $a_0=2\widehat f(0)$。

<!-- fourier_coefficient_uniqueness -->
> [!Theorem]
> **傅里叶系数的唯一性 Uniqueness of Fourier Coefficients**：若 $f\in L^1([ -\pi,\pi])$ 且对每个 $n\in\mathbb{Z}$ 都有 $\widehat f(n)=0$，则 $f=0$ 几乎处处。因此，一个 $L^1$ 函数至多由其全部 Fourier 系数唯一确定至几乎处处相等。
>
> **证明思路**：先将 $f$ 与任意三角多项式配对，所得积分均为零；再利用 Fejér 核构成的逼近恒等元逼近连续函数，推出 $f$ 对所有连续测试函数的积分为零，故 $f=0$ 几乎处处。

## Bessel 不等式

<!-- bessel_inequality_for_fourier_coefficients -->
> [!Theorem]
> **Bessel 不等式 Bessel's Inequality**：若 $f\in L^2([ -\pi,\pi])$，则
> $$
> \sum_{n\in\mathbb{Z}}|\widehat f(n)|^2
> \leq\frac{1}{2\pi}\int_{-\pi}^{\pi}|f(x)|^2\,dx.
> $$
>
> **证明思路**：对有限集合 $E\subset\mathbb{Z}$，将 $f$ 正交分解为其在 $\operatorname{span}\{e_n:n\in E\}$ 上的正交投影和余项。勾股定理给出有限和不等式，再令 $E$ 递增穷尽 $\mathbb{Z}$。

> **注**：当三角函数系在 $L^2$ 中完备时，Bessel 不等式取等号，这就是 Parseval 恒等式。