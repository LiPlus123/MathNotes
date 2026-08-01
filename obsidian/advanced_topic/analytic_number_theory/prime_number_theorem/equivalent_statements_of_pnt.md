## 素数定理的等价形式

<!-- analytic_number_theory_prime_number_theorem_statement -->
> [!Theorem]
> **素数定理 Prime Number Theorem**：当 $x\to\infty$ 时，
>
> $$\pi(x)\sim\frac{x}{\log x}.$$
>
> 也就是说，不超过 $x$ 的素数个数渐近等于 $x/\log x$。

<!-- analytic_number_theory_pnt_equivalent_chebyshev_forms -->
> [!Theorem]
> **素数定理的 Chebyshev 等价形式 Equivalent Chebyshev Forms of the Prime Number Theorem**：以下三个断言等价：
>
> $$\pi(x)\sim\frac{x}{\log x},\qquad \theta(x)\sim x,\qquad \psi(x)\sim x.$$
>
> **证明思路**：由 $\psi(x)-\theta(x)=O(\sqrt{x}\log x)=o(x)$，后两个断言等价。由 $\pi$ 与 $\theta$ 的部分求和关系，$\theta(x)\sim x$ 蕴含 $\pi(x)\sim x/\log x$；反向方向对 $\theta$ 的部分求和公式估计积分项即可。

<!-- analytic_number_theory_logarithmic_integral_definition -->
> [!Definition]
> **对数积分 Logarithmic Integral**：对 $x>2$，定义
>
> $$\operatorname{li}(x)=\int_2^x\frac{dt}{\log t}.$$
>
> 它满足 $\operatorname{li}(x)\sim x/\log x$。因而素数定理也等价于 $\pi(x)\sim\operatorname{li}(x)$。

<!-- analytic_number_theory_pnt_mangoldt_weighted_form -->
> [!Theorem]
> **von Mangoldt 加权形式 von Mangoldt-Weighted Form**：素数定理等价于
>
> $$\sum_{n\leq x}\Lambda(n)=x+o(x).$$
>
> 该形式即为 $\psi(x)\sim x$，其 Dirichlet 生成函数为
>
> $$-\frac{\zeta'(s)}{\zeta(s)}=\sum_{n=1}^{\infty}\frac{\Lambda(n)}{n^s}\qquad(\operatorname{Re}(s)>1).$$