## Abel 求和公式

<!-- analytic_number_theory_summatory_function_definition -->
> [!Definition]
> **求和函数 Summatory Function**：给定复数列 $(a_n)_{n\geq1}$，定义其求和函数为
>
> $$A(x)=\sum_{n\leq x}a_n\qquad(x\geq1).$$
>
> 它是一个右连续的阶梯函数，在正整数处的跳跃量为对应的 $a_n$。

<!-- analytic_number_theory_abel_summation_formula -->
> [!Theorem]
> **Abel 求和公式 Abel Summation Formula**：设 $f:[1,x]\to\mathbb{C}$ 为连续可微函数，则
>
> $$\sum_{n\leq x}a_nf(n)=A(x)f(x)-\int_1^xA(t)f'(t)\,dt.$$
>
> **证明思路**：把有限和写成 Riemann-Stieltjes 积分 $\int_{1^-}^{x}f(t)\,dA(t)$，再对阶梯函数 $A$ 与连续函数 $f$ 作分部积分。

<!-- analytic_number_theory_abel_summation_reciprocal_example -->
> [!Example]+
> **倒数权重求和 Reciprocal-Weight Summation**：在 Abel 求和公式中取 $f(t)=1/t$，得到
>
> $$\sum_{n\leq x}\frac{a_n}{n}=\frac{A(x)}{x}+\int_1^x\frac{A(t)}{t^2}\,dt.$$
>
> 因而若已知 $A(x)$ 的增长估计，便可将其转化为带倒数权重的和式估计。

<!-- analytic_number_theory_euler_maclaurin_summation_formula -->
> [!Theorem]
> **Euler-Maclaurin 求和公式 Euler-Maclaurin Summation Formula**：设 $a<b$ 为整数，$m\geq1$，且 $f\in C^{2m}([a,b])$。则
>
> $$
> \sum_{n=a}^{b}f(n)
> =\int_a^b f(t)\,dt+\frac{f(a)+f(b)}{2}
> +\sum_{k=1}^{m}\frac{B_{2k}}{(2k)!}\left(f^{(2k-1)}(b)-f^{(2k-1)}(a)\right)+R_m,
> $$
>
> 其中 $B_{2k}$ 为 Bernoulli 数，余项为
>
> $$R_m=-\frac{1}{(2m)!}\int_a^b\widetilde{B}_{2m}(t)f^{(2m)}(t)\,dt,$$
>
> 而 $\widetilde{B}_{2m}(t)=B_{2m}(t-\lfloor t\rfloor)$ 是周期 Bernoulli 多项式。
>
> **证明思路**：分段对每个区间 $[n,n+1]$ 作积分分部，并利用 Bernoulli 多项式的导数关系；累加边界项即可。

<!-- analytic_number_theory_euler_maclaurin_application -->
> [!Example]+
> **Euler-Maclaurin 公式的应用 Application of Euler-Maclaurin Summation**：若 $f$ 及其导数具有适当衰减，Euler-Maclaurin 公式以积分及边界导数近似离散和。取 $f(t)=\log t$ 可导出阶乘的渐近展开；取 $f(t)=t^{-s}$ 则是研究 zeta 型部分和与误差项的基本工具。