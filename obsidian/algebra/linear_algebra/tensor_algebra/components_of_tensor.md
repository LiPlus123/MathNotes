# 张量的分量表示

## 张量的分量

<!-- tensor_components -->
> [!Definition]
> **张量的分量 Components of a Tensor**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间，$\{e_i\}$ 为 $V$ 的基，$\{e^i\}$ 为 $V^*$ 的对偶基。$(r, s)$ 型张量 $T \in T^r_s(V)$ 在该基下的**分量**定义为
> $$T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s} \coloneqq T(e^{i_1}, \ldots, e^{i_r};\; e_{j_1}, \ldots, e_{j_s}) \in F,$$
> 其中上标 $i_1, \ldots, i_r$ 为**逆变指标**，下标 $j_1, \ldots, j_s$ 为**协变指标**，每个指标的取值范围均为 $1, \ldots, n$。
>
> 利用张量积基定理，$T$ 可唯一地分解为
> $$T = T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}\; e_{i_1} \otimes \cdots \otimes e_{i_r} \otimes e^{j_1} \otimes \cdots \otimes e^{j_s}$$
> （采用爱因斯坦求和约定）。

> **注**：分量 $T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}$ 共有 $n^{r+s}$ 个，它们完全刻画了张量 $T$ 在给定基下的信息。不同基下的分量组通过变换规律相互联系（见下文）。

## 张量分量在不同基下的变换规律

<!-- tensor_transformation_law -->
> [!Theorem]
> **张量分量的变换规律 Transformation Law of Tensor Components**：设旧基 $\{e_i\}$ 到新基 $\{e'_i\}$ 的过渡矩阵为 $A = (A^j_{\ i})$，即
> $$e'_i = A^j_{\ i}\, e_j, \quad e'^i = (A^{-1})^i_{\ j}\, e^j.$$
> 则 $(r, s)$ 型张量 $T$ 在新基下的分量 $T'^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}$ 与旧基下的分量 $T^{k_1 \cdots k_r}{}_{l_1 \cdots l_s}$ 之间满足：
> $$T'^{i_1 \cdots i_r}{}_{j_1 \cdots j_s} = (A^{-1})^{i_1}_{\ k_1} \cdots (A^{-1})^{i_r}_{\ k_r}\; A^{l_1}_{\ j_1} \cdots A^{l_s}_{\ j_s}\; T^{k_1 \cdots k_r}{}_{l_1 \cdots l_s}.$$
> 即每个**逆变指标**对应乘以 $(A^{-1})$ 的一个因子，每个**协变指标**对应乘以 $A$ 的一个因子。
>
> **证明思路**：将新基下对偶基向量 $e'^{i_\mu} = (A^{-1})^{i_\mu}_{\ k_\mu} e^{k_\mu}$ 和新基向量 $e'_{j_\nu} = A^{l_\nu}_{\ j_\nu} e_{l_\nu}$ 代入分量定义式，利用 $T$ 的多重线性性展开，即得变换公式。

> **注**：上述变换规律也可作为张量的等价定义——在每个基下给定一组数组 $T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}$，且满足上述变换规律，则它们唯一确定一个 $(r, s)$ 型张量。这一"分量变换法"定义在物理学文献中更为常见。

<!-- example_vector_transformation -->
> [!Example]+
> **向量分量的变换 Transformation of Vector Components**：向量 $v \in V$ 是 $(1, 0)$ 型张量，其分量变换规律为
> $$v'^i = (A^{-1})^i_{\ j}\, v^j.$$
> 线性泛函 $\alpha \in V^*$ 是 $(0, 1)$ 型张量，其分量变换规律为
> $$\alpha'_i = A^j_{\ i}\, \alpha_j.$$
> 这与协变/逆变分量的变换规律（见协变与逆变一节）完全一致，验证了分量变换法定义的自洽性。
