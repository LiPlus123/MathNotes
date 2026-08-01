## Dirichlet 级数与数论函数

<!-- analytic_number_theory_arithmetic_function_dirichlet_series_definition -->
> [!Definition]
> **数论函数的 Dirichlet 生成函数 Dirichlet Generating Function**：数论函数 $f$ 的 Dirichlet 生成函数定义为
>
> $$D_f(s)=\sum_{n=1}^{\infty}\frac{f(n)}{n^s},$$
>
> 其中 $s$ 取在该级数的收敛半平面内。它将数论函数的因数分解结构转化为复变量函数的乘积与商。

<!-- analytic_number_theory_dirichlet_convolution_series_product -->
> [!Theorem]
> **Dirichlet 卷积与级数乘积 Dirichlet Convolution and Series Product**：设 $f,g$ 为数论函数。若在 $\operatorname{Re}(s)>\sigma$ 中，$D_f(s)$ 与 $D_g(s)$ 都绝对收敛，则
>
> $$D_f(s)D_g(s)=D_{f*g}(s).$$
>
> **证明思路**：绝对收敛允许重排双重级数。按积 $n=ab$ 合并 $\sum_{a,b\geq1}f(a)g(b)(ab)^{-s}$ 的同类项，所得系数正是 $(f*g)(n)$。

<!-- analytic_number_theory_standard_dirichlet_series_identities -->
> [!Theorem]
> **常见数论函数的 Dirichlet 级数 Standard Dirichlet Series Identities**：在 $\operatorname{Re}(s)>1$ 中有
>
> $$
> \begin{align*}
> \zeta(s)&=\sum_{n=1}^{\infty}\frac{1}{n^s}, &
> \frac{1}{\zeta(s)}&=\sum_{n=1}^{\infty}\frac{\mu(n)}{n^s},\\
> \zeta(s)^2&=\sum_{n=1}^{\infty}\frac{d(n)}{n^s}, &
> \zeta(s)\zeta(s-\alpha)&=\sum_{n=1}^{\infty}\frac{\sigma_\alpha(n)}{n^s},\\
> \frac{\zeta(s-1)}{\zeta(s)}&=\sum_{n=1}^{\infty}\frac{\varphi(n)}{n^s}, &
> -\frac{\zeta'(s)}{\zeta(s)}&=\sum_{n=1}^{\infty}\frac{\Lambda(n)}{n^s}.
> \end{align*}
> $$
>
> 第二行左式还要求 $\operatorname{Re}(s)>\max\{1,1+\operatorname{Re}(\alpha)\}$。这些恒等式在各自两端绝对收敛的区域成立。
>
> **证明思路**：前五个恒等式分别由 $\mu*\mathbf{1}=\varepsilon$、$\mathbf{1}*\mathbf{1}=d$、$\mathbf{1}*\mathrm{id}_\alpha=\sigma_\alpha$ 与 $\varphi*\mathbf{1}=\mathrm{id}$ 及卷积乘积公式得到。最后一个恒等式由 Euler 乘积的对数微分得到。