## 定义与 Euler 乘积

<!-- analytic_number_theory_riemann_zeta_dirichlet_series_definition -->
> [!Definition]
> **Riemann zeta 函数 Riemann Zeta Function**：当 $\operatorname{Re}(s)>1$ 时，定义
>
> $$\zeta(s)=\sum_{n=1}^{\infty}\frac{1}{n^s}.$$
>
> 此级数在该半平面绝对且局部一致收敛，故定义全纯函数。

<!-- analytic_number_theory_riemann_zeta_euler_product_theorem -->
> [!Theorem]
> **Riemann zeta 函数的 Euler 乘积 Euler Product of the Riemann Zeta Function**：当 $\operatorname{Re}(s)>1$ 时，
>
> $$\zeta(s)=\prod_p\left(1-p^{-s}\right)^{-1},$$
>
> 其中乘积遍历所有素数 $p$。特别地，$\zeta(s)\ne0$ 对所有 $\operatorname{Re}(s)>1$ 成立。
>
> **证明思路**：将每个局部因子展开为几何级数；由算术基本定理，有限乘积展开的项与相应素数集合生成的整数一一对应。绝对收敛保证取极限和重排合法。

<!-- analytic_number_theory_zeta_prime_reciprocal_divergence -->
> [!Corollary]
> **素数倒数和发散 Divergence of the Sum of Prime Reciprocals**：素数倒数和发散：
>
> $$\sum_p\frac1p=\infty.$$
>
> **证明思路**：若该和收敛，则 Euler 乘积在 $s=1$ 处收敛到有限非零值；但比较 $\sum_{n\leq x}1/n$ 与有限 Euler 乘积可知调和级数将收敛，矛盾。