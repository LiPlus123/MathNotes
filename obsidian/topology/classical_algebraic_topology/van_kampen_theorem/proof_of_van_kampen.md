# Van Kampen 定理的证明

本节给出 Van Kampen 定理的证明思路，分为满射性（每个 $\pi_1(X, x_0)$ 的元素可由 $U$、$V$ 的元素表示）和单射性（关系在合成积中已被完整捕获）两部分。

## 满射性：用 Lebesgue 数引理切分回路

<!-- van_kampen_surjectivity -->
> [!Theorem]
> **满射性 Surjectivity**：自然同态 $\Phi: \pi_1(U, x_0) *_{\pi_1(U \cap V, x_0)} \pi_1(V, x_0) \to \pi_1(X, x_0)$ 是满射。即 $\pi_1(X, x_0)$ 中每个元素 $[\gamma]$ 均可表示为若干个来自 $\pi_1(U, x_0)$ 和 $\pi_1(V, x_0)$ 的元素之积。
>
> **证明思路**：设 $\gamma: I \to X$ 是以 $x_0$ 为基点的回路。
>
> **细分**：$\{U, V\}$ 构成 $X$ 的开覆盖，从而 $\{f^{-1}(U), \gamma^{-1}(V)\}$ 构成紧致度量空间 $I$ 的开覆盖。由 **Lebesgue 数引理**，存在 $\delta > 0$，使得 $I$ 中每个直径小于 $\delta$ 的子集都落在 $\gamma^{-1}(U)$ 或 $\gamma^{-1}(V)$ 之一中。取 $I$ 的细分 $0 = s_0 < s_1 < \cdots < s_k = 1$，使每个 $[s_{i-1}, s_i]$ 满足 $\gamma([s_{i-1}, s_i]) \subseteq U$ 或 $\gamma([s_{i-1}, s_i]) \subseteq V$。
>
> **连接到基点**：各分点 $\gamma(s_i)$（$0 < i < k$）均在 $U$ 或 $V$（或两者）中；若 $\gamma(s_i) \in U \cap V$，可在 $U \cap V$ 中取一条从 $x_0$ 到 $\gamma(s_i)$ 的道路 $\alpha_i$（利用 $U \cap V$ 道路连通），令 $\alpha_0 = \alpha_k = c_{x_0}$。
>
> **分解**：令 $\gamma_i = \bar{\alpha}_{i-1} * \gamma|_{[s_{i-1}, s_i]} * \alpha_i$（其中 $\gamma|_{[s_{i-1}, s_i]}$ 重参数化为 $I$ 上的道路），则 $\gamma_i$ 是落在 $U$ 或 $V$ 中的以 $x_0$ 为基点的回路，且 $[\gamma] = [\gamma_1] \cdot [\gamma_2] \cdots [\gamma_k]$ 在 $\pi_1(X, x_0)$ 中成立。故 $[\gamma]$ 在 $\Phi$ 的像中。

## 单射性：合成积泛性质的应用

<!-- van_kampen_injectivity -->
> [!Theorem]
> **单射性 Injectivity**：自然同态 $\Phi: \pi_1(U, x_0) *_{\pi_1(U \cap V, x_0)} \pi_1(V, x_0) \to \pi_1(X, x_0)$ 是单射。即若 $\pi_1(U, x_0)$ 和 $\pi_1(V, x_0)$ 的元素之积在 $\pi_1(X, x_0)$ 中为单位元，则它在合成积中亦为单位元。
>
> **证明思路**：设字 $[\gamma_1][\gamma_2] \cdots [\gamma_k]$（各 $[\gamma_i] \in \pi_1(U, x_0)$ 或 $\pi_1(V, x_0)$）在 $\pi_1(X, x_0)$ 中平凡，即对应回路 $\gamma = \gamma_1 * \gamma_2 * \cdots * \gamma_k$ 在 $X$ 中同伦于常值回路，设同伦为 $H: I \times I \to X$。
>
> **对同伦做细分**：对紧致方块 $I \times I$ 的开覆盖 $\{H^{-1}(U), H^{-1}(V)\}$ 应用 Lebesgue 数引理，取方形细分网格 $\{[s_{i-1}, s_i] \times [t_{j-1}, t_j]\}$，使每个小方块的 $H$-像落在 $U$ 或 $V$ 之一中。
>
> **逐行分析**：对每一行 $t = t_j$，类似满射性的论证，将 $H(\cdot, t_j)$ 所表示的元素用 $U$、$V$、$U \cap V$ 中的回路表示。相邻两行之间，各小方块提供了在 $U$ 或 $V$ 中的道路同伦，从而可以在合成积中逐步将 $[\gamma_1] \cdots [\gamma_k]$ 化为单位元。合成积泛性质保证了这些在 $U$ 和 $V$ 各自内部成立的关系被合成积忠实地反映。

> **注**：此单射性论证的细节较为繁复，关键点在于：每一步化简均在 $U$ 或 $V$ 的内部完成（利用相应小方块给出的局部同伦），而合成积恰恰是"仅由 $U$ 和 $V$ 内部的关系生成的群"，因此 $X$ 中的整体同伦关系在合成积中不会引入额外关系。
