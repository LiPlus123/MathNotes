# 非光滑区域上的边值问题

## 域的几何、椭圆测度与权

<!-- pde_chord_arc_domain_definition -->
> [!Definition]
> **Chord-Arc 域 Chord-Arc Domain**：Chord-arc 域是具有定量连通性和边界 Ahlfors 正则性的域；通常还要求内外 corkscrew 条件与 Harnack 链条件。它是比光滑域更粗糙、但仍可开展调和测度与边界奇异积分理论的一类几何背景。

<!-- pde_elliptic_measure_definition -->
> [!Definition]
> **椭圆测度 Elliptic Measure**：对一致椭圆算子 $L$ 及域内一点 $X\in\Omega$，Dirichlet 问题的解可在适当意义下表示为
> $$
> u(X)=\int_{\partial\Omega}f\,d\omega_L^X,
> $$
> 其中 $\omega_L^X$ 称为以 $X$ 为极的椭圆测度。$\omega_L^X$ 相对于表面测度的绝对连续性编码边值问题的可解性。

<!-- pde_ap_elliptic_measure_theorem -->
> [!Theorem]
> **$A_\infty$ 椭圆测度与 $L^p$ 可解性 $A_\infty$ Elliptic Measure and $L^p$ Solvability**：在适当的 chord-arc 或 Lipschitz 域几何条件及一致椭圆系数假设下，若椭圆测度相对于表面测度属于 $A_\infty$，则其 Poisson 核满足反向 Holder 控制，并推出某个 $p>1$ 范围内 Dirichlet 问题的非切向 $L^p$ 可解性。逆向结论需附加相应的定量假设。
>
> **证明思路**：用调和测度的局部绝对连续性将边界数据的面积积分控制转为锥形极大函数估计；反向 Holder 不等式和实变量外推给出 $L^p$ 范围。

<!-- pde_rough_domain_layer_potentials_concept -->
> [!Concept]
> **粗糙域上的层位势 Layer Potentials on Rough Domains**：边界为 Lipschitz 图时，层位势核仍是奇异积分核，但算子有界性依赖于边界的定量几何。对更粗糙的 Ahlfors 正则集合，均匀可整性与 Riesz 变换有界性提供重要判据。

<!-- pde_fkp_concept -->
> [!Concept]
> **Fefferman--Kenig--Pipher 理论 Fefferman--Kenig--Pipher Theory**：该理论研究变系数椭圆算子的椭圆测度与边界可解性，说明系数振荡的 Carleson 型控制能够将平坦或 Lipschitz 情形的调和分析结论稳定地推广到扰动情形。

> **来源**：Carlos Kenig, *Harmonic Analysis Techniques for Second Order Elliptic Boundary Value Problems*；Robert Fefferman, Carlos Kenig, and Jill Pipher, "The Theory of Weights and the Dirichlet Problem for Elliptic Equations"。
