# 抛物型方程

## 热核、最大正则性与内在尺度

<!-- pde_heat_kernel_definition -->
> [!Definition]
> **Gauss 热核 Gaussian Heat Kernel**：$\mathbb{R}^n$ 上热半群 $e^{t\Delta}$ 的核为
> $$
> G_t(x)=(4\pi t)^{-n/2}\exp\left(-\frac{|x|^2}{4t}\right),
> \qquad t>0.
> $$
> 对初值 $u_0$，齐次热方程的解为 $u(t)=G_t*u_0$。

<!-- pde_heat_semigroup_smoothing -->
> [!Theorem]
> **热半群的 $L^p$ 正则化 Heat-Semigroup Smoothing**：若 $1\leq p\leq q\leq\infty$、$m\geq0$，则
> $$
> \|\nabla^m e^{t\Delta}f\|_{L^q}
> \leq C t^{-m/2-\frac n2(1/p-1/q)}\|f\|_{L^p},
> \qquad t>0.
> $$
>
> **证明思路**：对 $\nabla^mG_t$ 使用伸缩关系并计算其 $L^r$ 范数，再应用 Young 卷积不等式。

<!-- pde_maximal_regularity_theorem -->
> [!Theorem]
> **热方程的最大 $L^p$ 正则性 Maximal $L^p$ Regularity**：设 $1<p,q<\infty$，$f\in L^p((0,T);L^q(\mathbb{R}^n))$。零初值问题
> $$
> \partial_t u-\Delta u=f,\qquad u(0)=0
> $$
> 的解满足
> $$
> \|\partial_t u\|_{L^p_tL^q_x}+\|\nabla^2u\|_{L^p_tL^q_x}
> \leq C\|f\|_{L^p_tL^q_x}.
> $$
>
> **证明思路**：Duhamel 公式给出时空卷积。相应算子的核满足抛物 Calderon-Zygmund 条件，向量值奇异积分理论导出估计。

<!-- pde_parabolic_scaling_definition -->
> [!Definition]
> **抛物尺度 Parabolic Scaling**：变换 $(x,t)\mapsto(\lambda x,\lambda^2t)$ 保持热方程形式。抛物圆柱通常写为
> $$
> Q_r(x_0,t_0)=B_r(x_0)\times(t_0-r^2,t_0],
> $$
> 并据此定义抛物 BMO、抛物极大函数和 Littlewood-Paley 分解。

<!-- pde_de_giorgi_nash_theorem -->
> [!Theorem]
> **De Giorgi--Nash--Moser 正则性 De Giorgi--Nash--Moser Regularity**：对一致抛物的散度型方程，局部弱解在适当的内圆柱中 Holder 连续；结论只要求系数有界可测，常数依赖于椭圆性和维数。
>
> **证明思路**：能量不等式、截断和迭代先给出局部有界性，再控制振荡在递减圆柱上的衰减，从而得到 Holder 模连续性。

> **来源**：Ladyzhenskaya, Solonnikov, and Ural'tseva, *Linear and Quasilinear Equations of Parabolic Type*；Elias M. Stein, *Harmonic Analysis*。
