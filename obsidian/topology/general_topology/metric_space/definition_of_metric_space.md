# 度量空间的定义

## 度量空间

<!-- metric_space_definition -->
> [!Definition]
> **度量空间 Metric Space**：设 $X$ 是一个非空集合，映射 $d: X \times X \to \mathbb{R}$ 称为 $X$ 上的**度量（距离）函数 Metric**，若它满足以下公理：
> 1. **非负性 Non-negativity**：$\forall x, y \in X,\ d(x, y) \geq 0$，且 $d(x, y) = 0 \iff x = y$；
> 2. **对称性 Symmetry**：$\forall x, y \in X,\ d(x, y) = d(y, x)$；
> 3. **三角不等式 Triangle Inequality**：$\forall x, y, z \in X,\ d(x, z) \leq d(x, y) + d(y, z)$。
>
> 称偶对 $(X, d)$ 为**度量空间 Metric Space**，$X$ 中的元素称为**点 Point**。

> **注**：由非负性，$d(x, x) = 0$。由非负性与三角不等式可得**逆三角不等式**：$|d(x, z) - d(y, z)| \leq d(x, y)$。

<!-- metric_space_subspace -->
> [!Definition]
> **度量子空间 Metric Subspace**：设 $(X, d)$ 是度量空间，$A \subseteq X$ 为非空子集，则 $(A, d|_{A \times A})$ 也是度量空间，称为 $(X, d)$ 的**子空间 Subspace**，其中 $d|_{A \times A}$ 为 $d$ 在 $A \times A$ 上的限制。

## 度量空间的例子

<!-- euclidean_metric -->
> [!Example]+
> **欧氏度量空间 Euclidean Metric Space**：在 $\mathbb{R}^n$ 上定义**欧氏度量 Euclidean Metric**：
> $$d_2(x, y) = \sqrt{\sum_{i=1}^{n} (x_i - y_i)^2}$$
> 其中 $x = (x_1, \ldots, x_n),\ y = (y_1, \ldots, y_n) \in \mathbb{R}^n$。则 $(\mathbb{R}^n, d_2)$ 是度量空间，称为 $n$ 维**欧氏空间 Euclidean Space**。

<!-- discrete_metric -->
> [!Example]+
> **离散度量空间 Discrete Metric Space**：在任意非空集合 $X$ 上定义**离散度量 Discrete Metric**：
> $$d_{\mathrm{disc}}(x, y) = \begin{cases} 0 & x = y \\ 1 & x \neq y \end{cases}$$
> 则 $(X, d_{\mathrm{disc}})$ 是度量空间。

<!-- normed_space_metric -->
> [!Definition]
> **赋范空间 Normed Space**：设 $V$ 是数域 $F$（$F = \mathbb{R}$ 或 $\mathbb{C}$）上的线性空间，映射 $\|\cdot\|: V \to \mathbb{R}$ 称为 $V$ 上的**范数 Norm**，若满足：
> 1. **正定性**：$\|x\| \geq 0$，且 $\|x\| = 0 \iff x = \mathbf{0}$；
> 2. **齐次性**：$\forall \lambda \in F,\ \|\lambda x\| = |\lambda| \|x\|$；
> 3. **三角不等式**：$\|x + y\| \leq \|x\| + \|y\|$。
>
> 称 $(V, \|\cdot\|)$ 为**赋范空间 Normed Space**。每个赋范空间通过 $d(x, y) = \|x - y\|$ 诱导一个度量，从而成为度量空间。

<!-- inner_product_space_metric -->
> [!Definition]
> **内积空间 Inner Product Space**：设 $V$ 是数域 $F$ 上的线性空间，映射 $\langle \cdot, \cdot \rangle: V \times V \to F$ 称为**内积 Inner Product**，若满足（以实数域为例）：
> 1. **正定性**：$\langle x, x \rangle \geq 0$，且 $\langle x, x \rangle = 0 \iff x = \mathbf{0}$；
> 2. **对称性**：$\langle x, y \rangle = \langle y, x \rangle$；
> 3. **线性性**：$\langle \alpha x + \beta y, z \rangle = \alpha \langle x, z \rangle + \beta \langle y, z \rangle$。
>
> 称 $(V, \langle \cdot, \cdot \rangle)$ 为**内积空间 Inner Product Space**。内积通过 $\|x\| = \sqrt{\langle x, x \rangle}$ 诱导范数，从而内积空间是赋范空间，进而是度量空间。

> **注**：诱导关系为：内积空间 $\Rightarrow$ 赋范空间 $\Rightarrow$ 度量空间，但反之不然。
