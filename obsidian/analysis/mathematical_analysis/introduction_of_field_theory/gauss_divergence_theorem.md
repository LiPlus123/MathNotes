# Gauss 散度定理

<!-- real_analysis_gauss_divergence_theorem -->
> [!Theorem]
> **Gauss 散度定理 Gauss Divergence Theorem**：设 $\Omega\subseteq\mathbb{R}^3$ 为有界区域，边界 $\partial\Omega$ 是分段 $C^1$ 的可定向闭曲面，并取外向单位法向量 $n$。若 $F\in C^1(U,\mathbb{R}^3)$，其中开集 $U$ 包含 $\overline\Omega$，则
> $$
> \iiint_\Omega\operatorname{div}F\,\mathrm{d}V
> =\iint_{\partial\Omega}F\cdot n\,\mathrm{d}S.
> $$
>
> **证明思路**：先对长方体逐坐标应用 Newton-Leibniz 公式，内部面的通量相消；再通过区域分割与近似推广到所述区域。

<!-- real_analysis_divergence_source_sink_interpretation -->
> [!Definition]
> **散度的源汇解释 Source and Sink Interpretation of Divergence**：若 $F$ 表示流速场，则 $\operatorname{div}F(a)>0$ 表示 $a$ 附近具有净流出趋势，称为源；$\operatorname{div}F(a)<0$ 表示具有净流入趋势，称为汇；散度为零表示局部一阶净通量为零。

<!-- real_analysis_first_greens_identity -->
> [!Theorem]
> **第一 Green 恒等式 First Green Identity**：设 $\Omega$ 与其边界满足 Gauss 定理的条件，$u,v\in C^2(U)$，其中 $U\supseteq\overline\Omega$ 为开集。则
> $$
> \iiint_\Omega\left(\nabla u\cdot\nabla v+u\Delta v\right)\,\mathrm{d}V
> =\iint_{\partial\Omega}u\frac{\partial v}{\partial n}\,\mathrm{d}S,
> $$
> 其中 $\dfrac{\partial v}{\partial n}=\nabla v\cdot n$。
>
> **证明思路**：将 Gauss 定理应用于向量场 $u\nabla v$，并使用散度乘积法则。

<!-- real_analysis_second_greens_identity -->
> [!Theorem]
> **第二 Green 恒等式 Second Green Identity**：在第一 Green 恒等式的假设下，
> $$
> \iiint_\Omega\left(u\Delta v-v\Delta u\right)\,\mathrm{d}V
> =\iint_{\partial\Omega}\left(u\frac{\partial v}{\partial n}-v\frac{\partial u}{\partial n}\right)\,\mathrm{d}S.
> $$
>
> **证明思路**：分别交换 $u,v$ 应用第一 Green 恒等式，再相减；梯度内积项相消。

<!-- real_analysis_gauss_divergence_theorem_sphere_example -->
> [!Example]+
> **球面通量的例子 Flux through a Sphere**：令 $F(x,y,z)=(x,y,z)$，$B_R$ 为半径 $R>0$ 的球，取外向定向。则
> $$
> \iint_{\partial B_R}F\cdot n\,\mathrm{d}S
> =\iiint_{B_R}3\,\mathrm{d}V
> =4\pi R^3.
> $$
>
> **证明思路**：$\operatorname{div}F=3$，直接应用 Gauss 散度定理并使用球体体积公式。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 12。