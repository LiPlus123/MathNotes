# 振荡积分算子

## 相位函数与算子范数估计

<!-- oscillatory_integral_operator_first_type -->
> [!Definition]
> **第一类振荡积分算子 Oscillatory Integral Operator of the First Kind**：设 $a\in C_c^\infty(\mathbb{R}^n\times\mathbb{R}^n)$，$\Phi\in C^\infty(\mathbb{R}^n\times\mathbb{R}^n;\mathbb{R})$。定义
> $$
> T_\lambda f(x)=\int_{\mathbb{R}^n}e^{i\lambda\Phi(x,y)}a(x,y)f(y)\,dy,
> \qquad \lambda\geq1.
> $$
> 其估计由 $x,y$ 变量之间相位的混合非退化性决定。

<!-- oscillatory_integral_operator_second_type -->
> [!Definition]
> **第二类振荡积分算子 Oscillatory Integral Operator of the Second Kind**：对振幅 $a(x,\xi)$ 和相位 $\Psi(x,\xi)$，定义
> $$
> Af(x)=\int_{\mathbb{R}^n}e^{i\Psi(x,\xi)}a(x,\xi)\widehat f(\xi)\,d\xi.
> $$
> 当 $\Psi(x,\xi)=x\cdot\xi$ 时，$A$ 是拟微分算子；更一般的相位产生 Fourier 积分算子的局部模型。

<!-- oscillatory_mixed_hessian_condition -->
> [!Definition]
> **混合 Hessian 非退化 Mixed Hessian Nondegeneracy**：第一类算子的相位称满足完全混合非退化条件，若在振幅支集上
> $$
> \det\left(\frac{\partial^2\Phi}{\partial x_i\partial y_j}(x,y)\right)_{1\leq i,j\leq n}\ne0.
> $$
> 它保证 $x$ 与 $y$ 的振荡充分耦合；秩较低时须以更精细的曲率或折叠条件替代。

<!-- oscillatory_l2_estimate -->
> [!Theorem]
> **非退化振荡积分的 $L^2$ 估计 $L^2$ Estimate for Nondegenerate Oscillatory Integrals**：若 $\Phi$ 满足完全混合非退化条件，则
> $$
> \|T_\lambda f\|_2\leq C\lambda^{-n/2}\|f\|_2
> \qquad(\lambda\geq1).
> $$
> 常数由有限个相位、振幅导数半范数和非退化下界控制。
>
> **证明思路**：计算 $T_\lambda T_\lambda^*$ 的核。对中间变量应用稳定相位或非稳定相位分部积分，混合 Hessian 条件给出核在 $x,x'$ 间的快速衰减；再用 Schur 检验或 $TT^*$ 论证得到结论。

<!-- oscillatory_lp_interpolation -->
> [!Theorem]
> **由端点估计得到的 $L^p$ 界 $L^p$ Bounds by Interpolation**：紧支撑振幅使 $T_\lambda$ 具有平凡的 $L^1\to L^\infty$ 范数界 $O(1)$。与 $L^2\to L^2$ 界插值可得：当 $1\leq p\leq2$、$p'$ 为共轭指数时，
> $$
> \|T_\lambda\|_{L^p\to L^{p'}}
> \lesssim\lambda^{-n(1-1/p)}.
> $$
> 对偶性给出 $2\leq p\leq+\infty$ 的对应 $L^{p'}\to L^p$ 估计。
>
> **证明思路**：在 $(L^1,L^\infty)$ 与 $(L^2,L^2)$ 两个端点间应用 Riesz-Thorin 插值；指数和衰减幂随插值参数线性变化。

<!-- oscillatory_curvature_lp_note -->
> [!Theorem]
> **曲率条件下的 $L^p$ 估计 Curvature-Dependent $L^p$ Estimates**：当混合 Hessian 退化但相位满足曲率、cinematic curvature 或折叠型条件时，仍可在某些 $L^p$ 范围取得衰减估计。允许的指数和衰减率取决于退化阶、维数及相位的几何结构。
>
> **证明思路**：将频率局部化并作二进尺度分解；利用曲率带来的横截性或局部平滑化，再以平方函数、插值或几乎正交性把局部估计求和。

<!-- oscillatory_radon_transform_example -->
> [!Example]+
> **振荡 Radon 型算子 Oscillatory Radon-Type Operator**：对曲线或曲面平均算子，Fourier 变换常给出含曲面参数的振荡积分。例如球面测度的 Fourier 变换由非退化临界点产生 $|\xi|^{-(n-1)/2}$ 级衰减。该衰减是相关卷积算子和极大算子估计的起点。
>
> **证明思路**：将曲面局部参数化，应用稳定相位方法；覆盖多个坐标图并处理无临界点区域即可得到全局衰减。

> **来源**：Elias M. Stein, *Harmonic Analysis: Real-Variable Methods, Orthogonality, and Oscillatory Integrals*, Chapter VIII；Andrew Greenleaf and Andreas Seeger, 关于振荡积分算子的研究。
