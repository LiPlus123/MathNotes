# 参数曲线

<!-- real_analysis_parametrized_curve_definition -->
> [!Definition]
> **参数曲线 Parametrized Curve**：设 $I=[a,b]\subseteq\mathbb{R}$。连续映射
> $$
> \gamma:I\to\mathbb{R}^n,
> \qquad t\longmapsto\gamma(t)
> $$
> 称为一条参数曲线；其像 $\gamma(I)$ 称为曲线的轨迹。参数 $t$ 递增的方向给出该参数曲线的定向，$\gamma(a)$ 与 $\gamma(b)$ 分别称为起点与终点。

<!-- real_analysis_smooth_and_regular_curve_definition -->
> [!Definition]
> **光滑曲线与正则曲线 Smooth and Regular Curves**：若 $\gamma\in C^1([a,b],\mathbb{R}^n)$，则称 $\gamma$ 为光滑曲线。若对每个 $t\in[a,b]$（端点处取单侧导数）均有 $\gamma'(t)\ne\mathbf{0}$，则称其为正则曲线。若区间可分为有限个子区间，且在每一子区间上曲线光滑并正则，则称其为分段光滑正则曲线。

<!-- real_analysis_curve_tangent_vector_definition -->
> [!Definition]
> **曲线的切向量 Tangent Vector of a Curve**：若 $\gamma$ 在 $t_0\in(a,b)$ 可导且 $\gamma'(t_0)\ne\mathbf{0}$，则
> $$
> \gamma'(t_0)
> $$
> 称为曲线在 $\gamma(t_0)$ 处的定向切向量；相应的单位切向量为
> $$
> T(t_0)=\frac{\gamma'(t_0)}{\|\gamma'(t_0)\|}.
> $$

<!-- real_analysis_rectifiable_curve_length_definition -->
> [!Definition]
> **可求长曲线与弧长 Rectifiable Curve and Arc Length**：对分割 $P:a=t_0<t_1<\cdots<t_N=b$，令
> $$
> L(\gamma;P)=\sum_{k=1}^N\|\gamma(t_k)-\gamma(t_{k-1})\|.
> $$
> 若 $\sup_P L(\gamma;P)<+\infty$，则称 $\gamma$ 可求长，并将
> $$
> L(\gamma)=\sup_P L(\gamma;P)
> $$
> 称为其弧长。

<!-- real_analysis_smooth_curve_arc_length_formula -->
> [!Theorem]
> **光滑曲线的弧长公式 Arc-Length Formula for Smooth Curves**：若 $\gamma\in C^1([a,b],\mathbb{R}^n)$，则 $\gamma$ 可求长，且
> $$
> L(\gamma)=\int_a^b\|\gamma'(t)\|\,\mathrm{d}t.
> $$
>
> **证明思路**：由微积分基本定理将每段弦长估计为速度范数的积分，得到任意折线长度的上界；再利用导数的连续性和足够细分割，使折线长度逼近该积分。

<!-- real_analysis_arc_length_parameterization_theorem -->
> [!Theorem]
> **弧长参数化 Arc-Length Parameterization**：设 $\gamma:[a,b]\to\mathbb{R}^n$ 为正则 $C^1$ 曲线，固定 $t_0\in[a,b]$，并定义
> $$
> s(t)=\int_{t_0}^t\|\gamma'(u)\|\,\mathrm{d}u.
> $$
> 则 $s$ 严格递增，因而在其像上有反函数 $t=t(s)$；重参数化 $\beta(s)=\gamma(t(s))$ 满足
> $$
> \|\beta'(s)\|=1.
> $$
>
> **证明思路**：正则性使 $s'(t)=\|\gamma'(t)\|>0$。由一元反函数定理求导 $t'(s)=1/\|\gamma'(t(s))\|$，再使用链式法则。

<!-- real_analysis_curve_orientation_reversal_definition -->
> [!Definition]
> **曲线的反向 Reversal of a Curve**：参数曲线 $\gamma:[a,b]\to\mathbb{R}^n$ 的反向曲线定义为
> $$
> (-\gamma)(t)=\gamma(a+b-t).
> $$
> 它具有相同轨迹而定向相反，且其切向量方向为原曲线切向量的相反方向。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 10。