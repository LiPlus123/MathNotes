# 几何单形

## 仿射独立点集

<!-- affinely_independent_definition -->
> [!Definition]
> **仿射独立 Affinely Independent**：$\mathbb{R}^N$ 中的有限点集 $\{v_0, v_1, \ldots, v_k\}$ 称为**仿射独立 Affinely Independent** 的，若向量组 $\{v_1 - v_0, v_2 - v_0, \ldots, v_k - v_0\}$ 在 $\mathbb{R}^N$ 中线性无关。

> **注**：等价地，$\{v_0, \ldots, v_k\}$ 仿射独立当且仅当由方程 $\sum_{i=0}^k \lambda_i v_i = 0$，$\sum_{i=0}^k \lambda_i = 0$ 只有平凡解 $\lambda_0 = \cdots = \lambda_k = 0$。仿射独立的点集最多含 $N+1$ 个点（在 $\mathbb{R}^N$ 中）。

## 几何单形

<!-- geometric_simplex_definition -->
> [!Definition]
> **几何 $n$-单形 Geometric $n$-Simplex**：设 $v_0, v_1, \ldots, v_n \in \mathbb{R}^N$ 是仿射独立的 $n+1$ 个点，由它们生成的**几何 $n$-单形 Geometric $n$-Simplex** 定义为其凸包：
> $$\sigma = [v_0, v_1, \ldots, v_n] = \left\{ \sum_{i=0}^n \lambda_i v_i \ \Bigg|\ \lambda_i \geq 0,\; \sum_{i=0}^n \lambda_i = 1 \right\} \subset \mathbb{R}^N.$$
> 称 $v_0, \ldots, v_n$ 为 $\sigma$ 的**顶点 Vertices**，$n$ 为 $\sigma$ 的**维数 Dimension**，各 $\lambda_i$ 为对应点的**重心坐标 Barycentric Coordinates**。

<!-- low_dim_simplices -->
> [!Example]+
> **低维单形 Low-Dimensional Simplices**：
> - $0$-单形 $[v_0]$：单点；
> - $1$-单形 $[v_0, v_1]$：线段；
> - $2$-单形 $[v_0, v_1, v_2]$：三角形（含内部）；
> - $3$-单形 $[v_0, v_1, v_2, v_3]$：实心四面体。

## 面

<!-- face_of_simplex_definition -->
> [!Definition]
> **面 Face**：设 $\sigma = [v_0, v_1, \ldots, v_n]$ 是几何 $n$-单形，$\{i_0, i_1, \ldots, i_k\} \subseteq \{0, 1, \ldots, n\}$（$i_0 < i_1 < \cdots < i_k$）。则 $\tau = [v_{i_0}, v_{i_1}, \ldots, v_{i_k}]$ 称为 $\sigma$ 的一个 $k$-**面 $k$-Face**，记为 $\tau \leq \sigma$；若 $\tau \neq \sigma$，称为**真面 Proper Face**，记为 $\tau < \sigma$。$\sigma$ 的所有真面构成 $\sigma$ 的**边界 Boundary** $\partial\sigma$，$\sigma$ 去掉边界后的开集称为 $\sigma$ 的**内部 Interior** $\mathrm{Int}(\sigma)$。

> **注**：$n$-单形 $\sigma$ 共有 $2^{n+1}$ 个面（包括空面和 $\sigma$ 本身），有 $\binom{n+1}{k+1}$ 个 $k$-维面。$\sigma$ 的 $0$-面就是它的顶点。

## 标准单形与几何实现

<!-- standard_simplex_definition -->
> [!Definition]
> **标准 $n$-单形 Standard $n$-Simplex**：**标准 $n$-单形** $\Delta^n$ 定义为：
> $$\Delta^n = [e_0, e_1, \ldots, e_n] \subset \mathbb{R}^{n+1},$$
> 其中 $e_i$ 是 $\mathbb{R}^{n+1}$ 中第 $i+1$ 个标准基向量（$e_0 = (1,0,\ldots,0)$，…，$e_n = (0,\ldots,0,1)$）。

> **注**：任意几何 $n$-单形 $[v_0, \ldots, v_n]$ 均与 $\Delta^n$ 同胚（通过仿射同胚 $\sum \lambda_i e_i \mapsto \sum \lambda_i v_i$）。$\Delta^n$ 的第 $i$ 个**面映射 Face Map** $d^i: \Delta^{n-1} \to \Delta^n$（$0 \leq i \leq n$）将 $\Delta^{n-1}$ 嵌入为 $\Delta^n$ 的第 $i$ 个面（省略第 $i$ 个顶点的对面）。

<!-- simplex_barycenter_definition -->
> [!Definition]
> **单形的重心 Barycenter of a Simplex**：几何 $n$-单形 $\sigma = [v_0, \ldots, v_n]$ 的**重心 Barycenter** 定义为：
> $$\hat{\sigma} = \frac{1}{n+1} \sum_{i=0}^n v_i.$$
> 重心是 $\sigma$ 的内点（重心坐标均为 $\frac{1}{n+1} > 0$）。
