# Poisson 积分

## Poisson 核与积分公式

<!-- poisson_kernel_unit_disk -->
> [!Definition]
> **单位圆盘的 Poisson 核 Poisson Kernel of the Unit Disk**：对 $0\le r<1$，定义
> $$
> P_r(\theta)=\frac{1-r^2}{1-2r\cos\theta+r^2}.
> $$
> 它满足 $P_r(\theta)>0$ 以及
> $$
> \frac1{2\pi}\int_0^{2\pi}P_r(\theta)\,d\theta=1.
> $$

<!-- poisson_integral_definition -->
> [!Definition]
> **Poisson 积分 Poisson Integral**：设 $\varphi:[0,2\pi]\to\mathbb R$ 连续且 $2\pi$-周期，定义
> $$
> (P[\varphi])(re^{i\theta})
> =\frac1{2\pi}\int_0^{2\pi}P_r(\theta-t)\varphi(t)\,dt,
> \qquad 0\le r<1.
> $$
> 该函数称为 $\varphi$ 的 Poisson 积分。

<!-- poisson_integral_formula -->
> [!Theorem]
> **Poisson 积分公式 Poisson Integral Formula**：若 $u$ 在单位圆盘 $\mathbb D$ 上调和并连续到闭圆盘，令 $\varphi(e^{it})=u(e^{it})$，则
> $$
> u(re^{i\theta})
> =\frac1{2\pi}\int_0^{2\pi}P_r(\theta-t)\varphi(e^{it})\,dt.
> $$
>
> **证明思路**：对 $u$ 在圆盘内构造共轭调和函数，或对 $u$ 使用 Green 函数和 Green 公式；边界法向导数给出 Poisson 核。

<!-- poisson_integral_harmonicity -->
> [!Theorem]
> **Poisson 积分的调和性 Harmonicity of the Poisson Integral**：若 $\varphi$ 连续，则其 Poisson 积分在 $\mathbb D$ 上调和；若 $\varphi$ 为实值，则 Poisson 积分也为实值。
>
> **证明思路**：对每个 $r<1$，Poisson 核关于空间变量是调和函数；在紧子集上可将微分移入积分，得到 Laplace 算子为零。

## 边值性质

<!-- poisson_kernel_approximate_identity -->
> [!Theorem]
> **Poisson 核的逼近恒等性 Approximate Identity Property**：若 $\varphi$ 在单位圆周上连续，则
> $$
> \lim_{r\to1^-}(P[\varphi])(re^{i\theta_0})=\varphi(e^{i\theta_0})
> $$
> 一致于 $\theta_0$。因此 Poisson 积分连续延拓到闭圆盘，并在边界上取给定值。
>
> **证明思路**：Poisson 核非负且总质量为 $2\pi$，当 $r\to1^-$ 时质量集中在 $t=\theta_0$ 附近；利用 $\varphi$ 的一致连续性分割积分。

<!-- poisson_integral_boundary_limit -->
> [!Theorem]
> **Poisson 积分的边界极限 Boundary Limits of the Poisson Integral**：若 $\varphi\in L^p(\partial\mathbb D)$（$1\le p<\infty$），则 Poisson 积分在适当意义下趋于 $\varphi$：对 $1<p<\infty$，径向极限几乎处处存在并等于 $\varphi$；当 $\varphi$ 连续时，收敛是一致的。
>
> **证明思路**：把 Poisson 核视为单位圆周上的逼近恒等元，结合卷积逼近理论和 Hardy-Littlewood 最大不等式。

<!-- poisson_integral_uniqueness -->
> [!Theorem]
> **Poisson 边值问题的唯一性 Uniqueness for the Poisson Boundary Problem**：若 $u,v$ 在 $\mathbb D$ 上调和且连续到 $\overline{\mathbb D}$，并且在边界上满足 $u=v$，则 $u\equiv v$。
>
> **证明思路**：$u-v$ 在边界为零；由调和函数的最大值原理，$u-v$ 的最大值和最小值都为零。

> **注**：Poisson 核、Poisson 积分公式参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 Walter Rudin, *Real and Complex Analysis*, Chapter 11。
