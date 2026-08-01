## Chebyshev 函数

<!-- analytic_number_theory_prime_counting_function_definition -->
> [!Definition]
> **素数计数函数 Prime-Counting Function**：对实数 $x\geq1$，定义
>
> $$\pi(x)=\#\{p\text{ 为素数}:p\leq x\}.$$

<!-- analytic_number_theory_chebyshev_functions_recall -->
> [!Definition]
> **Chebyshev 函数 Chebyshev Functions**：定义
>
> $$\theta(x)=\sum_{p\leq x}\log p,\qquad \psi(x)=\sum_{n\leq x}\Lambda(n)=\sum_{p^k\leq x}\log p,$$
>
> 其中第二个求和中 $p$ 遍历素数，$k\geq1$。函数 $\theta$ 只对素数加权，$\psi$ 还计入高次素数幂。

<!-- analytic_number_theory_chebyshev_function_relation -->
> [!Theorem]
> **Chebyshev 函数之间的关系 Relation between Chebyshev Functions**：当 $x\geq2$ 时，
>
> $$\psi(x)=\sum_{k\geq1}\theta\left(x^{1/k}\right),$$
>
> 其中求和只有有限个非零项。特别地，
>
> $$\psi(x)-\theta(x)=O\left(\sqrt{x}\log x\right).$$
>
> **证明思路**：按素数幂 $p^k$ 的指数 $k$ 重组 $\psi$ 的和式。对 $k\geq2$ 的项，以 Chebyshev 上界 $\theta(y)=O(y)$ 估计，并对 $k$ 求和。

<!-- analytic_number_theory_chebyshev_estimates_theorem -->
> [!Theorem]
> **Chebyshev 估计 Chebyshev Estimates**：存在正常数 $c_1,c_2$ 与 $x_0$，使得对所有 $x\geq x_0$，
>
> $$c_1x\leq\theta(x)\leq c_2x,$$
>
> 并且同样有 $c_1x\leq\psi(x)\leq c_2x$。
>
> **证明思路**：上界可由二项式系数的素因子分解与 $\binom{2n}{n}<4^n$ 得到；下界结合二项式系数的增长、素数幂贡献的控制以及递推分割论证。

<!-- analytic_number_theory_pi_theta_partial_summation_formula -->
> [!Theorem]
> **$\pi$ 与 $\theta$ 的部分求和关系 Partial Summation Relation between $\pi$ and $\theta$**：当 $x\geq2$ 时，
>
> $$\pi(x)=\frac{\theta(x)}{\log x}+\int_2^x\frac{\theta(t)}{t(\log t)^2}\,dt,$$
>
> 并且
>
> $$\theta(x)=\pi(x)\log x-\int_2^x\frac{\pi(t)}{t}\,dt.$$
>
> **证明思路**：分别对以素数为跳跃点的阶梯函数应用 Abel 求和公式，取权重函数 $(\log t)^{-1}$ 与 $\log t$。