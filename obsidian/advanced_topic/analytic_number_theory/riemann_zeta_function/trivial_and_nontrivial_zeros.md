## 平凡零点与非平凡零点

<!-- analytic_number_theory_zeta_trivial_zeros_theorem -->
> [!Theorem]
> **Riemann zeta 函数的平凡零点 Trivial Zeros of the Riemann Zeta Function**：$\zeta(s)$ 在每个负偶整数处有一个单零点：
>
> $$s=-2,-4,-6,\ldots.$$
>
> **证明思路**：在函数方程中，$\Gamma(s/2)$ 于负偶整数处有单极点，而完成函数 $\xi(s)$ 整；其他因子在这些点不为零，故 $\zeta(s)$ 必有单零点以抵消该极点。

<!-- analytic_number_theory_zeta_nontrivial_zeros_critical_strip -->
> [!Theorem]
> **非平凡零点位于临界带 Nontrivial Zeros in the Critical Strip**：$\zeta(s)$ 的非平凡零点全部位于临界带
>
> $$0<\operatorname{Re}(s)<1.$$
>
> **证明思路**：当 $\operatorname{Re}(s)>1$ 时，Euler 乘积表明 $\zeta(s)\ne0$。若 $\operatorname{Re}(s)<0$，函数方程与 Gamma 函数的零点、极点结构表明零点只能是负偶整数处的平凡零点；其余区域由 $s\mapsto1-s$ 的对称性排除。

<!-- analytic_number_theory_critical_line_infinitely_many_zeros -->
> [!Theorem]
> **临界线上的无穷多个零点 Infinitely Many Zeros on the Critical Line**：临界线 $\operatorname{Re}(s)=1/2$ 上有无穷多个 zeta 函数的非平凡零点。
>
> **证明思路**：Hardy 利用完成函数在临界线上的实值性及其变号性质证明该结论。更精细的平均值方法还能给出临界线零点数量的正比例下界。

> **注**：已知非平凡零点在临界带内关于实轴和临界线对称，见“函数方程”小节。