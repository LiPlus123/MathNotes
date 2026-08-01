# 复平面的拓扑

复平面 $\mathbb{C}$ 作为二维实向量空间 $\mathbb{R}^2$ 配备 Euclid 度量
$$
d(z,w)=|z-w|.
$$
以下所有开集、闭集、紧性与连通性均指该度量诱导的拓扑。

## 基本拓扑概念

<!-- complex_plane_metric_topology -->
> [!Definition]
> **复平面的度量拓扑 Metric Topology of the Complex Plane**：对 $z_0\in\mathbb{C}$ 和 $r>0$，定义
> $$
> B(z_0,r)=\{z\in\mathbb{C}:|z-z_0|<r\},\qquad
> \bar B(z_0,r)=\{z\in\mathbb{C}:|z-z_0|\le r\}.
> $$
> 这些开圆盘构成 $\mathbb{C}$ 的拓扑基；因此 $U\subseteq\mathbb{C}$ 是开集，当且仅当对每个 $z\in U$，存在 $r>0$ 使 $B(z,r)\subseteq U$。

<!-- complex_plane_open_closed_sets -->
> [!Definition]
> **开集与闭集 Open and Closed Sets**：集合 $U\subseteq\mathbb{C}$ 称为开集，若每个 $z\in U$ 都是 $U$ 的内点；集合 $F\subseteq\mathbb{C}$ 称为闭集，若 $\mathbb{C}\setminus F$ 是开集。对任意 $A\subseteq\mathbb{C}$，其内部、闭包和边界分别为
> $$
> \operatorname{int}(A),\qquad \overline A,\qquad \partial A=\overline A\setminus\operatorname{int}(A).
> $$

<!-- complex_plane_boundary_characterization -->
> [!Theorem]
> **边界的刻画 Characterization of the Boundary**：对 $A\subseteq\mathbb{C}$，有
> $$
> \partial A=\overline A\cap\overline{\mathbb{C}\setminus A}.
> $$
> 因而 $z\in\partial A$ 当且仅当任意 $r>0$ 的开圆盘 $B(z,r)$ 同时与 $A$ 和 $\mathbb{C}\setminus A$ 相交。
>
> **证明思路**：用闭包的邻域刻画分别表示 $z\in\overline A$ 与 $z\in\overline{\mathbb{C}\setminus A}$，再结合内部与补集的关系即可。

<!-- complex_plane_limit_point_isolated_point -->
> [!Definition]
> **聚点与孤立点 Limit Point and Isolated Point**：设 $A\subseteq\mathbb{C}$。点 $z_0\in\mathbb{C}$ 是 $A$ 的聚点，若每个 $r>0$ 都满足
> $$
> \bigl(B(z_0,r)\setminus\{z_0\}\bigr)\cap A\ne\varnothing.
> $$
> 若 $z_0\in A$ 且存在 $r>0$ 使 $B(z_0,r)\cap A=\{z_0\}$，则称 $z_0$ 是 $A$ 的孤立点。记 $A'$ 为 $A$ 的聚点集，则 $\overline A=A\cup A'$。

<!-- complex_plane_connected_set -->
> [!Definition]
> **连通集与区域 Connected Set and Domain**：集合 $E\subseteq\mathbb{C}$ 称为连通，若不存在两个不交非空的相对开集 $U,V\subseteq E$ 使 $E=U\cup V$。若 $E$ 还是开集，则称 $E$ 为区域（或域）。
>
> 集合 $E$ 称为道路连通，若任意 $z_0,z_1\in E$ 都存在连续曲线 $\gamma:[0,1]\to E$，满足 $\gamma(0)=z_0$、$\gamma(1)=z_1$。在 $\mathbb{C}$ 的开集内，连通性与道路连通性等价。

<!-- complex_plane_compact_set -->
> [!Theorem]
> **复平面中的紧性 Compactness in the Complex Plane**：对 $K\subseteq\mathbb{C}$，以下命题等价：
> 1. $K$ 是紧集；
> 2. $K$ 是有界闭集；
> 3. $K$ 中每个序列都有一个收敛到 $K$ 中某点的子序列。
>
> **证明思路**：将 $\mathbb{C}$ 识别为 $\mathbb{R}^2$，应用 Heine-Borel 定理及度量空间中紧性与序列紧性的等价性。

<!-- complex_plane_simply_connected -->
> [!Definition]
> **单连通与多连通区域 Simply and Multiply Connected Domains**：区域 $D\subseteq\mathbb{C}$ 称为单连通，若每条闭曲线 $\gamma:[0,1]\to D$ 都能在 $D$ 内连续变形为常值曲线；等价地，$\widehat{\mathbb{C}}\setminus D$ 是连通的。若 $D$ 不是单连通区域，则称为多连通区域。
>
> **注**：补集的等价刻画使用广义复平面；例如圆环域的补集有两个连通分支，而半平面的补集在广义复平面中仍连通。

<!-- complex_plane_convex_set -->
> [!Definition]
> **凸集 Convex Set**：集合 $E\subseteq\mathbb{C}$ 称为凸集，若对任意 $z_0,z_1\in E$ 和 $t\in[0,1]$，都有
> $$
> (1-t)z_0+t z_1\in E.
> $$
> 每个凸集都是道路连通且单连通的；当凸集还是开集时，它是区域。

## 典型例子

<!-- complex_plane_standard_domains -->
> [!Example]+
> **复平面的典型区域 Standard Domains in the Complex Plane**：
> 1. 开圆盘 $B(z_0,r)$ 与上半平面 $\{z\in\mathbb{C}:\operatorname{Im}z>0\}$ 是凸的单连通区域；
> 2. 穿孔平面 $\mathbb{C}\setminus\{0\}$ 是连通但非单连通区域；
> 3. 圆环域 $\{z\in\mathbb{C}:r<|z|<R\}$（$0<r<R$）是多连通区域；
> 4. $\mathbb{Q}+i\mathbb{Q}$ 在 $\mathbb{C}$ 中稠密，但不是开集，也不是闭集。

> **注**：本小节基本事实参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 1，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 1。
