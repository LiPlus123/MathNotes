# 多面体的例子

## 球面的三角剖分

<!-- sphere_triangulation -->
> [!Example]+
> **球面的三角剖分 Triangulation of Spheres**：$n$ 维球面 $S^n$ 可实现为几何 $(n+1)$-单形 $\Delta^{n+1}$ 的**边界**：
> $$S^n \cong |\partial \Delta^{n+1}|.$$
> 具体地：
> - $S^0 \cong |\partial \Delta^1|$：两个顶点（$1$-单形的端点），$2$ 个 $0$-单形；
> - $S^1 \cong |\partial \Delta^2|$：三角形的边界（$3$ 个顶点，$3$ 条边），$V=3, E=3$；
> - $S^2 \cong |\partial \Delta^3|$：四面体的曲面（$4$ 个顶点，$6$ 条边，$4$ 个三角形面），$V=4, E=6, F=4$，欧拉示性数 $\chi = 4 - 6 + 4 = 2$。

## 环面的三角剖分

<!-- torus_triangulation -->
> [!Example]+
> **环面的三角剖分 Triangulation of the Torus**：环面 $T^2$ 可由正方形 $[0,1]^2$ 对边粘合（$a b a^{-1} b^{-1}$）得到。为使粘合后给出单纯复形，需将正方形细分为三角形并保证粘合相容。**最小三角剖分**需至少 $7$ 个顶点（Möbius 定理）；一个简单的三角剖分取 $3 \times 3$ 网格共 $9$ 个顶点、$27$ 条边、$18$ 个三角形，欧拉示性数 $\chi = 9 - 27 + 18 = 0$。
>
> **标准示例**（$7$ 顶点最小三角剖分）：顶点标记为 $v_0, \ldots, v_6$，三角剖分为 Möbius-Kantor 构型，$V=7, E=21, F=14$，$\chi = 7 - 21 + 14 = 0$。

## Möbius 带的三角剖分

<!-- mobius_band_triangulation -->
> [!Example]+
> **Möbius 带的三角剖分 Triangulation of the Möbius Band**：Möbius 带 $M$ 由矩形 $[0,1] \times [0,1]$ 通过粘合 $(0,t) \sim (1, 1-t)$ 得到（一侧翻转粘合）。三角剖分方案：将矩形细分为三角形使边界粘合相容；最简三角剖分取 $5$ 个顶点（沿中线切分后处理），$V=5, E=10, F=6$（其中边界圆上有 $5$ 条边），欧拉示性数 $\chi = 5 - 10 + 6 = 1$。
>
> Möbius 带同伦等价于其中心圆 $S^1$（形变收缩到中心线），故 $\pi_1(M) \cong \mathbb{Z}$。Möbius 带是不可定向曲面的典型子空间。

## Klein 瓶的三角剖分

<!-- klein_bottle_triangulation -->
> [!Example]+
> **Klein 瓶的三角剖分 Triangulation of the Klein Bottle**：Klein 瓶 $K$ 由正方形通过粘合方案 $a b a b^{-1}$（或等价地 $a b a^{-1} b$，方向反转）得到，是不可定向紧致曲面（$N_2 = \mathbb{R}P^2 \# \mathbb{R}P^2$）。
>
> 一个具体三角剖分取 $9$ 个顶点、$27$ 条边、$18$ 个三角形，欧拉示性数 $\chi = 9 - 27 + 18 = 0$。基本群为 $\pi_1(K) = \langle a, b \mid abab^{-1} \rangle$，为无穷非阿贝尔群。

## 紧致曲面的三角剖分

<!-- compact_surface_triangulation_theorem -->
> [!Theorem]
> **紧致曲面的三角剖分存在性 Triangulability of Compact Surfaces**：每个紧致曲面（二维紧致流形）均可三角剖分，即同胚于某有限单纯复形 $|K|$（$\dim K = 2$）。

<!-- compact_surface_euler -->
> [!Theorem]
> **紧致曲面的欧拉示性数 Euler Characteristic of Compact Surfaces**：设 $K$ 是紧致曲面的三角剖分，$V, E, F$ 分别为顶点数、边数、三角形面数，则**欧拉示性数**：
> $$\chi = V - E + F$$
> 是拓扑不变量（不依赖于三角剖分的选取），且：
> - 可定向亏格 $g$ 曲面 $\Sigma_g$：$\chi(\Sigma_g) = 2 - 2g$（$\chi(S^2) = 2$，$\chi(T^2) = 0$，…）；
> - 不可定向曲面 $N_k$（$k$ 个射影平面的连通和）：$\chi(N_k) = 2 - k$（$\chi(\mathbb{R}P^2) = 1$，$\chi(K) = 0$，…）。

<!-- compact_surface_examples_table -->
> [!Example]+
> **紧致曲面的不变量汇总 Summary Table**：
>
> | 曲面 | 符号 | 可定向 | $\pi_1$ | $\chi$ |
> |---|---|---|---|---|
> | 球面 | $S^2 = \Sigma_0$ | 是 | $0$ | $2$ |
> | 环面 | $T^2 = \Sigma_1$ | 是 | $\mathbb{Z}^2$ | $0$ |
> | 亏格 $g$ 曲面 | $\Sigma_g$ | 是 | $\langle a_1,b_1,\ldots,a_g,b_g \mid \prod[a_i,b_i]\rangle$ | $2-2g$ |
> | 射影平面 | $\mathbb{R}P^2 = N_1$ | 否 | $\mathbb{Z}/2\mathbb{Z}$ | $1$ |
> | Klein 瓶 | $K = N_2$ | 否 | $\langle a,b \mid abab^{-1}\rangle$ | $0$ |
> | $k$ 连通和射影平面 | $N_k$ | 否 | $\langle c_1,\ldots,c_k \mid c_1^2\cdots c_k^2\rangle$ | $2-k$ |
