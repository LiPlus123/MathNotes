## Selberg 筛法

<!-- analytic_number_theory_selberg_lambda_square_sieve_definition -->
> [!Definition]
> **Selberg $\Lambda^2$ 筛 Selberg $\Lambda^2$ Sieve**：设 $\mathcal A$ 为有限整数集，$P(z)$ 为筛素数的乘积。取实数权重 $(\lambda_d)$，满足 $\lambda_1=1$ 且 $\lambda_d=0$ 当 $d\nmid P(z)$ 或 $d$ 超过预定筛水平时。因为
>
> $$\mathbf{1}_{\gcd(n,P(z))=1}\leq\left(\sum_{d\mid n}\lambda_d\right)^2,$$
>
> 故筛余集满足
>
> $$S(\mathcal A,\mathcal P,z)\leq\sum_{n\in\mathcal A}\left(\sum_{d\mid n}\lambda_d\right)^2.$$
>
> 选择使右端尽量小的权重，称为 Selberg $\Lambda^2$ 筛。

<!-- analytic_number_theory_selberg_sieve_quadratic_form -->
> [!Theorem]
> **Selberg 筛的二次型 Selberg Sieve Quadratic Form**：若
>
> $$\#\mathcal A_d=Xg(d)+r_d$$
>
> 对相关 $d$ 成立，则 Selberg 筛上界右端等于
>
> $$X\sum_{d_1,d_2}\lambda_{d_1}\lambda_{d_2}g([d_1,d_2])+
> \sum_{d_1,d_2}\lambda_{d_1}\lambda_{d_2}r_{[d_1,d_2]},$$
>
> 其中 $[d_1,d_2]$ 是最小公倍数。
>
> **证明思路**：展开平方和，按 $d_1,d_2$ 交换求和；条件 $d_1\mid n$ 且 $d_2\mid n$ 等价于 $[d_1,d_2]\mid n$，再代入 $\#\mathcal A_d$ 的近似。

<!-- analytic_number_theory_selberg_upper_bound_sieve_theorem -->
> [!Theorem]
> **Selberg 上界筛 Selberg Upper-Bound Sieve**：在通常的筛维数与余项控制条件下，Selberg 权重使上述主二次型最小，从而给出形如
>
> $$S(\mathcal A,\mathcal P,z)\ll X\prod_{\substack{p<z\\p\in\mathcal P}}(1-g(p))$$
>
> 的上界，另加由余项 $r_d$ 决定的误差项。
>
> **证明思路**：对二次型进行对角化或使用 Cauchy-Schwarz 不等式求出最优权重。其平方结构保证上界性，而局部密度的乘积给出筛后的预期主项规模。

> **注**：上界筛通常不能单独证明某个集合中存在素数，因为它难以有效地区分“至多两个素因子”的数与素数；这称为筛法的 parity problem。