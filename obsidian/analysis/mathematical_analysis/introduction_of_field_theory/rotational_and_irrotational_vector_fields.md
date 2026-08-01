# 有旋场与无旋场

<!-- real_analysis_rotational_and_irrotational_field_definition -->
> [!Definition]
> **有旋场与无旋场 Rotational and Irrotational Vector Fields**：设 $F\in C^1(U,\mathbb{R}^3)$。若 $\operatorname{curl}F(a)\ne\mathbf{0}$，则称 $F$ 在 $a$ 处有旋；若 $\operatorname{curl}F=\mathbf{0}$ 在 $U$ 上成立，则称 $F$ 在 $U$ 上无旋。

<!-- real_analysis_conservative_field_implies_irrotational -->
> [!Theorem]
> **保守场必无旋 Conservative Fields Are Irrotational**：若存在 $\phi\in C^2(U)$ 使 $F=\nabla\phi$，则
> $$
> \operatorname{curl}F=\mathbf{0}.
> $$
>
> **证明思路**：代入 $F=\nabla\phi$ 并使用混合偏导数相等性。

<!-- real_analysis_irrotational_field_local_potential_theorem -->
> [!Theorem]
> **无旋场的局部势函数 Local Potential Theorem for Irrotational Fields**：若 $F\in C^1(U,\mathbb{R}^3)$ 且 $\operatorname{curl}F=\mathbf{0}$，则每个点 $a\in U$ 都有一个邻域 $V\subseteq U$ 和函数 $\phi\in C^2(V)$，使 $F|_V=\nabla\phi$。
>
> **证明思路**：取包含 $a$ 的小凸球 $V$，定义从固定点到 $x$ 的线段积分；无旋条件配合 Stokes 定理使该积分的导数等于 $F$。

<!-- real_analysis_irrotational_not_globally_conservative_example -->
> [!Example]+
> **无旋但非全局保守的例子 Irrotational but Not Globally Conservative**：在 $U=\mathbb{R}^2\setminus\{(0,0)\}$ 上令
> $$
> F(x,y)=\left(-\frac{y}{x^2+y^2},\frac{x}{x^2+y^2}\right).
> $$
> 则 $\operatorname{curl}F=0$ 于 $U$，但沿单位圆的逆时针环量为 $2\pi$，故 $F$ 不可能在 $U$ 上为某个势函数的梯度。
>
> **证明思路**：直接计算平面旋度；对单位圆参数化计算线积分。原点被挖去导致区域非单连通。

> **注**：本小节参见 Jerrold E. Marsden and Anthony J. Tromba, *Vector Calculus*, 6th ed., Chapter 6。