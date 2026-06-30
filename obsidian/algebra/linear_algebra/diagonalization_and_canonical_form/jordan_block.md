# Jordan 块

<!-- jordan_block_def -->
> [!Definition]
> **Jordan 块 Jordan Block**：设 $\lambda_0 \in F$，$k \in \mathbb{Z}^+$，**Jordan 块**（Jordan block）$J_k(\lambda_0)$ 是如下 $k \times k$ 上三角矩阵：
> $$J_k(\lambda_0) = \begin{pmatrix} \lambda_0 & 1 & 0 & \cdots & 0 \\ 0 & \lambda_0 & 1 & \cdots & 0 \\ \vdots & & \ddots & \ddots & \vdots \\ 0 & \cdots & & \lambda_0 & 1 \\ 0 & \cdots & 0 & 0 & \lambda_0 \end{pmatrix}$$
> 即对角线上元素全为 $\lambda_0$，超对角线（第一条上次对角线）上元素全为 $1$，其余元素全为 $0$。$k = 1$ 时 $J_1(\lambda_0) = (\lambda_0)$ 为 $1 \times 1$ 矩阵。

> **注**：Jordan 块是所有方阵中"尽可能简单"却仍可能不可对角化的基本构件。$J_k(\lambda_0)$ 可以写成 $\lambda_0 I_k + N_k$，其中 $N_k$ 是 $k \times k$ 的幂零上移位矩阵（$N_k$ 的超对角线为 1，其余为 0，满足 $N_k^k = O$，$N_k^{k-1} \neq O$）。

<!-- jordan_block_characteristic_polynomial -->
> [!Theorem]
> **Jordan 块的特征多项式 Characteristic Polynomial of Jordan Block**：$J_k(\lambda_0)$ 的特征多项式为
> $$p_{J_k(\lambda_0)}(\lambda) = (\lambda_0 - \lambda)^k$$
> 即 $\lambda_0$ 是 $J_k(\lambda_0)$ 的唯一特征值，代数重数为 $k$。
>
> **证明思路**：$J_k(\lambda_0) - \lambda I_k = (\lambda_0 - \lambda)I_k + N_k$ 是上三角矩阵，对角元素均为 $\lambda_0 - \lambda$，故行列式为 $(\lambda_0 - \lambda)^k$。

<!-- jordan_block_eigenspace -->
> [!Theorem]
> **Jordan 块的特征子空间 Eigenspace of Jordan Block**：$J_k(\lambda_0)$ 的特征子空间（属于 $\lambda_0$）为
> $$V_{\lambda_0} = \ker(J_k(\lambda_0) - \lambda_0 I_k) = \mathrm{span}(e_1)$$
> 即一维子空间，由第一个标准基向量 $e_1 = (1, 0, \ldots, 0)^T$ 张成。因此 $J_k(\lambda_0)$ 的几何重数为 $1$。
>
> **证明思路**：$J_k(\lambda_0) - \lambda_0 I_k = N_k$，其秩为 $k-1$，故零空间维数为 $1$。$N_k e_1 = 0$ 而 $N_k e_i \neq 0$（$i \geq 2$），故零空间由 $e_1$ 张成。

<!-- jordan_block_minimal_polynomial -->
> [!Theorem]
> **Jordan 块的最小多项式 Minimal Polynomial of Jordan Block**：$J_k(\lambda_0)$ 的最小多项式为
> $$m_{J_k(\lambda_0)}(\lambda) = (\lambda - \lambda_0)^k$$
>
> **证明思路**：令 $N = J_k(\lambda_0) - \lambda_0 I_k = N_k$，则 $(J_k(\lambda_0) - \lambda_0 I_k)^j = N_k^j$。由 $N_k^k = O$ 知 $(\lambda - \lambda_0)^k$ 零化 $J_k(\lambda_0)$；又 $N_k^{k-1} \neq O$，故次数小于 $k$ 的 $(\lambda - \lambda_0)^{k-1}$ 不零化 $J_k(\lambda_0)$。因此最小多项式恰为 $(\lambda - \lambda_0)^k$。

<!-- jordan_block_nilpotent_power -->
> [!Proposition]
> **Jordan 块移位矩阵的幂 Powers of Jordan Block Shift**：设 $N_k$ 为 $J_k(\lambda_0)$ 中的幂零部分，即 $(N_k)_{ij} = \delta_{i, j-1}$，则对 $0 \leq r \leq k$：
> $$N_k^r = \begin{cases} I_k, & r = 0 \\ (e_{ij}) \text{ 其中 } (N_k^r)_{ij} = \delta_{j,\, i+r}, & 1 \leq r \leq k-1 \\ O, & r \geq k \end{cases}$$
> 即 $N_k^r$ 的第 $(i, i+r)$ 元素为 $1$，其余为 $0$（$r$ 阶上移位矩阵）。特别地，$N_k^{k-1} \neq O$ 但 $N_k^k = O$。

<!-- jordan_block_power -->
> [!Proposition]
> **Jordan 块的幂 Powers of Jordan Block**：设 $m \geq 1$，则
> $$J_k(\lambda_0)^m = \sum_{r=0}^{\min(m,k-1)} \binom{m}{r} \lambda_0^{m-r} N_k^r$$
> 即 $J_k(\lambda_0)^m$ 的第 $(i, j)$ 元素为 $\binom{m}{j-i} \lambda_0^{m-(j-i)}$（$j \geq i$，否则为 $0$）。
>
> **证明思路**：由二项式定理展开 $(\lambda_0 I_k + N_k)^m$，利用 $N_k^k = O$ 截断求和。
