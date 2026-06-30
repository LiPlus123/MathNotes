# Van Kampen 定理的叙述

## 定理条件

<!-- van_kampen_setup -->
设 $X$ 是拓扑空间，$U, V \subseteq X$ 是开子集，满足：
- $X = U \cup V$；
- $U$、$V$、$U \cap V$ 均为**道路连通**的非空空间；
- 取公共基点 $x_0 \in U \cap V$。

记各含入映射诱导的基本群同态为：

$$j_{U*}: \pi_1(U \cap V, x_0) \to \pi_1(U, x_0), \quad j_{V*}: \pi_1(U \cap V, x_0) \to \pi_1(V, x_0),$$
$$i_{U*}: \pi_1(U, x_0) \to \pi_1(X, x_0), \quad i_{V*}: \pi_1(V, x_0) \to \pi_1(X, x_0).$$

## 主定理

<!-- van_kampen_theorem -->
> [!Theorem]
> **Van Kampen 定理 Van Kampen's Theorem**：在上述条件下，自然同态：
> $$\Phi: \pi_1(U, x_0) *_{\pi_1(U \cap V, x_0)} \pi_1(V, x_0) \xrightarrow{\sim} \pi_1(X, x_0)$$
> 是群同构，其中合成积沿 $j_{U*}$ 和 $j_{V*}$ 定义，$\Phi$ 由 $i_{U*}$ 和 $i_{V*}$ 诱导（由合成积的泛性质，因为 $i_{U*} \circ j_{U*} = i_{V*} \circ j_{V*}$）。
>
> 等价地：以下交换方块是群范畴中的**推出方块 Pushout Square**：
> $$\begin{array}{ccc} \pi_1(U \cap V, x_0) & \xrightarrow{j_{U*}} & \pi_1(U, x_0) \\ \downarrow^{j_{V*}} & & \downarrow^{i_{U*}} \\ \pi_1(V, x_0) & \xrightarrow{i_{V*}} & \pi_1(X, x_0) \end{array}$$

## 特殊情形

<!-- van_kampen_simply_connected_intersection -->
> [!Corollary]
> **交集单连通时的自由积 Free Product When Intersection is Simply Connected**：若 $U \cap V$ 单连通（$\pi_1(U \cap V, x_0) = 0$），则：
> $$\pi_1(X, x_0) \cong \pi_1(U, x_0) * \pi_1(V, x_0).$$
>
> **证明思路**：合成积沿平凡群的合并退化为自由积。

<!-- van_kampen_simply_connected_one_side -->
> [!Corollary]
> **一侧单连通的情形**：若 $U$ 单连通（$\pi_1(U, x_0) = 0$）且 $U \cap V$ 道路连通，则：
> $$\pi_1(X, x_0) \cong \pi_1(V, x_0) \big/ N(j_{V*}(\pi_1(U \cap V, x_0))),$$
> 即 $\pi_1(X, x_0)$ 是 $\pi_1(V, x_0)$ 商去 $U \cap V$ 在 $V$ 中所贡献的关系的正规闭包。

## 推广到多个开集

<!-- van_kampen_general -->
> [!Theorem]
> **Van Kampen 定理的推广 General Version of Van Kampen's Theorem**：设 $X = \bigcup_{\alpha} U_\alpha$，其中 $\{U_\alpha\}$ 是 $X$ 的一族开子集，且所有 $U_\alpha$ 以及所有有限交 $U_{\alpha_1} \cap \cdots \cap U_{\alpha_k}$ 均道路连通，并含有公共基点 $x_0$。则 $\pi_1(X, x_0)$ 是群范畴中以 $\{\pi_1(U_\alpha, x_0)\}$ 为顶点、以各含入诱导同态为箭头的图的**余极限（Colimit）**，即由所有 $\pi_1(U_\alpha, x_0)$ 生成，并附加所有在各交集 $U_\alpha \cap U_\beta$ 中成立的关系。
