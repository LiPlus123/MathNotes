# 条件极值

<!-- real_analysis_constraint_surface_tangent_space_definition -->
> [!Definition]
> **约束曲面的切空间 Tangent Space of a Constraint Surface**：设约束集合为 $M=\{x\in U:g(x)=0\}$，其中 $g:U\subseteq\mathbb{R}^n\to\mathbb{R}^m$ 属于 $C^1$，且 $Dg(a)$ 满射。则 $M$ 在 $a$ 附近为正则曲面，其切空间定义为
> $$
> T_aM=\ker Dg(a).
> $$

<!-- real_analysis_lagrange_multiplier_theorem -->
> [!Theorem]
> **Lagrange 乘数法 Lagrange Multiplier Theorem**：设 $f:U\to\mathbb{R}$、$g=(g_1,\ldots,g_m):U\to\mathbb{R}^m$ 均为 $C^1$，$a\in U$ 满足 $g(a)=0$，且 $Dg(a)$ 满射。若 $f$ 在约束集合 $M=\{x:g(x)=0\}$ 上于 $a$ 处取得局部极值，则存在 $\lambda=(\lambda_1,\ldots,\lambda_m)\in\mathbb{R}^m$，使
> $$
> \nabla f(a)=\sum_{i=1}^m\lambda_i\nabla g_i(a).
> $$
>
> **证明思路**：极值意味着 $Df(a)$ 在全部切向量 $v\in\ker Dg(a)$ 上为零。线性代数的对偶关系表明 $Df(a)$ 属于 $Dg(a)$ 的行空间，从而可写成约束微分的线性组合。

<!-- real_analysis_constraint_qualification_definition -->
> [!Definition]
> **约束资格条件 Constraint Qualification**：对等式约束 $g_i(x)=0$ 与不等式约束 $h_j(x)\leq0$，若活跃不等式约束的梯度与等式约束梯度满足适当的正则性条件，则称该点满足约束资格条件。常用的 LICQ 条件要求这些梯度线性无关。

<!-- real_analysis_kkt_conditions -->
> [!Theorem]
> **Karush-Kuhn-Tucker 条件 Karush-Kuhn-Tucker Conditions**：考虑在约束
> $$
> g_i(x)=0\quad(i=1,\ldots,p),
> \qquad h_j(x)\leq0\quad(j=1,\ldots,q)
> $$
> 下最小化 $f$。若 $a$ 为局部极小值点，数据可微且 $a$ 满足适当的约束资格条件，则存在乘子 $\lambda_i\in\mathbb{R}$、$\mu_j\geq0$，使
> $$
> \nabla f(a)+\sum_{i=1}^p\lambda_i\nabla g_i(a)+\sum_{j=1}^q\mu_j\nabla h_j(a)=0,
> $$
> $$
> g_i(a)=0,
> \qquad h_j(a)\leq0,
> \qquad \mu_jh_j(a)=0.
> $$
>
> **证明思路**：将活跃不等式约束视为局部一阶可行方向的限制；在约束资格条件下，分离定理或 Farkas 引理给出非负乘子。互补松弛由非活跃约束不影响一阶必要条件得到。

<!-- real_analysis_lagrange_multiplier_example -->
> [!Example]+
> **Lagrange 乘数法的例子 Example of Lagrange Multipliers**：在约束 $x^2+y^2=1$ 下极值化 $f(x,y)=x+y$。令 $g(x,y)=x^2+y^2-1$，则
> $$
> (1,1)=\lambda(2x,2y).
> $$
> 联立约束得到极值点 $(1/\sqrt2,1/\sqrt2)$ 与 $(-1/\sqrt2,-1/\sqrt2)$，函数值分别为 $\sqrt2$ 与 $-\sqrt2$。
>
> **证明思路**：约束梯度在单位圆上非零，满足正则性条件；解 Lagrange 方程后直接比较函数值。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 13；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9。