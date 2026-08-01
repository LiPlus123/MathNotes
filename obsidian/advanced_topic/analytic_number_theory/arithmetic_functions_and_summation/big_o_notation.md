## 渐近符号与估计

<!-- analytic_number_theory_big_o_notation_definition -->
> [!Definition]
> **大 $O$ 记号 Big O Notation**：设 $f,g$ 为定义在充分大实数上的复值函数，且 $g(x)\ne0$。若存在常数 $C>0$ 与 $x_0$，使得对一切 $x\geq x_0$ 有
>
> $$|f(x)|\leq C|g(x)|,$$
>
> 则记为 $f(x)=O(g(x))$，或 $f(x)\ll g(x)$。其中隐含常数可以依赖于预先固定的参数，但不得依赖于 $x$。

<!-- analytic_number_theory_little_o_notation_definition -->
> [!Definition]
> **小 $o$ 记号 Little o Notation**：若
>
> $$\lim_{x\to\infty}\frac{f(x)}{g(x)}=0,$$
>
> 则记为 $f(x)=o(g(x))$。这表示 $f$ 的增长严格低于 $g$。

<!-- analytic_number_theory_asymptotic_comparison_definitions -->
> [!Definition]
> **渐近比较记号 Asymptotic Comparison Notations**：对最终为正的函数 $f,g$，约定：
>
> $$
> \begin{align*}
> f(x)\asymp g(x)&\iff f(x)=O(g(x))\text{ 且 }g(x)=O(f(x)),\\
> f(x)\sim g(x)&\iff \lim_{x\to\infty}\frac{f(x)}{g(x)}=1,\\
> f(x)=\Omega(g(x))&\iff g(x)=O(f(x)).
> \end{align*}
> $$
>
> 因此 $f(x)\sim g(x)$ 蕴含 $f(x)\asymp g(x)$。

<!-- analytic_number_theory_asymptotic_expansion_definition -->
> [!Definition]
> **渐近展开 Asymptotic Expansion**：设 $\phi_0,\phi_1,\ldots$ 为函数列，满足 $\phi_{k+1}(x)=o(\phi_k(x))$。若对每个整数 $N\geq0$，有
>
> $$f(x)-\sum_{k=0}^{N}c_k\phi_k(x)=o(\phi_N(x))\qquad(x\to\infty),$$
>
> 则称形式级数 $\sum_{k\geq0}c_k\phi_k(x)$ 为 $f(x)$ 的渐近展开，记为
>
> $$f(x)\sim\sum_{k\geq0}c_k\phi_k(x).$$
>
> 该记号不要求右侧级数收敛；它只断言每个有限截断的误差阶。

<!-- analytic_number_theory_error_term_estimation_principle -->
> [!Theorem]
> **误差项的运算规则 Error-Term Rules**：若 $f_1(x)=F_1(x)+O(E_1(x))$、$f_2(x)=F_2(x)+O(E_2(x))$，则
>
> $$f_1(x)+f_2(x)=F_1(x)+F_2(x)+O(E_1(x)+E_2(x)).$$
>
> 若另有 $F_1,F_2,E_1,E_2$ 最终非负，则
>
> $$f_1(x)f_2(x)=F_1(x)F_2(x)+O\left(F_1(x)E_2(x)+F_2(x)E_1(x)+E_1(x)E_2(x)\right).$$
>
> **证明思路**：将 $f_j$ 写为主项 $F_j$ 加误差项，再展开并对每一项使用三角不等式。