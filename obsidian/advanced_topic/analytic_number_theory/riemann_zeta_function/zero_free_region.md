## 零点无空隙区

<!-- analytic_number_theory_zeta_nonvanishing_on_one_line -->
> [!Theorem]
> **单位实部直线上的非零性 Non-Vanishing on the Line $\operatorname{Re}(s)=1$**：对任意实数 $t$，
>
> $$\zeta(1+it)\ne0.$$
>
> **证明思路**：Hadamard--de la Vallée Poussin 方法考察由 $\zeta(s)$ 的 Euler 乘积导出的非负三角多项式，并结合其对数导数在 $s=1+it$ 附近的行为，排除该直线上的零点。

<!-- analytic_number_theory_classical_zeta_zero_free_region -->
> [!Theorem]
> **经典零点无空隙区 Classical Zero-Free Region**：存在常数 $c>0$，使得 $\zeta(s)$ 在区域
>
> $$\operatorname{Re}(s)\geq1-\frac{c}{\log\left(|\operatorname{Im}(s)|+3\right)}$$
>
> 内没有零点。
>
> **证明思路**：将单位实部直线非零性的证明量化，结合 $\zeta'/\zeta$ 的估计和 Euler 乘积所产生的正性，得到零点到直线 $\operatorname{Re}(s)=1$ 的显式距离下界。

<!-- analytic_number_theory_zero_free_region_prime_distribution_corollary -->
> [!Corollary]
> **零点无空隙区与素数分布 Zero-Free Regions and Prime Distribution**：经典零点无空隙区蕴含存在 $c'>0$，使得
>
> $$\psi(x)=x+O\left(x\exp\left(-c'\sqrt{\log x}\right)\right).$$
>
> 因而特别推出素数定理 $\psi(x)\sim x$。
>
> **证明思路**：对 $-\zeta'(s)/\zeta(s)$ 应用 Perron 公式并移动积分路径。无零区域使新路径上的对数导数可控，平衡截断高度与路径位置即可得误差项。