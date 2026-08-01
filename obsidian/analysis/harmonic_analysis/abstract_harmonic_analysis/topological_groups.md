# 拓扑群

## 连续群运算与齐性空间

<!-- abstract_topological_group_definition -->
> [!Definition]
> **拓扑群 Topological Group**：群 $G$ 连同一个拓扑称为拓扑群，若乘法与取逆映射
> $$
> G\times G\to G,\quad(x,y)\mapsto xy,
> \qquad G\to G,\quad x\mapsto x^{-1}
> $$
> 都连续。左、右平移 $L_g(x)=gx$、$R_g(x)=xg$ 均为同胚。

<!-- abstract_locally_compact_group_definition -->
> [!Definition]
> **局部紧群 Locally Compact Group**：若拓扑群 $G$ 为 Hausdorff 空间，且每一点有紧邻域，则称 $G$ 为局部紧群。局部紧第二可数群是 Haar 测度、正则表示和调和分析的基本框架。

<!-- abstract_group_action_definition -->
> [!Definition]
> **连续群作用 Continuous Group Action**：$G$ 在拓扑空间 $X$ 上的左作用是连续映射 $G\times X\to X$，$(g,x)\mapsto g\cdot x$，满足 $e\cdot x=x$ 和 $(gh)\cdot x=g\cdot(h\cdot x)$。轨道为 $G\cdot x$，稳定子为 $G_x=\{g\in G:g\cdot x=x\}$。

<!-- abstract_homogeneous_space_definition -->
> [!Definition]
> **齐性空间 Homogeneous Space**：若 $G$ 在 $X$ 上传递作用，则 $X$ 称为 $G$-齐性空间。任选 $x_0\in X$，映射
> $$
> G/G_{x_0}\longrightarrow X,\qquad gG_{x_0}\longmapsto g\cdot x_0
> $$
> 是 $G$-等变双射；在适当拓扑条件下也是同胚。

<!-- abstract_coset_example -->
> [!Example]+
> **经典齐性空间 Classical Homogeneous Spaces**：$\mathbb{S}^{n-1}\cong SO(n)/SO(n-1)$，而实射影空间 $\mathbb{RP}^{n-1}$ 是 $SO(n)$ 的另一个齐性空间。此类商空间上的不变测度和表示构成球面调和分析的几何基础。

<!-- abstract_quotient_measure_note -->
> [!Proposition]
> **商空间上的不变测度 Invariant Measures on Quotients**：设 $H$ 是局部紧群 $G$ 的闭子群。$G/H$ 是否存在 $G$-不变 Radon 测度由模函数兼容条件决定；当 $G$ 与 $H$ 都幺模时，该条件自动满足。
>
> **证明思路**：将 $G$ 上的 Haar 积分沿 $H$ 的陪集分解。左平移不变性要求商空间的密度恰好补偿 $G$ 与 $H$ 的模函数之比。

> **来源**：Gerald B. Folland, *A Course in Abstract Harmonic Analysis*, Chapters 1--2。
