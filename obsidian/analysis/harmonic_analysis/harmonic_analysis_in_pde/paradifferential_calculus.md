# 仿微分演算与非线性 PDE

## 频率局部化的线性化

<!-- pde_paraproduct_recall -->
> [!Definition]
> **Bony 半积分解 Bony Decomposition**：对适当的分布 $u,v$，非齐次 Littlewood-Paley 投影给出
> $$
> uv=T_uv+T_vu+R(u,v),
> $$
> 其中
> $$
> T_uv=\sum_jS_{j-1}u\,\Delta_jv,
> \qquad
> R(u,v)=\sum_{|j-k|\leq1}\Delta_ju\,\Delta_kv.
> $$
> 低--高相互作用由半积 $T_uv$ 描述，高--高相互作用集中于余项 $R(u,v)$。

<!-- pde_paradifferential_operator_definition -->
> [!Definition]
> **仿微分算子 Paradifferential Operator**：若符号 $a(x,\xi)$ 在 $x$ 变量上只具有有限正则性，则其 Bony 量化 $T_a$ 以低频 $x$ 系数乘高频输入的方式定义。它是粗糙系数伪微分算子的稳定替代。

<!-- pde_paralinearization_theorem -->
> [!Theorem]
> **仿线性化 Paralinearization**：若 $F$ 足够光滑且 $u$ 具有正的 Holder 正则性，则在合适的 Besov 或 Holder 空间中
> $$
> F(u)=T_{F'(u)}u+\mathcal{R}(u),
> $$
> 其中余项 $\mathcal{R}(u)$ 比主项具有更高的正则性。精确余项阶数取决于 $u$ 的正则性与 $F$ 的光滑程度。
>
> **证明思路**：将 $u$ 分解为二进频段，对每个高频块在低频背景 $S_{j-1}u$ 处作 Taylor 展开；线性项相加得到半积，Taylor 余项具有更好的频率可和性。

<!-- pde_quasilinear_energy_estimate -->
> [!Proposition]
> **拟线性双曲方程的能量框架 Quasilinear Hyperbolic Energy Framework**：对适当对称化的拟线性双曲系统，仿线性化将最高阶部分写为主符号控制的 $T_{a(u)}$。若系数满足正性与足够的 Lipschitz 控制，则可导出形如
> $$
> \frac{d}{dt}\|u(t)\|_{H^s}^2
> \leq C\bigl(\|\nabla u(t)\|_{L^\infty}\bigr)\|u(t)\|_{H^s}^2
> $$
> 的能量估计。
>
> **证明思路**：对频率局部化方程取 $L^2$ 能量，主项由对称性控制；交换子和余项用仿积估计及 Sobolev 嵌入界定。

<!-- pde_nonlinear_pde_fixed_point_concept -->
> [!Concept]
> **非线性色散方程的局部适定性 Local Well-Posedness for Nonlinear Dispersive Equations**：非线性 Schrodinger 和波动方程常将 Duhamel 映射置于 Strichartz、Bourgain 或 Besov 型空间中。半积估计用于分离高低频相互作用，并与线性时空估计共同建立压缩映射。

> **来源**：Jean-Michel Bony, "Calcul symbolique et propagation des singularites"；Michael Taylor, *Pseudodifferential Operators and Nonlinear PDE*。
