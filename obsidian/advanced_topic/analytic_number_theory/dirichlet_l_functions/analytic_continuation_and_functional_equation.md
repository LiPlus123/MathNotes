## 解析延拓与函数方程

<!-- analytic_number_theory_gauss_sum_definition -->
> [!Definition]
> **Gauss 和 Gauss Sum**：设 $\chi$ 为模 $q$ 的 Dirichlet 特征，定义其 Gauss 和为
>
> $$\tau(\chi)=\sum_{a=1}^{q}\chi(a)e^{2\pi ia/q}.$$
>
> 若 $\chi$ 是原特征，则 $|\tau(\chi)|=\sqrt{q}$。

<!-- analytic_number_theory_dirichlet_l_function_continuation_theorem -->
> [!Theorem]
> **非主 Dirichlet $L$ 函数的解析延拓 Analytic Continuation of Nonprincipal Dirichlet $L$-Functions**：若 $\chi$ 是非主 Dirichlet 特征，则 $L(s,\chi)$ 可唯一延拓为整个复平面上的整函数。若 $\chi=\chi_0$ 是模 $q$ 的主特征，则 $L(s,\chi_0)$ 亚纯延拓到整个复平面，且在 $s=1$ 有单极点。
>
> **证明思路**：利用特征的周期性，将 $L(s,\chi)$ 写为 Hurwitz zeta 函数的有限线性组合。非主特征满足 $\sum_{a=1}^{q}\chi(a)=0$，从而消去 Hurwitz zeta 函数在 $s=1$ 的极点。

<!-- analytic_number_theory_completed_dirichlet_l_function_definition -->
> [!Definition]
> **完成 Dirichlet $L$ 函数 Completed Dirichlet $L$-Function**：设 $\chi$ 是导子为 $q$ 的原特征，令
>
> $$a=\begin{cases}0,&\chi(-1)=1,\\1,&\chi(-1)=-1.\end{cases}$$
>
> 定义
>
> $$\Lambda(s,\chi)=\left(\frac{q}{\pi}\right)^{(s+a)/2}\Gamma\left(\frac{s+a}{2}\right)L(s,\chi).$$

<!-- analytic_number_theory_dirichlet_l_function_functional_equation -->
> [!Theorem]
> **原 Dirichlet $L$ 函数的函数方程 Functional Equation for Primitive Dirichlet $L$-Functions**：若 $\chi$ 是导子为 $q$ 的原特征，且 $a$ 如上定义，则
>
> $$\Lambda(s,\chi)=\varepsilon(\chi)\Lambda(1-s,\overline{\chi}),$$
>
> 其中
>
> $$\varepsilon(\chi)=\frac{\tau(\chi)}{i^a\sqrt q},\qquad |\varepsilon(\chi)|=1.$$
>
> **证明思路**：构造带特征权重的 theta 级数，对其应用 Poisson 求和公式。Gauss 和给出 Fourier 变换的常数；对 theta 级数作 Mellin 变换并延拓即可。