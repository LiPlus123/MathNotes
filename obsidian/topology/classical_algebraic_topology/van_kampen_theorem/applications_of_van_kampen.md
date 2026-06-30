# Van Kampen 定理的应用

## 楔积的基本群

<!-- wedge_sum_definition -->
> [!Definition]
> **楔积 Wedge Sum**：设 $(X, x_0)$、$(Y, y_0)$ 是带基点的拓扑空间，其**楔积 Wedge Sum** 定义为：
> $$X \vee Y = (X \sqcup Y) \big/ (x_0 \sim y_0),$$
> 即将两个空间在各自基点处粘合成一点，公共基点记为 $*$。

<!-- wedge_sum_fundamental_group -->
> [!Theorem]
> **楔积的基本群 Fundamental Group of Wedge Sum**：设 $(X, x_0)$、$(Y, y_0)$ 是带基点的拓扑空间，且在 $x_0$（或 $y_0$）处各有一个单连通的邻域（例如 $X$、$Y$ 均为 CW 复形），则：
> $$\pi_1(X \vee Y, *) \cong \pi_1(X, x_0) * \pi_1(Y, y_0).$$
>
> **证明思路**：取 $U$ 为 $X \vee Y$ 中 $X$ 部分加上 $Y$ 中 $y_0$ 的一个单连通邻域的开集（使 $U \simeq X$），$V$ 为 $Y$ 部分加上 $X$ 中 $x_0$ 的单连通邻域（使 $V \simeq Y$），则 $U \cap V$ 同伦于单点（单连通）。由 Van Kampen 定理，$\pi_1(X \vee Y) \cong \pi_1(U) * \pi_1(V) \cong \pi_1(X) * \pi_1(Y)$。

<!-- wedge_sum_examples -->
> [!Example]+
> **楔积基本群的例子 Examples**：
> 1. $\pi_1(S^1 \vee S^1) \cong F_2 = \langle a, b \rangle$（两个生成元的自由群）；
> 2. $\pi_1\!\left(\bigvee_{i=1}^n S^1\right) \cong F_n$（$n$ 个生成元的自由群）；
> 3. $\pi_1(S^1 \vee S^2) \cong \mathbb{Z}$（因为 $\pi_1(S^2) = 0$，自由积退化）。

## 紧致曲面的基本群

紧致曲面均可由一个多边形（其边按特定方式两两粘合）给出，其胞腔分解有一个 $0$-胞、若干 $1$-胞和一个 $2$-胞，从而 Van Kampen 定理给出其基本群的呈示。

<!-- fundamental_group_torus -->
> [!Example]+
> **环面 $T^2$ 的基本群**：将 $T^2$ 实现为正方形按边识别 $aba^{-1}b^{-1}$（对边平行粘合），其 $1$-骨架为 $S^1 \vee S^1$，基本群为 $F_2 = \langle a, b \rangle$；附加 $2$-胞后引入关系 $aba^{-1}b^{-1} = 1$，由 Van Kampen 定理（一侧单连通推论）：
> $$\pi_1(T^2) = \langle a, b \mid aba^{-1}b^{-1} \rangle \cong \mathbb{Z} \times \mathbb{Z}.$$

<!-- fundamental_group_orientable_surface -->
> [!Theorem]
> **可定向紧致曲面的基本群 Fundamental Group of Orientable Compact Surface**：亏格为 $g \geq 1$ 的可定向紧致曲面 $\Sigma_g$ 的基本群为：
> $$\pi_1(\Sigma_g) = \left\langle a_1, b_1, \ldots, a_g, b_g \ \Big|\ [a_1, b_1][a_2, b_2] \cdots [a_g, b_g] \right\rangle,$$
> 其中 $[a_i, b_i] = a_i b_i a_i^{-1} b_i^{-1}$。
>
> **证明思路**：$\Sigma_g$ 实现为 $4g$ 边形，边标识为 $a_1 b_1 a_1^{-1} b_1^{-1} \cdots a_g b_g a_g^{-1} b_g^{-1}$；$1$-骨架同伦于 $\bigvee_{i=1}^{2g} S^1$，基本群为 $F_{2g}$；附加 $2$-胞引入一个关系，由 Van Kampen 定理得上述呈示。

