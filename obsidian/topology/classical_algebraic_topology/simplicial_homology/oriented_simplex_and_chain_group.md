# 定向单形与链群

## 单形的定向

<!-- oriented_simplex_definition -->
> [!Definition]
> **定向单形 Oriented Simplex**：设 $\sigma = [v_0, v_1, \ldots, v_n]$ 是几何 $n$-单形（$n \geq 1$）。$\sigma$ 的**定向 Orientation** 是其顶点的一个排序的等价类，其中两个排序等价当且仅当它们相差一个**偶置换**。每个 $n$-单形（$n \geq 1$）恰好有两个定向，互为**反向**。
>
> 由顶点排序 $(v_0, v_1, \ldots, v_n)$ 确定的**定向 $n$-单形 Oriented $n$-Simplex** 记为 $[v_0, v_1, \ldots, v_n]$。规定：
> $$[v_{\pi(0)}, v_{\pi(1)}, \ldots, v_{\pi(n)}] = \mathrm{sgn}(\pi) \cdot [v_0, v_1, \ldots, v_n],$$
> 其中 $\mathrm{sgn}(\pi) = \pm 1$ 是置换 $\pi$ 的符号。

> **注**：对 $0$-单形（顶点），只有一个定向（单元素集只有一种排序）。约定将顶点 $v$ 视为定向 $0$-单形 $[v]$，符号为 $+1$。

## 链群

<!-- chain_group_definition -->
> [!Definition]
> **$n$-链群 $n$-Chain Group**：设 $K$ 是有限单纯复形，对每个 $n \geq 0$，从 $K$ 的每个 $n$-单形中选定一个定向（两者之一），以这些**定向 $n$-单形**为自由生成元的自由阿贝尔群称为 $K$ 的 **$n$-链群 $n$-Chain Group**，记为 $C_n(K)$：
> $$C_n(K) = \bigoplus_{\substack{\sigma \in K \\ \dim\sigma = n}} \mathbb{Z} \cdot \sigma.$$
> 当 $n < 0$ 或 $n > \dim K$ 时，规定 $C_n(K) = 0$。$C_n(K)$ 的元素称为 **$n$-链 $n$-Chain**，形如 $c = \sum_{\sigma} m_\sigma \sigma$（$m_\sigma \in \mathbb{Z}$）。

> **注**：反向定向单形对应链群中的负元素：若选定 $[v_0, v_1, \ldots, v_n]$ 为生成元，则 $[v_1, v_0, v_2, \ldots, v_n] = -[v_0, v_1, v_2, \ldots, v_n]$ 在 $C_n(K)$ 中成立（定向相差奇置换）。$C_n(K)$ 的同构类不依赖于定向的选取方式（不同选取给出自然同构的群）。

<!-- chain_group_examples -->
> [!Example]+
> **链群的例子 Examples**：
> 1. 设 $K = \partial\Delta^2$（三角形边界），顶点 $\{v_0, v_1, v_2\}$，边 $\{[v_0,v_1], [v_1,v_2], [v_0,v_2]\}$，则：
>    - $C_0(K) \cong \mathbb{Z}^3$（由三个顶点生成）；
>    - $C_1(K) \cong \mathbb{Z}^3$（由三条定向边生成）；
>    - $C_n(K) = 0$（$n \geq 2$ 或 $n < 0$）。
> 2. 设 $K = \partial\Delta^3$（四面体边界 $\cong S^2$），有 $4$ 个顶点、$6$ 条边、$4$ 个三角形面，则：
>    - $C_0 \cong \mathbb{Z}^4$，$C_1 \cong \mathbb{Z}^6$，$C_2 \cong \mathbb{Z}^4$，$C_n = 0$（$n \geq 3$）。
