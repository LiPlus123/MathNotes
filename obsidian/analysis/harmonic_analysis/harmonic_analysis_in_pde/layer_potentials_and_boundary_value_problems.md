# 层位势与边值问题

## 边界积分的调和分析结构

<!-- pde_single_layer_potential_definition -->
> [!Definition]
> **单层位势 Single-Layer Potential**：设 $\Omega\subset\mathbb{R}^n$ 的边界为 $\partial\Omega$，$\Gamma$ 是 Laplace 算子的基本解。对边界密度 $f$，定义
> $$
> \mathcal{S}f(x)=\int_{\partial\Omega}\Gamma(x-y)f(y)\,d\sigma(y),
> \qquad x\notin\partial\Omega.
> $$
> 它在 $\Omega$ 和外域中均为调和函数；其边界迹与法向导数给出边界积分方程。

<!-- pde_double_layer_potential_definition -->
> [!Definition]
> **双层位势 Double-Layer Potential**：对边界密度 $f$，定义
> $$
> \mathcal{D}f(x)=\int_{\partial\Omega}
> \partial_{\nu_y}\Gamma(x-y)f(y)\,d\sigma(y),
> \qquad x\notin\partial\Omega,
> $$
> 其中 $\nu_y$ 是边界的外法向量。其核为 Calderon-Zygmund 型核。

<!-- pde_jump_relation_theorem -->
> [!Theorem]
> **双层位势跳跃关系 Jump Relation for Double-Layer Potentials**：若 $\partial\Omega$ 足够光滑，且 $K$ 是双层位势的主值边界算子，则从内、外非切向逼近的迹满足
> $$
> \gamma_\pm\mathcal{D}f=
> \left(\mp\frac12I+K\right)f.
> $$
> 符号取决于内外法向和迹的约定，但两侧相差 $f$。
>
> **证明思路**：将积分分为边界点附近与远离部分。近场以切平面近似并显式计算半空间模型，远场连续收敛。

<!-- pde_lipschitz_dirichlet_theorem -->
> [!Theorem]
> **Lipschitz 域上的 $L^2$ Dirichlet 可解性 $L^2$ Dirichlet Solvability**：对有界 Lipschitz 域中的 Laplace 方程，给定 $f\in L^2(\partial\Omega)$，存在唯一调和解 $u$ 具有非切向边界迹 $f$，并满足
> $$
> \|N_*u\|_{L^2(\partial\Omega)}\leq C\|f\|_{L^2(\partial\Omega)}.
> $$
> 此处 $N_*u$ 是固定锥形区域定义的非切向极大函数。
>
> **证明思路**：层位势将边值问题转为边界奇异积分方程；在 Lipschitz 图上，Cauchy 型或 Riesz 型边界算子的 $L^2$ 有界性与 Fredholm 理论给出可逆性。

<!-- pde_boundary_integral_equation_concept -->
> [!Concept]
> **边界积分方程 Boundary Integral Equation**：跳跃关系把 Dirichlet 或 Neumann 问题归结为 $(\frac12I+K)f=g$ 或其伴随方程。域的几何正则性、核的奇异积分有界性和调和测度的性质共同决定 $L^p$ 可解区间。

> **来源**：Carlos Kenig, *Harmonic Analysis Techniques for Second Order Elliptic Boundary Value Problems*；Ronald Coifman, Alan McIntosh, and Yves Meyer, "L'integrale de Cauchy definit un operateur borne sur $L^2$ pour les courbes lipschitziennes"。
