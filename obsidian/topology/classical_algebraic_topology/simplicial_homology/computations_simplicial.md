# 单纯同调的计算

## 圆周 $S^1$

<!-- simplicial_homology_circle -->
> [!Example]+
> **$S^1$ 的单纯同调 Simplicial Homology of $S^1$**：取三角剖分 $K = \partial\Delta^2$，顶点 $\{v_0, v_1, v_2\}$，选定向边 $e_{01} = [v_0,v_1]$，$e_{12} = [v_1,v_2]$，$e_{02} = [v_0,v_2]$。
>
> 链复形：$0 \to C_1 \xrightarrow{\partial_1} C_0 \to 0$，其中 $C_1 \cong \mathbb{Z}^3$，$C_0 \cong \mathbb{Z}^3$。
>
> $$\partial_1(e_{01}) = v_1 - v_0, \quad \partial_1(e_{12}) = v_2 - v_1, \quad \partial_1(e_{02}) = v_2 - v_0.$$
>
> - $Z_0 = C_0 \cong \mathbb{Z}^3$，$B_0 = \mathrm{Im}\,\partial_1 = \{a(v_1-v_0) + b(v_2-v_1) + c(v_2-v_0)\} = \{x_0 v_0 + x_1 v_1 + x_2 v_2 \mid x_0+x_1+x_2=0\} \cong \mathbb{Z}^2$，故 $H_0 = \mathbb{Z}^3/\mathbb{Z}^2 \cong \mathbb{Z}$（连通）。
> - $Z_1 = \ker\partial_1$：$a(v_1-v_0) + b(v_2-v_1) + c(v_2-v_0) = 0$ 意味着 $v_0$-系数 $-a-c=0$，$v_1$-系数 $a-b=0$，$v_2$-系数 $b+c=0$，解为 $a=b=-c$，即 $Z_1 = \mathbb{Z}\cdot(e_{01}+e_{12}-e_{02}) \cong \mathbb{Z}$；$B_1 = 0$（无 $2$-单形）。
> - 故 $H_0(S^1) \cong \mathbb{Z}$，$H_1(S^1) \cong \mathbb{Z}$，$H_n(S^1) = 0$（$n \geq 2$）。

## 球面 $S^n$

<!-- simplicial_homology_sphere -->
> [!Theorem]
> **球面的单纯同调 Simplicial Homology of $S^n$**：
> $$H_k(S^n) \cong \begin{cases} \mathbb{Z}, & k = 0 \text{ 或 } k = n, \\ 0, & \text{其他}. \end{cases}$$
>
> **证明思路**：取 $K = \partial\Delta^{n+1}$（$(n+1)$-单形的边界），$C_k(K) \cong \mathbb{Z}^{\binom{n+2}{k+1}}$。计算边界矩阵（结合组合恒等式），得 $Z_k = C_k$（$k = n$，因 $\partial_n$ 的值域为 $B_{n-1}$）和 $B_k = Z_k$（$0 < k < n$）。具体地，$\partial_{n+1}$ 在 $\partial\Delta^{n+1}$ 不存在（无 $(n+1)$-单形），而唯一的 $n$-循环（所有 $n$-面之代数和）生成 $H_n \cong \mathbb{Z}$。

## 环面 $T^2$

<!-- simplicial_homology_torus -->
> [!Example]+
> **环面的单纯同调 Simplicial Homology of $T^2$**：
> $$H_0(T^2) \cong \mathbb{Z}, \quad H_1(T^2) \cong \mathbb{Z}^2, \quad H_2(T^2) \cong \mathbb{Z}, \quad H_k(T^2) = 0 \ (k \geq 3).$$
>
> **证明思路**：取正方形的三角剖分（$9$ 顶点、$27$ 棱、$18$ 三角形），计算边界矩阵。对生成元 $a$（"经线"回路）和 $b$（"纬线"回路）：$\partial_1 a = 0$，$\partial_1 b = 0$，$B_1 = 0$，$Z_1 \cong \mathbb{Z}^2$，$H_1 \cong \mathbb{Z}^2$；环面可定向，唯一的 $2$-循环（全体三角形的代数和）生成 $H_2 \cong \mathbb{Z}$，与欧拉示性数 $\chi = 0 = \beta_0 - \beta_1 + \beta_2 = 1 - 2 + 1$ 一致。

## 射影平面 $\mathbb{R}P^2$

<!-- simplicial_homology_projective_plane -->
> [!Example]+
> **射影平面的单纯同调 Simplicial Homology of $\mathbb{R}P^2$**：
> $$H_0(\mathbb{R}P^2) \cong \mathbb{Z}, \quad H_1(\mathbb{R}P^2) \cong \mathbb{Z}/2\mathbb{Z}, \quad H_k(\mathbb{R}P^2) = 0 \ (k \geq 2).$$
>
> **证明思路**：取 $\mathbb{R}P^2$ 的三角剖分（正方形对边按方案 $a b a^{-1} b$ 粘合，细分为三角形）。边界矩阵的计算表明：$Z_1$ 中有一个 $2$ 阶元（对应"非定向回路"$a$），即存在 $c \in Z_1$ 使 $2c \in B_1$ 而 $c \notin B_1$，故 $H_1 \cong \mathbb{Z}/2\mathbb{Z}$；由 $\mathbb{R}P^2$ 不可定向，无非零 $2$-循环，$H_2 = 0$。与欧拉示性数 $\chi = 1 = 1 - 0 + 0$（$\beta_0=1, \beta_1=0, \beta_2=0$，扭转部分不贡献秩）一致。

