# 全微分

<!-- real_analysis_multivariable_frechet_differentiability_definition -->
> [!Definition]
> **Fréchet 可微 Fréchet Differentiability**：设 $D\subseteq\mathbb{R}^n$，$a$ 是 $D$ 的内点，$f:D\to\mathbb{R}^m$。若存在一个线性映射 $A:\mathbb{R}^n\to\mathbb{R}^m$，使得
> $$
> f(a+h)-f(a)-A(h)=o(\|h\|)\qquad(h\to0),
> $$
> 则称 $f$ 在 $a$ 处可微，或全可微。该唯一的线性映射记为 $Df(a)$，称为 $f$ 在 $a$ 处的全微分。

<!-- real_analysis_multivariable_differentiability_implies_continuity -->
> [!Theorem]
> **可微蕴含连续 Differentiability Implies Continuity**：若 $f$ 在 $a$ 处可微，则 $f$ 在 $a$ 处连续。
>
> **证明思路**：由 $f(a+h)-f(a)=Df(a)h+o(\|h\|)$，线性映射的有界性表明右侧范数随 $h\to0$ 趋于零。

<!-- real_analysis_multivariable_differentiability_implies_partial_derivatives -->
> [!Theorem]
> **可微蕴含偏导数存在 Differentiability Implies Existence of Partial Derivatives**：若实值函数 $f$ 在 $a$ 处可微，则各偏导数存在，且
> $$
> Df(a)h=\sum_{i=1}^n\frac{\partial f}{\partial x_i}(a)h_i.
> $$
>
> **证明思路**：在全微分定义中依次取 $h=te_i$，得到偏导数等于线性映射 $Df(a)$ 在标准基向量上的值。

<!-- real_analysis_multivariable_continuous_partials_sufficient_for_differentiability -->
> [!Theorem]
> **连续偏导数是可微的充分条件 Continuous Partial Derivatives Imply Differentiability**：若 $f:D\subseteq\mathbb{R}^n\to\mathbb{R}^m$ 在 $a$ 的某开邻域内各一阶偏导数存在，且在 $a$ 处连续，则 $f$ 在 $a$ 处可微。
>
> **证明思路**：对从 $a$ 到 $a+h$ 的坐标折线路径逐段使用一元中值估计；偏导数的连续性使线性主部之外的误差为 $o(\|h\|)$。

<!-- real_analysis_multivariable_jacobian_and_gradient_definition -->
> [!Definition]
> **Jacobi 矩阵与梯度 Jacobian Matrix and Gradient**：若 $f=(f_1,\ldots,f_m):D\subseteq\mathbb{R}^n\to\mathbb{R}^m$ 在 $a$ 处可微，则其 Jacobi 矩阵为
> $$
> J_f(a)=\left(\frac{\partial f_i}{\partial x_j}(a)\right)_{1\leq i\leq m,\,1\leq j\leq n},
> $$
> 它表示线性映射 $Df(a)$。当 $m=1$ 时，梯度定义为
> $$
> \nabla f(a)=\left(\frac{\partial f}{\partial x_1}(a),\ldots,\frac{\partial f}{\partial x_n}(a)\right).
> $$

<!-- real_analysis_multivariable_tangent_plane_theorem -->
> [!Theorem]
> **切平面 Tangent Plane**：若 $f:D\subseteq\mathbb{R}^n\to\mathbb{R}$ 在 $a$ 处可微，则其图像在 $(a,f(a))\in\mathbb{R}^{n+1}$ 处的切超平面为
> $$
> z=f(a)+\nabla f(a)\cdot(x-a).
> $$
>
> **证明思路**：可微定义表明图像的增量由线性函数 $Df(a)(x-a)$ 一阶近似；该仿射图像即切超平面。

> **注**：本小节参见 Tom M. Apostol, *Calculus, Vol. II*, 2nd ed., Chapter 8；Walter Rudin, *Principles of Mathematical Analysis*, 3rd ed., Chapter 9。