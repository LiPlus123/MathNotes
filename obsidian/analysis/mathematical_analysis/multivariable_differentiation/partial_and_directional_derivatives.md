# 偏导数与方向导数

<!-- real_analysis_multivariable_partial_derivative_definition -->
> [!Definition]
> **偏导数 Partial Derivative**：设 $f:D\subseteq\mathbb{R}^n\to\mathbb{R}$，$a=(a_1,\ldots,a_n)$ 是 $D$ 的内点。若极限
> $$
> \frac{\partial f}{\partial x_i}(a)
> =\lim_{t\to0}\frac{f(a+t e_i)-f(a)}{t}
> $$
> 存在，则称其为 $f$ 在 $a$ 处关于第 $i$ 个变量的偏导数，其中 $e_i$ 为第 $i$ 个标准基向量。

<!-- real_analysis_multivariable_directional_derivative_definition -->
> [!Definition]
> **方向导数 Directional Derivative**：设 $f:D\subseteq\mathbb{R}^n\to\mathbb{R}$，$a$ 是 $D$ 的内点，$v\in\mathbb{R}^n$。若极限
> $$
> D_vf(a)=\lim_{t\to0}\frac{f(a+tv)-f(a)}{t}
> $$
> 存在，则称其为 $f$ 在 $a$ 沿方向 $v$ 的方向导数。特别地，$D_{e_i}f(a)=\partial f/\partial x_i(a)$。

<!-- real_analysis_multivariable_differentiability_implies_directional_derivative -->
> [!Theorem]
> **可微蕴含方向导数存在 Differentiability Implies Existence of Directional Derivatives**：若 $f:D\subseteq\mathbb{R}^n\to\mathbb{R}$ 在内点 $a$ 处可微，则对每个 $v\in\mathbb{R}^n$，$D_vf(a)$ 存在，且
> $$
> D_vf(a)=\nabla f(a)\cdot v
> =\sum_{i=1}^n\frac{\partial f}{\partial x_i}(a)v_i.
> $$
>
> **证明思路**：将可微定义中的增量取为 $h=tv$；线性主部除以 $t$ 后给出 $Df(a)v$，余项除以 $t$ 趋于零。

<!-- real_analysis_multivariable_partial_derivatives_not_imply_continuity_example -->
> [!Example]+
> **偏导存在但函数不连续的例子 Existing Partial Derivatives without Continuity**：令
> $$
> f(x,y)=\begin{cases}
> \dfrac{xy}{x^2+y^2},&(x,y)\ne(0,0),\\
> 0,&(x,y)=(0,0).
> \end{cases}
> $$
> 则 $f_x(0,0)=f_y(0,0)=0$，但 $f$ 在 $(0,0)$ 处不连续，因为沿 $y=x$ 有 $f(x,x)=1/2$。
>
> **证明思路**：在两个坐标轴上函数恒为零，故两个偏导数为零；沿直线 $y=x$ 的函数值不趋于 $0$。

<!-- real_analysis_multivariable_directional_derivatives_not_imply_differentiability_example -->
> [!Example]+
> **方向导数存在但不可微的例子 Existing Directional Derivatives without Differentiability**：可取
> $$
> g(x,y)=\begin{cases}
> \dfrac{x^3}{x^2+y^2},&(x,y)\ne(0,0),\\
> 0,&(x,y)=(0,0),
> \end{cases}
> $$
> 此时 $D_{(u,v)}g(0,0)=u^3/(u^2+v^2)$，但该表达式不是关于 $(u,v)$ 的线性函数，故 $g$ 不可微。
>
> **证明思路**：对 $(u,v)\ne(0,0)$，有 $g(tu,tv)=tu^3/(u^2+v^2)$，故方向导数等于 $u^3/(u^2+v^2)$。若 $g$ 可微，该方向导数必须是方向向量的线性函数，矛盾。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9。