## Dedekind zeta 函数

<!-- analytic_number_theory_dedekind_zeta_function_definition -->
> [!Definition]
> **Dedekind zeta 函数 Dedekind Zeta Function**：设 $K$ 为数域，$\mathcal O_K$ 为其整数环。对 $\operatorname{Re}(s)>1$，定义
>
> $$\zeta_K(s)=\sum_{\mathfrak a\ne0}\frac{1}{(N\mathfrak a)^s},$$
>
> 其中求和遍历 $\mathcal O_K$ 的非零整理想，$N\mathfrak a=|\mathcal O_K/\mathfrak a|$ 是理想范数。

<!-- analytic_number_theory_dedekind_zeta_euler_product -->
> [!Theorem]
> **Dedekind zeta 函数的 Euler 乘积 Euler Product of the Dedekind Zeta Function**：在 $\operatorname{Re}(s)>1$ 中，
>
> $$\zeta_K(s)=\prod_{\mathfrak p}\left(1-(N\mathfrak p)^{-s}\right)^{-1},$$
>
> 其中乘积遍历 $\mathcal O_K$ 的非零素理想。
>
> **证明思路**：Dedekind 整环中非零理想具有唯一素理想分解。绝对收敛允许把理想和按素理想幂分解为局部几何级数的乘积。

<!-- analytic_number_theory_dedekind_zeta_continuation_theorem -->
> [!Theorem]
> **Dedekind zeta 函数的解析性质 Analytic Properties of the Dedekind Zeta Function**：$\zeta_K(s)$ 可亚纯延拓到整个复平面，并满足函数方程；它在 $s=1$ 有一个单极点，且其留数为正。
>
> **证明思路**：将 $\zeta_K$ 与数域格上的 theta 级数的 Mellin 变换联系。Poisson 求和导出完成 zeta 函数的函数方程，进而得到延拓与极点结构。

<!-- analytic_number_theory_dirichlet_class_number_formula -->
> [!Theorem]
> **解析类数公式 Analytic Class Number Formula**：设 $r_1,r_2$ 分别为 $K$ 的实嵌入和复嵌入对数，$h_K$ 为类数，$R_K$ 为调节子，$w_K$ 为 $K$ 中单位根个数，$d_K$ 为判别式。则
>
> $$\operatorname*{Res}_{s=1}\zeta_K(s)=\frac{2^{r_1}(2\pi)^{r_2}h_KR_K}{w_K\sqrt{|d_K|}}.$$
>
> **证明思路**：一方面通过理想类分解及 Minkowski 嵌入计算 zeta 函数在 $s=1$ 的留数；另一方面用单位群的基本域体积表示该留数，比较两种计算即得公式。