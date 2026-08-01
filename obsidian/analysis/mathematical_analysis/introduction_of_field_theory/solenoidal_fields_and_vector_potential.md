# 无散场与向量位势

<!-- real_analysis_solenoidal_field_definition -->
> [!Definition]
> **无散场 Solenoidal Field**：在本节中，无散场是指满足 $\operatorname{div}F=0$ 的 $C^1$ 向量场 $F$；它也称为无源场。若存在向量场 $A$ 使 $F=\operatorname{curl}A$，则称 $A$ 为 $F$ 的向量位势。

<!-- real_analysis_vector_potential_implies_solenoidal -->
> [!Theorem]
> **向量位势产生无散场 Vector Potentials Produce Solenoidal Fields**：若 $A\in C^2(U,\mathbb{R}^3)$ 且 $F=\operatorname{curl}A$，则
> $$
> \operatorname{div}F=0.
> $$
>
> **证明思路**：应用恒等式 $\operatorname{div}(\operatorname{curl}A)=0$。

<!-- real_analysis_vector_potential_existence_on_contractible_domain -->
> [!Theorem]
> **可缩区域上向量位势的存在性 Vector Potential on a Contractible Domain**：若 $U\subseteq\mathbb{R}^3$ 为可缩开集，$F\in C^1(U,\mathbb{R}^3)$ 且 $\operatorname{div}F=0$，则存在足够光滑的向量场 $A$ 使
> $$
> F=\operatorname{curl}A.
> $$
>
> **证明思路**：这是 Poincare 引理对三维中二形式的表述；可缩性排除了拓扑障碍。该结论不能仅由局部微分条件在任意区域上推出。

<!-- real_analysis_vector_potential_gauge_freedom -->
> [!Corollary]
> **向量位势的规范自由度 Gauge Freedom of Vector Potentials**：若 $F=\operatorname{curl}A$ 且 $\psi\in C^2(U)$，则
> $$
> \operatorname{curl}(A+\nabla\psi)=F.
> $$
> 因而向量位势通常不唯一。
>
> **证明思路**：由 $\operatorname{curl}(\nabla\psi)=\mathbf{0}$。

> **注**：本小节参见 Jerrold E. Marsden and Anthony J. Tromba, *Vector Calculus*, 6th ed., Chapter 6。