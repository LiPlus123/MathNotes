# 链式法则与高阶偏导数

<!-- real_analysis_multivariable_chain_rule -->
> [!Theorem]
> **多元链式法则 Multivariable Chain Rule**：设 $f:D\subseteq\mathbb{R}^n\to\mathbb{R}^m$ 在 $a$ 处可微，$g:E\subseteq\mathbb{R}^m\to\mathbb{R}^p$ 在 $f(a)$ 处可微，且 $f$ 在 $a$ 的某邻域内取值于 $E$。则 $g\circ f$ 在 $a$ 处可微，且
> $$
> D(g\circ f)(a)=Dg(f(a))\circ Df(a).
> $$
> 在标准坐标下，
> $$
> J_{g\circ f}(a)=J_g(f(a))J_f(a).
> $$
>
> **证明思路**：将 $g(f(a+h))-g(f(a))$ 写为 $Dg(f(a))[f(a+h)-f(a)]$ 加上高阶余项，再代入 $f$ 的线性近似；线性部分合成为矩阵乘积。

<!-- real_analysis_multivariable_higher_partial_derivative_definition -->
> [!Definition]
> **高阶偏导数 Higher-Order Partial Derivatives**：若一阶偏导函数 $\partial f/\partial x_i$ 仍可对 $x_j$ 求偏导，则定义二阶偏导数
> $$
> \frac{\partial^2f}{\partial x_j\partial x_i}
> =\frac{\partial}{\partial x_j}\left(\frac{\partial f}{\partial x_i}\right).
> $$
> 对多重指标 $\alpha=(\alpha_1,\ldots,\alpha_n)\in\mathbb{N}^n$，记
> $$
> |\alpha|=\sum_{i=1}^n\alpha_i,
> \qquad
> D^\alpha f=\frac{\partial^{|\alpha|}f}{\partial x_1^{\alpha_1}\cdots\partial x_n^{\alpha_n}}.
> $$

<!-- real_analysis_multivariable_clairaut_schwarz_theorem -->
> [!Theorem]
> **Clairaut-Schwarz 定理 Clairaut-Schwarz Theorem**：设 $f$ 在 $a$ 的某邻域内具有二阶偏导数，并且混合偏导数 $\partial^2f/\partial x_i\partial x_j$ 在 $a$ 的邻域内连续。则
> $$
> \frac{\partial^2f}{\partial x_j\partial x_i}(a)
> =\frac{\partial^2f}{\partial x_i\partial x_j}(a).
> $$
>
> **证明思路**：考察矩形四个顶点上函数值的交叉差商，并先后以两个变量的中值定理表示；令矩形边长趋于零，利用混合偏导的连续性取极限。

<!-- real_analysis_multivariable_c_k_class_definition -->
> [!Definition]
> **多元 $C^k$ 函数类 Multivariable Class $C^k$**：设 $U\subseteq\mathbb{R}^n$ 为开集。若 $f:U\to\mathbb{R}^m$ 的每个分量具有至多 $k$ 阶的全部偏导数，且这些偏导数均连续，则称 $f\in C^k(U)$。若对每个 $k$ 都有 $f\in C^k(U)$，则称 $f\in C^\infty(U)$。

<!-- real_analysis_multivariable_c_one_implies_differentiable -->
> [!Theorem]
> **$C^1$ 函数可微 $C^1$ Functions Are Differentiable**：若 $f\in C^1(U)$，则 $f$ 在 $U$ 的每一点可微，且全微分由 Jacobi 矩阵表示。
>
> **证明思路**：每个分量的一阶偏导在该点附近连续，应用连续偏导数是可微充分条件的定理。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9。