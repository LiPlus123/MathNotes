# 半范数与弗雷歇空间

<!-- functional_analysis_seminorm_induced_topology_definition -->
> [!Definition]
> **半范数族诱导的局部凸拓扑 Locally Convex Topology Induced by Seminorms**：设 $X$ 是线性空间，$(p_n)_{n\geq1}$ 是 $X$ 上可数个半范数。以所有集合
> $$
> U(x;p_1,\ldots,p_N;\varepsilon)
> =\{y\in X:p_j(y-x)<\varepsilon,\ 1\leq j\leq N\}
> $$
> 为邻域基所生成的拓扑，称为由 $(p_n)_{n\geq1}$ **诱导的拓扑**。

<!-- functional_analysis_separating_seminorm_family_definition -->
> [!Definition]
> **分离半范数族 Separating Family of Seminorms**：半范数族 $(p_n)_{n\geq1}$ 称为**分离的 Separating**，若
> $$
> \bigcap_{n=1}^{\infty}\{x\in X:p_n(x)=0\}=\{0\}.
> $$
> 此时它所诱导的拓扑是 Hausdorff 的。

<!-- functional_analysis_metric_from_countable_seminorms -->
> [!Theorem]
> **可数分离半范数族的可度量性 Metrizability from Countable Separating Seminorms**：若 $(p_n)_{n\geq1}$ 是 $X$ 上可数且分离的半范数族，则
> $$
> d(x,y)=\sum_{n=1}^{\infty}2^{-n}\frac{p_n(x-y)}{1+p_n(x-y)}
> $$
> 是度量，且它诱导的拓扑恰为该半范数族诱导的拓扑。
>
> **证明思路**：每项非负且不超过 $2^{-n}$，故级数收敛。分离性给出正定性；函数 $t\mapsto t/(1+t)$ 的次可加性给出三角不等式。再以有限截断控制邻域，可验证两个拓扑的收敛列相同。

<!-- functional_analysis_f_star_space_definition -->
> [!Definition]
> **赋半范数线性空间 $F^*$-Space**：若线性空间 $X$ 的 Hausdorff 拓扑由可数个半范数诱导，且相应度量空间完备，则称 $X$ 为**赋半范数线性空间 $F^*$-Space**。

<!-- functional_analysis_frechet_space_definition -->
> [!Definition]
> **弗雷歇空间 Fréchet Space**：局部凸的 $F^*$-空间称为**弗雷歇空间 Fréchet Space**。等价地，Fréchet 空间是拓扑由可数个分离半范数诱导的完备局部凸线性空间。

> **注**：每个 Banach 空间都是 Fréchet 空间：只需取单个半范数 $p_1(x)=\|x\|$。