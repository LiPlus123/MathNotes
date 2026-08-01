# 导数与微分

## 导数与单侧导数

<!-- real_analysis_derivative_definition -->
> [!Definition]
> **导数 Derivative**：设 $I\subseteq\mathbb{R}$ 为区间，$a\in I$ 为内点，且 $f:I\to\mathbb{R}$。若极限
> $$
> \lim_{x\to a}\frac{f(x)-f(a)}{x-a}
> $$
> 存在且为有限实数，则称 $f$ 在 $a$ 处可导，称该极限为 $f$ 在 $a$ 处的导数，记为
> $$
> f'(a)=\lim_{x\to a}\frac{f(x)-f(a)}{x-a}.
> $$

<!-- real_analysis_one_sided_derivative_definition -->
> [!Definition]
> **左导数与右导数 Left and Right Derivatives**：设 $a$ 是区间 $I$ 的点，且 $f:I\to\mathbb{R}$。若下列极限存在，则分别称为 $f$ 在 $a$ 处的左导数和右导数：
> $$
> f'_-(a)=\lim_{x\to a^-}\frac{f(x)-f(a)}{x-a},
> \qquad
> f'_+(a)=\lim_{x\to a^+}\frac{f(x)-f(a)}{x-a}.
> $$

<!-- real_analysis_differentiability_by_one_sided_derivatives -->
> [!Theorem]
> **单侧导数判别法 One-Sided Derivative Criterion**：设 $a$ 为 $I$ 的内点。函数 $f:I\to\mathbb{R}$ 在 $a$ 处可导，当且仅当 $f'_-(a)$ 与 $f'_+(a)$ 都存在且
> $$
> f'_-(a)=f'_+(a).
> $$
> 此时它们的公共值等于 $f'(a)$。
>
> **证明思路**：将差商视作定义在 $a$ 两侧去心邻域上的函数，直接应用双侧极限的单侧刻画。

<!-- real_analysis_differentiability_implies_continuity -->
> [!Theorem]
> **可导蕴含连续 Differentiability Implies Continuity**：若 $f$ 在 $a$ 处可导，则 $f$ 在 $a$ 处连续。
>
> **证明思路**：写成
> $$
> f(x)-f(a)=\frac{f(x)-f(a)}{x-a}(x-a).
> $$
> 当 $x\to a$ 时，第一因子趋于 $f'(a)$，第二因子趋于 $0$，故乘积趋于 $0$。

<!-- real_analysis_absolute_value_not_differentiable_example -->
> [!Example]+
> **绝对值函数的不可导点 Nondifferentiability of the Absolute-Value Function**：函数 $f(x)=|x|$ 在 $0$ 处连续但不可导，因为
> $$
> f'_-(0)=-1,
> \qquad
> f'_+(0)=1.
> $$
> 这说明连续性不蕴含可导性。

## 微分

<!-- real_analysis_differential_definition -->
> [!Definition]
> **微分 Differential**：若 $f$ 在 $a$ 处可导，则称线性主部
> $$
> \mathrm{d}f=f'(a)\,\mathrm{d}x
> $$
> 为 $f$ 在 $a$ 处的微分，其中 $\mathrm{d}x$ 表示自变量的增量。等价地，当 $\Delta x=x-a\to0$ 时，
> $$
> \Delta f=f(a+\Delta x)-f(a)=f'(a)\Delta x+o(\Delta x).
> $$

<!-- real_analysis_differential_linear_approximation -->
> [!Theorem]
> **微分的线性逼近性质 Linear Approximation by the Differential**：若 $f$ 在 $a$ 处可导，则
> $$
> f(a+h)=f(a)+f'(a)h+o(h)
> \qquad(h\to0).
> $$
> 因而在 $a$ 附近，$f(a+h)$ 可用线性函数 $f(a)+f'(a)h$ 作一阶近似。
>
> **证明思路**：将导数定义改写为 $[f(a+h)-f(a)]/h=f'(a)+o(1)$，再乘以 $h$ 即得。

## 初等函数的导数

<!-- real_analysis_elementary_derivatives -->
> [!Theorem]
> **初等函数的导数 Derivatives of Elementary Functions**：在各自定义域内，以下导数公式成立：
> $$
> (x^n)'=nx^{n-1}\quad(n\in\mathbb{Z}),
> \qquad
> (e^x)'=e^x,
> \qquad
> (a^x)'=a^x\ln a\quad(a>0),
> $$
> $$
> (\ln x)'=\frac1x\quad(x>0),
> \qquad
> (\sin x)'=\cos x,
> \qquad
> (\cos x)'=-\sin x,
> $$
> $$
> (\tan x)'=\sec^2x\quad\left(x\ne\frac\pi2+k\pi,\ k\in\mathbb{Z}\right).
> $$
>
> **证明思路**：幂函数公式由二项式展开或求导法则获得；指数、对数与三角函数公式由其基本极限和函数恒等式推出。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapters 4--5；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 5。