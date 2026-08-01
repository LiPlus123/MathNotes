# Cesàro 求和与 Abel 求和

## Cesàro 求和

<!-- cesaro_mean_definition -->
> [!Definition]
> **Cesàro 平均 Cesàro Mean**：设 $f\in L^1([ -\pi,\pi])$。其 Fourier 部分和的第 $N$ 个 Cesàro 平均定义为
> $$
> \sigma_Nf(x)=\frac{1}{N+1}\sum_{k=0}^{N}S_kf(x).
> $$
> 等价地，
> $$
> \sigma_Nf(x)=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(x-t)F_N(t)\,dt.
> $$

<!-- fejer_theorem -->
> [!Theorem]
> **Fejér 定理 Fejér's Theorem**：设 $f\in L^1([ -\pi,\pi])$，并作 $2\pi$-周期延拓。
>
> 1. 若 $f$ 在 $x_0$ 连续，则 $\sigma_Nf(x_0)\to f(x_0)$。
> 2. 若 $f$ 在 $x_0$ 的左右极限均存在，则
> $$
> \sigma_Nf(x_0)\to\frac{f(x_0-)+f(x_0+)}{2}.
> $$
> 3. 若 $f$ 连续，则 $\sigma_Nf\rightrightarrows f$。
>
> **证明思路**：Fejér 核非负、总质量为 $2\pi$，且其质量在 $N\to\infty$ 时集中到 $0$。将卷积积分分成 $0$ 的小邻域与其补集，分别用函数的连续性（或左右极限）及核在补集上的质量趋零处理。

## Abel 求和与 Poisson 核

<!-- abel_mean_definition -->
> [!Definition]
> **Abel 平均 Abel Mean**：对 $0\le r<1$，定义 $f$ 的 Fourier 级数的 Abel 平均为
> $$
> A_rf(x)=\sum_{n\in\mathbb{Z}}r^{|n|}\widehat f(n)e^{inx}.
> $$
> 该级数绝对收敛，并且满足 Poisson 积分表示
> $$
> A_rf(x)=\frac{1}{2\pi}\int_{-\pi}^{\pi}f(x-t)P_r(t)\,dt.
> $$

<!-- poisson_kernel_properties -->
> [!Proposition]
> **Poisson 核的性质 Properties of the Poisson Kernel**：对 $0\le r<1$，Poisson 核满足 $P_r(t)>0$、$P_r(-t)=P_r(t)$ 以及
> $$
> \frac{1}{2\pi}\int_{-\pi}^{\pi}P_r(t)\,dt=1.
> $$
> 对每个 $\delta\in(0,\pi)$，还有
> $$
> \lim_{r\to1^-}\sup_{\delta\leq|t|\leq\pi}P_r(t)=0.
> $$
>
> **证明思路**：由 Poisson 核的显式公式立即得到正性和偶性；利用其 Fourier 展开或留数计算积分。最后一个结论来自分母在 $|t|\geq\delta$ 上远离零。

<!-- abel_convergence_theorem -->
> [!Theorem]
> **Abel 收敛定理 Abel Convergence Theorem**：设 $f\in L^1([ -\pi,\pi])$。若 $f$ 在 $x_0$ 连续，则
> $$
> \lim_{r\to1^-}A_rf(x_0)=f(x_0).
> $$
> 若 $f$ 在 $x_0$ 的左右极限存在，则极限等于这两个极限的平均。特别地，对连续 $f$，$A_rf\rightrightarrows f$。
>
> **证明思路**：把 $P_r$ 作为逼近恒等元，使用与 Fejér 定理相同的近、远区域分割。正性使得该方法不需要控制 Dirichlet 核的符号变化。

> **注**：若普通部分和 $S_Nf(x)$ 收敛，则其 Cesàro 平均与 Abel 平均收敛到同一值；反向结论一般不成立。