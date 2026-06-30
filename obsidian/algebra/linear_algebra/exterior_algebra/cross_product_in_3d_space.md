# 三维欧式空间中的叉积

## 三维欧氏空间的向量外积

<!-- vector_exterior_product_3d -->
> [!Definition]
> **向量外积 Vector Exterior Product**：设 $V = \mathbb{R}^3$，配备标准内积和正定向，$u, v \in V$。向量 $u, v$ 的**向量外积**（vector exterior product）是 $u$ 的对偶 $1$-形式 $u^\flat \in V^*$ 与 $v$ 的对偶 $1$-形式 $v^\flat \in V^*$ 的楔积：
> $$u^\flat \wedge v^\flat \in \bigwedge^2 V^*,$$
> 其中**音乐同构**（musical isomorphism）$\flat: V \to V^*$ 由内积定义：$u^\flat(w) = \langle u, w \rangle$，$\forall w \in V$。

> **注**：音乐同构 $\flat$ 在标准正交基 $\{e_1, e_2, e_3\}$ 下，将 $u = u^i e_i$ 映为 $u^\flat = u^i e^i$（分量不变）。向量外积 $u^\flat \wedge v^\flat$ 是 $\mathbb{R}^3$ 上的 $2$-形式，描述由 $u, v$ 张成的平行四边形的有向面积元素。

## 叉积与向量外积的关系

<!-- cross_product_and_wedge -->
> [!Theorem]
> **叉积与楔积的关系 Cross Product via Hodge Star**：设 $u, v \in \mathbb{R}^3$，配备标准内积与正定向，$\star: \bigwedge^2 V^* \to \bigwedge^1 V^* = V^*$ 为 Hodge 星算子。则 $u$ 与 $v$ 的**叉积**（cross product）$u \times v \in \mathbb{R}^3$ 由下式确定：
> $$(u \times v)^\flat = \star(u^\flat \wedge v^\flat),$$
> 即 $u \times v$ 是满足 $(u \times v)^\flat = \star(u^\flat \wedge v^\flat)$ 的唯一向量。

> **注**：利用标准正交对偶基 $\{e^1, e^2, e^3\}$，显式计算得
> $$u^\flat \wedge v^\flat = (u_1 v_2 - u_2 v_1)\,e^1 \wedge e^2 + (u_2 v_3 - u_3 v_2)\,e^2 \wedge e^3 + (u_1 v_3 - u_3 v_1)\,e^1 \wedge e^3,$$
> 再施以 Hodge 星（$\star(e^1 \wedge e^2) = e^3$，$\star(e^2 \wedge e^3) = e^1$，$\star(e^1 \wedge e^3) = -e^2$），得
> $$(u \times v)^\flat = (u_2 v_3 - u_3 v_2)\,e^1 - (u_1 v_3 - u_3 v_1)\,e^2 + (u_1 v_2 - u_2 v_1)\,e^3,$$
> 与叉积的行列式公式完全吻合。

## 叉积的行列式公式

<!-- cross_product_determinant -->
> [!Proposition]
> **叉积的行列式公式 Determinant Formula for Cross Product**：设 $u = (u_1, u_2, u_3)^T$，$v = (v_1, v_2, v_3)^T \in \mathbb{R}^3$，则
> $$u \times v = \det\begin{pmatrix} e_1 & e_2 & e_3 \\ u_1 & u_2 & u_3 \\ v_1 & v_2 & v_3 \end{pmatrix} = \begin{pmatrix} u_2 v_3 - u_3 v_2 \\ u_3 v_1 - u_1 v_3 \\ u_1 v_2 - u_2 v_1 \end{pmatrix}.$$
>
> **证明思路**：按第一行展开行列式，各余子式对应叉积的三个分量，与 Hodge 星作用于楔积所得结果一致。

## 叉积与行列式的几何意义

<!-- cross_product_geometric_meaning -->
> [!Theorem]
> **叉积的几何意义 Geometric Meaning of Cross Product**：设 $u, v, w \in \mathbb{R}^3$，则：
> 1. **面积**：$|u \times v| = \|u\|\,\|v\|\,|\sin\theta|$，其中 $\theta$ 为 $u$ 与 $v$ 的夹角；$|u \times v|$ 等于以 $u, v$ 为邻边的**平行四边形面积**；
> 2. **方向**：$u \times v$ 垂直于 $u$ 和 $v$（即 $\langle u \times v, u \rangle = \langle u \times v, v \rangle = 0$），方向由右手定则（正定向）确定；
> 3. **混合积与体积**：标量三重积（混合积）
>    $$\langle u \times v, w \rangle = \det\begin{pmatrix} u_1 & u_2 & u_3 \\ v_1 & v_2 & v_3 \\ w_1 & w_2 & w_3 \end{pmatrix},$$
>    其绝对值等于以 $u, v, w$ 为棱的**平行六面体的体积**；当 $(u, v, w)$ 为正定向时取正号，负定向时取负号。
>
> **证明思路**：(1) 利用 $|u \times v|^2 = |u|^2|v|^2 - \langle u,v\rangle^2$（Lagrange 恒等式），再由 $\langle u,v\rangle = |u||v|\cos\theta$ 得 $|u \times v| = |u||v|\sin\theta$（$\theta \in [0,\pi]$）。(2) 由叉积公式直接计算内积验证正交性，方向由体积形式的正定向约定给出。(3) 展开混合积 $\langle u \times v, w\rangle = (u_2 v_3 - u_3 v_2)w_1 + \cdots$，与行列式展开式逐项对照。
