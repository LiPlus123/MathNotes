# 无旋无源场

<!-- real_analysis_irrotational_divergence_free_field_definition -->
> [!Definition]
> **无旋无源场 Irrotational Divergence-Free Field**：若 $F\in C^1(U,\mathbb{R}^3)$ 同时满足
> $$
> \operatorname{curl}F=\mathbf{0},
> \qquad \operatorname{div}F=0,
> $$
> 则称 $F$ 为无旋无源场。

<!-- real_analysis_irrotational_divergence_free_harmonic_potential -->
> [!Theorem]
> **无旋无源场的调和势 Harmonic Potential of an Irrotational Divergence-Free Field**：若 $U$ 单连通，$F\in C^1(U,\mathbb{R}^3)$ 为无旋无源场，则存在势函数 $\phi$ 使 $F=\nabla\phi$，且
> $$
> \Delta\phi=0.
> $$
>
> **证明思路**：由单连通区域上的无旋场势函数定理得到 $F=\nabla\phi$；再由无散性得到 $0=\operatorname{div}F=\Delta\phi$。

<!-- real_analysis_irrotational_divergence_free_laplacian_property -->
> [!Corollary]
> **无旋无源场的向量 Laplace 方程 Vector Laplace Equation**：若 $F\in C^2(U,\mathbb{R}^3)$ 为无旋无源场，则
> $$
> \Delta F=\mathbf{0}.
> $$
>
> **证明思路**：由恒等式 $\operatorname{curl}(\operatorname{curl}F)=\nabla(\operatorname{div}F)-\Delta F$ 立即得到。

> **注**：本小节参见 Jerrold E. Marsden and Anthony J. Tromba, *Vector Calculus*, 6th ed., Chapter 6。