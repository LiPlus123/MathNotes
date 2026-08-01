# 多元 Taylor 公式

<!-- real_analysis_multivariable_hessian_matrix_definition -->
> [!Definition]
> **Hessian 矩阵 Hessian Matrix**：设 $f:U\subseteq\mathbb{R}^n\to\mathbb{R}$ 在 $a$ 处具有二阶偏导数。其 Hessian 矩阵定义为
> $$
> H_f(a)=\left(\frac{\partial^2f}{\partial x_i\partial x_j}(a)\right)_{1\leq i,j\leq n}.
> $$
> 若 $f\in C^2(U)$，则由 Clairaut-Schwarz 定理，$H_f(a)$ 为对称矩阵。

<!-- real_analysis_multivariable_taylor_formula_second_order -->
> [!Theorem]
> **二阶多元 Taylor 公式 Second-Order Multivariable Taylor Formula**：若 $f\in C^2(U)$，且从 $a$ 到 $a+h$ 的线段包含于 $U$，则存在 $\theta\in(0,1)$，使得
> $$
> f(a+h)=f(a)+\nabla f(a)\cdot h
> +\frac12h^{\mathsf T}H_f(a+\theta h)h.
> $$
>
> **证明思路**：令 $\varphi(t)=f(a+th)$，对一元函数 $\varphi$ 在 $[0,1]$ 上应用二阶 Taylor 公式，并以链式法则计算 $\varphi'(0)$ 与 $\varphi''(\theta)$。

<!-- real_analysis_multivariable_taylor_formula_multi_index -->
> [!Theorem]
> **多元 Taylor 公式的多重指标形式 Multivariable Taylor Formula in Multi-Index Form**：设 $f\in C^{k+1}(U)$，且线段 $[a,a+h]$ 包含于 $U$。则存在 $\theta\in(0,1)$，使得
> $$
> f(a+h)=\sum_{|\alpha|\leq k}\frac{D^\alpha f(a)}{\alpha!}h^\alpha
> +\sum_{|\alpha|=k+1}\frac{D^\alpha f(a+\theta h)}{\alpha!}h^\alpha,
> $$
> 其中 $\alpha!=\alpha_1!\cdots\alpha_n!$，$h^\alpha=h_1^{\alpha_1}\cdots h_n^{\alpha_n}$。
>
> **证明思路**：仍将问题限制到线段上的一元函数 $\varphi(t)=f(a+th)$，应用一元 Taylor 公式后按多项式公式展开各阶导数。

<!-- real_analysis_multivariable_local_extremum_necessary_condition -->
> [!Theorem]
> **内点局部极值的必要条件 Necessary Condition for an Interior Local Extremum**：设 $f:U\subseteq\mathbb{R}^n\to\mathbb{R}$ 在开集 $U$ 上可微。若 $a\in U$ 为 $f$ 的局部极值点，则
> $$
> \nabla f(a)=0.
> $$
>
> **证明思路**：对每个坐标方向限制函数 $t\mapsto f(a+te_i)$；它在 $t=0$ 处有一元局部极值，故对应偏导数为零。

<!-- real_analysis_multivariable_second_derivative_test -->
> [!Theorem]
> **二阶充分条件 Second Derivative Test**：设 $f\in C^2(U)$，$a\in U$，且 $\nabla f(a)=0$。
> 1. 若 $H_f(a)$ 正定，则 $a$ 是严格局部极小值点；
> 2. 若 $H_f(a)$ 负定，则 $a$ 是严格局部极大值点；
> 3. 若 $H_f(a)$ 不定，则 $a$ 不是局部极值点。
> 当 $H_f(a)$ 半正定或半负定但不定号时，该判别法不能确定极值性质。
>
> **证明思路**：由 Hessian 连续性，二阶 Taylor 公式中的二次型在 $a$ 的邻域内保持相应的严格符号；不定时沿使二次型正、负的方向分别趋近 $a$。

<!-- real_analysis_multivariable_second_derivative_test_example -->
> [!Example]+
> **二阶判别法的例子 Example of the Second Derivative Test**：令 $f(x,y)=x^2+2y^2$。则 $\nabla f(0,0)=0$，且
> $$
> H_f(0,0)=\begin{pmatrix}2&0\\0&4\end{pmatrix}
> $$
> 正定，故 $(0,0)$ 是严格局部极小值点。
>
> **证明思路**：对任意非零 $(u,v)$，有 $2u^2+4v^2>0$，所以 Hessian 正定。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9。