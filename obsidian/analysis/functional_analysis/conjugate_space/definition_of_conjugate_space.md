# 共轭空间的定义

<!-- functional_analysis_continuous_dual_space_definition -->
> [!Definition]
> **连续共轭空间 Continuous Dual Space**：设 $X$ 是数域 $\mathbb{F}\in\{\mathbb{R},\mathbb{C}\}$ 上的赋范线性空间。所有连续线性泛函组成的空间
> $$
> X^*=\mathcal{L}(X,\mathbb{F})
> $$
> 称为 $X$ 的**连续共轭空间 Continuous Dual Space**，也称连续对偶空间。其范数定义为
> $$
> \|f\|_{X^*}=\sup_{\|x\|_X\leq1}|f(x)|.
> $$

<!-- functional_analysis_dual_space_banach -->
> [!Theorem]
> **共轭空间的完备性 Completeness of the Dual Space**：对任意赋范线性空间 $X$，其连续共轭空间 $X^*$ 在对偶范数下是 Banach 空间。
>
> **证明思路**：这是有界线性算子空间完备性在值域 $\mathbb{F}$ 上的特例；因为 $\mathbb{F}$ 完备，所以 $\mathcal{L}(X,\mathbb{F})$ 完备。

<!-- functional_analysis_dual_space_examples -->
> [!Example]+
> **共轭空间的标准例子 Standard Examples of Dual Spaces**：设 $1<p<+\infty$，$q$ 满足 $1/p+1/q=1$。则
> $$
> (\ell^p)^*\cong\ell^q,
> \qquad
> (L^p(\mu))^*\cong L^q(\mu)
> $$
> （后一个同构在通常的 $\sigma$-有限测度空间条件下成立），同构由配对
> $$
> f_g(x)=\sum_{n=1}^{\infty}x_n\overline{g_n},
> \qquad
> F_g(u)=\int_Xu\overline{g}\,d\mu
> $$
> 给出，且均为等距同构。
>
> **证明思路**：Hölder 不等式给出上述泛函有界且范数不超过 $\|g\|_q$；再通过对偶表示定理证明每个连续线性泛函都有这种形式，并验证范数相等。

<!-- functional_analysis_dual_operator_definition -->
> [!Definition]
> **共轭算子 Dual Operator**：设 $T\in\mathcal{L}(X,Y)$。定义
> $$
> T^*:Y^*\to X^*,
> \qquad (T^*f)(x)=f(Tx).
> $$
> 称 $T^*$ 为 $T$ 的**共轭算子 Dual Operator**。

<!-- functional_analysis_dual_operator_properties -->
> [!Proposition]
> **共轭算子的基本性质 Basic Properties of the Dual Operator**：若 $S\in\mathcal{L}(Y,Z)$、$T\in\mathcal{L}(X,Y)$，则
> $$
> (S\circ T)^*=T^*\circ S^*,
> \qquad\|T^*\|=\|T\|.
> $$
>
> **证明思路**：复合恒等式由定义直接验证。由算子范数基本不等式可得 $\|T^*\|\leq\|T\|$；利用 Hahn-Banach 定理对接近 $\|Tx\|$ 的向量构造范数为 $1$ 的泛函，可得到反向不等式。