## Klein 瓶 $K$

<!-- simplicial_homology_klein_bottle -->
> [!Example]+
> **Klein 瓶的单纯同调 Simplicial Homology of the Klein Bottle**：
> $$H_0(K) \cong \mathbb{Z}, \quad H_1(K) \cong \mathbb{Z} \oplus \mathbb{Z}/2\mathbb{Z}, \quad H_k(K) = 0 \ (k \geq 2).$$
>
> **证明思路**：$K$ 对应粘合方案 $a b a b^{-1}$（或 $a b a^{-1} b$），三角剖分后计算边界矩阵：$Z_1$ 由两个回路 $a, b$ 生成，$B_1$ 中有关系 $2b = \partial(\text{某 $2$-链})$，而 $a$ 自由，故 $H_1 \cong \mathbb{Z}\langle a \rangle \oplus \mathbb{Z}/2\mathbb{Z}\langle b \rangle$；$K$ 不可定向，$H_2 = 0$。

## Möbius 带 $M$

<!-- simplicial_homology_mobius_band -->
> [!Example]+
> **Möbius 带的单纯同调 Simplicial Homology of the Möbius Band**：Möbius 带 $M$ 形变收缩到中心圆 $S^1$，故同伦等价于 $S^1$：
> $$H_0(M) \cong \mathbb{Z}, \quad H_1(M) \cong \mathbb{Z}, \quad H_k(M) = 0 \ (k \geq 2).$$
>
> **证明思路**：利用 $M \simeq S^1$（同伦等价）和同调的同伦不变性（此处借用奇异同调，或直接在三角剖分上计算）。直接计算：选定 Möbius 带的三角剖分，边界矩阵给出与 $S^1$ 相同的同调群。

## 紧致曲面的同调

<!-- compact_surface_homology_theorem -->
> [!Theorem]
> **紧致曲面的单纯同调 Simplicial Homology of Compact Surfaces**：
>
> **可定向亏格 $g$ 曲面 $\Sigma_g$**（$g \geq 0$）：
> $$H_0(\Sigma_g) \cong \mathbb{Z}, \quad H_1(\Sigma_g) \cong \mathbb{Z}^{2g}, \quad H_2(\Sigma_g) \cong \mathbb{Z}, \quad H_k = 0 \ (k \geq 3).$$
>
> **不可定向曲面 $N_k$**（$k \geq 1$）：
> $$H_0(N_k) \cong \mathbb{Z}, \quad H_1(N_k) \cong \mathbb{Z}^{k-1} \oplus \mathbb{Z}/2\mathbb{Z}, \quad H_k = 0 \ (k \geq 2).$$
>
> **证明思路**：利用多边形三角剖分：$\Sigma_g$ 对应 $4g$ 边形，$N_k$ 对应 $2k$ 边形；各有 $1$ 个顶点、$2g$（或 $k$）条棱、$1$ 个面（细分为三角形后需更多单元）。更系统地，可利用 CW 复形胞腔同调或 Mayer-Vietoris 序列计算；直接三角剖分计算给出与欧拉示性数 $\chi = 2-2g$（$\Sigma_g$）和 $\chi = 2-k$（$N_k$）一致的结果。

<!-- compact_surface_homology_summary -->
> [!Example]+
> **同调群汇总 Summary Table**：
>
> | 曲面 | $H_0$ | $H_1$ | $H_2$ | $\chi$ |
> |---|---|---|---|---|
> | $S^2 = \Sigma_0$ | $\mathbb{Z}$ | $0$ | $\mathbb{Z}$ | $2$ |
> | $T^2 = \Sigma_1$ | $\mathbb{Z}$ | $\mathbb{Z}^2$ | $\mathbb{Z}$ | $0$ |
> | $\Sigma_g$（$g \geq 1$） | $\mathbb{Z}$ | $\mathbb{Z}^{2g}$ | $\mathbb{Z}$ | $2-2g$ |
> | $\mathbb{R}P^2 = N_1$ | $\mathbb{Z}$ | $\mathbb{Z}/2\mathbb{Z}$ | $0$ | $1$ |
> | Klein 瓶 $= N_2$ | $\mathbb{Z}$ | $\mathbb{Z} \oplus \mathbb{Z}/2\mathbb{Z}$ | $0$ | $0$ |
> | $N_k$（$k \geq 1$） | $\mathbb{Z}$ | $\mathbb{Z}^{k-1} \oplus \mathbb{Z}/2\mathbb{Z}$ | $0$ | $2-k$ |
