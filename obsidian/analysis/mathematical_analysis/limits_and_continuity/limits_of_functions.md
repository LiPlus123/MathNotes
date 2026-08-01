# 函数的极限

## 函数极限的定义

<!-- real_analysis_function_limit_definition -->
> [!Definition]
> **函数在聚点处的极限 Limit of a Function at an Accumulation Point**：设 $D\subseteq\mathbb{R}$，$a$ 是 $D$ 的聚点，且 $f:D\to\mathbb{R}$。若对任意 $\varepsilon>0$，存在 $\delta>0$，使得对任意 $x\in D$，
> $$
> 0<|x-a|<\delta\Longrightarrow |f(x)-L|<\varepsilon,
> $$
> 则称 $f(x)$ 当 $x\to a$ 时的极限为 $L$，记为
> $$
> \lim_{x\to a}f(x)=L.
> $$

<!-- real_analysis_function_limit_uniqueness -->
> [!Theorem]
> **函数极限的唯一性 Uniqueness of Function Limits**：在同一聚点 $a$ 处，函数 $f:D\to\mathbb{R}$ 的极限至多有一个。
>
> **证明思路**：若 $L_1\ne L_2$ 都是极限，取 $\varepsilon=|L_1-L_2|/3$；当 $x$ 充分接近 $a$ 时，三角不等式给出 $|L_1-L_2|<2\varepsilon$，矛盾。

<!-- real_analysis_heine_criterion_for_function_limits -->
> [!Theorem]
> **Heine 归结原则 Heine Criterion for Function Limits**：设 $a$ 是 $D\subseteq\mathbb{R}$ 的聚点，$f:D\to\mathbb{R}$，$L\in\mathbb{R}$。则
> $$
> \lim_{x\to a}f(x)=L
> $$
> 当且仅当对每个满足 $x_n\in D\setminus\{a\}$ 且 $x_n\to a$ 的序列 $(x_n)_{n\geq1}$，都有
> $$
> f(x_n)\to L.
> $$
>
> **证明思路**：充分性用反证法：若极限定义不成立，可对每个 $n$ 选取 $x_n$，使 $0<|x_n-a|<1/n$ 而 $|f(x_n)-L|\geq\varepsilon_0$。必要性由 $\varepsilon$-$\delta$ 定义直接得到。

## 单侧极限与无穷远处的极限

<!-- real_analysis_one_sided_limit_definition -->
> [!Definition]
> **单侧极限 One-Sided Limit**：设 $f:D\to\mathbb{R}$，且 $a$ 分别是 $D\cap(-\infty,a)$ 与 $D\cap(a,+\infty)$ 的聚点。若
> $$
> \lim_{\substack{x\to a\\x<a}}f(x)=L
> $$
> 或
> $$
> \lim_{\substack{x\to a\\x>a}}f(x)=L,
> $$
> 则分别称其为 $f$ 在 $a$ 处的左极限与右极限，记为 $f(a-)$ 与 $f(a+)$。

<!-- real_analysis_two_sided_limit_by_one_sided_limits -->
> [!Theorem]
> **双侧极限的单侧刻画 One-Sided Characterization of a Two-Sided Limit**：若 $a$ 是 $D$ 的聚点，则
> $$
> \lim_{x\to a}f(x)=L
> $$
> 当且仅当左右极限都存在且
> $$
> f(a-)=f(a+)=L.
> $$
>
> **证明思路**：必要性可将全域中的 $\delta$ 条件限制在左右两侧。充分性时取两个单侧极限对应的 $\delta$ 的较小者。

<!-- real_analysis_limit_at_infinity_definition -->
> [!Definition]
> **无穷远处的极限 Limit at Infinity**：设 $f:D\to\mathbb{R}$，且 $D$ 在上方无界。若对任意 $\varepsilon>0$，存在 $M\in\mathbb{R}$，使得对任意 $x\in D$，
> $$
> x>M\Longrightarrow |f(x)-L|<\varepsilon,
> $$
> 则称 $f(x)$ 当 $x\to+\infty$ 时的极限为 $L$，记为 $\lim_{x\to+\infty}f(x)=L$。$x\to-\infty$ 的定义对偶。

<!-- real_analysis_infinite_function_limit_definition -->
> [!Definition]
> **无穷函数极限 Infinite Function Limit**：设 $a$ 是 $D$ 的聚点。若对任意 $M>0$，存在 $\delta>0$，使得对任意 $x\in D$，
> $$
> 0<|x-a|<\delta\Longrightarrow f(x)>M,
> $$
> 则称 $f(x)$ 当 $x\to a$ 时趋于 $+\infty$，记为 $\lim_{x\to a}f(x)=+\infty$。趋于 $-\infty$ 的定义类似。

## 极限的运算法则

<!-- real_analysis_limit_algebraic_rules -->
> [!Theorem]
> **函数极限的四则运算 Algebraic Rules for Function Limits**：设 $a$ 是 $D$ 的聚点，且
> $$
> \lim_{x\to a}f(x)=A,
> \qquad
> \lim_{x\to a}g(x)=B.
> $$
> 则对任意 $\alpha,\beta\in\mathbb{R}$，
> $$
> \lim_{x\to a}(\alpha f(x)+\beta g(x))=\alpha A+\beta B,
> $$
> $$
> \lim_{x\to a}f(x)g(x)=AB.
> $$
> 若 $B\ne0$，则当 $x$ 充分接近 $a$ 时 $g(x)\ne0$，并且
> $$
> \lim_{x\to a}\frac{f(x)}{g(x)}=\frac{A}{B}.
> $$
>
> **证明思路**：线性组合由三角不等式处理。乘法先由 $f(x)\to A$ 推出 $f$ 在 $a$ 的某去心邻域有界，再估计 $|fg-AB|$；商法则结合 $g(x)$ 最终远离零得到。

<!-- real_analysis_limit_composition_rule -->
> [!Theorem]
> **复合函数的极限 Composition Rule for Limits**：设 $a$ 是 $D$ 的聚点，$f:D\to\mathbb{R}$，且 $\lim_{x\to a}f(x)=b$。设 $g:E\to\mathbb{R}$ 在 $b$ 处有极限 $L$，并且存在 $a$ 的去心邻域，使其中的每个 $x\in D$ 都满足 $f(x)\in E\setminus\{b\}$。则
> $$
> \lim_{x\to a}g(f(x))=L.
> $$
>
> **证明思路**：先由 $g(y)\to L$ 选取 $b$ 的去心邻域，再由 $f(x)\to b$ 保证 $f(x)$ 落入该邻域；附加条件排除了复合中恒取 $b$ 而无法使用 $g$ 在去心邻域上极限信息的情形。

<!-- real_analysis_function_limit_example -->
> [!Example]+
> **函数极限的例子 Examples of Function Limits**：对 $x\ne0$，令
> $$
> f(x)=\frac{\sin x}{x}.
> $$
> 则
> $$
> \lim_{x\to0}f(x)=1.
> $$
> 另一方面，函数 $g(x)=1/x$ 满足
> $$
> \lim_{x\to0^+}g(x)=+\infty,
> \qquad
> \lim_{x\to0^-}g(x)=-\infty,
> $$
> 因而 $\lim_{x\to0}g(x)$ 不存在。
>
> **证明思路**：第一个结论由 $\cos x\leq\sin x/x\leq1$ 的夹逼关系及 $\cos x\to1$ 得到。第二个结论直接使用无穷函数极限的定义。

> **注**：本小节参见 Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 4；Tom M. Apostol, *Mathematical Analysis*, 2nd ed., Chapter 3。