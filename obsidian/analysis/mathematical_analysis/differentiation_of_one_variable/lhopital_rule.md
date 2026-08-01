# 洛必达法则

<!-- real_analysis_lhopital_zero_over_zero_rule -->
> [!Theorem]
> **洛必达法则（$0/0$ 型） L'Hopital's Rule for the $0/0$ Form**：设 $f,g$ 在 $a$ 的某去心邻域内可导，且在该邻域中 $g(x)\ne0$、$g'(x)\ne0$。若
> $$
> \lim_{x\to a}f(x)=\lim_{x\to a}g(x)=0,
> $$
> 并且极限
> $$
> \lim_{x\to a}\frac{f'(x)}{g'(x)}=L
> $$
> 存在于 $\overline{\mathbb{R}}$，则
> $$
> \lim_{x\to a}\frac{f(x)}{g(x)}=L.
> $$
> 此处只考虑 $g(x)\ne0$ 的点。
>
> **证明思路**：对靠近 $a$ 的 $x$，将 Cauchy 中值定理应用于连接 $a$ 与 $x$ 的区间（必要时以 $f(a)=g(a)=0$ 补全端点）。所得某点的导数之比控制原函数之比，再令 $x\to a$。

<!-- real_analysis_lhopital_infinity_over_infinity_rule -->
> [!Theorem]
> **洛必达法则（$\infty/\infty$ 型） L'Hopital's Rule for the $\infty/\infty$ Form**：设 $f,g$ 在充分靠近 $a$ 的去心邻域内可导，且在该邻域中 $g(x)\ne0$、$g'(x)\ne0$，并且
> $$
> |f(x)|\to+\infty,
> \qquad
> |g(x)|\to+\infty.
> $$
> 若 $\lim_{x\to a}f'(x)/g'(x)=L\in\overline{\mathbb{R}}$，则
> $$
> \lim_{x\to a}\frac{f(x)}{g(x)}=L.
> $$
>
> **证明思路**：固定去心邻域中的一点，以 $f(x)-f(x_0)$、$g(x)-g(x_0)$ 应用 Cauchy 中值定理；常数项除以 $g(x)$ 后趋于零。

<!-- real_analysis_lhopital_rule_application_conditions -->
> [!Definition]
> **洛必达法则的适用条件 Conditions for Applying L'Hopital's Rule**：使用洛必达法则前，必须确认原商确为 $0/0$ 型或 $\infty/\infty$ 型，函数在相应去心邻域可导，分母导数不为零，且导数之商的极限存在。其他不定式如 $0\cdot\infty$、$\infty-\infty$、$1^\infty$ 必须先代数变形为可处理的商型。

<!-- real_analysis_lhopital_rule_example -->
> [!Example]+
> **洛必达法则的例子 Example of L'Hopital's Rule**：
> $$
> \lim_{x\to0}\frac{e^x-1}{x}
> =\lim_{x\to0}\frac{e^x}{1}=1.
> $$
> 原式为 $0/0$ 型，分子、分母均可导，且分母导数恒为 $1$，故满足适用条件。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. I*, 2nd ed., Chapter 6；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 5。