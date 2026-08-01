# 傅里叶级数的收敛性

## 部分和与核

<!-- fourier_partial_sum_definition -->
> [!Definition]
> **傅里叶部分和 Fourier Partial Sum**：设 $f\in L^1([ -\pi,\pi])$。其 Fourier 级数的第 $N$ 个对称部分和定义为
> $$
> S_Nf(x)=\sum_{n=-N}^{N}\widehat f(n)e^{inx}.
> $$
> 它可写为卷积型积分
> $$
> S_Nf(x)=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(x-t)D_N(t)\,dt.
> $$

<!-- dirichlet_kernel_formula -->
> [!Proposition]
> **Dirichlet 核公式 Dirichlet Kernel Formula**：对 $t\notin2\pi\mathbb{Z}$，有
> $$
> D_N(t)=\frac{\sin\bigl((N+\tfrac12)t\bigr)}{\sin(t/2)}.
> $$
> 且 $D_N$ 是偶函数，并满足
> $$
> \frac{1}{2\pi}\int_{-\pi}^{\pi}D_N(t)\,dt=1.
> $$
>
> **证明思路**：将有限几何级数 $\sum_{n=-N}^{N}e^{int}$ 求和，再提取相位因子得到正弦之比；积分恒等式来自 $D_N$ 的常数 Fourier 系数为 $1$。

<!-- riemann_lebesgue_lemma_periodic -->
> [!Theorem]
> **Riemann-Lebesgue 引理 Riemann-Lebesgue Lemma**：若 $f\in L^1([ -\pi,\pi])$，则
> $$
> \lim_{|n|\to\infty}\widehat f(n)=0.
> $$
>
> **证明思路**：先对三角多项式验证结论，再由三角多项式在 $L^1$ 中稠密及 $|\widehat f(n)|\leq\|f\|_1/(2\pi)$，将结论推广到一般 $f$。

## 点态收敛与局部化

<!-- dirichlet_convergence_theorem -->
> [!Theorem]
> **Dirichlet 收敛定理 Dirichlet Convergence Theorem**：设 $f$ 是 $2\pi$-周期函数，且在 $x_0$ 的某邻域内分段 $C^1$。若 $f(x_0-)$ 与 $f(x_0+)$ 存在，则
> $$
> \lim_{N\to\infty}S_Nf(x_0)
> =\frac{f(x_0-)+f(x_0+)}{2}.
> $$
> 特别地，若 $f$ 在 $x_0$ 连续，则 $S_Nf(x_0)\to f(x_0)$。
>
> **证明思路**：使用 Dirichlet 核表示，将 $S_Nf(x_0)$ 改写成含 $f(x_0+t)+f(x_0-t)-f(x_0+)-f(x_0-)$ 的振荡积分。局部正则性使该差商可积，随后以 Dirichlet 判别法证明振荡项趋于零。

<!-- localization_theorem -->
> [!Theorem]
> **局部化定理 Localization Theorem**：设 $f,g\in L^1([ -\pi,\pi])$，并且 $f=g$ 几乎处处于 $x_0$ 的一个邻域。则
> $$
> \lim_{N\to\infty}\bigl(S_Nf(x_0)-S_Ng(x_0)\bigr)=0.
> $$
> 因而 Fourier 部分和在一点的收敛行为只取决于函数在该点任意小邻域内的取值。
>
> **证明思路**：令 $h=f-g$，则 $h$ 在 $x_0$ 附近为零。Dirichlet 核积分只在远离奇点的区域保留，此处 $1/\sin(t/2)$ 有界；Riemann-Lebesgue 引理使余下的振荡积分趋于零。

<!-- fejer_kernel_definition -->
> [!Definition]
> **Fejér 核 Fejér Kernel**：第 $N$ 个 Fejér 核定义为
> $$
> F_N(t)=\frac{1}{N+1}\sum_{k=0}^{N}D_k(t)
> =\frac{1}{N+1}\left(\frac{\sin\bigl((N+1)t/2\bigr)}{\sin(t/2)}\right)^2
> $$
> （在 $t\in2\pi\mathbb{Z}$ 处取连续延拓值）。它满足 $F_N\geq0$ 与
> $$
> \frac{1}{2\pi}\int_{-\pi}^{\pi}F_N(t)\,dt=1.
> $$