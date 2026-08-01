# Riemann 映射定理

## Riemann 映射定理

<!-- riemann_mapping_theorem -->
> [!Theorem]
> **Riemann 映射定理 Riemann Mapping Theorem**：设 $D\subsetneq\mathbb C$ 是单连通区域，则存在双全纯映射
> $$
> f:D\xrightarrow{\sim}\mathbb D.
> $$
> 若指定 $z_0\in D$，并要求 $f(z_0)=0$、$f'(z_0)>0$，则这样的映射唯一。
>
> **证明思路**：考虑所有将 $D$ 单叶映入单位圆盘并在 $z_0$ 处归一化的全纯函数族，利用正规族提取极限；最大化 $|f'(z_0)|$，再用 Schwarz 引理和变分方法证明极限映射满射。

<!-- riemann_mapping_normalization -->
> [!Corollary]
> **Riemann 映射的归一化唯一性 Normalized Uniqueness**：任意两个把 $D$ 双全纯映到 $\mathbb D$ 的映射之复合，是单位圆盘的 Möbius 自同构。因而指定一个点的像和该点处导数的正性即可消除全部自同构自由度。

<!-- simply_connected_domain_equivalence -->
> [!Theorem]
> **单连通区域的等价刻画 Characterization of Simply Connected Domains**：对区域 $D\subsetneq\mathbb C$，以下条件等价：
> 1. $D$ 单连通；
> 2. $D$ 的补集在 $\widehat{\mathbb C}$ 中连通；
> 3. $D$ 双全纯等价于单位圆盘。
>
> **证明思路**：$1\Leftrightarrow2$ 是平面拓扑的刻画，$1\Rightarrow3$ 由 Riemann 映射定理，$3\Rightarrow1$ 由双全纯映射保持基本群结构。

## 边界对应

<!-- caratheodory_boundary_extension -->
> [!Theorem]
> **Carathéodory 边界扩张定理 Carathéodory Extension Theorem**：若 $D\subsetneq\mathbb C$ 是单连通区域且其边界是 Jordan 曲线，则任意 Riemann 映射 $f:D\to\mathbb D$ 连续延拓为
> $$
> \bar f:\overline D\to\overline{\mathbb D},
> $$
> 并且该延拓是闭包之间的同胚，特别地给出边界 Jordan 曲线之间的同胚。
>
> **证明思路**：利用 Riemann 映射的边界簇性质和 Jordan 曲线的局部连通性，证明每个边界点具有唯一的连续边界值，并证明边界值映射双射。

<!-- boundary_local_connectivity_extension -->
> [!Theorem]
> **局部连通边界的连续延拓 Continuous Extension for Locally Connected Boundaries**：若单连通区域 $D$ 的边界在球面中局部连通，则 Riemann 映射可连续延拓到闭包；但边界延拓不必是单射，除非边界具有更强的 Jordan 曲线性质。
>
> **证明思路**：用 Carathéodory 素端理论描述边界趋近方式；局部连通性保证每个素端对应唯一边界点。

<!-- riemann_mapping_examples -->
> [!Example]+
> **典型 Riemann 映射 Typical Riemann Maps**：上半平面与单位圆盘由 Cayley 变换互相双全纯；任意圆盘 $B(a,r)$ 可由
> $$
> f(z)=\frac{z-a}{r}
> $$
> 映到 $\mathbb D$。这些例子体现了 Riemann 映射定理中的存在性，但一般区域的映射通常没有初等表达式。

> **注**：Riemann 映射定理和 Carathéodory 边界扩张定理参见 Lars Ahlfors, *Complex Analysis*, 3rd ed., Chapter 6，以及 John B. Conway, *Functions of One Complex Variable I*, Chapter 6。