<!-- fundamental_group_nonorientable_surface -->
> [!Theorem]
> **不可定向紧致曲面的基本群 Fundamental Group of Non-Orientable Compact Surface**：$k$ 个射影平面的连通和 $N_k$（$k \geq 1$）的基本群为：
> $$\pi_1(N_k) = \langle c_1, c_2, \ldots, c_k \mid c_1^2 c_2^2 \cdots c_k^2 \rangle.$$
>
> 特别地，$\pi_1(\mathbb{R}P^2) = \langle c \mid c^2 \rangle \cong \mathbb{Z}/2\mathbb{Z}$；Klein 瓶 $K = N_2$ 满足 $\pi_1(K) = \langle a, b \mid a^2 b^2 \rangle = \langle a, b \mid abab^{-1} \rangle$（两种呈示等价）。

## CW 二维骨架的基本群

<!-- cw_2skeleton_fundamental_group -->
> [!Theorem]
> **CW 复形 $2$-骨架的基本群 Fundamental Group of $2$-Skeleton of CW Complex**：设 $X$ 是 CW 复形，有一个 $0$-胞 $x_0$（基点），$1$-胞 $\{e_\alpha^1\}_{\alpha \in A}$，$2$-胞 $\{e_\beta^2\}_{\beta \in B}$（粘合映射 $f_\beta: S^1 \to X^1$）。则 $2$-骨架 $X^2$ 的基本群有如下呈示：
> $$\pi_1(X^2, x_0) = \left\langle \{a_\alpha\}_{\alpha \in A} \ \Big|\ \{w_\beta\}_{\beta \in B} \right\rangle,$$
> 其中 $a_\alpha$ 对应第 $\alpha$ 个 $1$-胞，$w_\beta$ 是粘合映射 $f_\beta$ 在 $\pi_1(X^1) = F(\{a_\alpha\})$ 中对应的字。
>
> **证明思路**：$1$-骨架 $X^1$ 同伦于 $\bigvee_\alpha S^1$，其基本群为自由群 $F(\{a_\alpha\})$。附加每个 $2$-胞 $e_\beta^2$：取 $U$ 为 $X^1 \cup e_\beta^2$ 中 $e_\beta^2$ 的开邻域（单连通），$V$ 为 $X^1$ 加上 $e_\beta^2$ 边界附近的开环（同伦于 $X^1$），$U \cap V$ 道路连通，由 Van Kampen 定理（一侧单连通推论）每个 $2$-胞贡献一个关系 $w_\beta = 1$。逐步附加所有 $2$-胞即得上述呈示。

## 结点群初步

<!-- knot_group_definition -->
> [!Definition]
> **结点群 Knot Group**：设 $K \subset S^3$ 是一个结点（圆周在 $S^3$ 中的嵌入像），则 $K$ 的**结点群 Knot Group** 定义为 $S^3$ 中 $K$ 的**补空间**的基本群：
> $$\pi_1(S^3 \setminus K).$$

<!-- knot_group_unknot -->
> [!Example]+
> **平凡结的结点群 Knot Group of the Unknot**：平凡结（unknot）$K \cong S^1$ 在 $S^3$ 中的补 $S^3 \setminus K \cong S^1 \times D^2$（实心环面，即 solid torus），故：
> $$\pi_1(S^3 \setminus K_{\mathrm{unknot}}) \cong \mathbb{Z} = \langle m \rangle,$$
> 其中生成元 $m$ 为绕结点一周的**经线（meridian）**。

<!-- knot_group_trefoil -->
> [!Example]+
> **三叶结的结点群 Knot Group of the Trefoil**：三叶结 $K_{\mathrm{trefoil}}$ 的结点群为：
> $$\pi_1(S^3 \setminus K_{\mathrm{trefoil}}) \cong \langle a, b \mid a^2 = b^3 \rangle,$$
> 即 $\mathbb{Z}$ 沿 $1 \mapsto 2$ 和 $1 \mapsto 3$ 嵌入的合成积 $\mathbb{Z} *_{\mathbb{Z}} \mathbb{Z}$（亦与辫群 $B_3$ 同构）。
>
> **证明思路**：利用 Seifert-Van Kampen 定理，将 $S^3 \setminus K$ 分解为两个实心环面的补（由结的 Seifert 曲面分割），对各部分分别计算基本群并按 Van Kampen 定理合并。

> **注**：结点群是区分结点的重要代数不变量。两个结点同痕（isotopic）当且仅当其结点群同构（配合额外的外围结构数据）。
