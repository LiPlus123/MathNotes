# 单纯同调群

## 循环群与边缘群

<!-- cycle_group_definition -->
> [!Definition]
> **$n$-循环群 $n$-Cycle Group**：有限单纯复形 $K$ 的**第 $n$ 个循环群 $n$-Cycle Group** 定义为边界算子 $\partial_n$ 的核：
> $$Z_n(K) = \ker \partial_n = \{c \in C_n(K) \mid \partial_n(c) = 0\}.$$
> $Z_n(K)$ 的元素称为 **$n$-循环 $n$-Cycle**（无边界的 $n$-链）。

<!-- boundary_group_definition -->
> [!Definition]
> **$n$-边缘群 $n$-Boundary Group**：有限单纯复形 $K$ 的**第 $n$ 个边缘群 $n$-Boundary Group** 定义为边界算子 $\partial_{n+1}$ 的像：
> $$B_n(K) = \mathrm{Im}\,\partial_{n+1} = \{\partial_{n+1}(c) \mid c \in C_{n+1}(K)\}.$$
> $B_n(K)$ 的元素称为 **$n$-边缘 $n$-Boundary**（某 $(n+1)$-链的边界）。

> **注**：由 $\partial^2 = 0$ 知 $B_n(K) \subseteq Z_n(K)$（每个边缘都是循环）；同调群正是度量两者之间差异的商群，衡量"哪些循环不是边缘"。

## 单纯同调群

<!-- simplicial_homology_group_definition -->
> [!Definition]
> **单纯同调群 Simplicial Homology Group**：有限单纯复形 $K$ 的**第 $n$ 个单纯同调群 $n$-th Simplicial Homology Group** 定义为：
> $$H_n(K) = Z_n(K) \big/ B_n(K) = \ker\partial_n \big/ \mathrm{Im}\,\partial_{n+1}.$$
> $H_n(K)$ 是一个有限生成阿贝尔群。$H_n(K)$ 中的元素 $[c] = c + B_n(K)$ 称为 $n$-循环 $c$ 的**同调类 Homology Class**；两个 $n$-循环 $c, c'$ 属于同一同调类（即 $c - c' \in B_n(K)$）时称它们**同调 Homologous**，记为 $c \sim c'$。

<!-- homology_geometric_meaning -->
> **注**：$H_n(K)$ 的几何意义：
> - $H_0(K)$：$\cong \mathbb{Z}^r$，其中 $r$ 是 $|K|$ 的道路连通分支数（每个连通分支贡献一个 $\mathbb{Z}$）；
> - $H_1(K)$：检测 $|K|$ 中"一维洞"（不可填充的圆圈）；
> - $H_n(K)$：检测 $|K|$ 中"$n$ 维洞"。

<!-- homology_betti_number -->
> [!Definition]
> **Betti 数 Betti Number**：第 $n$ 个单纯同调群的秩（自由部分的秩）称为第 $n$ 个 **Betti 数 Betti Number**：
> $$\beta_n(K) = \mathrm{rank}\,H_n(K).$$
> Betti 数是 $|K|$ 的拓扑不变量。

## 单纯同调群与欧拉示性数

<!-- euler_characteristic_via_homology -->
> [!Theorem]
> **欧拉示性数与 Betti 数的关系 Euler Characteristic and Betti Numbers**：设 $K$ 是有限单纯复形，$\alpha_n = |K^{(n)} \setminus K^{(n-1)}|$ 为 $n$-单形的数目，则：
> $$\chi(K) = \sum_{n \geq 0} (-1)^n \alpha_n = \sum_{n \geq 0} (-1)^n \beta_n(K).$$
>
> **证明思路**：由秩-零化度定理和 $\partial^2 = 0$，$\alpha_n = \mathrm{rank}\,C_n(K)$，利用各群的短正合列 $0 \to Z_n \to C_n \to B_{n-1} \to 0$ 和 $0 \to B_n \to Z_n \to H_n \to 0$，对各 $n$ 求秩并交错求和，正负项相消后得到 $\sum(-1)^n \alpha_n = \sum(-1)^n \beta_n$。
