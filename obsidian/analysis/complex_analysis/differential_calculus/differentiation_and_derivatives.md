# 微分与导数

## 复导数

<!-- complex_derivative_definition -->
> [!Definition]
> **复导数 Complex Derivative**：设 $D\subseteq\mathbb{C}$，$f:D\to\mathbb{C}$，且 $z_0$ 是 $D$ 的内点。若极限
> $$
> f'(z_0)=\lim_{z\to z_0}\frac{f(z)-f(z_0)}{z-z_0}
> $$
> 存在且为有限复数，则称 $f$ 在 $z_0$ 处复可微，$f'(z_0)$ 称为 $f$ 在 $z_0$ 处的复导数。

<!-- complex_differentiability_direction_independence -->
> [!Theorem]
> **复导数的方向独立性 Direction Independence of the Complex Derivative**：若 $f$ 在 $z_0$ 处复可微，则对任意趋于 $0$ 的非零复数 $h$，都有
> $$
> \lim_{h\to0}\frac{f(z_0+h)-f(z_0)}{h}=f'(z_0).
> $$
> 特别地，沿任意方向 $h=te^{i\theta}$ 的实方向导数都由同一个复数 $f'(z_0)$ 给出。
>
> **证明思路**：这是导数定义的直接改写；关键在于复极限要求从复平面的所有方向趋近，而不只是沿某一条曲线趋近。

<!-- complex_differentiability_continuity -->
> [!Theorem]
> **复可微蕴含连续 Complex Differentiability Implies Continuity**：若 $f$ 在 $z_0$ 处复可微，则 $f$ 在 $z_0$ 处连续。
>
> **证明思路**：写成
> $$
> f(z)-f(z_0)=(z-z_0)\frac{f(z)-f(z_0)}{z-z_0},
> $$
> 并使用差商在 $z\to z_0$ 时有有限极限。

## 复可微与实可微

<!-- real_differentiability_complex_map -->
> [!Definition]
> **实可微 Real Differentiability of a Complex Map**：设 $z=x+iy$，$f(z)=u(x,y)+iv(x,y)$。将 $f$ 视为 $F:\mathbb{R}^2\to\mathbb{R}^2$。若存在实线性映射 $DF(z_0):\mathbb{R}^2\to\mathbb{R}^2$ 使
> $$
> F(z_0+h)-F(z_0)-DF(z_0)h=o(|h|)\qquad(h\to0),
> $$
> 则称 $f$ 在 $z_0$ 处实可微。若 $u,v$ 的一阶偏导在 $z_0$ 附近存在并在 $z_0$ 处连续，则 $f$ 在 $z_0$ 处实可微，且
> $$
> DF(z_0)=
> \begin{pmatrix}
> u_x&u_y\\v_x&v_y
> \end{pmatrix}_{(x_0,y_0)}.
> $$

<!-- complex_derivative_implies_real_differentiability -->
> [!Theorem]
> **复可微蕴含实可微 Complex Differentiability Implies Real Differentiability**：若 $f$ 在 $z_0$ 处复可微，则 $f$ 在 $z_0$ 处实可微，且其实微分是复数乘法
> $$
> DF(z_0)(h)=f'(z_0)h.
> $$
> 因此，复可微是对实微分的额外限制，而不是一般实可微的同义词。
>
> **证明思路**：由复导数定义，写成 $f(z_0+h)-f(z_0)=f'(z_0)h+o(|h|)$；复数乘法是一个实线性映射。

<!-- complex_vs_real_differentiability_examples -->
> [!Example]+
> **复可微与实可微的区别 Difference between Complex and Real Differentiability**：
> 1. $f(z)=\bar z$ 作为 $\mathbb{R}^2\to\mathbb{R}^2$ 的映射处处实可微，但其差商为 $\bar h/h$，随 $h$ 的方向变化，因此处处不复可微；
> 2. $f(z)=|z|^2=z\bar z$ 处处实可微，但在 $z_0\ne0$ 处差商含有 $\bar h/h$，不能复可微；在 $0$ 处差商为 $|h|^2/h=\bar h\to0$，故仅在 $0$ 处复可微。

<!-- complex_derivative_rules -->
> [!Theorem]
> **复导数的运算法则 Rules of Complex Differentiation**：若 $f,g$ 在 $z_0$ 处复可微，则
> $$
> (f+g)'=f'+g',\qquad(fg)'=f'g+fg',
> $$
> 且当 $g(z_0)\ne0$ 时
> $$
> \left(\frac{f}{g}\right)'=\frac{f'g-fg'}{g^2}.
> $$
> 若 $g$ 在 $z_0$ 处复可微且 $f$ 在 $g(z_0)$ 处复可微，则
> $$
> (f\circ g)'(z_0)=f'(g(z_0))g'(z_0).
> $$
>
> **证明思路**：将差商拆分为和、积、商与复合的标准形式，使用连续性和极限的运算法则。

> **注**：本小节的复导数与实可微性参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 2，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 2。
