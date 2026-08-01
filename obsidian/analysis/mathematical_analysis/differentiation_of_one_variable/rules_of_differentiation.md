# 求导法则

<!-- real_analysis_derivative_linearity -->
> [!Theorem]
> **导数的线性性质 Linearity of the Derivative**：若 $f,g$ 在 $a$ 处可导，且 $\alpha,\beta\in\mathbb{R}$，则 $\alpha f+\beta g$ 在 $a$ 处可导，且
> $$
> (\alpha f+\beta g)'(a)=\alpha f'(a)+\beta g'(a).
> $$
>
> **证明思路**：对差商使用线性运算，再取极限。

<!-- real_analysis_product_rule -->
> [!Theorem]
> **乘积法则 Product Rule**：若 $f,g$ 在 $a$ 处可导，则 $fg$ 在 $a$ 处可导，且
> $$
> (fg)'(a)=f'(a)g(a)+f(a)g'(a).
> $$
>
> **证明思路**：将 $f(x)g(x)-f(a)g(a)$ 分解为 $[f(x)-f(a)]g(x)+f(a)[g(x)-g(a)]$，再利用可导蕴含连续。

<!-- real_analysis_chain_rule -->
> [!Theorem]
> **链式法则 Chain Rule**：设 $f$ 在 $a$ 处可导，$g$ 在 $f(a)$ 处可导，且 $f$ 在 $a$ 的某邻域中取值于 $g$ 的定义域。则 $g\circ f$ 在 $a$ 处可导，且
> $$
> (g\circ f)'(a)=g'(f(a))f'(a).
> $$
>
> **证明思路**：将复合函数的增量写作 $[g(f(x))-g(f(a))]/[f(x)-f(a)]$ 与 $[f(x)-f(a)]/(x-a)$ 的乘积；当分母为零时以 $g'(f(a))$ 补全第一因子，再取极限。

<!-- real_analysis_quotient_rule -->
> [!Theorem]
> **商法则 Quotient Rule**：若 $f,g$ 在 $a$ 处可导且 $g(a)\ne0$，则 $f/g$ 在 $a$ 处可导，且
> $$
> \left(\frac{f}{g}\right)'(a)=\frac{f'(a)g(a)-f(a)g'(a)}{g(a)^2}.
> $$
>
> **证明思路**：先由乘积法则证明倒数函数 $1/g$ 的导数为 $-g'/g^2$，再应用乘积法则。

<!-- real_analysis_inverse_function_derivative_rule -->
> [!Theorem]
> **反函数求导法则 Derivative of an Inverse Function**：设 $f:I\to J$ 为严格单调连续双射，$a\in I$ 为内点，且 $f$ 在 $a$ 处可导并满足 $f'(a)\ne0$。若 $f^{-1}$ 在 $f(a)$ 处连续，则 $f^{-1}$ 在 $f(a)$ 处可导，且
> $$
> (f^{-1})'(f(a))=\frac{1}{f'(a)}.
> $$
>
> **证明思路**：令 $y=f(x)$，把反函数的差商改写为 $(x-a)/(f(x)-f(a))$，再令 $x\to a$。

<!-- real_analysis_differentiation_rules_example -->
> [!Example]+
> **求导法则的例子 Example of Differentiation Rules**：对
> $$
> f(x)=\frac{\sin(x^2)}{1+x},
> \qquad x\ne-1,
> $$
> 有
> $$
> f'(x)=\frac{2x(1+x)\cos(x^2)-\sin(x^2)}{(1+x)^2}.
> $$
> 此式依次使用链式法则、乘积法则和商法则得到。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 5。