# Fourier 级数的收敛性理论

本节仍在 $\mathbb{T}=\mathbb{R}/(2\pi\mathbb{Z})$ 上使用归一化 Haar 测度，并记 $S_Nf=f*D_N$。

## 部分和的限制

<!-- dirichlet_kernel_l1_unboundedness -->
> [!Theorem]
> **Dirichlet 核的 $L^1$ 无界性 $L^1$ Unboundedness of Dirichlet Kernels**：存在常数 $c>0$，使对一切 $N\geq2$，
> $$
> \|D_N\|_{L^1(\mathbb{T})}\geq c\log N.
> $$
> 因而部分和算子 $S_N:C(\mathbb{T})\to C(\mathbb{T})$ 的算子范数无界，不能由一般的逼近恒等元论证保证 Fourier 部分和对每个连续函数收敛。
>
> **证明思路**：利用 $D_N(t)=\sin((2N+1)\pi t)/\sin(\pi t)$，在 $t=0$ 附近按正弦函数的半周期分割积分；分母贡献调和级数下界。

<!-- circle_riemann_lebesgue_lemma -->
> [!Theorem]
> **圆周 Riemann-Lebesgue 引理 Riemann-Lebesgue Lemma on the Circle**：若 $f\in L^1(\mathbb{T})$，则
> $$
> \widehat f(n)\longrightarrow0
> \qquad (|n|\to\infty).
> $$
>
> **证明思路**：三角多项式在 $L^1(\mathbb{T})$ 中稠密，且 Fourier 系数泛函满足 $|\widehat f(n)|\leq\|f\|_1$。先对三角多项式成立，再用密度逼近。

## 逐点收敛与发散

<!-- dirichlet_jordan_convergence_criterion -->
> [!Theorem]
> **Dirichlet-Jordan 判别法 Dirichlet-Jordan Criterion**：若 $f\in L^1(\mathbb{T})$ 且在 $t_0$ 的一个邻域内有界变差，则
> $$
> S_Nf(t_0)\longrightarrow\frac{f(t_0-)+f(t_0+)}{2}.
> $$
> 特别地，在连续点处极限为 $f(t_0)$。
>
> **证明思路**：将 Dirichlet 核卷积配对为对称差商的振荡积分。局部有界变差保证该差商满足 Dirichlet 型积分判别条件；远离 $t_0$ 的部分由 Riemann-Lebesgue 引理消失。

<!-- dini_lipschitz_criterion -->
> [!Theorem]
> **Dini-Lipschitz 判别法 Dini-Lipschitz Criterion**：设 $f\in C(\mathbb{T})$，并令 $\omega_f(h)=\sup_{|s-t|\leq h}|f(s)-f(t)|$。若
> $$
> \omega_f(h)\log\frac{1}{h}\longrightarrow0
> \qquad(h\to0^+),
> $$
> 则 $S_Nf\rightrightarrows f$。
>
> **证明思路**：用 Dirichlet 核表示误差，并按 $|t|\lesssim N^{-1}$ 与其补集拆分；Dini-Lipschitz 条件恰好抵消 $\|D_N\|_1$ 的对数增长。

<!-- fourier_series_localization_principle -->
> [!Theorem]
> **局部化原理 Localization Principle**：若 $f,g\in L^1(\mathbb{T})$ 且在 $t_0$ 的某邻域内几乎处处相等，则
> $$
> S_Nf(t_0)-S_Ng(t_0)\longrightarrow0.
> $$
>
> **证明思路**：令 $h=f-g$。其支撑与 $t_0$ 保持正距离，故卷积核中的分母远离零；将积分化为有限个 Fourier 系数并使用 Riemann-Lebesgue 引理。

<!-- kolmogorov_divergence_theorem -->
> [!Theorem]
> **Kolmogorov 发散定理 Kolmogorov's Divergence Theorem**：存在 $f\in L^1(\mathbb{T})$，使其 Fourier 部分和 $S_Nf(t)$ 在几乎每一点发散。
>
> **证明思路**：构造频率块彼此分离的可积函数，使相应部分和在越来越大的集合上具有大振幅；以精细的集合估计累积这些振幅，得到几乎处处发散。

<!-- carleson_hunt_theorem -->
> [!Theorem]
> **Carleson-Hunt 定理 Carleson-Hunt Theorem**：若 $1<p<+\infty$ 且 $f\in L^p(\mathbb{T})$，则
> $$
> \sup_{N\geq0}|S_Nf|\in L^p(\mathbb{T}),
> $$
> 并且 $S_Nf(t)\to f(t)$ 几乎处处。
>
> **证明思路**：Carleson 算子的 $L^p$ 有界性给出极大函数估计。先对三角多项式验证收敛，再由其在 $L^p$ 中的稠密性及极大算子控制推广。

<!-- gibbs_phenomenon_definition -->
> [!Definition]
> **Gibbs 现象 Gibbs Phenomenon**：若 $f$ 在 $t_0$ 有跳跃，其跳跃大小为 $J=f(t_0+)-f(t_0-)$，则 Fourier 部分和在距 $t_0$ 约为 $N^{-1}$ 的区域出现不随 $N$ 消失的过冲和欠冲；其极限过冲比例为 $J$ 的约 $0.08949$。

## 正则化求和

<!-- fejer_cesaro_summability_theorem -->
> [!Theorem]
> **Fejer 均值的 Cesaro 可求和性 Cesaro Summability by Fejer Means**：对 $f\in L^1(\mathbb{T})$，Fejer 均值 $\sigma_Nf=f*F_N$ 在每个 Lebesgue 点收敛到 $f$；若 $f\in C(\mathbb{T})$，则一致收敛。
>
> **证明思路**：$F_N$ 非负、积分为 $1$，且远离 $0$ 的质量趋于零，故构成逼近恒等元。

<!-- circle_poisson_kernel_abel_summation -->
> [!Theorem]
> **Poisson 核与 Abel 求和 Poisson Kernel and Abel Summation**：对 $0<r<1$，令
> $$
> P_r(t)=\sum_{n\in\mathbb{Z}}r^{|n|}e^{int}
> =\frac{1-r^2}{1-2r\cos t+r^2}.
> $$
> 则 $P_r\geq0$、$\int_{\mathbb{T}}P_r\,dt=1$，且对 $f\in L^1(\mathbb{T})$，Abel 平均
> $$
> A_rf=f*P_r=\sum_{n\in\mathbb{Z}}r^{|n|}\widehat f(n)e_n
> $$
> 在每个 Lebesgue 点于 $r\to1^-$ 时收敛到 $f$。
>
> **证明思路**：Poisson 核是正的逼近恒等元；其 Fourier 展开由几何级数求和得到，随后应用逼近恒等元收敛定理。

> **来源**：Antoni Zygmund, *Trigonometric Series*, Vol. I, Chapters I--III；Loukas Grafakos, *Classical Fourier Analysis*, 3rd ed., Chapters 3--4。
