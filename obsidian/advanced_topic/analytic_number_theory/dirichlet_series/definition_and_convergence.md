## 定义与收敛性

<!-- analytic_number_theory_dirichlet_series_definition -->
> [!Definition]
> **Dirichlet 级数 Dirichlet Series**：设 $(a_n)_{n\geq1}$ 为复数列。形如
>
> $$F(s)=\sum_{n=1}^{\infty}\frac{a_n}{n^s},\qquad s=\sigma+it\in\mathbb{C},$$
>
> 的级数称为 Dirichlet 级数，其中 $n^{-s}=\exp(-s\log n)$。

<!-- analytic_number_theory_dirichlet_series_convergence_abscissa_definition -->
> [!Definition]
> **收敛横坐标与绝对收敛横坐标 Abscissae of Convergence**：对 Dirichlet 级数 $F(s)$，定义
>
> $$
> \begin{align*}
> \sigma_c&=\inf\left\{\sigma\in\mathbb{R}:\sum_{n=1}^{\infty}\frac{a_n}{n^s}\text{ 对所有 }\operatorname{Re}(s)>\sigma\text{ 收敛}\right\},\\
> \sigma_a&=\inf\left\{\sigma\in\mathbb{R}:\sum_{n=1}^{\infty}\frac{|a_n|}{n^\sigma}\text{ 收敛}\right\}.
> \end{align*}
> $$
>
> 分别称 $\sigma_c$ 与 $\sigma_a$ 为收敛横坐标和绝对收敛横坐标；允许其取扩展实数值。

<!-- analytic_number_theory_dirichlet_series_half_plane_convergence -->
> [!Theorem]
> **Dirichlet 级数的收敛半平面 Half-Plane of Convergence**：若 Dirichlet 级数在 $s_0$ 收敛，则它在所有满足 $\operatorname{Re}(s)>\operatorname{Re}(s_0)$ 的点收敛，并在每个闭半平面 $\operatorname{Re}(s)\geq\operatorname{Re}(s_0)+\delta$（$\delta>0$）上一致收敛。若它在 $s_0$ 绝对收敛，则它在所有满足 $\operatorname{Re}(s)>\operatorname{Re}(s_0)$ 的点绝对收敛。
>
> 因而，级数在 $\operatorname{Re}(s)>\sigma_c$ 收敛，在 $\operatorname{Re}(s)>\sigma_a$ 绝对收敛；在 $\operatorname{Re}(s)<\sigma_c$ 发散。
>
> **证明思路**：对部分和 $\sum_{n\leq x}a_nn^{-s_0}$ 使用 Abel 求和公式，并利用因子 $n^{-(s-s_0)}$ 在右半平面中单调衰减；绝对收敛情形对 $|a_n|$ 作相同论证。

<!-- analytic_number_theory_dirichlet_series_abscissae_relation -->
> [!Theorem]
> **收敛横坐标之间的关系 Relations among Abscissae**：每个 Dirichlet 级数满足
>
> $$\sigma_c\leq\sigma_a\leq\sigma_c+1.$$
>
> 因此条件收敛可能只发生在宽度至多为 $1$ 的带状区域 $\sigma_c<\operatorname{Re}(s)\leq\sigma_a$ 内。
>
> **证明思路**：第一不等式由绝对收敛蕴含收敛。第二不等式由在任意 $\operatorname{Re}(s)>\sigma_c$ 的闭右半平面上部分和有界，配合 Abel 求和公式估计绝对值级数得到。

<!-- analytic_number_theory_dirichlet_series_analyticity_theorem -->
> [!Theorem]
> **收敛半平面上的解析性 Analyticity in the Half-Plane of Convergence**：Dirichlet 级数 $F(s)$ 在半平面 $\operatorname{Re}(s)>\sigma_c$ 上定义全纯函数；其导数可逐项求得：
>
> $$F'(s)=-\sum_{n=1}^{\infty}\frac{a_n\log n}{n^s}\qquad\left(\operatorname{Re}(s)>\sigma_c\right).$$
>
> **证明思路**：在任意紧子集上，原级数和其形式导数级数都局部一致收敛；应用全纯函数列的 Weierstrass 定理即可。