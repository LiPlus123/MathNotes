# 指标记号

## 自由指标与哑指标

<!-- free_index -->
> [!Definition]
> **自由指标 Free Index**：在一个张量表达式中，恰好出现**一次**的指标称为**自由指标**（free index）。自由指标在其取值范围 $1, 2, \ldots, n$ 上逐一取值，表达式对每个取值均成立。

<!-- dummy_index -->
> [!Definition]
> **哑指标 Dummy Index**：在同一项中恰好出现**两次**（一次作为上标，一次作为下标）的指标称为**哑指标**（dummy index），又称**求和指标**。哑指标仅标记求和，可任意更换名称而不改变表达式的值。

> **注**：自由指标与哑指标的区分是指标记号的基础。在合法的张量表达式中，任意一个指标要么是自由指标（出现恰好一次），要么是哑指标（出现恰好两次，且一上一下）。

## 爱因斯坦求和约定

<!-- einstein_summation_convention -->
> [!Definition]
> **爱因斯坦求和约定 Einstein Summation Convention**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间，$\{e_i\}$ 为 $V$ 的一组基，$\{e^i\}$ 为 $V^*$ 的对偶基。**爱因斯坦求和约定**规定：若同一项中某个指标同时以上标和下标的形式各出现一次，则对该指标在 $1$ 到 $n$ 上求和，即
> $$a^i b_i \coloneqq \sum_{i=1}^{n} a^i b_i.$$
> 更一般地，对于张量分量的乘积：
> $$T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}\, S^{j_1 \cdots j_s}{}_{k_1 \cdots k_t} \coloneqq \sum_{j_1=1}^{n} \cdots \sum_{j_s=1}^{n} T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}\, S^{j_1 \cdots j_s}{}_{k_1 \cdots k_t}.$$

> **注**：向量 $v \in V$ 在基 $\{e_i\}$ 下写成 $v = v^i e_i$，其中 $v^i$ 为逆变分量，$e_i$ 视为协变基向量，$i$ 为哑指标，实为 $v = \sum_{i=1}^n v^i e_i$。

## 克罗内克尔符号

<!-- kronecker_delta_as_tensor -->
> [!Definition]
> **克罗内克尔符号 Kronecker Delta**：$n$ 维线性空间 $V$ 上的**克罗内克尔符号** $\delta^i_{\ j}$（$1 \leq i, j \leq n$）定义为
> $$\delta^i_{\ j} \coloneqq \begin{cases} 1, & i = j, \\ 0, & i \neq j. \end{cases}$$
> 它是恒等映射 $\mathrm{Id}_V$ 的分量表示，即一个 $(1,1)$ 型张量。

> **注**：克罗内克尔符号满足 $\delta^i_{\ j}\, v^j = v^i$（指标升降恒等）以及 $\delta^i_{\ i} = n$（迹为维数）。

## 广义克罗内克尔符号

<!-- generalized_kronecker_delta -->
> [!Definition]
> **广义克罗内克尔符号 Generalized Kronecker Delta**：$n$ 维线性空间 $V$ 上的 $p$ 阶**广义克罗内克尔符号** $\delta^{i_1 i_2 \cdots i_p}_{j_1 j_2 \cdots j_p}$（$1 \leq i_k, j_k \leq n$）定义为
> $$\delta^{i_1 i_2 \cdots i_p}_{j_1 j_2 \cdots j_p} \coloneqq \det\!\begin{pmatrix} \delta^{i_1}_{\ j_1} & \delta^{i_1}_{\ j_2} & \cdots & \delta^{i_1}_{\ j_p} \\ \delta^{i_2}_{\ j_1} & \delta^{i_2}_{\ j_2} & \cdots & \delta^{i_2}_{\ j_p} \\ \vdots & \vdots & \ddots & \vdots \\ \delta^{i_p}_{\ j_1} & \delta^{i_p}_{\ j_2} & \cdots & \delta^{i_p}_{\ j_p} \end{pmatrix}.$$
> 即当 $(i_1, \ldots, i_p)$ 是 $(j_1, \ldots, j_p)$ 的偶置换时取 $+1$，是奇置换时取 $-1$，否则取 $0$。

> **注**：广义克罗内克尔符号是一个全反对称的 $(p,p)$ 型张量，当 $p = n$ 时与 Levi-Civita 符号密切相关（见外代数一章）。
