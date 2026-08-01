## $L(1,\chi)$ 非零

<!-- analytic_number_theory_dirichlet_l_one_nonvanishing_theorem -->
> [!Theorem]
> **非主特征在 $s=1$ 的非零性 Non-Vanishing at $s=1$ for Nonprincipal Characters**：若 $\chi$ 是非主 Dirichlet 特征，则
>
> $$L(1,\chi)\ne0.$$
>
> **证明思路**：复特征情形可将 $L(s,\chi)$ 与其共轭特征配对，并利用适当 Euler 乘积组合在 $s=1$ 附近的正性排除零点。实非主特征情形利用 $L(s,\chi)$ 的解析性质、Euler 乘积及其与二次型或类数公式的联系得到正性，排除 $s=1$ 的零点。

<!-- analytic_number_theory_complex_character_l_one_nonvanishing -->
> [!Theorem]
> **复特征的 $L(1,\chi)$ 非零性 Non-Vanishing for Complex Characters**：若 $\chi\ne\overline{\chi}$ 为非主特征，则 $L(1,\chi)\ne0$。
>
> **证明思路**：考察含有 $\zeta(s)$、$L(s,\chi)$ 与 $L(s,\overline{\chi})$ 的 Euler 乘积组合。其对数系数可由非负三角多项式控制；若 $L(1,\chi)=0$，则该组合在 $s=1$ 的零极点阶数与正性矛盾。

<!-- analytic_number_theory_real_character_l_one_nonvanishing -->
> [!Theorem]
> **实特征的 $L(1,\chi)$ 非零性 Non-Vanishing for Real Characters**：若 $\chi$ 为非主实 Dirichlet 特征，即 $\chi=\overline{\chi}$，则 $L(1,\chi)\ne0$。
>
> **证明思路**：可借助二次特征对应二次域的类数公式，后者把 $L(1,\chi)$ 表为非零的代数算术量。也可用 Dirichlet 的初等方法，结合二次型表示数的计数函数与 Euler 乘积给出直接证明。

<!-- analytic_number_theory_dirichlet_nonvanishing_theorem -->
> [!Corollary]
> **Dirichlet 算术级数素数定理的关键输入 Key Input for Dirichlet's Theorem**：对每个模 $q$ 的非主特征均有 $L(1,\chi)\ne0$，这一结论与特征正交关系结合，排除了算术级数中素数无穷性的证明里非主特征造成的主项抵消。

> **注**：$L(1,\chi)\ne0$ 仅断言点 $s=1$ 不为零；它不排除实特征的零点非常接近 $1$，这正是 Siegel 零点问题。