# 张量的缩并

## 张量缩并的定义

<!-- tensor_contraction_definition -->
> [!Definition]
> **张量的缩并 Tensor Contraction**：设 $T \in T^r_s(V)$（$r \geq 1, s \geq 1$）。对第 $\mu$ 个逆变位置（$1 \leq \mu \leq r$）和第 $\nu$ 个协变位置（$1 \leq \nu \leq s$）的**缩并**（contraction）定义为线性映射
> $$C^\mu_\nu: T^r_s(V) \to T^{r-1}_{s-1}(V),$$
> 在分量形式下为：
> $$\bigl(C^\mu_\nu T\bigr)^{i_1 \cdots \hat{i}_\mu \cdots i_r}{}_{j_1 \cdots \hat{j}_\nu \cdots j_s} \coloneqq \sum_{k=1}^{n} T^{i_1 \cdots i_{\mu-1}\, k\, i_{\mu+1} \cdots i_r}{}_{j_1 \cdots j_{\nu-1}\, k\, j_{\nu+1} \cdots j_s},$$
> 其中 $\hat{i}_\mu$ 表示省略第 $\mu$ 个上标，$\hat{j}_\nu$ 表示省略第 $\nu$ 个下标。用爱因斯坦求和约定，上式即令第 $\mu$ 个上标与第 $\nu$ 个下标相同并求和。

> **注**：缩并将 $(r, s)$ 型张量降为 $(r-1, s-1)$ 型张量。对 $(1,1)$ 型张量 $T$ 进行唯一的缩并 $C^1_1 T = T^i_{\ i}$（爱因斯坦求和），即为 $T$ 的**迹**，推广了矩阵迹的概念。

<!-- tensor_contraction_example -->
> [!Example]+
> **$(1,1)$ 型张量的缩并 Contraction of a $(1,1)$-Tensor**：$(1,1)$ 型张量 $T$ 的分量为 $T^i_{\ j}$（即矩阵 $(T^i_{\ j})$）。其缩并为标量：
> $$C^1_1 T = T^i_{\ i} = \sum_{i=1}^{n} T^i_{\ i} = \mathrm{tr}(T).$$
> 特别地，$C^1_1(\delta^i_{\ j}) = \delta^i_{\ i} = n = \dim V$。

## 张量缩并的性质

<!-- tensor_contraction_properties -->
> [!Theorem]
> **张量缩并的性质 Properties of Tensor Contraction**：设 $T \in T^r_s(V)$（$r, s \geq 1$），缩并运算 $C^\mu_\nu$ 具有以下性质：
> 1. **与基无关**：缩并的结果是一个良定义的张量，不依赖于基的选取；
> 2. **线性性**：$C^\mu_\nu(\alpha T + \beta S) = \alpha\, C^\mu_\nu T + \beta\, C^\mu_\nu S$（$\alpha, \beta \in F$，$T, S \in T^r_s(V)$）；
> 3. **与张量积的交换性**：若 $T \in T^r_s(V)$，$S \in T^p_q(V)$，则对 $T$ 和 $S$ 各取一个指标做缩并等价于先做张量积再缩并；
> 4. **缩并的合成**：可以对不同的上下标对依次缩并，且各次缩并的顺序不影响最终结果（仅当缩并不同的指标对时）。
>
> **证明思路**：基无关性通过直接验证：在基变换下，一个逆变指标对应 $(A^{-1})$ 因子，一个协变指标对应 $A$ 因子，二者缩并（对哑指标求和）时 $(A^{-1})$ 与 $A$ 相消，利用 $(A^{-1})^i_{\ k}\, A^k_{\ j} = \delta^i_{\ j}$ 即得。线性性由分量求和的线性性直接得到。
