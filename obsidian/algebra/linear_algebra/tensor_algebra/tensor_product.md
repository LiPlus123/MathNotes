# 张量积

## 张量积的定义

<!-- tensor_product_definition -->
> [!Definition]
> **张量积 Tensor Product**：设 $T \in T^r_s(V)$ 为 $(r, s)$ 型张量，$S \in T^p_q(V)$ 为 $(p, q)$ 型张量。定义 $T$ 与 $S$ 的**张量积** $T \otimes S \in T^{r+p}_{s+q}(V)$ 为
> $$\begin{align*}
> &(T \otimes S)(\alpha^1, \ldots, \alpha^r, \beta^1, \ldots, \beta^p,\; u_1, \ldots, u_s, v_1, \ldots, v_q) \\
> &\coloneqq T(\alpha^1, \ldots, \alpha^r, u_1, \ldots, u_s) \cdot S(\beta^1, \ldots, \beta^p, v_1, \ldots, v_q),
> \end{align*}$$
> 其中 $\alpha^1, \ldots, \alpha^r, \beta^1, \ldots, \beta^p \in V^*$，$u_1, \ldots, u_s, v_1, \ldots, v_q \in V$。

> **注**：张量积对每个分量仍是线性的，故 $T \otimes S$ 确为 $(r+p, s+q)$ 型多重线性泛函，即合法的张量。

## 张量积的性质

<!-- tensor_product_properties -->
> [!Theorem]
> **张量积的性质 Properties of Tensor Product**：张量积满足以下性质（设 $T, T_1, T_2 \in T^r_s(V)$，$S, S_1, S_2 \in T^p_q(V)$，$R \in T^u_v(V)$，$\alpha, \beta \in F$）：
> 1. **结合律**：$(T \otimes S) \otimes R = T \otimes (S \otimes R)$；
> 2. **对加法的双线性**：$(\alpha T_1 + \beta T_2) \otimes S = \alpha(T_1 \otimes S) + \beta(T_2 \otimes S)$，$T \otimes (\alpha S_1 + \beta S_2) = \alpha(T \otimes S_1) + \beta(T \otimes S_2)$；
> 3. **一般不满足交换律**：$T \otimes S \neq S \otimes T$（类型不同时甚至无法比较）。
>
> **证明思路**：各性质直接由张量积的定义（逐点乘法）和线性空间的运算规则验证。

## 张量积基定理

<!-- tensor_product_basis -->
> [!Theorem]
> **张量积基定理 Basis Theorem for Tensor Product**：设 $\{e_i\}_{i=1}^n$ 为 $V$ 的基，$\{e^i\}_{i=1}^n$ 为 $V^*$ 的对偶基（$e^i(e_j) = \delta^i_{\ j}$）。则形如
> $$e_{i_1} \otimes \cdots \otimes e_{i_r} \otimes e^{j_1} \otimes \cdots \otimes e^{j_s}, \quad 1 \leq i_1, \ldots, i_r, j_1, \ldots, j_s \leq n$$
> 的 $n^{r+s}$ 个张量构成 $T^r_s(V)$ 的一组基。任意 $(r,s)$ 型张量 $T$ 可唯一地写成
> $$T = T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s}\; e_{i_1} \otimes \cdots \otimes e_{i_r} \otimes e^{j_1} \otimes \cdots \otimes e^{j_s},$$
> 其中 $T^{i_1 \cdots i_r}{}_{j_1 \cdots j_s} = T(e^{i_1}, \ldots, e^{i_r}, e_{j_1}, \ldots, e_{j_s}) \in F$（采用爱因斯坦求和约定）。
>
> **证明思路**：先验证这 $n^{r+s}$ 个元素线性无关（利用多重线性性在基元素处取值），再证明任意张量可由它们展开（多重线性性确保分解唯一）。
