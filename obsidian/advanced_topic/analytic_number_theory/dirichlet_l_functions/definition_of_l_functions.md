## $L$ 函数的定义

<!-- analytic_number_theory_dirichlet_l_function_definition -->
> [!Definition]
> **Dirichlet $L$ 函数 Dirichlet $L$-Function**：设 $\chi$ 是模 $q$ 的 Dirichlet 特征。当 $\operatorname{Re}(s)>1$ 时，定义
>
> $$L(s,\chi)=\sum_{n=1}^{\infty}\frac{\chi(n)}{n^s}.$$
>
> 该级数在该半平面绝对且局部一致收敛，故定义全纯函数。

<!-- analytic_number_theory_dirichlet_l_function_euler_product -->
> [!Theorem]
> **Dirichlet $L$ 函数的 Euler 乘积 Euler Product of a Dirichlet $L$-Function**：当 $\operatorname{Re}(s)>1$ 时，
>
> $$L(s,\chi)=\prod_p\left(1-\frac{\chi(p)}{p^s}\right)^{-1}.$$
>
> 若 $p\mid q$，则 $\chi(p)=0$，相应局部因子为 $1$。
>
> **证明思路**：Dirichlet 特征完全积性。将局部几何级数相乘，并由整数唯一素因数分解重组各项；绝对收敛保证该操作合法。

<!-- analytic_number_theory_principal_character_l_function_formula -->
> [!Theorem]
> **主特征的 $L$ 函数 Principal Character $L$-Function**：当 $\operatorname{Re}(s)>1$ 时，模 $q$ 的主特征满足
>
> $$L(s,\chi_0)=\zeta(s)\prod_{p\mid q}\left(1-p^{-s}\right).$$
>
> **证明思路**：从 $\zeta(s)$ 的 Euler 乘积中删去所有整除 $q$ 的素数局部因子，即得到 $L(s,\chi_0)$ 的 Euler 乘积。

<!-- analytic_number_theory_dirichlet_l_function_absolute_convergence -->
> [!Theorem]
> **Dirichlet $L$ 级数的绝对收敛性 Absolute Convergence of Dirichlet $L$-Series**：对任意模 $q$ 的 Dirichlet 特征 $\chi$，级数 $L(s,\chi)$ 在 $\operatorname{Re}(s)>1$ 绝对收敛。其绝对收敛横坐标等于 $1$。
>
> **证明思路**：由 $|\chi(n)|\leq1$，绝对收敛性由 Riemann zeta 级数的收敛性比较得到。又在与 $q$ 互素的整数上 $|\chi(n)|=1$，相应的子级数在 $\operatorname{Re}(s)\leq1$ 发散。