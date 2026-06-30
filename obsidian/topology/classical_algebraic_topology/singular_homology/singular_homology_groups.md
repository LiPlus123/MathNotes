# 奇异同调群

## 奇异同调群的定义

<!-- singular_homology_group_definition -->
> [!Definition]
> **奇异同调群 Singular Homology Group**：设 $X$ 是拓扑空间，$(S_*(X), \partial)$ 是其奇异链复形。令：
> $$Z_n(X) = \ker\partial_n \subseteq S_n(X) \quad \text{（奇异 $n$-循环群）},$$
> $$B_n(X) = \mathrm{Im}\,\partial_{n+1} \subseteq S_n(X) \quad \text{（奇异 $n$-边缘群）}.$$
> 由 $\partial^2 = 0$ 知 $B_n(X) \subseteq Z_n(X)$。第 $n$ 个**奇异同调群 Singular Homology Group** 定义为：
> $$H_n(X) = Z_n(X) \big/ B_n(X).$$
> $H_n(X)$ 的元素（$n$-循环的同调类）记为 $[c]$ 或 $[c]_n$；两个 $n$-循环 $c \sim c'$ 当且仅当 $c - c' \in B_n(X)$。

> **注**：奇异同调群是拓扑空间（而非单纯复形）的不变量，仅依赖于 $X$ 的拓扑结构，而不依赖于任何三角剖分的选取。

## 零维同调与道路连通分支

<!-- singular_H0_connected_components -->
> [!Theorem]
> **$H_0(X)$ 与道路连通分支 $H_0(X)$ and Path-Connected Components**：设 $X$ 是拓扑空间，$\{X_\alpha\}_{\alpha \in A}$ 是 $X$ 的全体道路连通分支。则：
> $$H_0(X) \cong \bigoplus_{\alpha \in A} \mathbb{Z} \cong \mathbb{Z}^{|A|},$$
> 即 $H_0(X)$ 是以道路连通分支集合为指标的自由阿贝尔群，每个分支贡献一个 $\mathbb{Z}$。
>
> **证明思路**：任意奇异 $0$-单形（即 $X$ 中的点）$x$ 是 $0$-循环（因为 $S_{-1}(X) = 0$，$\partial_0 = 0$）。两个点 $x, y$ 满足 $[x] = [y]$ 在 $H_0$ 中当且仅当 $x - y \in \mathrm{Im}\,\partial_1$，即存在奇异 $1$-单形（道路）$\gamma: I \to X$ 使得 $\partial_1(\gamma) = y - x$，等价于 $x$ 与 $y$ 属于同一道路连通分支。故 $H_0(X)$ 的生成元恰为各连通分支中任选的一点的同调类。

<!-- singular_reduced_H0 -->
> [!Corollary]
> **约化奇异同调 Reduced Singular Homology**：类似单纯情形，定义**约化奇异同调群** $\tilde{H}_n(X)$（通过增广链复形，附加 $\varepsilon: S_0(X) \to \mathbb{Z}$，$\varepsilon(\sum m_\sigma \sigma) = \sum m_\sigma$）：
> $$\tilde{H}_n(X) = H_n(X) \quad (n \geq 1), \qquad \tilde{H}_0(X) \cong H_0(X) / \mathbb{Z}.$$
> 若 $X$ 非空道路连通，则 $\tilde{H}_0(X) = 0$；若 $X$ 空，则 $\tilde{H}_{-1}(X) = \mathbb{Z}$（唯一非平凡的约化同调群）。

<!-- singular_homology_examples -->
> [!Example]+
> **奇异同调群的基本例子 Basic Examples**：
> 1. 单点空间 $\{*\}$：$H_0(\{*\}) \cong \mathbb{Z}$，$H_n(\{*\}) = 0$（$n \geq 1$）（因为 $\Delta^n$ 到单点的映射只有一个，唯一 $n$-单形，且 $\partial_n(\sigma_n) = \sum(-1)^i \sigma_{n-1}$，奇偶抵消或直接计算）；
> 2. 可缩空间 $X$（$X \simeq \{*\}$）：$H_0(X) \cong \mathbb{Z}$，$H_n(X) = 0$（$n \geq 1$）（由同伦不变性）；
> 3. 不相交两点 $X = \{a, b\}$：$H_0(X) \cong \mathbb{Z}^2$。
