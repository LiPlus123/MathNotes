## Selberg 类

<!-- analytic_number_theory_selberg_class_definition -->
> [!Definition]
> **Selberg 类 Selberg Class**：Selberg 类 $\mathcal S$ 由满足下列公理的 Dirichlet 级数
>
> $$F(s)=\sum_{n=1}^{\infty}\frac{a_n}{n^s}$$
>
> 组成：
>
> 1. 当 $\operatorname{Re}(s)>1$ 时绝对收敛；
> 2. 存在整数 $m\geq0$，使 $(s-1)^mF(s)$ 延拓为有限阶整函数；
> 3. 存在完成函数 $\Phi(s)=Q^s\prod_{j=1}^{r}\Gamma(\lambda_js+\mu_j)F(s)$，满足函数方程 $\Phi(s)=\omega\overline{\Phi(1-\overline{s})}$，其中 $Q>0$、$\lambda_j>0$、$|\omega|=1$；
> 4. 系数满足 Ramanujan 型估计 $a_n=O_\varepsilon(n^\varepsilon)$（任意 $\varepsilon>0$）；
> 5. 对数 Euler 乘积满足 $\log F(s)=\sum_{n\geq1}b_nn^{-s}$，其中 $b_n=0$ 除非 $n$ 为素数幂，且 $b_n=O(n^\vartheta)$ 对某个 $\vartheta<1/2$ 成立。

<!-- analytic_number_theory_selberg_class_degree_definition -->
> [!Definition]
> **Selberg 类的次数 Degree of a Selberg-Class Function**：若 $F\in\mathcal S$ 的 Gamma 因子参数为 $\lambda_1,\ldots,\lambda_r$，定义
>
> $$d_F=2\sum_{j=1}^{r}\lambda_j.$$
>
> 它称为 $F$ 的次数，并在函数方程中刻画 $L$ 函数的解析复杂度。

<!-- analytic_number_theory_selberg_class_examples -->
> [!Example]+
> **Selberg 类的例子 Examples in the Selberg Class**：Riemann zeta 函数属于 $\mathcal S$，且次数为 $1$；原始 Dirichlet 特征的 $L$ 函数也属于 $\mathcal S$，次数为 $1$；归一化 Hecke 本征尖点形式的标准 $L$ 函数属于 $\mathcal S$，次数为 $2$。

<!-- analytic_number_theory_selberg_class_conjectures -->
> [!Definition]
> **Selberg 类的结构猜想 Structural Conjectures for the Selberg Class**：Selberg 类的分类、其函数的乘法分解以及“次数为 $1$ 的元素皆为 Dirichlet $L$ 函数”等陈述构成重要未解问题。它们旨在公理化已知 $L$ 函数的共同解析性质，并预期与自守 $L$ 函数理论相吻合。

> **注**：本条为研究纲领的概述，不是已证定理。