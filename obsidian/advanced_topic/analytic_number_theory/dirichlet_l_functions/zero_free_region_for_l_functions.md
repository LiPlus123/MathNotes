## $L$ 函数的零点无空隙区

<!-- analytic_number_theory_dirichlet_l_nonvanishing_on_one_line -->
> [!Theorem]
> **单位实部直线上的非零性 Non-Vanishing on $\operatorname{Re}(s)=1$**：若 $\chi$ 是任意 Dirichlet 特征，则除主特征在 $s=1$ 的极点外，$L(s,\chi)$ 在直线 $\operatorname{Re}(s)=1$ 上没有零点。
>
> **证明思路**：将 Hadamard--de la Vallée Poussin 的正性方法推广到 Dirichlet $L$ 函数，利用若干特征 $L$ 函数的 Euler 乘积及非负三角多项式，排除单位实部直线上的零点。

<!-- analytic_number_theory_dirichlet_l_classical_zero_free_region -->
> [!Theorem]
> **Dirichlet $L$ 函数的经典零点无空隙区 Classical Zero-Free Region for Dirichlet $L$-Functions**：存在绝对常数 $c>0$，使得对模 $q$ 的原特征 $\chi$，$L(s,\chi)$ 在区域
>
> $$\operatorname{Re}(s)\geq1-\frac{c}{\log(q(|\operatorname{Im}(s)|+3))}$$
>
> 内无零，至多可能有一个例外：由实原特征产生的一个实单零点。
>
> **证明思路**：对 $L'/L$ 使用 Euler 乘积导出的正性估计，并量化单位实部直线非零性的论证。实特征时的正性方法不能排除单个接近 $1$ 的实零点，故产生例外。

<!-- analytic_number_theory_siegel_zero_definition -->
> [!Definition]
> **Siegel 零点 Siegel Zero**：上述可能存在的例外实零点称为 Siegel 零点，或 exceptional zero。它只能属于实原 Dirichlet 特征的 $L$ 函数，并且若存在，则为单零点且非常接近 $1$。

<!-- analytic_number_theory_siegel_zero_ineffectivity_theorem -->
> [!Theorem]
> **Siegel 定理与非有效性 Siegel's Theorem and Ineffectivity**：对每个 $\varepsilon>0$，存在常数 $c_\varepsilon>0$，使得任意实原特征 $\chi$ 的实零点 $\beta$ 满足
>
> $$1-\beta\geq c_\varepsilon q^{-\varepsilon}.$$
>
> 已知证明中的 $c_\varepsilon$ 一般不能有效计算；这称为 Siegel 定理的非有效性。
>
> **证明思路**：将实特征的特殊值、类数公式与代数数论中的下界结合，得到零点不能过于接近 $1$ 的定性估计；其关键下界不提供有效常数。