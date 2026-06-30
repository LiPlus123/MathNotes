# 胞腔同调的计算

## 实射影空间 $\mathbb{R}P^n$

<!-- cellular_homology_rpn -->
> [!Example]+
> **$\mathbb{R}P^n$ 的胞腔同调 Cellular Homology of $\mathbb{R}P^n$**：$\mathbb{R}P^n$ 的 CW 结构有一个 $k$-胞腔（$0 \leq k \leq n$），胞腔链群为 $C_k^{CW} = \mathbb{Z}$（$0 \leq k \leq n$），其余为 $0$。
>
> **边界算子**：第 $k$ 个粘合映射 $\varphi_k: S^{k-1} \to \mathbb{R}P^{k-1}$ 是双层覆叠，次数公式给出：
> $$d_k = 1 + (-1)^k = \begin{cases} 0 & k \text{ 奇}, \\ 2 & k \text{ 偶}, \end{cases} \quad k \geq 2; \qquad d_1 = 0.$$
>
> 胞腔链复形（以 $\mathbb{R}P^4$ 为例）：
> $$0 \to \mathbb{Z} \xrightarrow{2} \mathbb{Z} \xrightarrow{0} \mathbb{Z} \xrightarrow{2} \mathbb{Z} \xrightarrow{0} \mathbb{Z} \to 0.$$
>
> **同调群**（对一般 $n$）：
>
> **$\mathbb{R}P^{2m}$**（偶数维）：
> $$H_k(\mathbb{R}P^{2m}) \cong \begin{cases} \mathbb{Z} & k = 0, \\ \mathbb{Z}/2\mathbb{Z} & k \text{ 奇}, 1 \leq k \leq 2m-1, \\ 0 & \text{其他}. \end{cases}$$
>
> **$\mathbb{R}P^{2m+1}$**（奇数维）：
> $$H_k(\mathbb{R}P^{2m+1}) \cong \begin{cases} \mathbb{Z} & k = 0 \text{ 或 } k = 2m+1, \\ \mathbb{Z}/2\mathbb{Z} & k \text{ 奇}, 1 \leq k \leq 2m-1, \\ 0 & \text{其他}. \end{cases}$$

## 复射影空间 $\mathbb{C}P^n$

<!-- cellular_homology_cpn -->
> [!Example]+
> **$\mathbb{C}P^n$ 的胞腔同调 Cellular Homology of $\mathbb{C}P^n$**：$\mathbb{C}P^n$ 的 CW 结构只有偶数维胞腔（$e^0, e^2, \ldots, e^{2n}$），故所有胞腔边界算子均为零（奇数维链群为 $0$，偶数维相邻的 $d_{2k+1}: 0 \to \mathbb{Z}$ 也为零）。
>
> **同调群**：
> $$H_k(\mathbb{C}P^n) \cong \begin{cases} \mathbb{Z} & k = 0, 2, 4, \ldots, 2n, \\ 0 & \text{其他（包括所有奇数 $k$ 和 $k > 2n$）.} \end{cases}$$
>
> 欧拉示性数 $\chi(\mathbb{C}P^n) = n + 1$。

## 透镜空间 $L(p, q)$

<!-- lens_space_definition -->
> [!Definition]
> **透镜空间 Lens Space**：设 $p \geq 2$ 是正整数，$q$ 是满足 $\gcd(p, q) = 1$ 的整数。**透镜空间 $L(p, q)$** 是 $\mathbb{Z}/p\mathbb{Z}$ 在 $S^3 = \{(z_1, z_2) \in \mathbb{C}^2 \mid |z_1|^2 + |z_2|^2 = 1\}$ 上的自由作用的商空间，作用由生成元 $(z_1, z_2) \mapsto (e^{2\pi i/p} z_1,\, e^{2\pi i q/p} z_2)$ 给出。

<!-- lens_space_cw_homology -->
> [!Example]+
> **透镜空间 $L(p, q)$ 的胞腔同调 Cellular Homology of $L(p, q)$**：$L(p, q)$ 是 $3$ 维闭流形，有 CW 结构：各维数 $0, 1, 2, 3$ 各一个胞腔，胞腔链复形：
> $$0 \to \mathbb{Z} \xrightarrow{0} \mathbb{Z} \xrightarrow{p} \mathbb{Z} \xrightarrow{0} \mathbb{Z} \to 0.$$
>
> **同调群**：
> $$H_k(L(p,q)) \cong \begin{cases} \mathbb{Z} & k = 0, 3, \\ \mathbb{Z}/p\mathbb{Z} & k = 1, \\ 0 & k = 2 \text{ 或 } k \geq 4. \end{cases}$$
>
> 特别地，$L(1, q) \cong S^3$（单层覆叠，商为整个 $S^3$）；$L(2, 1) \cong \mathbb{R}P^3$（双层覆叠，$\mathbb{R}P^3$ 的基本群为 $\mathbb{Z}/2\mathbb{Z}$）。

> **注**：不同的 $(p, q)$ 和 $(p, q')$ 可给出不同胚但同调同构的透镜空间（透镜空间的同调只看 $p$，不区分 $q$），需要更精细的不变量（如 Reidemeister 扭转）才能区分。

## 复 Grassmann 流形低维情形

<!-- grassmannian_cellular_homology -->
> [!Example]+
> **$G_\mathbb{C}(2, 4)$ 的胞腔同调 Cellular Homology of $G_\mathbb{C}(2,4)$**：$G_\mathbb{C}(2, 4)$ 是 $\mathbb{C}^4$ 中复 $2$-维子空间构成的 Grassmann 流形，实维数为 $2 \times 2 \times 2 = 8$（复维数 $4$）。其 Schubert 胞腔分解：
>
> | 分拆 $\lambda$ | 复维数 $|\lambda|$ | 实维数 |
> |---|---|---|
> | $(0,0)$ | $0$ | $0$ |
> | $(1,0)$ | $1$ | $2$ |
> | $(2,0)$ | $2$ | $4$ |
> | $(1,1)$ | $2$ | $4$ |
> | $(2,1)$ | $3$ | $6$ |
> | $(2,2)$ | $4$ | $8$ |
>
> 所有胞腔在偶数实维数，所有边界算子为零，故：
> $$H_k(G_\mathbb{C}(2,4)) \cong \begin{cases} \mathbb{Z} & k = 0, 2, 6, 8, \\ \mathbb{Z}^2 & k = 4, \\ 0 & k \text{ 奇或 } k > 8. \end{cases}$$
>
> 欧拉示性数 $\chi(G_\mathbb{C}(2,4)) = 1 + 1 + 2 + 1 + 1 = 6 = \binom{4}{2}$（一般地 $\chi(G_\mathbb{C}(k,n)) = \binom{n}{k}$）。
