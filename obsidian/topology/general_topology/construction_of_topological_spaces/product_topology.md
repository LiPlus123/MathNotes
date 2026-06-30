# 积拓扑

## 箱拓扑

<!-- box_topology_definition -->
> [!Definition]
> **箱拓扑 Box Topology**：设 $\{(X_\alpha, \mathcal{T}_\alpha)\}_{\alpha \in J}$ 是一族拓扑空间，$\prod_{\alpha \in J} X_\alpha$ 是其笛卡尔积。以如下集族为基：
> $$\mathcal{B}_{\mathrm{box}} = \left\{ \prod_{\alpha \in J} U_\alpha \;\middle|\; U_\alpha \in \mathcal{T}_\alpha,\ \forall \alpha \in J \right\}$$
> 由此生成的拓扑称为**箱拓扑 Box Topology**，记为 $\mathcal{T}_{\mathrm{box}}$。

> **注**：当 $J$ 有限时，箱拓扑等于积拓扑（见下）。当 $J$ 无限时，箱拓扑严格比积拓扑更精细。

## 积拓扑

<!-- product_topology_definition -->
> [!Definition]
> **积拓扑 Product Topology**：设 $\{(X_\alpha, \mathcal{T}_\alpha)\}_{\alpha \in J}$ 是一族拓扑空间。以如下集族为基：
> $$\mathcal{B}_{\mathrm{prod}} = \left\{ \prod_{\alpha \in J} U_\alpha \;\middle|\; U_\alpha \in \mathcal{T}_\alpha,\ \text{且对除有限个 } \alpha \text{ 外均有 } U_\alpha = X_\alpha \right\}$$
> 由此生成的拓扑称为 $\prod_{\alpha \in J} X_\alpha$ 上的**积拓扑 Product Topology**，记为 $\mathcal{T}_{\mathrm{prod}}$，配备积拓扑的积空间称为**积空间 Product Space**，记为 $\prod_{\alpha \in J} X_\alpha$（或 $\prod_{\alpha \in J}(X_\alpha, \mathcal{T}_\alpha)$）。

> **注**：积拓扑的基元素是**除有限个坐标外均为全集**的乘积，这是与箱拓扑的本质区别。

## 投影映射

<!-- projection_map_definition -->
> [!Definition]
> **投影映射 Projection Map**：设 $\prod_{\alpha \in J} X_\alpha$ 是积空间，对每个 $\beta \in J$，定义**第 $\beta$ 个投影映射 $\beta$-th Projection**：
> $$\pi_\beta: \prod_{\alpha \in J} X_\alpha \to X_\beta, \quad \pi_\beta\!\left((x_\alpha)_{\alpha \in J}\right) = x_\beta$$

<!-- projection_continuous -->
> [!Proposition]
> **投影映射连续 Projections are Continuous**：每个投影映射 $\pi_\beta: \prod_{\alpha \in J} X_\alpha \to X_\beta$ 在积拓扑下是连续的（且是满射，若 $X_\alpha$ 均非空）。
>
> **证明思路**：对 $X_\beta$ 中任意开集 $V_\beta$，$\pi_\beta^{-1}(V_\beta) = V_\beta \times \prod_{\alpha \neq \beta} X_\alpha$ 是积拓扑的基元素（仅 $\beta$ 坐标受限），故为开集。

## 积拓扑的性质

<!-- product_topology_coarsest -->
> [!Theorem]
> **积拓扑是使投影连续的最粗拓扑 Universal Property of Product Topology**：积拓扑是 $\prod_{\alpha \in J} X_\alpha$ 上使所有投影 $\pi_\alpha$ 均连续的最粗糙的拓扑。
>
> **证明思路**：若拓扑 $\mathcal{T}$ 使所有 $\pi_\alpha$ 连续，则对每个 $\alpha$ 及 $U_\alpha \in \mathcal{T}_\alpha$，$\pi_\alpha^{-1}(U_\alpha) \in \mathcal{T}$；积拓扑的子基元素均为此形式，故 $\mathcal{T}_{\mathrm{prod}} \subseteq \mathcal{T}$。

<!-- maps_into_product -->
> [!Theorem]
> **到积空间的映射 Maps into Product Space**：设 $(Y, \mathcal{T}_Y)$ 是拓扑空间，$f: Y \to \prod_{\alpha \in J} X_\alpha$。令 $f_\alpha = \pi_\alpha \circ f: Y \to X_\alpha$（称为 $f$ 的**坐标函数 Coordinate Functions**）。则 $f$ 关于积拓扑连续当且仅当每个坐标函数 $f_\alpha$ 连续。
>
> **证明思路**：$(\Rightarrow)$ 由连续映射的复合连续。$(\Leftarrow)$ 积拓扑的子基元素为 $\pi_\alpha^{-1}(U_\alpha)$，$f^{-1}(\pi_\alpha^{-1}(U_\alpha)) = f_\alpha^{-1}(U_\alpha)$ 由 $f_\alpha$ 连续为开集；一个拓扑由子基确定，故 $f$ 连续。

## 积拓扑的例子

<!-- finite_product_example -->
> [!Example]+
> **有限积的积拓扑 Finite Product Topology**：$\mathbb{R}^n = \mathbb{R} \times \cdots \times \mathbb{R}$（$n$ 个）配备积拓扑，恰好等于由欧氏度量 $d_2$ 诱导的标准拓扑：基元素 $(a_1, b_1) \times \cdots \times (a_n, b_n)$ 是 $\mathbb{R}^n$ 中的开长方体，与开球生成同样的拓扑。

<!-- infinite_product_vs_box -->
> [!Example]+
> **无穷积中箱拓扑与积拓扑的差异 Infinite Product vs. Box Topology**：设 $X_n = \mathbb{R}$ 对所有 $n \geq 1$，考虑 $\prod_{n \geq 1} \mathbb{R}$。令 $f: \mathbb{R} \to \prod_{n \geq 1} \mathbb{R}$，$f(t) = (t, t, t, \ldots)$（常数列）。在积拓扑下 $f$ 连续（每个坐标函数 $t \mapsto t$ 连续）；在箱拓扑下 $f$ 不连续：$\prod_{n \geq 1} (-\frac{1}{n}, \frac{1}{n})$ 是箱拓扑的开集，但其原像 $\{0\}$ 不是 $\mathbb{R}$ 的开集。
