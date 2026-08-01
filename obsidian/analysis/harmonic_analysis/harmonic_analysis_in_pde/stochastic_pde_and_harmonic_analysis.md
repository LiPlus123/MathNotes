# 随机 PDE 与调和分析

## 随机积分、正则化与多尺度工具

<!-- pde_cylindrical_wiener_process_definition -->
> [!Definition]
> **柱状 Wiener 过程 Cylindrical Wiener Process**：设 $H$ 为可分 Hilbert 空间。形式表达 $W_t=\sum_k\beta_k(t)e_k$ 称为 $H$ 上的柱状 Wiener 过程，其中 $\{e_k\}$ 为 $H$ 的正交基，$\{\beta_k\}$ 为独立一维 Brownian 运动；该级数一般不在 $H$ 中收敛，需通过 Hilbert-Schmidt 或 gamma-radonifying 算子定义随机积分。

<!-- pde_stochastic_heat_equation_definition -->
> [!Definition]
> **随机热方程 Stochastic Heat Equation**：一个加性噪声模型为
> $$
> du=(\Delta u+f)\,dt+B\,dW_t.
> $$
> 若初值为 $u_0$，其温和形式为
> $$
> u(t)=e^{t\Delta}u_0+
> \int_0^te^{(t-s)\Delta}f(s)\,ds+
> \int_0^te^{(t-s)\Delta}B\,dW_s.
> $$
> 最后一项是随机卷积，其空间正则性由热半群与噪声协方差共同决定。

<!-- pde_ito_isometry_theorem -->
> [!Theorem]
> **Ito 等距 Ito Isometry**：若 $\Phi$ 是到 Hilbert-Schmidt 算子空间的可预测过程，则
> $$
> \mathbb{E}\left\|\int_0^T\Phi(s)\,dW_s\right\|_H^2
> =\mathbb{E}\int_0^T\|\Phi(s)\|_{\mathrm{HS}}^2\,ds.
> $$
> 它将随机卷积的二阶矩估计化为确定性的半群范数积分。
>
> **证明思路**：先对阶梯可预测过程利用独立增量和 Brownian 方差直接计算，再由完备性逼近一般可积过程。

<!-- pde_stochastic_maximal_regularity_concept -->
> [!Concept]
> **随机最大正则性 Stochastic Maximal Regularity**：在 UMD 空间等适当 Banach 空间背景中，确定性最大正则性与随机积分估计结合，控制随机抛物方程解的时间和空间导数。相关条件必须同时涉及算子函数演算和噪声算子的 radonifying 性质。

<!-- pde_regularities_structures_concept -->
> [!Concept]
> **正则性结构与调和分析 Regularity Structures and Harmonic Analysis**：对奇异 SPDE，噪声与非线性乘积可能在经典分布意义下无定义。多尺度 Littlewood-Paley 分解、重整化与局部模型使这些乘积获得可控解释；正则性结构与抛物控制粗糙路径理论提供系统框架。

> **来源**：Giuseppe Da Prato and Jerzy Zabczyk, *Stochastic Equations in Infinite Dimensions*；Martin Hairer, "A Theory of Regularity Structures", *Inventiones Mathematicae* 198 (2014)。
