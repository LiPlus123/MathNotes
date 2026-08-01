# 求导法则与向量微分恒等式

<!-- real_analysis_vector_calculus_product_rules -->
> [!Theorem]
> **向量微分的乘积法则 Product Rules of Vector Calculus**：设 $f,g\in C^1(U)$，$F,G\in C^1(U,\mathbb{R}^3)$，则
> $$
> \nabla(fg)=f\nabla g+g\nabla f,
> \qquad
> \operatorname{div}(fF)=\nabla f\cdot F+f\operatorname{div}F,
> $$
> $$
> \operatorname{curl}(fF)=\nabla f\times F+f\operatorname{curl}F,
> \qquad
> \nabla(F\cdot G)=(F\cdot\nabla)G+(G\cdot\nabla)F+F\times\operatorname{curl}G+G\times\operatorname{curl}F.
> $$
>
> **证明思路**：逐坐标展开，并对各分量反复使用一元乘积法则。

<!-- real_analysis_vector_calculus_second_order_identities -->
> [!Theorem]
> **二阶向量微分恒等式 Second-Order Vector Calculus Identities**：设 $f\in C^2(U)$、$F\in C^2(U,\mathbb{R}^3)$，则
> $$
> \operatorname{curl}(\nabla f)=\mathbf{0},
> \qquad
> \operatorname{div}(\operatorname{curl}F)=0,
> $$
> $$
> \operatorname{curl}(\operatorname{curl}F)
> =\nabla(\operatorname{div}F)-\Delta F.
> $$
>
> **证明思路**：逐分量展开；混合偏导数可交换性由 Clairaut-Schwarz 定理保证。

<!-- real_analysis_directional_derivative_operator_definition -->
> [!Definition]
> **方向导数算子 Directional Derivative Operator**：对向量场 $F=(F_1,F_2,F_3)$，定义
> $$
> (F\cdot\nabla)=F_1\frac{\partial}{\partial x}+F_2\frac{\partial}{\partial y}+F_3\frac{\partial}{\partial z}.
> $$
> 它作用于标量场 $g$ 时给出 $(F\cdot\nabla)g=F\cdot\nabla g$，作用于向量场时按分量作用。

<!-- real_analysis_laplacian_product_rule -->
> [!Corollary]
> **Laplace 算子的乘积法则 Product Rule for the Laplacian**：若 $f,g\in C^2(U)$，则
> $$
> \Delta(fg)=f\Delta g+2\nabla f\cdot\nabla g+g\Delta f.
> $$
>
> **证明思路**：对 $\nabla(fg)=f\nabla g+g\nabla f$ 取散度，并使用散度的乘积法则。

> **注**：本小节参见 Jerrold E. Marsden and Anthony J. Tromba, *Vector Calculus*, 6th ed., Chapter 6。