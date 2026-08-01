# 函数的渐近线

<!-- real_analysis_asymptote_definition -->
> [!Definition]
> **渐近线 Asymptote**：设 $f$ 定义在某个无界集合或点 $a$ 的去心邻域上。若直线 $y=\ell(x)$ 满足 $|f(x)-\ell(x)|\to0$ 于相应极限过程，则称该直线为 $f$ 的渐近线。

<!-- real_analysis_vertical_asymptote_definition -->
> [!Definition]
> **垂直渐近线 Vertical Asymptote**：若
> $$
> \lim_{x\to a}f(x)=+\infty
> \quad\text{或}\quad
> \lim_{x\to a}f(x)=-\infty,
> $$
> 则直线 $x=a$ 称为 $f$ 的垂直渐近线。

<!-- real_analysis_horizontal_asymptote_definition -->
> [!Definition]
> **水平渐近线 Horizontal Asymptote**：若
> $$
> \lim_{x\to+\infty}f(x)=b
> \quad\text{或}\quad
> \lim_{x\to-\infty}f(x)=b,
> $$
> 则直线 $y=b$ 称为相应方向上的水平渐近线。

<!-- real_analysis_oblique_asymptote_criterion -->
> [!Theorem]
> **斜渐近线判定 Criterion for an Oblique Asymptote**：若当 $x\to\pm\infty$ 时
> $$
> k=\lim\frac{f(x)}x,
> \qquad
> b=\lim\bigl(f(x)-kx\bigr)
> $$
> 均为有限实数，则直线
> $$
> y=kx+b
> $$
> 是 $f$ 在该方向的渐近线。
>
> **证明思路**：由 $f(x)-(kx+b)=[f(x)-kx]-b\to0$ 即得。

<!-- real_analysis_asymptote_example -->
> [!Example]+
> **渐近线的例子 Example of Asymptotes**：函数
> $$
> f(x)=\frac{x^2+1}{x-1}=x+1+\frac2{x-1}
> $$
> 有垂直渐近线 $x=1$，并在 $x\to\pm\infty$ 时有斜渐近线 $y=x+1$。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 6。