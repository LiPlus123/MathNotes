## Euler 乘积

<!-- analytic_number_theory_euler_product_theorem -->
> [!Theorem]
> **积性函数的 Euler 乘积 Euler Product for Multiplicative Functions**：设 $f$ 为积性数论函数。若对某个实数 $\sigma$，级数 $\sum_{n\geq1}|f(n)|n^{-\sigma}$ 收敛，则当 $\operatorname{Re}(s)\geq\sigma$ 时，
>
> $$\sum_{n=1}^{\infty}\frac{f(n)}{n^s}=\prod_p\left(\sum_{k=0}^{\infty}\frac{f(p^k)}{p^{ks}}\right).$$
>
> 右端乘积遍历所有素数 $p$，并由绝对收敛定义为有限素数乘积的极限。
>
> **证明思路**：先展开有限个素数对应的有限乘积。唯一分解定理将其项与只含这些素因子的整数一一对应；令素数集合递增至全体素数，并使用绝对收敛取极限。

<!-- analytic_number_theory_completely_multiplicative_euler_product -->
> [!Corollary]
> **完全积性函数的 Euler 乘积 Euler Product for Completely Multiplicative Functions**：若 $f$ 完全积性，且上一定理的绝对收敛条件成立，则
>
> $$\sum_{n=1}^{\infty}\frac{f(n)}{n^s}=\prod_p\left(1-\frac{f(p)}{p^s}\right)^{-1}.$$
>
> **证明思路**：完全积性给出 $f(p^k)=f(p)^k$；每个局部因子是收敛的几何级数。

<!-- analytic_number_theory_euler_product_convergence_criterion -->
> [!Theorem]
> **Euler 乘积的绝对收敛性 Absolute Convergence of Euler Products**：在 $\operatorname{Re}(s)=\sigma$ 上，若
>
> $$\sum_p\sum_{k=1}^{\infty}\left|\frac{f(p^k)}{p^{ks}}\right|<\infty,$$
>
> 则 Euler 乘积绝对收敛，且可按局部因子展开为 Dirichlet 级数。特别地，$\sum_{n\geq1}|f(n)|n^{-\sigma}<\infty$ 蕴含此条件。
>
> **证明思路**：绝对收敛使局部因子偏离 $1$ 的总量可求和，从而有限乘积构成 Cauchy 列；利用唯一分解定理识别展开后的系数。

<!-- analytic_number_theory_riemann_zeta_euler_product_example -->
> [!Example]+
> **Riemann zeta 函数的 Euler 乘积 Euler Product of the Riemann Zeta Function**：在 $\operatorname{Re}(s)>1$ 中，
>
> $$\zeta(s)=\prod_p\left(1-\frac{1}{p^s}\right)^{-1}.$$
>
> **证明思路**：对恒等于 $1$ 的完全积性函数应用上述推论。该乘积揭示了 $\zeta(s)$ 与素数分布的基本联系。