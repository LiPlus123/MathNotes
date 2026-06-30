# 抽象单纯复形

## 抽象单纯复形的定义

<!-- abstract_simplicial_complex_definition -->
> [!Definition]
> **抽象单纯复形 Abstract Simplicial Complex**：**抽象单纯复形** $K$ 是一个有限集（**顶点集 Vertex Set**）$V(K)$ 以及 $V(K)$ 的若干有限子集的集合，满足：
> 1. 对每个 $v \in V(K)$，单元素集 $\{v\} \in K$；
> 2. 若 $\sigma \in K$ 且 $\tau \subseteq \sigma$，则 $\tau \in K$（**遗传性 Hereditary Property**）。
>
> $K$ 中的元素称为 $K$ 的**单形 Simplex**，含 $k+1$ 个元素的单形称为 $k$-**单形（维数为 $k$）**；$0$-单形即顶点，$1$-单形即边。$K$ 的**维数** $\dim K = \max\{|\sigma| - 1 \mid \sigma \in K\}$。

<!-- geometric_simplicial_complex_definition -->
> [!Definition]
> **几何单纯复形 Geometric Simplicial Complex**：$\mathbb{R}^N$ 中有限多个几何单形的集合 $\mathcal{K}$，满足：
> 1. 若 $\sigma \in \mathcal{K}$，则 $\sigma$ 的每个面也在 $\mathcal{K}$ 中；
> 2. 若 $\sigma, \tau \in \mathcal{K}$，则 $\sigma \cap \tau$ 要么是空集，要么是 $\sigma$ 和 $\tau$ 的公共面。
>
> 几何单纯复形 $\mathcal{K}$ 的**底空间（多面体）Underlying Space (Polyhedron)** 是所有单形的并 $|\mathcal{K}| = \bigcup_{\sigma \in \mathcal{K}} \sigma \subseteq \mathbb{R}^N$，配备 $\mathbb{R}^N$ 的子空间拓扑。

## 几何实现

<!-- geometric_realization_definition -->
> [!Definition]
> **几何实现 Geometric Realization**：设 $K$ 是抽象单纯复形，顶点集 $V(K) = \{v_0, v_1, \ldots, v_m\}$。$K$ 的**几何实现 Geometric Realization** $|K|$ 是如下子空间：
> $$|K| = \left\{ \mathbf{\lambda} = (\lambda_0, \ldots, \lambda_m) \in [0,1]^{m+1} \ \Bigg|\ \sum_{i=0}^m \lambda_i = 1,\quad \mathrm{supp}(\mathbf{\lambda}) := \{v_i \mid \lambda_i > 0\} \in K \right\},$$
> 配备 $\mathbb{R}^{m+1}$ 的子空间拓扑（等价地，配备弱拓扑：子集 $A \subseteq |K|$ 是闭集当且仅当 $A$ 与每个单形的交是闭集）。

> **注**：每个单形 $\sigma = \{v_{i_0}, \ldots, v_{i_k}\} \in K$ 对应 $|K|$ 中一个同胚于 $\Delta^k$ 的子空间（各 $\lambda_{i_j} > 0$ 且 $\sum_{j} \lambda_{i_j} = 1$）；不同单形的对应子空间的内部两两不相交，$|K|$ 是这些子空间的不相交内部并及其粘合。

## 子复形与骨架

<!-- subcomplex_definition -->
> [!Definition]
> **子复形 Subcomplex**：抽象单纯复形 $K$ 的**子复形 Subcomplex** 是 $K$ 的子集 $L$，且 $L$ 本身也是抽象单纯复形（即 $L$ 包含其所有单形的面）。子复形 $L$ 的几何实现 $|L|$ 是 $|K|$ 的子空间。

<!-- skeleton_definition -->
> [!Definition]
> **$k$-骨架 $k$-Skeleton**：抽象单纯复形 $K$ 的 $k$-**骨架** $K^{(k)}$ 是 $K$ 中所有维数不超过 $k$ 的单形构成的子复形：
> $$K^{(k)} = \{\sigma \in K \mid \dim \sigma \leq k\}.$$
> 特别地：$K^{(0)}$ 是顶点集（$0$-骨架，离散空间）；$K^{(1)}$ 是图（$1$-骨架，顶点与边）。

<!-- abstract_complex_examples -->
> [!Example]+
> **抽象单纯复形的例子 Examples**：
> 1. **$n$-单形的边界**：$K = \partial \Delta^n$ 的顶点集为 $\{v_0, \ldots, v_n\}$，$K$ 包含所有 $\{0,\ldots,n\}$ 的非空真子集作为单形（不含 $\{v_0, \ldots, v_n\}$ 本身）；$|K| \cong S^{n-1}$；
> 2. **三角形**：$K = \{\{a\},\{b\},\{c\},\{a,b\},\{b,c\},\{a,c\},\{a,b,c\}\}$，$|K| \cong D^2$；
> 3. **空心三角形**：$K = \{\{a\},\{b\},\{c\},\{a,b\},\{b,c\},\{a,c\}\}$（不含 $\{a,b,c\}$），$|K| \cong S^1$。
