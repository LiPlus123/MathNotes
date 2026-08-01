## Brun 筛法

<!-- analytic_number_theory_brun_combinatorial_sieve_definition -->
> [!Definition]
> **Brun 组合筛 Brun's Combinatorial Sieve**：Brun 筛以截断的容斥和替代完整的 Legendre 容斥和。通过选取仅在有限个素因子上非零的上、下界权重 $\lambda_d^+$、$\lambda_d^-$，分别得到筛余集 $S(\mathcal{A},\mathcal{P},z)$ 的上界与下界，同时避免对全部 $d\mid P(z)$ 求和。

<!-- analytic_number_theory_brun_upper_bound_twin_primes -->
> [!Theorem]
> **Brun 筛的孪生素数上界 Brun Sieve Bound for Twin Primes**：设
>
> $$\pi_2(x)=\#\{p\leq x:p\text{ 与 }p+2\text{ 均为素数}\}.$$
>
> 则存在绝对常数 $C>0$，使得
>
> $$\pi_2(x)\leq C\,C_2\frac{x}{(\log x)^2}\qquad(x\geq2),$$
>
> 其中
>
> $$C_2=\prod_{p>2}\frac{p(p-2)}{(p-1)^2}$$
>
> 是孪生素数常数。
>
> **证明思路**：对集合 $\{n(n+2):n\leq x\}$ 筛去小素数因子。每个奇素数 $p$ 排除两个剩余类，局部密度形成乘积 $\prod_{p<z,p>2}(1-2/p)$；Brun 上界筛控制截断误差。

<!-- analytic_number_theory_brun_theorem_twin_prime_reciprocals -->
> [!Theorem]
> **Brun 定理 Brun's Theorem**：孪生素数倒数和收敛：
>
> $$\sum_{\substack{p\text{ 和 }p+2\\\text{均为素数}}}\left(\frac1p+\frac1{p+2}\right)<\infty.$$
>
> 该和的值称为 Brun 常数。
>
> **证明思路**：由 Brun 筛的界 $\pi_2(x)=O(x/(\log x)^2)$，对孪生素数进行分块计数或 Abel 求和，即可将倒数和控制为收敛积分 $\int_2^\infty dt/(t(\log t)^2)$。

> **注**：Brun 定理不蕴含孪生素数只有有限个；一个无限集合的倒数和也可能收敛。