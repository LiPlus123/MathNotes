# 张量的定义

## 多重线性泛函

<!-- multilinear_functional -->
> [!Definition]
> **多重线性泛函 Multilinear Functional**：设 $V_1, V_2, \ldots, V_k$ 为域 $F$ 上的线性空间。称映射
> $$f: V_1 \times V_2 \times \cdots \times V_k \to F$$
> 为**多重线性泛函**（multilinear functional），若 $f$ 对每个分量都是线性的，即对任意 $1 \leq \mu \leq k$，固定其余分量后，$f$ 关于第 $\mu$ 个分量是 $F$-线性的：
> $$f(\ldots, \alpha u + \beta v, \ldots) = \alpha\, f(\ldots, u, \ldots) + \beta\, f(\ldots, v, \ldots), \quad \forall\, \alpha, \beta \in F,\; u, v \in V_\mu.$$

## 张量的定义

<!-- tensor_definition -->
> [!Definition]
> **张量 Tensor**：设 $V$ 为域 $F$ 上的 $n$ 维线性空间，$V^*$ 为其对偶空间。**$(r, s)$ 型张量**（tensor of type $(r, s)$，又称**$r$ 次逆变、$s$ 次协变张量**）是多重线性泛函
> $$T: \underbrace{V^* \times \cdots \times V^*}_{r \text{ 个}} \times \underbrace{V \times \cdots \times V}_{s \text{ 个}} \to F.$$
> 其中 $r$ 称为**逆变阶**（contravariant rank），$s$ 称为**协变阶**（covariant rank），$r + s$ 称为张量的**阶数**（rank 或 order）。特别地：
> - $(0, 0)$ 型张量：$F$ 中的标量；
> - $(1, 0)$ 型张量：$V$ 中的向量（通过 $V \cong V^{**}$ 自然同构）；
> - $(0, 1)$ 型张量：$V^*$ 中的线性泛函（协变向量）；
> - $(0, 2)$ 型张量：$V$ 上的双线性型。

<!-- tensor_space -->
> [!Definition]
> **张量空间 Tensor Space**：所有 $(r, s)$ 型张量的全体，在逐点加法和数乘下构成域 $F$ 上的线性空间，记作
> $$T^r_s(V) \coloneqq \underbrace{V \otimes \cdots \otimes V}_{r \text{ 个}} \otimes \underbrace{V^* \otimes \cdots \otimes V^*}_{s \text{ 个}}.$$
> 其维数为
> $$\dim T^r_s(V) = n^{r+s}.$$

> **注**：张量的定义方式有多种等价形式。上述定义（多重线性泛函）与通过张量积空间的定义等价（见张量积一节）。向量 $v \in V$ 通过自然同构 $V \to V^{**}$ 视为 $(1,0)$ 型张量：$v(\alpha) = \alpha(v)$（$\alpha \in V^*$）。
