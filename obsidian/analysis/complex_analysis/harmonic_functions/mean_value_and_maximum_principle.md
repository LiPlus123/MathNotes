# 均值性质与极值原理

## 极值原理

<!-- harmonic_strong_maximum_principle -->
> [!Theorem]
> **调和函数的强极值原理 Strong Maximum Principle for Harmonic Functions**：设 $u$ 在区域 $D$ 上调和。若 $u$ 在 $D$ 内取得局部最大值或局部最小值，则 $u$ 在 $D$ 上为常数。
>
> **证明思路**：均值性质表明圆心值是圆周值的平均；若圆心达到最大值，则圆周上的函数值必须处处相同，再用连通性传播常值性。

<!-- harmonic_boundary_maximum_principle -->
> [!Theorem]
> **调和函数的边界极值原理 Boundary Maximum Principle**：若 $D$ 有界，$u$ 在 $D$ 上调和并连续到 $\overline D$，则
> $$
> \max_{\overline D}u=\max_{\partial D}u,\qquad
> \min_{\overline D}u=\min_{\partial D}u.
> $$
> 若 $u$ 非常数，则内部不能取得最大值或最小值。
>
> **证明思路**：连续性保证闭包上的极值存在；强极值原理排除非常数函数的内部极值。

<!-- harmonic_mean_value_derivative_estimate -->
> [!Theorem]
> **调和函数的梯度估计 Gradient Estimate for Harmonic Functions**：若 $u$ 在 $B(a,R)$ 上调和，则对 $0<r<R$，$u$ 在 $B(a,r)$ 上的导数可由其在 $B(a,R)$ 上的最大值控制。特别地，存在只依赖于 $r/R$ 的常数 $C$，使
> $$
> |\nabla u(z)|\le \frac{C}{R-r}\sup_{B(a,R)}|u|,
> \qquad z\in B(a,r).
> $$
>
> **证明思路**：局部构造共轭调和函数，组成全纯函数后使用 Cauchy 估计；或直接对 Poisson 积分公式求导。

## Harnack 不等式与 Liouville 型定理

<!-- harnack_inequality -->
> [!Theorem]
> **Harnack 不等式 Harnack Inequality**：设 $u$ 是区域 $D$ 上的非负调和函数。对任意紧连通集 $K\Subset D$，存在常数 $C_K\ge1$，使
> $$
> \sup_K u\le C_K\inf_K u.
> $$
> 特别地，对任意 $0<r<R$，若 $u\ge0$ 在 $B(0,R)$ 上调和，则对 $|z|\le r$，
> $$
> \frac{R-r}{R+r}u(0)\le u(z)\le\frac{R+r}{R-r}u(0).
> $$
>
> **证明思路**：将 $u$ 写成 Poisson 积分，估计 Poisson 核在紧子集上的上下界；一般紧集情形通过有限覆盖得到。

<!-- harnack_convergence_principle -->
> [!Theorem]
> **Harnack 收敛原理 Harnack Convergence Principle**：设 $(u_n)$ 是区域 $D$ 上的非负调和函数列。若在某个点 $z_0\in D$ 上 $u_n(z_0)$ 有界，则每个紧子集上 $(u_n)$ 局部一致有界；若它逐点收敛，则极限是调和函数。
>
> **证明思路**：Harnack 不等式给出紧集上的统一界，再用调和函数族的局部正则性和局部一致收敛保持调和性。

<!-- harmonic_liouville_theorem -->
> [!Theorem]
> **调和函数的 Liouville 定理 Liouville Theorem for Harmonic Functions**：若 $u$ 是整个平面上的有界调和函数，则 $u$ 为常数。若 $u$ 在整个平面上非负，也必为常数。
>
> **证明思路**：有界情形由梯度估计令 $R\to\infty$ 得 $\nabla u=0$；非负情形由 Harnack 不等式或将 $u$ 视为有界增长的调和函数处理。

> **注**：调和函数的极值原理、Harnack 不等式参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 4，以及 Walter Rudin, *Real and Complex Analysis*, Chapter 11。
