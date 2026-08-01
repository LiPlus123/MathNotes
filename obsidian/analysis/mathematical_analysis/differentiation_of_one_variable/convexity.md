# 函数的凸性

<!-- real_analysis_convex_function_definition -->
> [!Definition]
> **凸函数 Convex Function**：设 $I\subseteq\mathbb{R}$ 为区间。函数 $f:I\to\mathbb{R}$ 称为凸函数，若对任意 $x,y\in I$ 及 $t\in[0,1]$，
> $$
> f((1-t)x+ty)\leq(1-t)f(x)+tf(y).
> $$
> 若当 $x\ne y$ 且 $t\in(0,1)$ 时上式严格成立，则称 $f$ 为严格凸函数。将不等号反向，分别得到凹函数和严格凹函数。

<!-- real_analysis_jensen_inequality -->
> [!Theorem]
> **Jensen 不等式 Jensen's Inequality**：若 $f:I\to\mathbb{R}$ 为凸函数，$x_1,\ldots,x_n\in I$，且 $\lambda_i\geq0$、$\sum_{i=1}^n\lambda_i=1$，则
> $$
> f\left(\sum_{i=1}^n\lambda_i x_i\right)\leq\sum_{i=1}^n\lambda_i f(x_i).
> $$
>
> **证明思路**：对 $n$ 归纳；归纳步将前 $n-1$ 项归一化为一个凸组合，再应用二点凸性。

<!-- real_analysis_convex_function_derivative_properties -->
> [!Theorem]
> **凸函数的导数性质 Derivative Properties of Convex Functions**：设 $f$ 在开区间 $I$ 上可导。则 $f$ 在 $I$ 上凸，当且仅当 $f'$ 单调递增。若 $f$ 二阶可导，则
> $$
> f''\geq0\Longrightarrow f\text{ 凸},
> \qquad
> f''\leq0\Longrightarrow f\text{ 凹}.
> $$
> 若相应不等式严格成立，则分别得到严格凸性与严格凹性。
>
> **证明思路**：中值定理将割线斜率与导数联系起来。二阶导数条件先给出 $f'$ 的单调性，再应用前述等价刻画。

<!-- real_analysis_tangent_line_characterization_of_convexity -->
> [!Theorem]
> **凸函数的切线支撑性质 Tangent-Line Characterization of Convexity**：若可导函数 $f$ 在区间 $I$ 上凸，则对任意 $a,x\in I$，
> $$
> f(x)\geq f(a)+f'(a)(x-a).
> $$
>
> **证明思路**：凸性使导数单调。对 $x>a$ 用中值定理取 $c\in(a,x)$ 并比较 $f'(c)\geq f'(a)$；$x<a$ 情形类似。

<!-- real_analysis_convexity_example -->
> [!Example]+
> **凸函数的例子 Example of a Convex Function**：函数 $f(x)=e^x$ 满足 $f''(x)=e^x>0$，故在 $\mathbb{R}$ 上严格凸。其切线支撑不等式为
> $$
> e^x\geq e^a+e^a(x-a).
> $$

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 6；R. Tyrrell Rockafellar, *Convex Analysis*, Chapter 1。